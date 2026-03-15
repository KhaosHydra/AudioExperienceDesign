import { useState, useRef, useCallback, useEffect, useMemo } from 'react';
import './index.css';

const PX = 4;
const LW = 300;
const LH = 300;
const SW = 720;
const SH = 520;
const OX = SW / 2;
const OY = 350;
const WH = 170;
const MAX_DIST = Math.sqrt(LW * LW + LH * LH) / 2;

const OSC_CONFIG = {
  enabled: false,
  wsUrl: 'ws://localhost:8080',
  oscPrefix: '/soundroom',
  sendRate: 50,
};

const AVATAR = [
  { x: 3, y: 0, c: '#4a2a10' }, { x: 4, y: 0, c: '#4a2a10' }, { x: 5, y: 0, c: '#4a2a10' },
  { x: 2, y: 1, c: '#4a2a10' }, { x: 3, y: 1, c: '#4a2a10' }, { x: 4, y: 1, c: '#4a2a10' }, { x: 5, y: 1, c: '#4a2a10' }, { x: 6, y: 1, c: '#4a2a10' },
  { x: 2, y: 2, c: '#4a2a10' }, { x: 3, y: 2, c: '#f5c6a0' }, { x: 4, y: 2, c: '#f5c6a0' }, { x: 5, y: 2, c: '#f5c6a0' }, { x: 6, y: 2, c: '#4a2a10' },
  { x: 2, y: 3, c: '#f5c6a0' }, { x: 3, y: 3, c: '#3a2a1a' }, { x: 4, y: 3, c: '#f5c6a0' }, { x: 5, y: 3, c: '#3a2a1a' }, { x: 6, y: 3, c: '#f5c6a0' },
  { x: 3, y: 4, c: '#f5c6a0' }, { x: 4, y: 4, c: '#e89070' }, { x: 5, y: 4, c: '#f5c6a0' },
  { x: 4, y: 5, c: '#f0ba90' },
  { x: 2, y: 6, c: '#6888c0' }, { x: 3, y: 6, c: '#6888c0' }, { x: 4, y: 6, c: '#6888c0' }, { x: 5, y: 6, c: '#6888c0' }, { x: 6, y: 6, c: '#6888c0' },
  { x: 1, y: 7, c: '#f0ba90' }, { x: 2, y: 7, c: '#6888c0' }, { x: 3, y: 7, c: '#6888c0' }, { x: 4, y: 7, c: '#7898d0' }, { x: 5, y: 7, c: '#6888c0' }, { x: 6, y: 7, c: '#6888c0' }, { x: 7, y: 7, c: '#f0ba90' },
  { x: 2, y: 8, c: '#6888c0' }, { x: 3, y: 8, c: '#6888c0' }, { x: 4, y: 8, c: '#6888c0' }, { x: 5, y: 8, c: '#6888c0' }, { x: 6, y: 8, c: '#6888c0' },
  { x: 2, y: 9, c: '#5878b0' }, { x: 3, y: 9, c: '#5878b0' }, { x: 4, y: 9, c: '#5878b0' }, { x: 5, y: 9, c: '#5878b0' }, { x: 6, y: 9, c: '#5878b0' },
  { x: 3, y: 10, c: '#4a6838' }, { x: 4, y: 10, c: '#4a6838' }, { x: 5, y: 10, c: '#4a6838' },
  { x: 3, y: 11, c: '#4a6838' }, { x: 4, y: 11, c: '#3a5028' }, { x: 5, y: 11, c: '#4a6838' },
  { x: 3, y: 12, c: '#4a6838' }, { x: 4, y: 12, c: '#4a6838' }, { x: 5, y: 12, c: '#4a6838' },
  { x: 3, y: 13, c: '#3a5028' }, { x: 5, y: 13, c: '#3a5028' },
  { x: 2, y: 14, c: '#5a4030' }, { x: 3, y: 14, c: '#5a4030' }, { x: 5, y: 14, c: '#5a4030' }, { x: 6, y: 14, c: '#5a4030' },
];

const CYCLES = ['day', 'night'];

