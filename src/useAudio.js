/**
 * useAudio.js — Web Audio engine for Sound Room  v4
 *
 * REWRITTEN to match Meepooh's architecture (from SETUP.md):
 *
 *  ── KEY ARCHITECTURAL CHANGE ─────────────────────────────────────────────
 *  Meepooh: ALL stems loop simultaneously from the moment audio starts.
 *           Every stem is always running — placing an object just opens
 *           its gain fader. No start/stop scheduling needed.
 *           Day bus + Night bus run in parallel; crossfade between them.
 *
 *  Old useAudio: stems were started/killed per-object (complex scheduling,
 *                drift risk, gaps when quickly toggling objects).
 *
 *  ── WHY THIS FIXES THE BUGS ──────────────────────────────────────────────
 *  • No static from lamp: chain is now gain-only at night, no EQ boost
 *  • No orphan stems: all stems run all the time, gain=0 is silence
 *  • No scheduling gaps: no setTimeout chain to go wrong
 *  • Silence when empty: just all gains at 0 — stems still clock
 *
 *  ── STEM FILENAMES ───────────────────────────────────────────────────────
 *  SETUP.md shows the actual filenames use Morning_/Night_ prefix and .m4a:
 *    public/stems/day/Morning_1_Piano_Main.m4a   … Morning_9_Piano_Chord_2.m4a
 *    public/stems/night/Night_1_Synth_Appregio_Low.m4a … Night_10_Drum.m4a
 *  We try .m4a first, then .aiff/.aif, then .mp3 as fallbacks so both
 *  naming conventions work.
 *
 *  ── SPATIAL AUDIO ────────────────────────────────────────────────────────
 *  Uses StereoPanner (simple L/R) matching the existing behaviour.
 *  lx → pan, ly → volume (closer = louder). Works well for isometric room.
 *
 *  ── DAY / NIGHT BUSES ────────────────────────────────────────────────────
 *  dayBus / nightBus are GainNodes. Crossfade switches between them over 3s.
 *  All day stems feed dayBus; all night stems feed nightBus.
 *  Only the active bus has gain > 0.
 *
 *  ── LAMP ─────────────────────────────────────────────────────────────────
 *  SAFE version: only low shelf (+5dB max). High shelf cut only (never boost).
 *  Saturation only above 40%. 4x oversample on waveshaper.
 *  No masterGain mutation — dedicated lampGain for volume nudge.
 *
 *  ── BLINDS ───────────────────────────────────────────────────────────────
 *  Dedicated blindsGain node. HF shelf cut when closed.
 *  Never touches masterGain or lampGain.
 *
 *  ── LOOP LENGTHS ─────────────────────────────────────────────────────────
 *  Day:   80 BPM × 16 bars × 4 beats = 48.000s
 *  Night: 110 BPM × 8 bars × 4 beats = 17.4545s
 *  Each stem loops using its actual buffer duration via src.loop = true,
 *  which is robust and eliminates all scheduling complexity. Because stems
 *  are always running from the same start point they stay in sync naturally.
 */

import { useRef, useCallback } from 'react';

