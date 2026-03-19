/**
 * useAudio.js — Web Audio engine for Sound Room
 *
 * Runs alongside useOSC — both fire independently.
 * When Max is connected, OSC handles audio there.
 * When it's not, this hook handles it in-browser.
 *
 * Stem file layout:
 *   public/stems/day/1 Piano Main.aif   ... (9 stems, 80 BPM, 16 bars = 48.0s)
 *   public/stems/night/1 Synth Appregio Low.aif  ... (10 stems, 110 BPM, 8 bars = 17.45s)
 *
 * ── LOOP LENGTHS ─────────────────────────────────────────────────────────────
 *   Day:   80 BPM  × 16 bars × 4 beats = 48.000s
 *   Night: 110 BPM ×  8 bars × 4 beats = 17.454s
 *
 * All stems within the same scene share the same loop length. This is how
 * Meepooh keeps everything in sync — one shared clock, not per-buffer duration.
 * Using buf.duration caused silence because floating-point durations don't
 * match perfectly across stems, causing drift and missed rescheduling.
 *
 * ── TRANSITION DESIGN ────────────────────────────────────────────────────────
 * Day→Night (or Night→Day) waits for the NEXT loop boundary of the current
 * scene before starting the new stems. This means stems always start on beat 1,
 * bar 1 of the new scene — no mid-bar starts, no jarring cuts.
 *
 * Timeline:
 *   T+0ms    — visual transition starts (sun sets / moon rises over 5s)
 *   T+0ms    — old stems fade out over ~3s
 *   T+Xms    — next loop boundary of old scene: new stems start at gain=0
 *   T+Xms    — new stems fade in over ~3s
 *   T+X+6s   — old stems killed (fully silent by now)
 *
 * ── LAMP BEHAVIOUR ───────────────────────────────────────────────────────────
 *   Dial at 0   → COLD: −6dB bass, +5dB highs, no saturation
 *   Dial at 50  → NEUTRAL: flat, clean
 *   Dial at 100 → WARM: +6dB bass, −5dB highs, soft saturation, 60Hz hum
 */

import { useRef, useCallback } from 'react';

// ─── BPM / LOOP LENGTH CONSTANTS ─────────────────────────────────────────────
const DAY_LOOP_SEC   = (60 / 80)  * 16 * 4;  // 48.000s
const NIGHT_LOOP_SEC = (60 / 110) *  8 * 4;  // 17.4545…s

function loopSecForScene(scene) {
  return scene === 'day' ? DAY_LOOP_SEC : NIGHT_LOOP_SEC;
}

// ─── STEM FILE MAP ────────────────────────────────────────────────────────────
const STEM_FILES = {
  d1:  'day/1 Piano Main.aif',
  d2:  'day/2 Piano Bass.aif',
  d3:  'day/3 Melody.aif',
  d4:  'day/4 Sparkle.aif',
  d5:  'day/5 Piano Appregio.aif',
  d6:  'day/6 Violin.aif',
  d7:  'day/7 Drone.aif',
  d8:  'day/8 Piano Chord 1.aif',
  d9:  'day/9 Piano Chord 2.aif',
  n1:  'night/1 Synth Appregio Low.aif',
  n2:  'night/2 Synth Appregio High.aif',
  n3:  'night/3 Synth Sparkle.aif',
  n4:  'night/4 Bass.aif',
  n5:  'night/5 Melody 1.aif',
  n6:  'night/6 Pad Low.aif',
  n7:  'night/7 Clap.aif',
  n8:  'night/8 Synth Rhythm.aif',
  n9:  'night/9 Violin.aif',
  n10: 'night/10 Drum.wav',
};

// Which scene does each stem belong to?
function stemScene(id) { return id.startsWith('d') ? 'day' : 'night'; }