const OBJECTS = [
  { id: 'plant', name: 'Harmony', soundRole: 'harmony', pixels: [{ x: 1, y: 0, c: '#4a8c3a' }, { x: 2, y: 0, c: '#5aa04a' }, { x: 3, y: 0, c: '#4a8c3a' }, { x: 0, y: 1, c: '#4a8c3a' }, { x: 1, y: 1, c: '#5aa04a' }, { x: 2, y: 1, c: '#6ab85a' }, { x: 3, y: 1, c: '#5aa04a' }, { x: 4, y: 1, c: '#4a8c3a' }, { x: 1, y: 2, c: '#5aa04a' }, { x: 2, y: 2, c: '#4a8c3a' }, { x: 3, y: 2, c: '#5aa04a' }, { x: 2, y: 3, c: '#6b5040' }, { x: 1, y: 4, c: '#c47a5a' }, { x: 2, y: 4, c: '#c47a5a' }, { x: 3, y: 4, c: '#c47a5a' }, { x: 1, y: 5, c: '#b06a4a' }, { x: 2, y: 5, c: '#b06a4a' }, { x: 3, y: 5, c: '#b06a4a' }] },
  { id: 'vinyl', name: 'Melody', soundRole: 'melody', pixels: [{ x: 1, y: 0, c: '#2a2a2a' }, { x: 2, y: 0, c: '#2a2a2a' }, { x: 3, y: 0, c: '#2a2a2a' }, { x: 0, y: 1, c: '#2a2a2a' }, { x: 1, y: 1, c: '#3a3a3a' }, { x: 2, y: 1, c: '#3a3a3a' }, { x: 3, y: 1, c: '#3a3a3a' }, { x: 4, y: 1, c: '#2a2a2a' }, { x: 0, y: 2, c: '#2a2a2a' }, { x: 1, y: 2, c: '#3a3a3a' }, { x: 2, y: 2, c: '#c84040' }, { x: 3, y: 2, c: '#3a3a3a' }, { x: 4, y: 2, c: '#2a2a2a' }, { x: 0, y: 3, c: '#2a2a2a' }, { x: 1, y: 3, c: '#3a3a3a' }, { x: 2, y: 3, c: '#3a3a3a' }, { x: 3, y: 3, c: '#3a3a3a' }, { x: 4, y: 3, c: '#2a2a2a' }, { x: 1, y: 4, c: '#2a2a2a' }, { x: 2, y: 4, c: '#2a2a2a' }, { x: 3, y: 4, c: '#2a2a2a' }] },
  { id: 'guitar', name: 'Bass', soundRole: 'bass', pixels: [{ x: 1, y: 0, c: '#6b5040' }, { x: 1, y: 1, c: '#6b5040' }, { x: 1, y: 2, c: '#6b5040' }, { x: 0, y: 3, c: '#c8a060' }, { x: 1, y: 3, c: '#c8a060' }, { x: 2, y: 3, c: '#c8a060' }, { x: 0, y: 4, c: '#c8a060' }, { x: 1, y: 4, c: '#3a2a1a' }, { x: 2, y: 4, c: '#c8a060' }, { x: 0, y: 5, c: '#b89050' }, { x: 1, y: 5, c: '#b89050' }, { x: 2, y: 5, c: '#b89050' }, { x: 0, y: 6, c: '#a88040' }, { x: 1, y: 6, c: '#a88040' }, { x: 2, y: 6, c: '#a88040' }, { x: 1, y: 7, c: '#a88040' }] },
  { id: 'clock', name: 'Rhythm', soundRole: 'rhythm', pixels: [{ x: 1, y: 0, c: '#8b7050' }, { x: 2, y: 0, c: '#8b7050' }, { x: 3, y: 0, c: '#8b7050' }, { x: 0, y: 1, c: '#8b7050' }, { x: 1, y: 1, c: '#f0e8d0' }, { x: 2, y: 1, c: '#f0e8d0' }, { x: 3, y: 1, c: '#f0e8d0' }, { x: 4, y: 1, c: '#8b7050' }, { x: 0, y: 2, c: '#8b7050' }, { x: 1, y: 2, c: '#f0e8d0' }, { x: 2, y: 2, c: '#3a2a1a' }, { x: 3, y: 2, c: '#f0e8d0' }, { x: 4, y: 2, c: '#8b7050' }, { x: 0, y: 3, c: '#8b7050' }, { x: 1, y: 3, c: '#f0e8d0' }, { x: 2, y: 3, c: '#3a2a1a' }, { x: 3, y: 3, c: '#3a2a1a' }, { x: 4, y: 3, c: '#8b7050' }, { x: 1, y: 4, c: '#8b7050' }, { x: 2, y: 4, c: '#8b7050' }, { x: 3, y: 4, c: '#8b7050' }] },
  { id: 'candle', name: 'Pad', soundRole: 'pad', pixels: [{ x: 1, y: 0, c: '#f0c040' }, { x: 1, y: 1, c: '#f0a020' }, { x: 0, y: 2, c: '#f0e8d0' }, { x: 1, y: 2, c: '#f0e8d0' }, { x: 2, y: 2, c: '#f0e8d0' }, { x: 0, y: 3, c: '#e8d8c0' }, { x: 1, y: 3, c: '#e8d8c0' }, { x: 2, y: 3, c: '#e8d8c0' }, { x: 0, y: 4, c: '#d8c8b0' }, { x: 1, y: 4, c: '#d8c8b0' }, { x: 2, y: 4, c: '#d8c8b0' }, { x: 0, y: 5, c: '#c8b8a0' }, { x: 1, y: 5, c: '#c8b8a0' }, { x: 2, y: 5, c: '#c8b8a0' }] },
  { id: 'book', name: 'Texture', soundRole: 'texture', pixels: [{ x: 0, y: 0, c: '#8b3a3a' }, { x: 1, y: 0, c: '#a04a4a' }, { x: 2, y: 0, c: '#a04a4a' }, { x: 3, y: 0, c: '#8b3a3a' }, { x: 0, y: 1, c: '#8b3a3a' }, { x: 1, y: 1, c: '#f0e8d8' }, { x: 2, y: 1, c: '#f0e8d8' }, { x: 3, y: 1, c: '#8b3a3a' }, { x: 0, y: 2, c: '#7b2a2a' }, { x: 1, y: 2, c: '#f0e8d8' }, { x: 2, y: 2, c: '#f0e8d8' }, { x: 3, y: 2, c: '#7b2a2a' }, { x: 0, y: 3, c: '#7b2a2a' }, { x: 1, y: 3, c: '#7b2a2a' }, { x: 2, y: 3, c: '#7b2a2a' }, { x: 3, y: 3, c: '#7b2a2a' }] },
  { id: 'mug', name: 'Arpeggio', soundRole: 'arp', pixels: [{ x: 0, y: 0, c: '#e8d8c8' }, { x: 1, y: 0, c: '#e8d8c8' }, { x: 2, y: 0, c: '#e8d8c8' }, { x: 0, y: 1, c: '#d8c8b0' }, { x: 1, y: 1, c: '#8b6040' }, { x: 2, y: 1, c: '#d8c8b0' }, { x: 3, y: 1, c: '#d8c8b0' }, { x: 0, y: 2, c: '#d8c8b0' }, { x: 1, y: 2, c: '#d8c8b0' }, { x: 2, y: 2, c: '#d8c8b0' }, { x: 3, y: 2, c: '#d8c8b0' }, { x: 0, y: 3, c: '#c8b8a0' }, { x: 1, y: 3, c: '#c8b8a0' }, { x: 2, y: 3, c: '#c8b8a0' }] },
  { id: 'cat', name: 'Sparkle', soundRole: 'sparkle', pixels: [{ x: 0, y: 0, c: '#f0a050' }, { x: 4, y: 0, c: '#f0a050' }, { x: 0, y: 1, c: '#e89040' }, { x: 1, y: 1, c: '#f0a050' }, { x: 2, y: 1, c: '#f0a050' }, { x: 3, y: 1, c: '#f0a050' }, { x: 4, y: 1, c: '#e89040' }, { x: 0, y: 2, c: '#e89040' }, { x: 1, y: 2, c: '#3a2a1a' }, { x: 2, y: 2, c: '#e89040' }, { x: 3, y: 2, c: '#3a2a1a' }, { x: 4, y: 2, c: '#e89040' }, { x: 0, y: 3, c: '#d88030' }, { x: 1, y: 3, c: '#f0a050' }, { x: 2, y: 3, c: '#e8907a' }, { x: 3, y: 3, c: '#f0a050' }, { x: 4, y: 3, c: '#d88030' }, { x: 0, y: 4, c: '#d88030' }, { x: 1, y: 4, c: '#f0a050' }, { x: 2, y: 4, c: '#f0a050' }, { x: 3, y: 4, c: '#f0a050' }, { x: 4, y: 4, c: '#d88030' }] },
];