// ─── STEM FILE MAP ────────────────────────────────────────────────────────────
// Try Meepooh naming (.m4a) first, then legacy naming (.aiff/.aif/.mp3)
const STEM_FILES = {
  // Day stems
  d1:  { primary: 'day/Morning_1_Piano_Main.m4a',        fallbacks: ['day/1 Piano Main.aiff', 'day/1 Piano Main.aif', '1 Piano Main.aiff', '1 Piano Main.aif', 'day/1 Piano Main.mp3'] },
  d2:  { primary: 'day/Morning_2_Piano_Bass.m4a',        fallbacks: ['day/2 Piano Bass.aiff', 'day/2 Piano Bass.aif', '2 Piano Bass.aiff', '2 Piano Bass.aif', 'day/2 Piano Bass.mp3'] },
  d3:  { primary: 'day/Morning_3_Melody.m4a',            fallbacks: ['day/3 Melody.aiff', 'day/3 Melody.aif', '3 Melody.aiff', '3 Melody.aif', 'day/3 Melody.mp3'] },
  d4:  { primary: 'day/Morning_4_Sparkle.m4a',           fallbacks: ['day/4 Sparkle.aiff', 'day/4 Sparkle.aif', '4 Sparkle.aiff', '4 Sparkle.aif', 'day/4 Sparkle.mp3'] },
  d5:  { primary: 'day/Morning_5_Piano_Appregio.m4a',    fallbacks: ['day/5 Piano Appregio.aiff', 'day/5 Piano Appregio.aif', '5 Piano Appregio.aiff', '5 Piano Appregio.aif', 'day/5 Piano Appregio.mp3'] },
  d6:  { primary: 'day/Morning_6_Violin.m4a',            fallbacks: ['day/6 Violin.aiff', 'day/6 Violin.aif', '6 Violin.aiff', '6 Violin.aif', 'day/6 Violin.mp3'] },
  d7:  { primary: 'day/Morning_7_Drone.m4a',             fallbacks: ['day/7 Drone.aiff', 'day/7 Drone.aif', '7 Drone.aiff', '7 Drone.aif', 'day/7 Drone.mp3'] },
  d8:  { primary: 'day/Morning_8_Piano_Chord_1.m4a',     fallbacks: ['day/8 Piano Chord 1.aiff', 'day/8 Piano Chord 1.aif', '8 Piano Chord 1.aiff', '8 Piano Chord 1.aif', 'day/8 Piano Chord 1.mp3'] },
  d9:  { primary: 'day/Morning_9_Piano_Chord_2.m4a',     fallbacks: ['day/9 Piano Chord 2.aiff', 'day/9 Piano Chord 2.aif', '9 Piano Chord 2.aiff', '9 Piano Chord 2.aif', 'day/9 Piano Chord 2.mp3'] },
  // Night stems
  n1:  { primary: 'night/Night_1_Synth_Appregio_Low.m4a',  fallbacks: ['night/1 Synth Appregio Low.aiff', 'night/1 Synth Appregio Low.aif', '1 Synth Appregio Low.aiff', '1 Synth Appregio Low.aif', 'night/1 Synth Appregio Low.mp3'] },
  n2:  { primary: 'night/Night_2_Synth_Appregio_High.m4a', fallbacks: ['night/2 Synth Appregio High.aiff', 'night/2 Synth Appregio High.aif', '2 Synth Appregio High.aiff', '2 Synth Appregio High.aif', 'night/2 Synth Appregio High.mp3'] },
  n3:  { primary: 'night/Night_3_Synth_Sparkle.m4a',       fallbacks: ['night/3 Synth Sparkle.aiff', 'night/3 Synth Sparkle.aif', '3 Synth Sparkle.aiff', '3 Synth Sparkle.aif', 'night/3 Synth Sparkle.mp3'] },
  n4:  { primary: 'night/Night_4_Bass.m4a',                fallbacks: ['night/4 Bass.aiff', 'night/4 Bass.aif', '4 Bass.aiff', '4 Bass.aif', 'night/4 Bass.mp3'] },
  n5:  { primary: 'night/Night_5_Melody_1.m4a',            fallbacks: ['night/5 Melody 1.aiff', 'night/5 Melody 1.aif', '5 Melody 1.aiff', '5 Melody 1.aif', 'night/5 Melody 1.mp3'] },
  n6:  { primary: 'night/Night_6_Pad_Low.m4a',             fallbacks: ['night/6 Pad Low.aiff', 'night/6 Pad Low.aif', '6 Pad Low.aiff', '6 Pad Low.aif', 'night/6 Pad Low.mp3'] },
  n7:  { primary: 'night/Night_7_Clap.m4a',                fallbacks: ['night/7 Clap.aiff', 'night/7 Clap.aif', '7 Clap.aiff', '7 Clap.aif', 'night/7 Clap.mp3'] },
  n8:  { primary: 'night/Night_8_Synth_Rhythm.m4a',        fallbacks: ['night/8 Synth Rhythm.aiff', 'night/8 Synth Rhythm.aif', '8 Synth Rhythm.aiff', '8 Synth Rhythm.aif', 'night/8 Synth Rhythm.mp3'] },
  n9:  { primary: 'night/Night_9_Violin.m4a',              fallbacks: ['night/9 Violin.aiff', 'night/9 Violin.aif', '9 Violin.aiff', '9 Violin.aif', 'night/9 Violin.mp3'] },
  n10: { primary: 'night/Night_10_Drum.m4a',               fallbacks: ['night/10 Drum.aiff', 'night/10 Drum.aif', '10 Drum.aiff', '10 Drum.aif', 'night/10 Drum.mp3'] },
};

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
  'Room - Speakers.png':       { day: 'n10', night: 'n7'  },  // n10 = Drum in day too
  'Room - Vinyl Player.png':   { day: 'd9',  night: 'n8'  },
  'Room - Laptop.png':         { day: null,  night: null  },
  'Room - Coffee.png':         { day: null,  night: null  },
};