// ─── OBJECT → STEM MAPPING ────────────────────────────────────────────────────
export const AUDIO_MAP = {
  'Room - Bed.png':            { day: 'd3',  night: 'n2'  },
  'Room - Bookshelf.png':      { day: 'd2',  night: 'n4'  },
  'Room - Table.png':          { day: 'd1',  night: 'n5'  },
  'Room - Plant.png':          { day: 'd6',  night: 'n8'  },
  'Room - Plant oval base.png':{ day: 'd8',  night: 'n9'  },
  'Room - Cat.png':            { day: 'd4',  night: 'n3'  },
  'Room - Duck teddy.png':     { day: 'd7',  night: 'n6'  },
  'Room - Frog Teddy.png':     { day: 'd5',  night: 'n1'  },
  'Room - Speakers.png':       { day: null,  night: 'n7'  },
  'Room - Vinyl Player.png':   { day: 'd9',  night: 'n10' },
  'Room - Laptop.png':         { day: null,  night: null  },
  'Room - Coffee.png':         { day: null,  night: null  },
};

const LAPTOP_STATES = [
  { label: 'CLEAN',  crush: 0,    wetGain: 0   },
  { label: 'LO-FI',  crush: 0.35, wetGain: 0.4 },
  { label: 'GLITCH', crush: 0.7,  wetGain: 0.7 },
];

// ─── HELPERS ──────────────────────────────────────────────────────────────────
function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
function computePan(lx)   { return clamp((lx - 0.5) * 1.5, -0.75, 0.75); }
function computeVol(lx, ly) {
  return 0.16 + 0.28 * Math.pow(clamp(ly, 0, 1), 0.65)
              + 0.06 * (1 - Math.min(1, Math.abs(lx - 0.5) * 1.2));
}

function makeSatCurve(amount) {
  const n = 256, c = new Float32Array(n);
  for (let i = 0; i < n; i++) {
    const x = i * 2 / n - 1;
    c[i] = amount === 0 ? x : (1 + amount) * x / (1 + amount * Math.abs(x));
  }
  return c;
}

function makeCrushCurve(crush) {
  const n = 256, c = new Float32Array(n);
  const steps = Math.max(2, Math.round((1 - crush) * 32));
  for (let i = 0; i < n; i++) {
    const x = i * 2 / n - 1;
    c[i] = Math.round(x * steps) / steps;
  }
  return c;
}

function lampTone(n) {
  const lowShelfGain  = (n - 0.5) * 12;
  const highShelfGain = (0.5 - n) * 10;
  const warmAmt       = n > 0.5 ? (n - 0.5) * 2 : 0;
  return {
    lowShelfGain,
    highShelfGain,
    satAmount: warmAmt * 8,
    satWet:    warmAmt * 0.4,
    satDry:    1 - warmAmt * 0.4 * 0.15,
    humLevel:  warmAmt * 0.022,
  };
}