const WEATHERS = ['sun', 'rain', 'storm', 'snow', 'fog'];
const W_ICON = { sun: '☀️', rain: '🌧️', storm: '⛈️', snow: '❄️', fog: '🌫️' };

function Sprite({ pixels, scale = PX, style = {} }) {
  const w = Math.max(...pixels.map((p) => p.x)) + 1;
  const h = Math.max(...pixels.map((p) => p.y)) + 1;
  return (
    <canvas
      ref={(c) => {
        if (!c) return;
        c.width = w * scale;
        c.height = h * scale;
        const x = c.getContext('2d');
        x.clearRect(0, 0, c.width, c.height);
        x.imageSmoothingEnabled = false;
        pixels.forEach((p) => {
          x.fillStyle = p.c;
          x.fillRect(p.x * scale, p.y * scale, scale, scale);
        });
      }}
      style={{ ...style, imageRendering: 'pixelated', width: w * scale, height: h * scale }}
    />
  );
}

function parseColor(c) {
  if (c.startsWith('rgb')) {
    const m = c.match(/[\d.]+/g);
    return m ? m.map(Number) : [0, 0, 0];
  }
  const h = c.replace('#', '');
  return [parseInt(h.slice(0, 2), 16), parseInt(h.slice(2, 4), 16), parseInt(h.slice(4, 6), 16)];
}