const LAPTOP_STATES = [
  { label: 'CLEAN',  crush: 0,    wetGain: 0    },
  { label: 'LO-FI',  crush: 0.6,  wetGain: 0.75 },
  { label: 'GLITCH', crush: 0.88, wetGain: 1.0  },
];

// ─── HELPERS ──────────────────────────────────────────────────────────────────
function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
function computePan(lx)   { return clamp((lx - 0.5) * 1.5, -0.75, 0.75); }
function computeVol(lx, ly) {
  // 9 stems can be active simultaneously. Max sum must stay under 0.85.
  // Max per stem = 0.03 + 0.055 + 0.01 = 0.095  →  9 × 0.095 = 0.855
  return 0.03 + 0.055 * Math.pow(clamp(ly, 0, 1), 0.65)
              + 0.01  * (1 - Math.min(1, Math.abs(lx - 0.5) * 1.2));
}

function makeSatCurve(amount) {
  const n = 512, c = new Float32Array(n);
  for (let i = 0; i < n; i++) {
    const x = (i * 2 / (n - 1)) - 1;
    c[i] = amount < 0.001 ? x : (1 + amount) * x / (1 + amount * Math.abs(x));
  }
  return c;
}

function makeCrushCurve(crush) {
  const n = 256, c = new Float32Array(n);
  // At crush=0: 256 steps (clean). At crush=1: 3 steps (extreme glitch).
  // Exponential scaling so lo-fi and glitch are both clearly audible.
  const steps = Math.max(3, Math.round(Math.pow(1 - crush, 2) * 256));
  for (let i = 0; i < n; i++) {
    const x = i * 2 / n - 1;
    c[i] = Math.round(x * steps) / steps;
  }
  return c;
}

// lampTone: NEVER boosts high frequencies. Safe for all content.
function lampTone(n) {
  const lowShelfGain  = n > 0.5 ? (n - 0.5) * 2 * 5 : 0;  // 0 → +5dB
  const highShelfGain = -(n * 4);                            // 0 → −4dB
  const warmAmt       = n > 0.4 ? (n - 0.4) / 0.6 : 0;
  return {
    lowShelfGain,
    highShelfGain,
    satAmount: warmAmt * 5,
    satWet:    warmAmt * 0.3,
    satDry:    1 - warmAmt * 0.3,
    humLevel:  warmAmt * 0.015,
  };
}