// ─── HOOK ─────────────────────────────────────────────────────────────────────
export default function useAudio() {
  const ctx        = useRef(null);
  const masterGain = useRef(null);

  const buffers   = useRef({});
  const gainNodes = useRef({});
  const panners   = useRef({});
  const loopData  = useRef({});

  const weatherFilter = useRef(null);
  const blindsShelf   = useRef(null);
  const lampLowShelf  = useRef(null);
  const lampHighShelf = useRef(null);
  const lampShaper    = useRef(null);
  const lampDry       = useRef(null);
  const lampWet       = useRef(null);
  const humOsc        = useRef(null);
  const humGain       = useRef(null);

  const vinylDelay   = useRef(null);
  const vinylLFO     = useRef(null);
  const vinylLFOGain = useRef(null);
  const vinylWarmth  = useRef(null);
  const vinylMix     = useRef(null);

  const laptopCrusher = useRef(null);
  const laptopMix     = useRef(null);
  const laptopDry     = useRef(null);
  const laptopIdx     = useRef(0);

  const started         = useRef(false);
  const activeScene     = useRef('day');
  const isTransitioning = useRef(false);
  // loopEpoch: the AudioContext time when bar 1 beat 1 started.
  // All stems sync against this — it's set once on first play and never reset.
  const loopEpoch       = useRef(0);
  const epochSet        = useRef(false);
  const isPlaying       = useRef(false);
  const currentRate     = useRef(1.0);
  const transTimers     = useRef([]);

  // ── Build graph ───────────────────────────────────────────────────────────
  const buildGraph = useCallback(() => {
    const c = new (window.AudioContext || window.webkitAudioContext)();
    ctx.current = c;

    const mg = c.createGain(); mg.gain.value = 0.85;
    masterGain.current = mg;

    const wf = c.createBiquadFilter();
    wf.type = 'lowpass'; wf.frequency.value = 20000; wf.Q.value = 0.5;
    weatherFilter.current = wf;

    const bs = c.createBiquadFilter();
    bs.type = 'highshelf'; bs.frequency.value = 4000; bs.gain.value = 0;
    blindsShelf.current = bs;

    const lls = c.createBiquadFilter();
    lls.type = 'lowshelf'; lls.frequency.value = 300; lls.gain.value = 0;
    lampLowShelf.current = lls;

    const lhs = c.createBiquadFilter();
    lhs.type = 'highshelf'; lhs.frequency.value = 4000; lhs.gain.value = 0;
    lampHighShelf.current = lhs;

    const ls = c.createWaveShaper(); ls.curve = makeSatCurve(0);
    const ld = c.createGain(); ld.gain.value = 1;
    const lw = c.createGain(); lw.gain.value = 0;
    lampShaper.current = ls; lampDry.current = ld; lampWet.current = lw;

    const ho = c.createOscillator(); ho.type = 'sine'; ho.frequency.value = 60;
    const hg = c.createGain(); hg.gain.value = 0;
    ho.connect(hg); hg.connect(mg); ho.start();
    humOsc.current = ho; humGain.current = hg;

    const vDelay = c.createDelay(0.05); vDelay.delayTime.value = 0.022;
    const vLFO   = c.createOscillator(); vLFO.type = 'sine'; vLFO.frequency.value = 0.8;
    const vLFOG  = c.createGain(); vLFOG.gain.value = 0;
    const vWarm  = c.createBiquadFilter(); vWarm.type = 'lowpass'; vWarm.frequency.value = 20000;
    const vMix   = c.createGain(); vMix.gain.value = 0;
    vLFO.connect(vLFOG); vLFOG.connect(vDelay.delayTime); vLFO.start();
    vinylDelay.current = vDelay; vinylLFO.current = vLFO;
    vinylLFOGain.current = vLFOG; vinylWarmth.current = vWarm; vinylMix.current = vMix;

    const lc  = c.createWaveShaper(); lc.curve = makeCrushCurve(0);
    const lcm = c.createGain(); lcm.gain.value = 0;
    const lcd = c.createGain(); lcd.gain.value = 1;
    laptopCrusher.current = lc; laptopMix.current = lcm; laptopDry.current = lcd;

    // Chain: stems → mg → wf → bs → lls → lhs → ld → destination
    //                                           → ls → lw → destination
    mg.connect(wf); wf.connect(bs); bs.connect(lls); lls.connect(lhs);
    lhs.connect(ld); lhs.connect(ls); ls.connect(lw);
    ld.connect(c.destination); lw.connect(c.destination);

    mg.connect(vDelay); vDelay.connect(vWarm); vWarm.connect(vMix); vMix.connect(c.destination);
    mg.connect(lc); lc.connect(lcm); lcm.connect(c.destination);

    Object.keys(STEM_FILES).forEach(id => {
      const g = c.createGain(); g.gain.value = 0;
      const p = c.createStereoPanner(); p.pan.value = 0;
      g.connect(p); p.connect(mg);
      gainNodes.current[id] = g;
      panners.current[id]   = p;
      loopData.current[id]  = { sources: [], timerId: null };
    });
  }, []);

  // ── Stem loading ──────────────────────────────────────────────────────────
  const loadStems = useCallback(async (onProgress) => {
    const ids = Object.keys(STEM_FILES);
    let done = 0;
    // Load sequentially to avoid overwhelming the browser with 19 parallel decodes
    for (const id of ids) {
      try {
        const res = await fetch(`/stems/${STEM_FILES[id]}`);
        if (!res.ok) throw new Error(`HTTP ${res.status} for ${STEM_FILES[id]}`);
        const ab = await res.arrayBuffer();
        buffers.current[id] = await ctx.current.decodeAudioData(ab);
        console.log(`[useAudio] loaded ${id} — ${buffers.current[id].duration.toFixed(2)}s`);
      } catch (e) {
        console.warn(`[useAudio] failed to load stem ${id}:`, e.message);
      }
      done++;
      onProgress?.(done / ids.length);
    }
  }, []);

  // ── Loop scheduling ───────────────────────────────────────────────────────
  // Uses the scene's fixed BPM loop length, NOT buf.duration.
  // This is critical — buf.duration may be slightly off due to encoding,
  // and using it causes stems to drift out of sync over time.
  const scheduleNext = useCallback((id, startAtTime) => {
    if (!isPlaying.current || !buffers.current[id]) return;
    const scene   = stemScene(id);
    const loopSec = loopSecForScene(scene) / currentRate.current;
    const src     = ctx.current.createBufferSource();
    src.buffer    = buffers.current[id];
    src.loop      = false;
    src.playbackRate.value = currentRate.current;
    src.connect(gainNodes.current[id]);
    src.start(startAtTime, 0);
    loopData.current[id].sources.push(src);
    if (loopData.current[id].sources.length > 3) loopData.current[id].sources.shift();
    // Schedule next loop 100ms before this one ends
    const ms = (startAtTime + loopSec - ctx.current.currentTime - 0.1) * 1000;
    loopData.current[id].timerId = setTimeout(
      () => { if (isPlaying.current) scheduleNext(id, startAtTime + loopSec); },
      Math.max(0, ms)
    );
  }, []);

  // startStem: begins a stem in sync with the shared loopEpoch clock.
  // This means all stems start on bar 1 beat 1, regardless of when they're placed.
  const startStem = useCallback((id) => {
    if (!buffers.current[id] || !ctx.current) return;
    killStem(id);

    const scene   = stemScene(id);
    const loopSec = loopSecForScene(scene) / currentRate.current;
    const now     = ctx.current.currentTime;

    // How far into the current loop are we?
    const elapsed   = now - loopEpoch.current;
    const loopIdx   = Math.floor(elapsed / loopSec);
    const loopStart = loopEpoch.current + loopIdx * loopSec;
    const offsetSec = now - loopStart; // how far into the loop we are (wall time)
    // Convert wall offset to buffer offset (compensate for playback rate)
    const bufOffset = Math.min(offsetSec * currentRate.current, buffers.current[id].duration - 0.01);
    const nextLoopStart = loopStart + loopSec;

    const src = ctx.current.createBufferSource();
    src.buffer = buffers.current[id];
    src.loop   = false;
    src.playbackRate.value = currentRate.current;
    src.connect(gainNodes.current[id]);
    // Start at current position in the loop — so it sounds in sync immediately
    src.start(now, Math.max(0, bufOffset));
    loopData.current[id].sources.push(src);

    // Schedule the next clean loop start
    const ms = (nextLoopStart - now - 0.1) * 1000;
    loopData.current[id].timerId = setTimeout(
      () => { if (isPlaying.current) scheduleNext(id, nextLoopStart); },
      Math.max(0, ms)
    );
  }, [scheduleNext]);

  function killStem(id) {
    const ld = loopData.current[id];
    if (!ld) return;
    if (ld.timerId !== null) { clearTimeout(ld.timerId); ld.timerId = null; }
    ld.sources.forEach(s => { try { s.stop(); } catch (_) {} });
    ld.sources = [];
  }

  function setStemGain(id, vol, rampSec = 0.3) {
    const g = gainNodes.current[id];
    if (!g || !ctx.current) return;
    g.gain.cancelScheduledValues(ctx.current.currentTime);
    g.gain.setTargetAtTime(Math.max(0, vol), ctx.current.currentTime, rampSec);
  }

  function setStemPan(id, pan) {
    const p = panners.current[id];
    if (!p || !ctx.current) return;
    p.pan.setTargetAtTime(pan, ctx.current.currentTime, 0.15);
  }

  function activeStemId(sprite) {
    const m = AUDIO_MAP[sprite];
    if (!m) return null;
    return activeScene.current === 'day' ? m.day : m.night;
  }

  // ensureEpoch — sets loopEpoch on first play so all stems share a clock
  function ensureEpoch() {
    if (!epochSet.current) {
      loopEpoch.current = ctx.current.currentTime;
      epochSet.current  = true;
      isPlaying.current = true;
    }
  }

  // ── Object lifecycle ──────────────────────────────────────────────────────
  const placeObject = useCallback((sprite, lx, ly) => {
    if (!ctx.current || !started.current) return;
    if (ctx.current.state === 'suspended') ctx.current.resume();
    ensureEpoch();
    const id = activeStemId(sprite);
    if (!id) return;
    startStem(id);
    setStemGain(id, computeVol(lx, ly), 0.5);
    setStemPan(id, computePan(lx));
  }, [startStem]);

  const removeObject = useCallback((sprite) => {
    const m = AUDIO_MAP[sprite];
    if (!m) return;
    [m.day, m.night].forEach(id => {
      if (id) { setStemGain(id, 0, 0.4); setTimeout(() => killStem(id), 600); }
    });
  }, []);

  // syncAll — called when placed state changes. Starts/stops/updates stems.
  // This is the main driver after placeObject/removeObject.
  const syncAll = useCallback((placed) => {
    if (!started.current || !ctx.current) return;
    if (ctx.current.state === 'suspended') ctx.current.resume();

    let hasAny = false;
    Object.entries(AUDIO_MAP).forEach(([sprite, m]) => {
      const id  = activeScene.current === 'day' ? m.day : m.night;
      const pos = placed[sprite];
      if (!id) return;

      if (pos) {
        hasAny = true;
        // Start the stem if it's not currently running
        const ld = loopData.current[id];
        const isRunning = ld && ld.sources.length > 0;
        if (!isRunning) {
          ensureEpoch();
          startStem(id);
        }
        setStemGain(id, computeVol(pos.lx, pos.ly), 0.3);
        setStemPan(id, computePan(pos.lx));
      } else {
        // Not placed — silence it
        const ld = loopData.current[id];
        const isRunning = ld && ld.sources.length > 0;
        if (isRunning) {
          setStemGain(id, 0, 0.4);
          setTimeout(() => killStem(id), 600);
        }
      }
    });

    if (hasAny) isPlaying.current = true;
  }, [startStem]);

  // ── BPM-aware day ↔ night transition ─────────────────────────────────────
  // Waits for the next bar-1 boundary of the current scene before
  // starting new stems, so the transition always lands on the downbeat.
  const transitionScene = useCallback((newScene, placed) => {
    if (!started.current || newScene === activeScene.current) return;
    if (isTransitioning.current) return;
    isTransitioning.current = true;

    const oldScene   = activeScene.current;
    const now        = ctx.current.currentTime;
    const oldLoopSec = loopSecForScene(oldScene) / currentRate.current;

    // Find when the next loop boundary of the old scene is
    let nextBoundary;
    if (epochSet.current) {
      const elapsed    = now - loopEpoch.current;
      const loopIdx    = Math.floor(elapsed / oldLoopSec);
      nextBoundary     = loopEpoch.current + (loopIdx + 1) * oldLoopSec;
      // If the boundary is more than 8s away, start sooner (max wait = 8s)
      if (nextBoundary - now > 8) nextBoundary = now + 2;
    } else {
      nextBoundary = now + 0.5; // nothing playing, start soon
    }

    const waitMs        = Math.max(0, (nextBoundary - now) * 1000);
    const FADE_OUT_SEC  = 3.0;  // time constant for fade-out (reaches ~95% at 3× this)
    const FADE_IN_SEC   = 2.5;  // time constant for fade-in

    // 1. Fade out all old stems immediately
    Object.keys(AUDIO_MAP).forEach(sprite => {
      const id = oldScene === 'day' ? AUDIO_MAP[sprite].day : AUDIO_MAP[sprite].night;
      if (id) setStemGain(id, 0, FADE_OUT_SEC);
    });

    // 2. At the next loop boundary: switch scene, start new stems, fade in
    const t1 = setTimeout(() => {
      activeScene.current = newScene;
      // Reset epoch so new scene starts at bar 1
      loopEpoch.current = nextBoundary;
      epochSet.current  = true;

      Object.entries(AUDIO_MAP).forEach(([sprite, m]) => {
        const id  = newScene === 'day' ? m.day : m.night;
        const pos = placed[sprite];
        if (!id || !pos) return;
        // Start from zero, fade in
        if (gainNodes.current[id]) gainNodes.current[id].gain.setValueAtTime(0, nextBoundary);
        startStem(id);
        setStemGain(id, computeVol(pos.lx, pos.ly), FADE_IN_SEC);
        setStemPan(id, computePan(pos.lx));
      });
    }, waitMs);

    // 3. Kill old stems after they've fully faded (fade_out_sec × 5 ≈ 99%)
    const killDelay = waitMs + FADE_OUT_SEC * 5 * 1000;
    const t2 = setTimeout(() => {
      Object.keys(AUDIO_MAP).forEach(sprite => {
        const id = oldScene === 'day' ? AUDIO_MAP[sprite].day : AUDIO_MAP[sprite].night;
        if (id) killStem(id);
      });
      isTransitioning.current = false;
    }, killDelay);

    transTimers.current.push(t1, t2);
  }, [startStem]);

  // ── Environmental controls ────────────────────────────────────────────────

  const applyBlinds = useCallback((v) => {
    if (!blindsShelf.current || !ctx.current) return;
    blindsShelf.current.gain.setTargetAtTime(-14 * v, ctx.current.currentTime, 0.12);
    masterGain.current.gain.setTargetAtTime(0.85 * (1 - v * 0.35), ctx.current.currentTime, 0.12);
  }, []);

  const applyLamp = useCallback((v) => {
    if (!lampLowShelf.current || !ctx.current) return;
    const n = v / 100, tone = lampTone(n), now = ctx.current.currentTime;
    lampLowShelf.current.gain.setTargetAtTime(tone.lowShelfGain,  now, 0.3);
    lampHighShelf.current.gain.setTargetAtTime(tone.highShelfGain, now, 0.3);
    lampShaper.current.curve = makeSatCurve(tone.satAmount);
    lampWet.current.gain.setTargetAtTime(tone.satWet, now, 0.2);
    lampDry.current.gain.setTargetAtTime(tone.satDry, now, 0.2);
    humGain.current.gain.setTargetAtTime(tone.humLevel, now, 0.3);
  }, []);

  const applyWeather = useCallback((v) => {
    if (!weatherFilter.current || !ctx.current) return;
    weatherFilter.current.frequency.setTargetAtTime(v > 0.5 ? 550 : 20000, ctx.current.currentTime, 0.8);
    weatherFilter.current.Q.setTargetAtTime(v > 0.5 ? 1.2 : 0.5, ctx.current.currentTime, 0.8);
  }, []);

  const applySpeed = useCallback((newRate) => {
    if (!ctx.current || newRate === currentRate.current) return;
    const WARBLE = 1.8;
    Object.values(loopData.current).forEach(ld => {
      ld.sources.forEach(src => {
        try {
          src.playbackRate.cancelScheduledValues(ctx.current.currentTime);
          src.playbackRate.setValueAtTime(currentRate.current, ctx.current.currentTime);
          src.playbackRate.linearRampToValueAtTime(newRate, ctx.current.currentTime + WARBLE);
        } catch (_) {}
      });
    });
    // Cancel reschedule timers — they'll restart with new rate after warble
    Object.values(loopData.current).forEach(ld => {
      if (ld.timerId !== null) { clearTimeout(ld.timerId); ld.timerId = null; }
    });
    currentRate.current = newRate;
  }, []);

  const applyVinyl = useCallback((lx, ly) => {
    if (!vinylLFOGain.current || !ctx.current) return;
    const flutter = Math.abs(lx - 0.5) * 2;
    const warmth  = clamp(ly, 0, 1);
    vinylLFOGain.current.gain.setTargetAtTime(flutter * 0.008, ctx.current.currentTime, 0.3);
    vinylLFO.current.frequency.setTargetAtTime(0.5 + flutter * 5.5, ctx.current.currentTime, 0.3);
    vinylWarmth.current.frequency.setTargetAtTime(20000 - warmth * 18800, ctx.current.currentTime, 0.4);
    vinylMix.current.gain.setTargetAtTime(flutter * 0.6, ctx.current.currentTime, 0.3);
  }, []);

  const clearVinyl = useCallback(() => {
    if (!vinylLFOGain.current || !ctx.current) return;
    vinylLFOGain.current.gain.setTargetAtTime(0, ctx.current.currentTime, 0.5);
    vinylMix.current.gain.setTargetAtTime(0, ctx.current.currentTime, 0.5);
    vinylWarmth.current.frequency.setTargetAtTime(20000, ctx.current.currentTime, 0.5);
  }, []);

  const cycleLaptop = useCallback(() => {
    if (!laptopCrusher.current || !ctx.current) return;
    laptopIdx.current = (laptopIdx.current + 1) % LAPTOP_STATES.length;
    const state = LAPTOP_STATES[laptopIdx.current];
    laptopCrusher.current.curve = makeCrushCurve(state.crush);
    laptopMix.current.gain.setTargetAtTime(state.wetGain, ctx.current.currentTime, 0.3);
    laptopDry.current.gain.setTargetAtTime(1 - state.wetGain * 0.6, ctx.current.currentTime, 0.3);
    return state.label;
  }, []);

  const clearLaptop = useCallback(() => {
    if (!laptopCrusher.current || !ctx.current) return;
    laptopIdx.current = 0;
    laptopCrusher.current.curve = makeCrushCurve(0);
    laptopMix.current.gain.setTargetAtTime(0, ctx.current.currentTime, 0.4);
    laptopDry.current.gain.setTargetAtTime(1, ctx.current.currentTime, 0.4);
  }, []);

  // ── start / destroy ───────────────────────────────────────────────────────
  const start = useCallback(async (onProgress) => {
    if (started.current) return;
    buildGraph();
    if (ctx.current.state === 'suspended') await ctx.current.resume();
    await loadStems(onProgress);
    started.current = true;
    console.log('[useAudio] ready — stems loaded:', Object.keys(buffers.current).length);
  }, [buildGraph, loadStems]);

  const destroy = useCallback(() => {
    transTimers.current.forEach(clearTimeout);
    Object.keys(loopData.current).forEach(id => killStem(id));
    ctx.current?.close();
    started.current   = false;
    isPlaying.current = false;
    epochSet.current  = false;
  }, []);

  return {
    start,
    destroy,
    placeObject,
    removeObject,
    syncAll,
    transitionScene,
    applyBlinds,
    applyLamp,
    applyWeather,
    applySpeed,
    applyVinyl,
    clearVinyl,
    cycleLaptop,
    clearLaptop,
    isReady: () => started.current,
    isDay:   () => activeScene.current === 'day',
  };
}