function lc(a, b, t) {
  const A = parseColor(a);
  const B = parseColor(b);
  return `rgb(${A.map((v, i) => Math.round(v + (B[i] - v) * t)).join(',')})`;
}

function getCol(dn, lp) {
  const n = dn / 100;
  const l = lp / 100;
  let wL = lc('#f0dcc0', '#b09880', n);
  let wR = lc('#e6d0b4', '#a89078', n);
  wL = lc(wL, '#ffe8c8', l * 0.35);
  wL = lc(wL, '#d8ccc0', (1 - l) * 0.08);
  wR = lc(wR, '#ffe0c0', l * 0.3);
  wR = lc(wR, '#d0c4b8', (1 - l) * 0.06);
  let fl = lc('#a07058', '#5a3830', n);
  let flD = lc('#8c6048', '#4a2c24', n);
  fl = lc(fl, '#b88068', l * 0.18);
  fl = lc(fl, '#807068', (1 - l) * 0.06);
  flD = lc(flD, '#a07058', l * 0.14);
  const sky = lc('#88d0f0', '#101838', n);
  const amb = n * (0.12 - l * 0.05);
  return { wL, wR, fl, flD, sky, amb, n, l };
}

const toS = (lx, ly) => ({ sx: OX + (lx - ly), sy: OY + (lx + ly) * 0.5 - LH * 0.5 });
const toL = (sx, sy) => {
  const dx = sx - OX;
  const dy = sy - OY + LH * 0.5;
  return { lx: (dx + dy * 2) / 2, ly: (dy * 2 - dx) / 2 };
};
const flD = () => ({ top: toS(0, 0), right: toS(LW, 0), bot: toS(LW, LH), left: toS(0, LH) });