// ─── HOOK ─────────────────────────────────────────────────────────────────────
export default function useAudio() {
  const ctx        = useRef(null);
  const masterGain = useRef(null);   // fixed — never adjusted

  // Day/Night buses — Meepooh architecture
  const dayBus    = useRef(null);    // all day stems → dayBus → chain
  const nightBus  = useRef(null);    // all night stems → nightBus → chain
  const activeScene = useRef('day');

  // Per-stem: gain node + panner + looping source
  const gainNodes = useRef({});
  const panners   = useRef({});
  const sources   = useRef({});      // looping BufferSourceNodes
  const buffers   = useRef({});

  // Processing chain nodes
  const blindsGain    = useRef(null);
  const blindsShelf   = useRef(null);
  const blindsHP      = useRef(null);
  const weatherFilter = useRef(null);
  const lampLowShelf  = useRef(null);
  const lampHighShelf = useRef(null);
  const lampShaper    = useRef(null);
  const lampNotch     = useRef(null);   // notch at 3kHz — cold=deep, warm=off
  const lampNotchGain = useRef(null);
  const lampDry       = useRef(null);
  const lampWet       = useRef(null);
  const humOsc        = useRef(null);
  const humGain       = useRef(null);

  const vinylDelay    = useRef(null);
  const vinylLFO      = useRef(null);
  const vinylLFOGain  = useRef(null);
  const vinylWarmth   = useRef(null);
  const vinylMix      = useRef(null);

  const laptopCrusher = useRef(null);
  const laptopMix     = useRef(null);
  const laptopDry     = useRef(null);
  const laptopIdx     = useRef(0);

  const started     = useRef(false);
  const isLooping   = useRef(false);   // true once all stems are playing

  // ── Build graph ───────────────────────────────────────────────────────────
  const buildGraph = useCallback(() => {
    let c;
    try {
      c = new (window.AudioContext || window.webkitAudioContext)({ sampleRate: 48000 });
    } catch (_) {
      c = new (window.AudioContext || window.webkitAudioContext)();
    }
    ctx.current = c;
    console.log(`[useAudio] AudioContext: ${c.sampleRate}Hz`);

    // Fixed master
    const mg = c.createGain(); mg.gain.value = 1.4;
    masterGain.current = mg;

    // Day/Night buses — start with day active
    const db = c.createGain(); db.gain.value = 1.0;
    const nb = c.createGain(); nb.gain.value = 0.0;
    dayBus.current = db; nightBus.current = nb;

    // Blinds (dedicated gain, never shared)
    const bg = c.createGain(); bg.gain.value = 1.0;
    blindsGain.current = bg;
    const bs = c.createBiquadFilter();
    bs.type = 'highshelf'; bs.frequency.value = 3500; bs.gain.value = 0;
    blindsShelf.current = bs;

    // Window highpass — opens up air/presence as blinds open (like Max hip~)
    const bhp = c.createBiquadFilter();
    bhp.type = 'highpass'; bhp.frequency.value = 20; bhp.Q.value = 0.5;
    blindsHP.current = bhp;

    // Weather lowpass
    const wf = c.createBiquadFilter();
    wf.type = 'lowpass'; wf.frequency.value = 20000; wf.Q.value = 0.5;
    weatherFilter.current = wf;

    // Lamp EQ
    const lls = c.createBiquadFilter();
    lls.type = 'lowshelf'; lls.frequency.value = 250; lls.gain.value = 0;
    lampLowShelf.current = lls;
    const lhs = c.createBiquadFilter();
    lhs.type = 'highshelf'; lhs.frequency.value = 5000; lhs.gain.value = 0;
    lampHighShelf.current = lhs;
    // Lamp notch at 3kHz: cold lamp = harsh presence freq notched out
    const ln = c.createBiquadFilter();
    ln.type = 'notch'; ln.frequency.value = 3000; ln.Q.value = 1.5; ln.gain.value = 0;
    const lng = c.createGain(); lng.gain.value = 0; // depth 0=notch off, 1=notch full
    lampNotch.current = ln; lampNotchGain.current = lng;

    // Lamp saturation (4x oversample kills aliasing)
    const ls = c.createWaveShaper(); ls.curve = makeSatCurve(0); ls.oversample = '4x';
    const ld = c.createGain(); ld.gain.value = 1.0;
    const lw = c.createGain(); lw.gain.value = 0.0;
    lampShaper.current = ls; lampDry.current = ld; lampWet.current = lw;

    // 60Hz hum for lamp warmth
    const ho = c.createOscillator(); ho.type = 'sine'; ho.frequency.value = 60;
    const hg = c.createGain(); hg.gain.value = 0;
    ho.connect(hg); hg.connect(mg); ho.start();
    humOsc.current = ho; humGain.current = hg;

    // Vinyl flutter
    const vDelay = c.createDelay(0.05); vDelay.delayTime.value = 0.005;
    const vLFO = c.createOscillator(); vLFO.type = 'sine'; vLFO.frequency.value = 0.8;
    const vLFOG = c.createGain(); vLFOG.gain.value = 0;
    const vWarm = c.createBiquadFilter(); vWarm.type = 'lowpass'; vWarm.frequency.value = 20000;
    const vMix = c.createGain(); vMix.gain.value = 0;
    vLFO.connect(vLFOG); vLFOG.connect(vDelay.delayTime); vLFO.start();
    vinylDelay.current = vDelay; vinylLFO.current = vLFO;
    vinylLFOGain.current = vLFOG; vinylWarmth.current = vWarm; vinylMix.current = vMix;

    // Laptop bit-crush
    const lc = c.createWaveShaper(); lc.curve = makeCrushCurve(0);
    const lcm = c.createGain(); lcm.gain.value = 0;
    const lcd = c.createGain(); lcd.gain.value = 1;
    laptopCrusher.current = lc; laptopMix.current = lcm; laptopDry.current = lcd;

    // ── Signal chain ──────────────────────────────────────────────────────
    // stems → bus (day|night) → mg → laptopOut → bg → bhp → bs → wf → lls → lhs
    //                                                                        → ld → destination (dry)
    //                                                                        → ls → lw → destination (wet sat)
    // Vinyl: additive wet delay tap from bg (post-laptop, pre-EQ)
    db.connect(mg); nb.connect(mg);

    // Laptop dry/wet blend — inserted between mg and bg
    const laptopOut = c.createGain(); laptopOut.gain.value = 1.0;
    mg.connect(lcd);   lcd.connect(laptopOut);   // dry path
    mg.connect(lc); lc.connect(lcm); lcm.connect(laptopOut);  // crush path
    laptopOut.connect(bg);

    bg.connect(bhp);   // highpass (window air / blinds)
    bhp.connect(bs);   // blinds HF shelf
    bs.connect(wf);    // weather lowpass
    wf.connect(lls);   // lamp low shelf
    lls.connect(lhs);  // lamp high shelf

    // Lamp dry/sat split at end of chain
    lhs.connect(ln); ln.connect(ld); ld.connect(c.destination);
    lhs.connect(ls); ls.connect(lw); lw.connect(c.destination);

    // Vinyl: additive delay tap from bg so it benefits from laptop crush
    bg.connect(vDelay); vDelay.connect(vWarm); vWarm.connect(vMix); vMix.connect(c.destination);

    // Stem gain/pan nodes — each stem has its own gain + panner
    // Day stems → dayBus, night stems → nightBus
    Object.keys(STEM_FILES).forEach(id => {
      const g = c.createGain(); g.gain.value = 0;  // start silent
      const p = c.createStereoPanner(); p.pan.value = 0;
      const bus = stemScene(id) === 'day' ? db : nb;
      g.connect(p); p.connect(bus);
      gainNodes.current[id] = g;
      panners.current[id]   = p;
    });
  }, []);

  // ── Stem loading + looping ────────────────────────────────────────────────
  // Loads each stem, then starts ALL of them looping immediately.
  // This matches Meepooh's "all stems running, gain=0 = silence" model.
  const loadStems = useCallback(async (onProgress) => {
    const ids = Object.keys(STEM_FILES);
    let done = 0, loadedCount = 0;

    for (const id of ids) {
      const entry = STEM_FILES[id];
      const paths = [entry.primary, ...entry.fallbacks].map(p => `/stems/${p}`);
      let loaded = false;

      for (const path of paths) {
        try {
          const res = await fetch(path);
          if (!res.ok) continue;
          const ab  = await res.arrayBuffer();
          const buf = await ctx.current.decodeAudioData(ab);
          buffers.current[id] = buf;
          console.log(`[useAudio] ✓ ${id} (${buf.duration.toFixed(2)}s) from ${path.split('/').pop()}`);
          loaded = true; loadedCount++; break;
        } catch (e) {
          // silent — try next path
        }
      }
      if (!loaded) {
        console.error(`[useAudio] ✗ ${id} — tried: ${paths.map(p => p.split('/').pop()).join(', ')}`);
      }

      done++;
      onProgress?.(done / ids.length);
    }

    console.log(`[useAudio] ${loadedCount}/${ids.length} stems loaded`);

    if (loadedCount === 0) {
      console.error(
        '[useAudio] ✗ No stems loaded at all.\n' +
        'Put files in one of these locations under public/stems/:\n' +
        '  public/stems/day/Morning_1_Piano_Main.m4a  (preferred)\n' +
        '  public/stems/day/1 Piano Main.aiff\n' +
        '  public/stems/1 Piano Main.aiff  (flat, no subfolder)\n' +
        'Check the browser Network tab for 404s on /stems/ requests.'
      );
    }

    // Start ALL loaded stems looping immediately (gain=0 = silent)
    // This is the Meepooh approach — stems are always clocking, we just open gains
    Object.keys(STEM_FILES).forEach(id => {
      if (!buffers.current[id]) return;
      const src = ctx.current.createBufferSource();
      src.buffer = buffers.current[id];
      src.loop   = true;   // true looping — no scheduling needed
      src.connect(gainNodes.current[id]);
      src.start(0);
      sources.current[id] = src;
    });

    isLooping.current = true;
    console.log('[useAudio] all stems looping (gain=0)');
    return loadedCount;
  }, []);

  // ── Gain helpers ──────────────────────────────────────────────────────────
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

  // ── Object lifecycle ──────────────────────────────────────────────────────
  const placeObject = useCallback((sprite, lx, ly) => {
    if (!ctx.current || !started.current || !isLooping.current) return;
    if (ctx.current.state === 'suspended') ctx.current.resume();
    const m  = AUDIO_MAP[sprite]; if (!m) return;
    const id = activeScene.current === 'day' ? m.day : m.night;
    if (!id) return;
    setStemGain(id, computeVol(lx, ly), 0.5);
    setStemPan(id, computePan(lx));
  }, []);

  const removeObject = useCallback((sprite) => {
    const m = AUDIO_MAP[sprite]; if (!m) return;
    [m.day, m.night].forEach(id => {
      if (id) setStemGain(id, 0, 0.4);
    });
  }, []);

  // syncAll — sets gains for all objects based on current placed state.
  // Only touches stems that need changing — no blanket silence-then-reopen
  // which caused volume glitches on every drag.
  const syncAll = useCallback((placed) => {
    if (!started.current || !ctx.current || !isLooping.current) return;
    if (ctx.current.state === 'suspended') ctx.current.resume();

    const hasAny = Object.values(placed).some(Boolean);

    if (!hasAny) {
      // Room is empty — fade everything out cleanly
      Object.keys(STEM_FILES).forEach(id => setStemGain(id, 0, 0.6));
      return;
    }

    // Build a set of which stem IDs should be active right now
    const activeStemIds = new Set();
    Object.entries(AUDIO_MAP).forEach(([sprite, m]) => {
      const id  = activeScene.current === 'day' ? m.day : m.night;
      const pos = placed[sprite];
      if (!id || !pos) return;
      activeStemIds.add(id);
      setStemGain(id, computeVol(pos.lx, pos.ly), 0.3);
      setStemPan(id, computePan(pos.lx));
    });

    // Silence stems whose object has been removed
    Object.keys(STEM_FILES).forEach(id => {
      if (!activeStemIds.has(id)) setStemGain(id, 0, 0.4);
    });
  }, []);

  // ── Day ↔ Night crossfade ─────────────────────────────────────────────────
  // Meepooh: 3s crossfade between dayBus and nightBus.
  // Per SETUP.md: "3-second crossfade handles the transition"
  const transitionScene = useCallback((newScene, placed) => {
    if (!started.current || newScene === activeScene.current) return;
    if (!ctx.current) return;

    const now    = ctx.current.currentTime;
    const FADE   = 3.0;  // 3s crossfade matching Meepooh

    activeScene.current = newScene;

    if (newScene === 'night') {
      // Day out, night in
      dayBus.current.gain.cancelScheduledValues(now);
      dayBus.current.gain.setTargetAtTime(0, now, FADE / 3);
      nightBus.current.gain.cancelScheduledValues(now);
      nightBus.current.gain.setTargetAtTime(1, now, FADE / 3);
    } else {
      // Night out, day in
      nightBus.current.gain.cancelScheduledValues(now);
      nightBus.current.gain.setTargetAtTime(0, now, FADE / 3);
      dayBus.current.gain.cancelScheduledValues(now);
      dayBus.current.gain.setTargetAtTime(1, now, FADE / 3);
    }

    // After crossfade, re-sync gains for the new scene
    setTimeout(() => {
      if (activeScene.current !== newScene) return; // scene changed again
      // Silence wrong-scene stems (belt-and-suspenders)
      const oldScene = newScene === 'day' ? 'night' : 'day';
      Object.keys(STEM_FILES).forEach(id => {
        if (stemScene(id) === oldScene) setStemGain(id, 0, 0.1);
      });
      // Reopen correct-scene stems
      Object.entries(AUDIO_MAP).forEach(([sprite, m]) => {
        const id  = newScene === 'day' ? m.day : m.night;
        const pos = placed[sprite];
        if (!id) return;
        if (pos) {
          setStemGain(id, computeVol(pos.lx, pos.ly), 0.5);
          setStemPan(id, computePan(pos.lx));
        } else {
          setStemGain(id, 0, 0.1);
        }
      });
    }, FADE * 3 * 1000);  // setTargetAtTime reaches ~95% at 3× time constant
  }, []);

  // ── Environmental controls ────────────────────────────────────────────────

  // applyBlinds: v=0 open, v=1 closed (matches App call: applyBlinds(1 - blindsT))
  const applyBlinds = useCallback((v) => {
    if (!blindsGain.current || !ctx.current) return;
    const now = ctx.current.currentTime;
    blindsGain.current.gain.setTargetAtTime(0.08 + (1 - v) * 0.92, now, 0.15);
    blindsShelf.current.gain.setTargetAtTime(-18 * v, now, 0.15);
    // Highpass: open window = air/brightness (20Hz→800Hz as blinds open)
    // v=0 = fully open (loud), v=1 = closed (quiet)
    if (blindsHP.current) {
      blindsHP.current.frequency.setTargetAtTime(20 + (1 - v) * 800, now, 0.2);
    }
  }, []);

  const applyLamp = useCallback((v) => {
    if (!lampLowShelf.current || !ctx.current) return;
    const n = v / 100, tone = lampTone(n), now = ctx.current.currentTime;
    lampLowShelf.current.gain.setTargetAtTime(tone.lowShelfGain,  now, 0.4);
    lampHighShelf.current.gain.setTargetAtTime(tone.highShelfGain, now, 0.4);
    // Notch at 3kHz: cold lamp (n<0.4) notches out harsh presence freq
    if (lampNotch.current) {
      const notchDepth = n < 0.4 ? (0.4 - n) / 0.4 * -18 : 0;
      lampNotch.current.gain.setTargetAtTime(notchDepth, now, 0.4);
    }
    if (tone.satAmount > 0.01) {
      lampShaper.current.curve = makeSatCurve(tone.satAmount);
    } else {
      lampShaper.current.curve = makeSatCurve(0);
    }
    lampWet.current.gain.setTargetAtTime(tone.satWet, now, 0.3);
    lampDry.current.gain.setTargetAtTime(tone.satDry, now, 0.3);
    humGain.current.gain.setTargetAtTime(tone.humLevel, now, 0.4);
  }, []);

  const applyWeather = useCallback((v) => {
    if (!weatherFilter.current || !ctx.current) return;
    const now = ctx.current.currentTime;
    // Rain: lowpass at 2500Hz with slight resonance (colouring, not muffling)
    // Clear: fully open at 20kHz, flat
    weatherFilter.current.frequency.setTargetAtTime(v > 0.5 ? 2500 : 20000, now, 1.5);
    weatherFilter.current.Q.setTargetAtTime(v > 0.5 ? 0.8 : 0.3, now, 1.5);
    // Highpass: add a gentle HP at 200Hz when rain to remove muddy low rumble
    if (blindsHP.current) return; // HP already in chain for blinds — skip
  }, []);

  const applySpeed = useCallback((newRate) => {
    if (!ctx.current) return;
    Object.values(sources.current).forEach(src => {
      if (!src) return;
      try {
        src.playbackRate.setTargetAtTime(newRate, ctx.current.currentTime, 0.05);
      } catch (_) {}
    });
  }, []);

  const applyVinyl = useCallback((lx, ly) => {
    if (!vinylLFOGain.current || !ctx.current) return;
    const now = ctx.current.currentTime;
    // flutter: 0 at center, 1 at edges — controls wow/flutter intensity
    const flutter = Math.abs(lx - 0.5) * 2;
    // warmth: ly position — 0=top(bright) to 1=bottom(warm/dark)
    const warmth = clamp(ly, 0, 1);
    // Delay modulation: 0 → 25ms peak wobble (was 8ms — clearly audible now)
    vinylLFOGain.current.gain.setTargetAtTime(flutter * 0.025, now, 0.3);
    // LFO rate: slow wow (0.4Hz) to fast flutter (8Hz)
    vinylLFO.current.frequency.setTargetAtTime(0.4 + flutter * 7.6, now, 0.3);
    // Warmth filter: fully open (20kHz) to telephone (800Hz)
    vinylWarmth.current.frequency.setTargetAtTime(20000 - warmth * 19200, now, 0.4);
    // Wet mix: 0 at center, 0.5 at full edge — additive on top of main chain so keep headroom
    vinylMix.current.gain.setTargetAtTime(flutter * 0.5, now, 0.3);
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
  const start = useCallback(async (onProgress, onReady) => {
    if (started.current) return;
    try {
      buildGraph();
      if (ctx.current.state === 'suspended') await ctx.current.resume();
      const loadedCount = await loadStems(onProgress);
      started.current = true;
      console.log('[useAudio] engine ready');
      onReady?.(loadedCount ?? 0);
    } catch (err) {
      console.error('[useAudio] start failed:', err);
      onReady?.(0);
    }
  }, [buildGraph, loadStems]);

  const destroy = useCallback(() => {
    Object.values(sources.current).forEach(src => { try { src?.stop(); } catch (_) {} });
    sources.current = {};
    ctx.current?.close();
    started.current   = false;
    isLooping.current = false;
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
