# Sound Room — Project Structure

## Folder Layout

```
your-vite-project/
├── public/
│   └── stems/
│       ├── day/                          ← Morning stems go here
│       │   ├── Morning_1_Piano_Main.m4a
│       │   ├── Morning_2_Piano_Bass.m4a
│       │   ├── Morning_3_Melody.m4a
│       │   ├── Morning_4_Sparkle.m4a
│       │   ├── Morning_5_Piano_Appregio.m4a
│       │   ├── Morning_6_Violin.m4a
│       │   ├── Morning_7_Drone.m4a
│       │   ├── Morning_8_Piano_Chord_1.m4a
│       │   └── Morning_9_Piano_Chord_2.m4a
│       └── night/                        ← Night stems go here
│           ├── Night_1_Synth_Appregio_Low.m4a
│           ├── Night_2_Synth_Appregio_High.m4a
│           ├── Night_3_Synth_Sparkle.m4a
│           ├── Night_4_Bass.m4a
│           ├── Night_5_Melody_1.m4a
│           ├── Night_6_Pad_Low.m4a
│           ├── Night_7_Clap.m4a
│           ├── Night_8_Synth_Rhythm.m4a
│           ├── Night_9_Violin.m4a
│           └── Night_10_Drum.m4a
├── src/
│   ├── App.jsx                           ← Main UI component (isometric room)
│   ├── index.css                         ← Styles
│   ├── main.jsx                          ← Entry point
│   └── audio/                            ← SOUND ENGINE (add this folder)
│       ├── SoundEngine.js                ← Core Web Audio engine
│       ├── useSoundEngine.js             ← React hook
│       └── layerMap.js                   ← Maps UI objects → audio layers
├── index.html
├── package.json
└── vite.config.js
```

## Setup Steps

1. Copy the `audio/` folder into your existing `src/` directory
2. Create `public/stems/day/` and `public/stems/night/` folders
3. Put Morning_*.m4a files in `public/stems/day/`
4. Put Night_*.m4a files in `public/stems/night/`
5. Update your App.jsx to use the sound engine (see Integration below)

## Integration with App.jsx

Add to the top of your App.jsx:

```jsx
import useSoundEngine from './audio/useSoundEngine';
import { setObjectActive, setObjectSpatial } from './audio/layerMap';
```

Inside your App component, add:

```jsx
// Sound engine hook
const { engine, isReady, isStarted, start } = useSoundEngine();

// Start audio on first click (browser requires user gesture)
const handleFirstClick = () => {
  if (!isStarted && isReady) start();
};

// Sync cycle with day/night toggle
useEffect(() => {
  if (!engine || !isStarted) return;
  engine.setCycle(dn >= 50 ? 'night' : 'day');
}, [engine, isStarted, dn]);

// Sync blinds
useEffect(() => {
  if (!engine || !isStarted) return;
  engine.setBlinds(blinds);
}, [engine, isStarted, blinds]);

// Sync lamp
useEffect(() => {
  if (!engine || !isStarted) return;
  engine.setLamp(lamp);
}, [engine, isStarted, lamp]);

// Sync weather (rain only for now)
useEffect(() => {
  if (!engine || !isStarted) return;
  engine.setRain(weather === 'rain' || weather === 'storm');
}, [engine, isStarted, weather]);

// Sync placed objects
useEffect(() => {
  if (!engine || !isStarted) return;
  // Deactivate all layers first, then activate placed ones
  const allRoles = ['harmony','melody','bass','rhythm','pad','texture','arp','sparkle'];
  for (const role of allRoles) {
    const isPlaced = placed.some(p => p.soundRole === role);
    if (!isPlaced) {
      setObjectActive(engine, role, false);
    }
  }
  for (const obj of placed) {
    const spatial = computeSpatial(obj.lx, obj.ly, av.lx, av.ly);
    setObjectActive(engine, obj.soundRole, true, {
      azimuth: spatial.azimuthDeg,
      elevation: spatial.elevationDeg,
      distance: spatial.distNorm,
    });
  }
}, [engine, isStarted, placed]);
```

Add onClick to the room container:
```jsx
<div className="rc" ref={roomRef} onClick={() => { handleFirstClick(); setSel(null); }}>
```

Add a "click to start" overlay when audio hasn't started:
```jsx
{!isStarted && isReady && (
  <div style={{
    position: 'absolute', inset: 0, zIndex: 50,
    display: 'flex', alignItems: 'center', justifyContent: 'center',
    background: 'rgba(0,0,0,0.3)', cursor: 'pointer', borderRadius: 6,
  }} onClick={handleFirstClick}>
    <span style={{ color: '#f0dcc0', fontSize: 14, fontFamily: 'Courier New' }}>
      click to start audio
    </span>
  </div>
)}
```

## How It Works

1. **All 19 stems loop simultaneously** from the start
2. **All layers start silent** (gain = 0)
3. **Day/night toggle** crossfades between the day bus and night bus (3s transition)
4. **Placing an object** activates its mapped layers in both cycles
5. **Moving an object** updates azimuth/elevation/distance on its PannerNode
6. **Blinds** control master volume + lowpass on outside ambience
7. **Lamp** adds low-mid warmth boost + reduces high shelf
8. **Rain** reduces outside brightness, increases reverb, reduces sparkle

## BPM Difference (80 vs 110)

Day stems are 80 BPM (16 bars) and night stems are 110 BPM (8 bars).
Since they never play simultaneously (crossfade ensures one is silent
while the other plays), the BPM difference doesn't matter — each cycle
has its own musical feel. The 3-second crossfade handles the transition.