function CeilingLight({ lamp, onChange, cx, topY }) {
  const ref = useRef(null);
  const dr = useRef(false);
  const lastA = useRef(0);
  const accum = useRef(0);
  const ka = -135 + (lamp / 100) * 270;
  const g = lamp / 100;
  const bulb = `rgb(255,${210 + Math.round(g * 35)},${125 + Math.round(g * 55)})`;

  const onD = (e) => {
    e.stopPropagation();
    e.preventDefault();
    dr.current = true;
    const r = ref.current.getBoundingClientRect();
    const cx2 = r.left + r.width / 2;
    const cy = r.top + r.height / 2;
    lastA.current = Math.atan2(e.clientY - cy, e.clientX - cx2);
    accum.current = lamp;

    const mv = (ev) => {
      if (!dr.current) return;
      const a = Math.atan2(ev.clientY - cy, ev.clientX - cx2);
      let delta = a - lastA.current;
      if (delta > Math.PI) delta -= 2 * Math.PI;
      if (delta < -Math.PI) delta += 2 * Math.PI;
      accum.current = Math.max(0, Math.min(100, accum.current + delta * (180 / Math.PI) * 0.4));
      lastA.current = a;
      onChange(Math.round(accum.current));
    };

    const up = () => {
      dr.current = false;
      window.removeEventListener('pointermove', mv);
      window.removeEventListener('pointerup', up);
    };
    window.addEventListener('pointermove', mv);
    window.addEventListener('pointerup', up);
  };

  const fy = topY + 6;
  return (
    <g>
      <line x1={cx} y1={topY - 12} x2={cx} y2={fy + 8} stroke="#777" strokeWidth={1.5} />
      <ellipse cx={cx} cy={fy + 11} rx={16} ry={6} fill="#555" stroke="#444" strokeWidth={1} />
      <circle cx={cx} cy={fy + 18} r={6} fill={bulb} opacity={0.35 + g * 0.65} style={{ transition: 'all .3s' }} />
      <defs><linearGradient id="cg" x1="0" y1="0" x2="0" y2="1"><stop offset="0%" stopColor={bulb} stopOpacity={g * 0.25} /><stop offset="100%" stopColor={bulb} stopOpacity={0} /></linearGradient></defs>
      <polygon points={`${cx},${fy + 22} ${cx - 130 - g * 50},${fy + 260} ${cx + 130 + g * 50},${fy + 260}`} fill="url(#cg)" style={{ pointerEvents: 'none', transition: 'all .4s' }} />
      <circle cx={cx} cy={fy + 18} r={22 + g * 18} fill={bulb} opacity={g * 0.08} style={{ pointerEvents: 'none', transition: 'all .4s' }} />
      <g transform={`translate(${cx},${fy + 42})`}>
        <circle r={10} fill="none" stroke="rgba(255,255,255,0.08)" strokeWidth={1.5} />
        <circle ref={ref} r={8} fill="#4a4040" stroke="#6a5a5a" strokeWidth={1.5} onPointerDown={onD} style={{ cursor: 'grab' }} />
        <line x1={0} y1={0} x2={Math.cos((ka * Math.PI) / 180) * 6} y2={Math.sin((ka * Math.PI) / 180) * 6} stroke="#c8a060" strokeWidth={2} strokeLinecap="round" style={{ pointerEvents: 'none' }} />
      </g>
    </g>
  );
}

function SunMoon({ dn, onChange, cx, cy, r }) {
  const ref = useRef(null);
  const dr = useRef(false);
  const ang = (dn / 100) * Math.PI;
  const ox = cx - Math.cos(ang) * r;
  const oy = cy - Math.sin(ang) * r;
  const sun = dn < 55;

  const onD = (e) => {
    e.stopPropagation();
    e.preventDefault();
    dr.current = true;
    const mv = (ev) => {
      if (!dr.current || !ref.current) return;
      const rc = ref.current.closest('svg').getBoundingClientRect();
      let a = Math.atan2(Math.max(0, -(ev.clientY - rc.top - cy)), -(ev.clientX - rc.left - cx));
      a = Math.max(0, Math.min(Math.PI, a));
      onChange(Math.round((a / Math.PI) * 100));
    };
    const up = () => {
      dr.current = false;
      window.removeEventListener('pointermove', mv);
      window.removeEventListener('pointerup', up);
    };
    window.addEventListener('pointermove', mv);
    window.addEventListener('pointerup', up);
  };

  return (
    <g ref={ref}>
      <path d={`M${cx - r} ${cy} A${r} ${r} 0 0 1 ${cx + r} ${cy}`} fill="none" stroke="rgba(255,255,255,0.07)" strokeWidth={1} strokeDasharray="3,5" />
      <circle cx={ox} cy={oy} r={sun ? 11 : 9} fill={sun ? '#f8d040' : '#dde0e8'} stroke={sun ? '#d09010' : '#b0b0c0'} strokeWidth={1.5} style={{ cursor: 'grab', filter: sun ? 'drop-shadow(0 0 8px rgba(255,200,50,0.5))' : 'drop-shadow(0 0 5px rgba(200,200,240,0.3))', transition: 'fill .5s,stroke .5s' }} onPointerDown={onD} />
    </g>
  );
}

function useOSC(audioState) {
  const ws = useRef(null);
  const lastSend = useRef(0);

  useEffect(() => {
    if (!OSC_CONFIG.enabled) return;
    try {
      ws.current = new WebSocket(OSC_CONFIG.wsUrl);
    } catch {
      ws.current = null;
    }
    return () => {
      if (ws.current) ws.current.close();
    };
  }, []);

  useEffect(() => {
    if (!OSC_CONFIG.enabled || !ws.current || ws.current.readyState !== 1) return;
    const now = Date.now();
    if (now - lastSend.current < 1000 / OSC_CONFIG.sendRate) return;
    lastSend.current = now;
    ws.current.send(JSON.stringify({ address: OSC_CONFIG.oscPrefix, args: audioState }));
  }, [audioState]);
}

export default function App() {
  const roomRef = useRef(null);
  const [placed, setPlaced] = useState([]);
  const [drag, setDrag] = useState(null);
  const [dOff, setDOff] = useState({ x: 0, y: 0 });
  const [sel, setSel] = useState(null);
  const [dbg, setDbg] = useState(false);
  const [bDrag, setBDrag] = useState(false);
  const [lamp, setLamp] = useState(60);
  const [blinds, setBlinds] = useState(80);
  const [weather, setWeather] = useState('sun');
  const [dn, setDn] = useState(20);

  const bY = useRef(0);
  const bV = useRef(0);
  const col = getCol(dn, lamp);
  const av = { lx: LW / 2, ly: LH / 2 };
  const avS = toS(av.lx, av.ly);
  const f = flD();

  const wLP = `${f.left.sx},${f.left.sy} ${f.top.sx},${f.top.sy} ${f.top.sx},${f.top.sy - WH} ${f.left.sx},${f.left.sy - WH}`;
  const wRP = `${f.top.sx},${f.top.sy} ${f.right.sx},${f.right.sy} ${f.right.sx},${f.right.sy - WH} ${f.top.sx},${f.top.sy - WH}`;
  const fP = `${f.top.sx},${f.top.sy} ${f.right.sx},${f.right.sy} ${f.bot.sx},${f.bot.sy} ${f.left.sx},${f.left.sy}`;

  const dx = f.right.sx - f.top.sx;
  const dy = f.right.sy - f.top.sy;
  const wTL = { x: f.top.sx + dx * 0.32, y: f.top.sy + dy * 0.32 - WH * 0.75 };
  const wTR = { x: f.top.sx + dx * 0.72, y: f.top.sy + dy * 0.72 - WH * 0.75 };
  const wBL = { x: f.top.sx + dx * 0.32, y: f.top.sy + dy * 0.32 - WH * 0.28 };
  const wBR = { x: f.top.sx + dx * 0.72, y: f.top.sy + dy * 0.72 - WH * 0.28 };
  const wCX = (wTL.x + wTR.x + wBL.x + wBR.x) / 4;
  const wCY = (wTL.y + wTR.y + wBL.y + wBR.y) / 4;
  const wH = wBL.y - wTL.y;
  const ceilX = f.top.sx;
  const ceilY = f.top.sy - WH;
  const bCov = 100 - blinds;

  const onPD = useCallback((e, i) => {
    e.stopPropagation();
    e.preventDefault();
    const r = roomRef.current.getBoundingClientRect();
    const s = toS(placed[i].lx, placed[i].ly);
    setDrag(i);
    setDOff({ x: e.clientX - r.left - s.sx, y: e.clientY - r.top - s.sy });
    setSel(i);
  }, [placed]);

  const onPM = useCallback((e) => {
    if (drag === null && !bDrag) return;
    e.preventDefault();
    if (bDrag) {
      setBlinds(Math.max(0, Math.min(100, Math.round(bV.current - (e.clientY - bY.current) * 0.8))));
      return;
    }
    const r = roomRef.current.getBoundingClientRect();
    const { lx, ly } = toL(e.clientX - r.left - dOff.x, e.clientY - r.top - dOff.y);
    setPlaced((p) => p.map((o, i) => (i === drag ? { ...o, lx: Math.max(10, Math.min(LW - 10, lx)), ly: Math.max(10, Math.min(LH - 10, ly)) } : o)));
  }, [drag, dOff, bDrag]);

  const onPU = useCallback(() => {
    setDrag(null);
    setBDrag(false);
  }, []);

  useEffect(() => {
    if (drag !== null || bDrag) {
      window.addEventListener('pointermove', onPM);
      window.addEventListener('pointerup', onPU);
      return () => {
        window.removeEventListener('pointermove', onPM);
        window.removeEventListener('pointerup', onPU);
      };
    }
    return undefined;
  }, [drag, bDrag, onPM, onPU]);

  const onBD = (e) => {
    e.stopPropagation();
    e.preventDefault();
    setBDrag(true);
    bY.current = e.clientY;
    bV.current = blinds;
  };

  const addObj = (od) => {
    setPlaced((prev) => {
      const next = [...prev, { ...od, lx: 80 + Math.random() * 140, ly: 80 + Math.random() * 140, iid: Date.now() + Math.random() }];
      setSel(next.length - 1);
      return next;
    });
  };

  const rmObj = (i) => {
    setPlaced((p) => p.filter((_, j) => j !== i));
    setSel(null);
  };

  const clamp = (v, lo = 0, hi = 1) => Math.max(lo, Math.min(hi, v));
  const timeNorm = dn / 100;
  const dayVol = Math.round(Math.sqrt(1 - timeNorm) * 100) / 100;
  const nightVol = Math.round(Math.sqrt(timeNorm) * 100) / 100;

  const audioState = {
    environment: { lampWarmth: lamp, blindsVolume: blinds, weather, timeOfDay: dn, cycles: CYCLES, dayVolume: dayVol, nightVolume: nightVol },
    listener: { x: Math.round(av.lx), y: Math.round(av.ly) },
    layers: placed.map((o) => {
      const dist = Math.sqrt((o.lx - av.lx) ** 2 + (o.ly - av.ly) ** 2);
      const ang = Math.atan2(o.ly - av.ly, o.lx - av.lx);
      const distNorm = clamp(dist / MAX_DIST);
      return {
        instanceId: o.iid,
        id: o.id,
        soundRole: o.soundRole,
        name: o.name,
        x: Math.round(o.lx),
        y: Math.round(o.ly),
        distance: Math.round(dist),
        pan: Math.round(Math.sin(ang) * 100) / 100,
        volume: Math.round(clamp(1 - distNorm) * 100) / 100,
        reverbSend: Math.round(distNorm * 100) / 100,
        active: 1,
      };
    }),
  };

  useOSC(audioState);

  const sorted = useMemo(() => {
    const it = placed.map((o, i) => ({ o, i, d: o.lx + o.ly }));
    it.sort((a, b) => a.d - b.d);
    return it;
  }, [placed]);

  const avD = av.lx + av.ly;
  const boards = useMemo(() => {
    const l = [];
    for (let i = 1; i < 16; i += 1) {
      const t = i / 16;
      l.push({ x1: f.top.sx + (f.left.sx - f.top.sx) * t, y1: f.top.sy + (f.left.sy - f.top.sy) * t, x2: f.right.sx + (f.bot.sx - f.right.sx) * t, y2: f.right.sy + (f.bot.sy - f.right.sy) * t });
    }
    return l;
  }, [f]);

  const tint = lamp > 50 ? `rgba(255,218,140,${((lamp - 50) / 100) * 0.08})` : `rgba(140,168,220,${((50 - lamp) / 100) * 0.07})`;
  const bgTop = lc('#d8a0d0', '#6a3880', col.n);
  const bgBot = lc('#a060b0', '#301848', col.n);
  const cycleWeather = (e) => {
    e.stopPropagation();
    setWeather(WEATHERS[(WEATHERS.indexOf(weather) + 1) % WEATHERS.length]);
  };
  const timeLabel = dn < 50 ? 'day' : 'night';
  const selectedLayer = sel !== null && placed[sel] ? audioState.layers.find((layer) => layer.instanceId === placed[sel].iid) : null;

  return (
    <div style={{ width: '100%', minHeight: '100vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', background: `linear-gradient(160deg, ${bgTop} 0%, ${bgBot} 100%)`, fontFamily: "'Courier New',monospace", padding: 12, boxSizing: 'border-box', transition: 'background .8s' }}>
      <div className="tb"><h1>sound room</h1><span>drag objects to add layers · click window for weather · drag sun for time</span></div>
      <div className="rc" ref={roomRef} onClick={() => setSel(null)}>
        {/* svg unchanged from prototype */}
        <svg width={SW} height={SH} style={{ position: 'absolute', top: 0, left: 0 }} xmlns="http://www.w3.org/2000/svg"><rect width={SW} height={SH} fill={`url(#bgGrad)`} /><defs><linearGradient id="bgGrad" x1="0" y1="0" x2="0.3" y2="1"><stop offset="0%" stopColor={bgTop} /><stop offset="100%" stopColor={bgBot} /></linearGradient></defs><polygon points={wLP} fill={col.wL} /><polygon points={wRP} fill={col.wR} /><polygon points={fP} fill={col.fl} /><polygon points={`${wTL.x},${wTL.y} ${wTR.x},${wTR.y} ${wBR.x},${wBR.y} ${wBL.x},${wBL.y}`} fill={col.sky} style={{ cursor: 'pointer' }} onClick={cycleWeather} /><SunMoon dn={dn} onChange={setDn} cx={wCX} cy={wCY} r={wH * 0.55} /><text x={wBR.x - 14} y={wBR.y - 6} fontSize={14}>{W_ICON[weather]}</text><CeilingLight lamp={lamp} onChange={setLamp} cx={ceilX} topY={ceilY} />{boards.map((l, i) => <line key={i} x1={l.x1} y1={l.y1} x2={l.x2} y2={l.y2} stroke="rgba(40,20,10,.18)" strokeWidth={1.2} />)}{bCov > 0 && <polygon points={`${wTL.x},${wTL.y} ${wTR.x},${wTR.y} ${wTR.x},${wTR.y + (wBR.y - wTR.y) * (bCov / 100)} ${wTL.x},${wTL.y + (wBL.y - wTL.y) * (bCov / 100)}`} fill="#ddd0a8" />}</svg>

        {(() => {
          const all = [];
          sorted.forEach(({ o, i, d }) => all.push({ t: 'o', o, i, d, s: toS(o.lx, o.ly) }));
          all.push({ t: 'a', d: avD, s: avS });
          all.sort((a, b) => a.d - b.d);
          return all.map((it, idx) => (it.t === 'a'
            ? <div key="av" className="av" style={{ left: it.s.sx, top: it.s.sy, zIndex: 10 + idx }}><Sprite pixels={AVATAR} scale={PX} /></div>
            : <div key={it.o.iid} className={`po${drag === it.i ? ' d' : ''}${sel === it.i ? ' s' : ''}`} style={{ left: it.s.sx, top: it.s.sy, zIndex: 10 + idx }} onPointerDown={(e) => onPD(e, it.i)} onClick={(e) => { e.stopPropagation(); setSel(it.i); }}><Sprite pixels={it.o.pixels} scale={PX} /></div>));
        })()}

        {sel !== null && placed[sel] && <div className="oi" onClick={(e) => e.stopPropagation()}>
          <div className="nm">{placed[sel].name} — {placed[sel].soundRole}</div>
          <div className="sr">musical layer</div>
          {selectedLayer && <div style={{ fontSize: 9, opacity: 0.6, lineHeight: 1.4 }}>pan {selectedLayer.pan} · vol {selectedLayer.volume} · reverb {selectedLayer.reverbSend}</div>}
          <button className="rb" onClick={() => rmObj(sel)}>remove layer</button>
        </div>}

        <div className="lc">{placed.length}/8 layers<br />{timeLabel} · {weather}</div>
        <div className="dh">{timeLabel}</div>

        <button className="dt" onClick={(e) => { e.stopPropagation(); setDbg(!dbg); }} title="Debug">{dbg ? '×' : '{'}</button>
        {dbg && <div className="dp" onClick={(e) => e.stopPropagation()}><div style={{ color: '#5a7a4a', marginBottom: 6 }}>// audioState → MaxMSP</div><pre>{JSON.stringify(audioState, null, 2)}</pre></div>}
      </div>

      <div className="tr">{OBJECTS.map((o) => {
        const alreadyPlaced = placed.some((p) => p.id === o.id);
        return <div key={o.id} className="ti" style={{ opacity: alreadyPlaced ? 0.4 : 1, pointerEvents: alreadyPlaced ? 'none' : 'auto' }} onClick={() => addObj(o)}><Sprite pixels={o.pixels} scale={2} /><span>{o.name}</span></div>;
      })}</div>
    </div>
  );
}
