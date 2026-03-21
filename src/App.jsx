/**
 * SOUND ROOM — v2
 *
 * NEW in this version:
 *  - Info panel (right side, like Meepooh): shows live signal chain state
 *  - Ambient sounds: Rain, Storm, Ocean, Fireplace — Web Audio, no files needed
 *  - Canvas rain: animated pixel raindrops drawn between sky and window layers
 *    when weather = 'rain', clipped to the window opening area
 *  - Effect objects: Coffee/Vinyl/Laptop send depth (0-1) to Max via OSC
 *    on place, drag (throttled 50ms), and remove (sends 0).
 */
import { useState, useRef, useCallback, useEffect } from 'react';
import './index.css';
import useOSC from './useOSC';
import useAudio from './useAudio';

// ─── CANVAS SIZE ─────────────────────────────────────────────────────────────
const W = 512, H = 384;
const SCALE = 1.45;
const DW = Math.round(W * SCALE), DH = Math.round(H * SCALE);
const TILE_H_PX = 16;
const TILE_GRID = 8;
const SNAP_DIV  = 32;

// ─── FLOOR CORNERS ────────────────────────────────────────────────────────────
const FLOOR = {
  top:   { x: 256, y: 135 },
  right: { x: 500, y: 256 },
  bot:   { x: 255, y: 378 },
  left:  { x: 11,  y: 256 },
};

const LAMP_APEX  = { x: 255, y: 54 };
const LAMP_ANGLE = 100;
const LAMP_REACH = 560;

const FAIRY_BULBS = [
  {x:247,y:33},{x:223,y:61},{x:192,y:69},{x:172,y:80},
  {x:144,y:106},{x:107,y:114},{x:78,y:128},{x:54,y:149},{x:19,y:161},
];

// ─── WINDOW POLYGON — 4 corners where rain is clipped (canvas px) ────────────
// Editable live via Debug panel → Rain Polygon mapper.
const DEFAULT_WINDOW_POLY = [
  { x: 400, y: 97  },
  { x: 488, y: 138 },
  { x: 488, y: 209 },
  { x: 400, y: 166 },
];

// ─── ANCHORS ──────────────────────────────────────────────────────────────────
const ANCHORS = {
  'Room - Bookshelf.png':      { lx:0.0625, ly:0.7813, z:0, naturalFoot:{x:79,  y:268}, anchorOffsetX:-1.5, anchorOffsetY:33.5, fp:{w:1,   d:3.5, h:5.25} },
  'Room - Cat.png':            { lx:0.1875, ly:0.1094, z:0, naturalFoot:{x:277, y:160}, anchorOffsetX:0,    anchorOffsetY:7.5,  fp:{w:1,   d:1,   h:0.75} },
  'Room - Coffee.png':         { lx:0.6563, ly:0.7188, z:0, naturalFoot:{x:239, y:306}, anchorOffsetX:0,    anchorOffsetY:0,    fp:{w:0.5, d:0.5, h:0.75} },
  'Room - Duck teddy.png':     { lx:0.1875, ly:0.625,  z:0, naturalFoot:{x:147, y:238}, anchorOffsetX:0,    anchorOffsetY:4.5,  fp:{w:0.5, d:0.5, h:1.75} },
  'Room - Frog Teddy.png':     { lx:0.1719, ly:0.9531, z:0, naturalFoot:{x:68,  y:280}, anchorOffsetX:-2,   anchorOffsetY:9,    fp:{w:0.5, d:0.75,h:1.75} },
  'Room - Laptop.png':         { lx:0.7031, ly:0.5781, z:0, naturalFoot:{x:288, y:304}, anchorOffsetX:-4,   anchorOffsetY:17,   fp:{w:1,   d:1.25,h:2}    },
  'Room - Plant oval base.png':{ lx:0.0938, ly:0.4219, z:0, naturalFoot:{x:173, y:196}, anchorOffsetX:-2,   anchorOffsetY:12.5, fp:{w:1,   d:1,   h:2.25} },
  'Room - Plant.png':          { lx:0.9219, ly:0.0938, z:0, naturalFoot:{x:461, y:272}, anchorOffsetX:-2,   anchorOffsetY:15,   fp:{w:1,   d:1,   h:3.25} },
  'Room - Speakers.png':       { lx:0.5,    ly:0.1875, z:0, naturalFoot:{x:332, y:222}, anchorOffsetX:-1.5, anchorOffsetY:16,   fp:{w:0.5, d:1.5, h:1.25} },
  'Room - Table.png':          { lx:0.9063, ly:0.7656, z:0, naturalFoot:{x:289, y:374}, anchorOffsetX:-2,   anchorOffsetY:34,   fp:{w:1.5, d:3.75,h:3.25} },
  'Room - Vinyl Player.png':   { lx:0.7031, ly:0.4063, z:0, naturalFoot:{x:331, y:284}, anchorOffsetX:-1.5, anchorOffsetY:14.5, fp:{w:1.25,d:1,   h:0.5}  },
  'Room - Bed.png':            { lx:0.2188, ly:0.1719, z:0, naturalFoot:{x:274, y:216}, anchorOffsetX:1.5,  anchorOffsetY:43,   fp:{w:3.5, d:2,   h:2.25} },
  'Room - Avatar.png':         { lx:0.5,    ly:0.5,    z:0, naturalFoot:{x:257, y:240}, anchorOffsetX:-2,   anchorOffsetY:0     },
  'Room - Sun.png':            { lx:0.7188, ly:0.0313, z:0, naturalFoot:{x:423, y:146}, anchorOffsetX:0,    anchorOffsetY:0     },
  'Room - Moon.png':           { lx:0.9688, ly:0.0938, z:0, naturalFoot:{x:467, y:168}, anchorOffsetX:0,    anchorOffsetY:0     },
  'Room - Blinds.png':         { lx:0.7422, ly:-0.0234,z:0, naturalFoot:{x:443, y:224}, anchorOffsetX:0.5,  anchorOffsetY:2     },
};

const KEYFRAMES = {
  'Room - Sun.png':    [{ t:0, lx:0.3906, ly:-0.2969, z:0 }, { t:1, lx:0.7969, ly:0.1094,  z:0 }],
  'Room - Moon.png':   [{ t:0, lx:0.4738, ly:-0.2969, z:0 }, { t:1, lx:0.9738, ly:0.2188,  z:0 }],
  'Room - Blinds.png': [{ t:0, lx:0.7422, ly:-0.0234, z:0  }, { t:1, lx:0.7422, ly:-0.0234, z:4.5 }],
};

const LAYER_ORDER = [
  { name:'Room - Background.png',            type:'bg'          },
  { name:'Room - Floor.png',                 type:'room'        },
  { name:'Room - Left Wall.png',             type:'room'        },
  { name:'Room - Fairy lights - String.png', type:'static'      },
  { name:'Room - Fairy lights - Bulb.png',   type:'light'       },
  { name:'Room - Right Wall.png',            type:'room'        },
  { name:'Room - Day sky.png',               type:'bg'          },
  { name:'Room - Sun.png',                   type:'animated'    },
  { name:'Room - Night sky.png',             type:'bg'          },
  { name:'Room - Moon.png',                  type:'animated'    },
  { name:'Room - Floor cover.png',           type:'room'        },
  { name:'Room - Window.png',                type:'static'      },
  { name:'Room - Blinds.png',                type:'interactive' },
  { name:'Room - Avatar.png',                type:'character'   },
  { name:'Room - Lamp.png',                  type:'light'       },
  { name:'Room - blinds cover.png',          type:'static'      },
];

// ─── LAPTOP BITCRUSHER STATES (match useAudio.js LAPTOP_STATES) ──────────────
// OSC values map to MaxMSP scale 0-1 → degrade~ params (0=clean, 0.35=lo-fi, 0.7=glitch)
const LAPTOP_OSC_VALUES = { 'CLEAN': 0.0, 'LO-FI': 0.6, 'GLITCH': 0.88 };


// oscAddress — if set, this object sends depth (0–1) to MaxMSP on place/drag/remove.
// soundRole:null — pure effect objects don't trigger stems.
const OBJECTS_DEF = [
  { id:'Bed',       sprite:'Room - Bed.png',             soundRole:'melody2',  name:'Bed'          },
  { id:'Bookshelf', sprite:'Room - Bookshelf.png',       soundRole:'bass',     name:'Bookshelf'    },
  { id:'Table',     sprite:'Room - Table.png',           soundRole:'melody',   name:'Table'        },
  { id:'Plant',     sprite:'Room - Plant.png',           soundRole:'texture',  name:'Plant (box)'  },
  { id:'PlantOval', sprite:'Room - Plant oval base.png', soundRole:'harmony',  name:'Plant (oval)' },
  { id:'Cat',       sprite:'Room - Cat.png',             soundRole:'sparkle',  name:'Cat'          },
  { id:'Coffee',    sprite:'Room - Coffee.png',          soundRole:null,       name:'Coffee Mug',  isSpeed:true, oscAddress:'/soundroom/coffee' },
  { id:'Duck',      sprite:'Room - Duck teddy.png',      soundRole:'pad',      name:'Duck Teddy'   },
  { id:'Frog',      sprite:'Room - Frog Teddy.png',      soundRole:'arp',      name:'Frog Teddy'   },
  { id:'Laptop',    sprite:'Room - Laptop.png',          soundRole:null,       name:'Laptop',      oscAddress:'/soundroom/laptop' },
  { id:'Speakers',  sprite:'Room - Speakers.png',        soundRole:'rhythm',   name:'Speakers'     },
  { id:'Vinyl',     sprite:'Room - Vinyl Player.png',    soundRole:null,       name:'Vinyl Player', oscAddress:'/soundroom/vinyl' },
];

// ─── AMBIENT SOUND DEFINITIONS ───────────────────────────────────────────────
// Ambience definitions — OSC-only, synthesised in MaxMSP.
// Each sends /soundroom/amb/<id> with a 0-1 gain value.
const AMBIENTS = [
  { id:'rain',      label:'Rain',      icon:'🌧', desc:'Soft rain on glass',  color:'#6090c0', oscAddress:'/soundroom/amb/rain'  },
  { id:'storm',     label:'Storm',     icon:'⛈',  desc:'Thunder & heavy rain', color:'#7070a0', oscAddress:'/soundroom/amb/storm' },
  { id:'ocean',     label:'Ocean',     icon:'🌊', desc:'Distant waves',        color:'#408090', oscAddress:'/soundroom/amb/ocean' },
  { id:'fireplace', label:'Fireplace', icon:'🔥', desc:'Crackling fire',       color:'#c06020', oscAddress:'/soundroom/amb/fire'  },
];

// ─── INTERACTION ZONES ────────────────────────────────────────────────────────
function ptInZone(x, y, zone) {
  let inside = false;
  for (let i=0, j=zone.length-1; i<zone.length; j=i++) {
    const xi=zone[i].x, yi=zone[i].y, xj=zone[j].x, yj=zone[j].y;
    if ((yi>y)!==(yj>y) && x<(xj-xi)*(y-yi)/(yj-yi)+xi) inside=!inside;
  }
  return inside;
}

const CROP = {
  'Room - Bed.png':            { ox:149, oy:81,  w:207, h:146 },
  'Room - Bookshelf.png':      { ox:11,  oy:95,  w:147, h:179 },
  'Room - Cat.png':            { ox:249, oy:130, w:53,  h:33  },
  'Room - Coffee.png':         { ox:228, oy:282, w:22,  h:26  },
  'Room - Duck teddy.png':     { ox:131, oy:186, w:33,  h:55  },
  'Room - Frog Teddy.png':     { ox:50,  oy:226, w:36,  h:56  },
  'Room - Laptop.png':         { ox:258, oy:273, w:64,  h:33  },
  'Room - Plant oval base.png':{ ox:127, oy:127, w:96,  h:73  },
  'Room - Plant.png':          { ox:417, oy:237, w:90,  h:91  },
  'Room - Speakers.png':       { ox:296, oy:155, w:61,  h:62  },
  'Room - Table.png':          { ox:181, oy:238, w:199, h:138 },
  'Room - Vinyl Player.png':   { ox:296, oy:240, w:67,  h:45  },
};

// ─── COORDINATE MATH ──────────────────────────────────────────────────────────
function l2s(lx, ly) {
  const { top:T, right:R, bot:B, left:L } = FLOOR;
  return {
    sx: T.x + (R.x-T.x)*lx + (L.x-T.x)*ly + (B.x-R.x-L.x+T.x)*lx*ly,
    sy: T.y + (R.y-T.y)*lx + (L.y-T.y)*ly + (B.y-R.y-L.y+T.y)*lx*ly,
  };
}
function s2l(sx, sy) {
  const { top:T, right:R, bot:B, left:L } = FLOOR;
  let lx=(sx-L.x)/(R.x-L.x), ly=(sy-T.y)/(B.y-T.y);
  for (let i=0; i<20; i++) {
    const p=l2s(lx,ly);
    lx += (sx-p.sx)/(R.x-L.x)*0.5; ly += (sy-p.sy)/(B.y-T.y)*0.5;
    lx=Math.max(-0.3,Math.min(1.3,lx)); ly=Math.max(-0.3,Math.min(1.3,ly));
  }
  if (isNaN(lx)) lx=0.5; if (isNaN(ly)) ly=0.5;
  return { lx, ly };
}
function snapAndClamp(lx, ly, sprite, snapDivOverride) {
  const div = snapDivOverride ?? SNAP_DIV, step = 1/div;
  const fp = sprite ? ANCHORS[sprite]?.fp : null;
  const hw = fp ? (fp.w/TILE_GRID)/2 : 0, hd = fp ? (fp.d/TILE_GRID)/2 : 0;
  let slx=Math.round(lx/step)*step, sly=Math.round(ly/step)*step;
  slx=Math.max(hw,Math.min(1-hw,slx)); sly=Math.max(hd,Math.min(1-hd,sly));
  slx=Math.max(hw,Math.min(1-hw,Math.round(slx/step)*step));
  sly=Math.max(hd,Math.min(1-hd,Math.round(sly/step)*step));
  return { lx:+slx.toFixed(4), ly:+sly.toFixed(4) };
}
function getDrawOffset(p, overrideLx, overrideLy, overrideZ) {
  const lx=overrideLx??p?.lx, ly=overrideLy??p?.ly, z=overrideZ??p?.z??0;
  if (lx===undefined||ly===undefined) return {x:0,y:0};
  const target=l2s(lx,ly);
  return { x:target.sx-(p?.naturalFoot?.x||256)+(p?.anchorOffsetX||0), y:target.sy-(p?.naturalFoot?.y||256)+(p?.anchorOffsetY||0)-z*TILE_H_PX };
}
function interpKFsLinear(kfs, t) {
  const s=[...kfs].sort((a,b)=>a.t-b.t);
  if (!s.length) return {lx:.5,ly:.5,z:0};
  if (t<=s[0].t) return {...s[0]}; if (t>=s[s.length-1].t) return {...s[s.length-1]};
  for (let i=0;i<s.length-1;i++) if (t>=s[i].t&&t<=s[i+1].t) {
    const p=(t-s[i].t)/(s[i+1].t-s[i].t);
    return {lx:s[i].lx+(s[i+1].lx-s[i].lx)*p,ly:s[i].ly+(s[i+1].ly-s[i].ly)*p,z:s[i].z+(s[i+1].z-s[i].z)*p};
  }
  return {...s[s.length-1]};
}
function interpKFs(kfs, t) {
  const s=[...kfs].sort((a,b)=>a.t-b.t);
  if (!s.length) return {lx:.5,ly:.5,z:0};
  if (t<=s[0].t) return {...s[0]}; if (t>=s[s.length-1].t) return {...s[s.length-1]};
  for (let i=0;i<s.length-1;i++) if (t>=s[i].t&&t<=s[i+1].t) {
    const p=(t-s[i].t)/(s[i+1].t-s[i].t);
    const e=p<.5?4*p*p*p:(p-1)*(2*p-2)*(2*p-2)+1;
    return {lx:s[i].lx+(s[i+1].lx-s[i].lx)*e,ly:s[i].ly+(s[i+1].ly-s[i].ly)*e,z:s[i].z+(s[i+1].z-s[i].z)*e};
  }
  return {...s[s.length-1]};
}
function fpOverlapsLX(alx,aly,afp,blx,bly,bfp) {
  const ahw=(afp.w/TILE_GRID)/2,ahd=(afp.d/TILE_GRID)/2,bhw=(bfp.w/TILE_GRID)/2,bhd=(bfp.d/TILE_GRID)/2;
  return Math.abs(alx-blx)<(ahw+bhw)&&Math.abs(aly-bly)<(ahd+bhd);
}
function wouldOverlap(sprite,lx,ly,placed) {
  const a=ANCHORS[sprite]; if (!a?.fp) return false;
  for (const [other,pos] of Object.entries(placed)) {
    if (other===sprite||!pos) continue;
    const b=ANCHORS[other]; if (!b?.fp) continue;
    if (fpOverlapsLX(lx,ly,a.fp,pos.lx,pos.ly,b.fp)) return true;
  }
  return false;
}
function clamp(v,lo,hi){return Math.max(lo,Math.min(hi,v));}
function computePan(lx){return clamp((lx-.5)*1.5,-.75,.75);}
function computeVol(lx,ly){return .16+.28*Math.pow(clamp(ly,0,1),.65)+.06*(1-Math.min(1,Math.abs(lx-.5)*1.2));}
// Depth: ly 0=far/top → 1=near/bottom. Used as effect intensity for OSC objects.
function calcDepth(lx, ly){ return clamp(ly, 0, 1); }

function drawIsoCube(ctx,lx,ly,w,d,h,zPx,topC,leftC,rightC,strokeC) {
  const fh=FLOOR.bot.y-FLOOR.top.y, pixH=h*fh*.55;
  const lift=p=>({sx:p.sx,sy:p.sy-zPx});
  const bl=lift(l2s(lx,ly+d)),br=lift(l2s(lx+w,ly+d)),fl=lift(l2s(lx,ly)),fr=lift(l2s(lx+w,ly));
  const BLT={sx:bl.sx,sy:bl.sy-pixH},BRT={sx:br.sx,sy:br.sy-pixH},FLT={sx:fl.sx,sy:fl.sy-pixH},FRT={sx:fr.sx,sy:fr.sy-pixH};
  [[BLT,BRT,FRT,FLT],[FLT,FRT,fr,fl],[FRT,BRT,br,fr]].forEach((pts,i)=>{
    ctx.beginPath();ctx.moveTo(pts[0].sx,pts[0].sy);
    pts.slice(1).forEach(p=>ctx.lineTo(p.sx,p.sy));ctx.closePath();
    ctx.fillStyle=[topC,leftC,rightC][i];ctx.fill();ctx.strokeStyle=strokeC;ctx.lineWidth=1;ctx.stroke();
  });
}

// ─── THUMBNAIL ───────────────────────────────────────────────────────────────
function Thumbnail({ src: imgSrc, sprite, maxW=80, maxH=60 }) {
  const c=CROP[sprite];
  if (!c) return <img src={imgSrc} alt="" draggable={false} style={{ maxWidth:maxW,maxHeight:maxH,imageRendering:'pixelated',objectFit:'contain',display:'block' }}/>;
  const pad=6, scale=Math.min(maxW/(c.w+pad*2),maxH/(c.h+pad*2));
  const dw=Math.round(W*scale),dh=Math.round(H*scale),tw=Math.round((c.w+pad*2)*scale),th=Math.round((c.h+pad*2)*scale);
  return (
    <div style={{width:tw,height:th,overflow:'hidden',flexShrink:0}}>
      <img src={imgSrc} alt="" draggable={false} style={{width:dw,height:dh,marginLeft:Math.round((-c.ox+pad)*scale),marginTop:Math.round((-c.oy+pad)*scale),imageRendering:'pixelated',display:'block',flexShrink:0}}/>
    </div>
  );
}

// ─── DIAL ─────────────────────────────────────────────────────────────────────
function Dial({ value, onChange, label, size=52, color='#d4a840' }) {
  const drag=useRef(false),sY=useRef(0),sV=useRef(0);
  const MIN=-135,MAX=135,deg=MIN+(value/100)*(MAX-MIN),atMin=value<=0,atMax=value>=100;
  const onPD=useCallback((e)=>{
    e.preventDefault();drag.current=true;sY.current=e.clientY;sV.current=value;
    const m=(me)=>{if(!drag.current)return;onChange(Math.max(0,Math.min(100,Math.round(sV.current+(sY.current-me.clientY)*.8))));};
    const u=()=>{drag.current=false;window.removeEventListener('pointermove',m);window.removeEventListener('pointerup',u);};
    window.addEventListener('pointermove',m);window.addEventListener('pointerup',u);
  },[value,onChange]);
  const cx=size/2,cy=size/2,r=size*.38,rad=deg*Math.PI/180;
  const dx=cx+Math.cos(rad)*r*.65,dy=cy+Math.sin(rad)*r*.65;
  const sR=MIN*Math.PI/180,aR=r*.85;
  const x1=cx+Math.cos(sR)*aR,y1=cy+Math.sin(sR)*aR,x2=cx+Math.cos(rad)*aR,y2=cy+Math.sin(rad)*aR;
  const la=(deg-MIN)>180?1:0;
  return (
    <div style={{display:'flex',flexDirection:'column',alignItems:'center',gap:3,userSelect:'none'}}>
      <svg width={size} height={size} style={{cursor:'ns-resize',touchAction:'none'}} onPointerDown={onPD}>
        <circle cx={cx} cy={cy} r={r} fill="rgba(0,0,0,.3)" stroke={atMin||atMax?color:'rgba(200,160,80,.2)'} strokeWidth={atMin||atMax?2:1}/>
        <path d={`M${x1} ${y1} A${aR} ${aR} 0 ${la} 1 ${x2} ${y2}`} fill="none" stroke={color} strokeWidth={2.5} strokeLinecap="round" opacity={.85}/>
        <circle cx={cx} cy={cy} r={r*.72} fill={atMin?'#1a1408':atMax?color:'#4a3a20'} stroke={color} strokeWidth={1.5}/>
        <circle cx={dx} cy={dy} r={2.5} fill={atMin?'rgba(255,200,80,.25)':'#fffbe8'}/>
        {(atMin||atMax)&&<text x={cx} y={cy+3} textAnchor="middle" fontSize={size*.22} fill={color} fontFamily="monospace">{atMax?'●':'○'}</text>}
      </svg>
      <div style={{fontSize:7,color:'rgba(200,160,80,.6)',letterSpacing:1,fontFamily:"'Courier New',monospace"}}>{label} {value}%</div>
    </div>
  );
}

// ─── DEBUG PANEL ──────────────────────────────────────────────────────────────
function DebugPanel({ floor,snapDiv,onSnapDivChange,placed,sel,setSel,anchors,showFP,setShowFP,showCubes,setShowCubes,objects,rainPoly,onResetPoly }) {
  const mono={fontFamily:"'Consolas',monospace",fontSize:9};
  const dim='#485868',acc='#e8c84a',blu='#4ac8e8',grn='#4ae880',red='#e84a4a';
  const sec={borderBottom:'1px solid #1c2638',padding:'8px 10px'};
  const hdr={fontSize:9,color:dim,letterSpacing:2,textTransform:'uppercase',marginBottom:6,...mono};
  const row={display:'flex',alignItems:'center',justifyContent:'space-between',padding:'3px 0'};

  const cornerLabels = ['TL','TR','BR','BL'];
  const cornerColors = ['#e84a4a','#e8e84a','#4ae880','#4ac8e8'];

  const polyCode = `const DEFAULT_WINDOW_POLY = [\n${rainPoly.map(p=>`  { x: ${p.x}, y: ${p.y} },`).join('\n')}\n];`;

  return (
    <div style={{width:270,background:'#10141e',borderLeft:'1px solid #1c2638',display:'flex',flexDirection:'column',overflowY:'auto',flexShrink:0,...mono}}>
      <div style={{padding:10,borderBottom:'1px solid #1c2638'}}>
        <div style={{fontSize:12,color:acc,letterSpacing:3,fontWeight:700}}>◆ DEBUG</div>
        <div style={{fontSize:7,color:dim}}>ANCHOR · GRID · FOOTPRINT · RAIN POLY</div>
      </div>
      <div style={sec}>
        <div style={hdr}>Floor Corners <span style={{color:grn}}>✓ calibrated</span></div>
        {[['TOP',floor.top,'#e84a4a'],['RIGHT',floor.right,'#e8e84a'],['BOT',floor.bot,'#4a4ae8'],['LEFT',floor.left,'#4ae880']].map(([lbl,p,c])=>(
          <div key={lbl} style={{display:'flex',gap:8,fontSize:8,marginBottom:1}}>
            <span style={{color:c,minWidth:36}}>{lbl}</span><span style={{color:blu}}>({p.x},{p.y})</span>
          </div>
        ))}
      </div>

      <div style={sec}>
        <div style={hdr}>Rain Polygon <span style={{color:rainPoly.length===4?grn:acc}}>{rainPoly.length}/4 pts</span></div>
        <div style={{fontSize:7,color:dim,marginBottom:6,lineHeight:1.5}}>
          Click canvas corners in order:<br/>
          <span style={{color:'#e84a4a'}}>TL</span> → <span style={{color:'#e8e84a'}}>TR</span> → <span style={{color:'#4ae880'}}>BR</span> → <span style={{color:'#4ac8e8'}}>BL</span>
        </div>
        {rainPoly.map((p,i)=>(
          <div key={i} style={{display:'flex',gap:6,fontSize:8,marginBottom:2,alignItems:'center'}}>
            <span style={{color:cornerColors[i],minWidth:20,fontWeight:700}}>{cornerLabels[i]}</span>
            <span style={{color:blu}}>({p.x}, {p.y})</span>
            <span style={{color:grn,marginLeft:'auto'}}>✓</span>
          </div>
        ))}
        {rainPoly.length < 4 && (
          <div style={{fontSize:7,color:acc,marginTop:2}}>
            Click point {rainPoly.length+1} ({cornerLabels[rainPoly.length]}) on canvas
          </div>
        )}
        <div style={{display:'flex',gap:4,marginTop:6}}>
          <button onClick={onResetPoly}
            style={{flex:1,padding:'3px 6px',background:'rgba(232,74,74,.12)',border:`1px solid ${red}`,color:red,fontSize:8,cursor:'pointer',fontFamily:'inherit',borderRadius:3}}>
            reset
          </button>
          <button onClick={()=>navigator.clipboard?.writeText(polyCode)}
            style={{flex:2,padding:'3px 6px',background:'rgba(74,200,232,.1)',border:`1px solid ${blu}`,color:blu,fontSize:8,cursor:'pointer',fontFamily:'inherit',borderRadius:3}}>
            copy code
          </button>
        </div>
        {rainPoly.length===4&&(
          <pre style={{fontSize:6,color:dim,marginTop:6,whiteSpace:'pre-wrap',wordBreak:'break-all',lineHeight:1.4,background:'rgba(0,0,0,.3)',padding:4,borderRadius:2}}>
            {polyCode}
          </pre>
        )}
      </div>

      <div style={sec}>
        <div style={hdr}>Snap Grid</div>
        <div style={row}><span style={{fontSize:8,color:dim}}>Div: ÷{snapDiv}</span>
          <input type="range" min={4} max={64} step={4} value={snapDiv} onChange={e=>onSnapDivChange(+e.target.value)} style={{flex:1,marginLeft:8,accentColor:blu}}/>
        </div>
      </div>
      <div style={sec}>
        <div style={hdr}>Objects</div>
        <div style={row}><span style={{fontSize:8,color:dim}}>Footprints</span>
          <label style={{display:'flex',alignItems:'center',gap:4,cursor:'pointer'}}><input type="checkbox" checked={showFP} onChange={e=>setShowFP(e.target.checked)} style={{accentColor:blu}}/></label>
        </div>
        <div style={row}><span style={{fontSize:8,color:dim}}>Iso cubes</span>
          <label style={{display:'flex',alignItems:'center',gap:4,cursor:'pointer'}}><input type="checkbox" checked={showCubes} onChange={e=>setShowCubes(e.target.checked)} style={{accentColor:blu}}/></label>
        </div>
        <div style={{marginTop:6,maxHeight:280,overflowY:'auto'}}>
          {objects.map(o=>{
            const p=placed[o.sprite],isSel=sel===o.sprite,isPlaced=!!p;
            return (<div key={o.id} onClick={()=>setSel(isSel?null:o.sprite)}
              style={{display:'flex',alignItems:'center',gap:4,padding:'4px 5px',borderRadius:3,cursor:'pointer',marginBottom:2,
                border:`1px solid ${isSel?acc:isPlaced?grn:'#1c2638'}`,background:isSel?'#1a1800':isPlaced?'#0a1410':'#080d14',
                borderLeft:isPlaced?`3px solid ${grn}`:'1px solid #1c2638'}}>
              <div style={{flex:1,overflow:'hidden'}}>
                <div style={{fontSize:9,color:isSel?acc:'#b0c4d8',whiteSpace:'nowrap',overflow:'hidden',textOverflow:'ellipsis'}}>{o.name}{o.oscAddress?' [fx]':''}</div>
                {p?<div style={{fontSize:7,color:dim}}>lx:{p.lx.toFixed(3)} ly:{p.ly.toFixed(3)}</div>
                  :<div style={{fontSize:7,color:dim}}>not placed</div>}
              </div>
              {isPlaced&&<span style={{fontSize:9,color:grn}}>●</span>}
            </div>);
          })}
        </div>
      </div>
    </div>
  );
}

// ─── INFO PANEL ───────────────────────────────────────────────────────────────
function InfoPanel({ isOpen, onToggle, placed, isNight, lamp, blindsT, weather, speed, activeAmbients, laptopLabel }) {
  const mono = { fontFamily:"'Courier New',monospace" };
  const bg   = '#09071a';
  const bdr  = '#2a1a48';
  const acc  = isNight ? '#9878e8' : '#f0a860';
  const dim  = 'rgba(240,232,208,.35)';

  const Row = ({ label, value, desc, active }) => (
    <div style={{ marginBottom:6 }}>
      <div style={{ display:'flex', justifyContent:'space-between', alignItems:'baseline', gap:6 }}>
        <div style={{ display:'flex', alignItems:'center', gap:5 }}>
          <div style={{ width:5, height:5, background:active ? acc : bdr, flexShrink:0 }}/>
          <span style={{ fontSize:8, color:dim, letterSpacing:.5, ...mono }}>{label}</span>
        </div>
        <span style={{ fontSize:9, color:acc, ...mono, fontWeight:'bold', letterSpacing:.5 }}>{value}</span>
      </div>
      {desc && <div style={{ fontSize:7, color:dim, paddingLeft:10, marginTop:1, lineHeight:1.4, ...mono }}>{desc}</div>}
    </div>
  );

  const SectionHdr = ({ children }) => (
    <div style={{ fontSize:7, color:dim, letterSpacing:2, textTransform:'uppercase', marginBottom:6, marginTop:4, borderBottom:`1px solid ${bdr}`, paddingBottom:3, ...mono }}>{children}</div>
  );

  const placedObjs = OBJECTS_DEF.filter(o => placed[o.sprite]);

  return (
    <div style={{ position:'fixed', right:0, top:'50%', transform:'translateY(-50%)', zIndex:25, display:'flex', flexDirection:'row-reverse', alignItems:'stretch', pointerEvents:'none' }}>
      <button onClick={onToggle}
        style={{ pointerEvents:'all', width:18, background:bg, border:`2px solid ${bdr}`, borderRight:'none', borderLeft:'none',
          color:dim, cursor:'pointer', display:'flex', flexDirection:'column', alignItems:'center', justifyContent:'center',
          gap:4, padding:'.3rem 0', fontFamily:"'Courier New',monospace", fontSize:8, transition:'background .15s,border-color .15s' }}>
        <span style={{ fontSize:11 }}>{isOpen ? '▶' : '◀'}</span>
        <span style={{ writingMode:'vertical-rl', fontSize:7, opacity:.5, letterSpacing:'.1em', transform:'rotate(180deg)' }}>INFO</span>
      </button>

      <div style={{ pointerEvents:'all', width: isOpen ? 200 : 0, background:bg, border:`2px solid ${bdr}`, borderRight:'none',
        overflow:'hidden', transition:'width .2s', display:'flex', flexDirection:'column' }}>
        <div style={{ padding:'8px 10px', borderBottom:`1px solid ${bdr}`, flexShrink:0 }}>
          <div style={{ fontSize:8, color:dim, letterSpacing:2, ...mono }}>◈ SIGNAL CHAIN</div>
          <div style={{ fontSize:8, color:acc, marginTop:2, ...mono }}>{isNight ? 'NIGHT' : 'DAY'} · {isNight ? '110' : '80'} BPM · {isNight ? '8' : '16'} bars</div>
        </div>

        <div style={{ overflowY:'auto', padding:'8px 10px', flex:1, scrollbarWidth:'thin', scrollbarColor:`${bdr} transparent` }}>

          <SectionHdr>Scene</SectionHdr>
          <Row label="Scene" value={isNight ? 'NIGHT' : 'DAY'} desc={isNight ? 'Synth energy night' : 'Slow piano soundscape'} active />
          <Row label="Tempo" value={isNight ? '110 BPM' : '80 BPM'} desc={isNight ? '8-bar loop · 17.5s' : '16-bar loop · 48s'} active />

          {placedObjs.length > 0 && <>
            <SectionHdr>Active stems</SectionHdr>
            {placedObjs.map(o => {
              const pos = placed[o.sprite];
              const pan = computePan(pos.lx);
              const vol = computeVol(pos.lx, pos.ly);
              const panStr = Math.abs(pan) < .05 ? 'C' : pan < 0 ? `L${Math.round(-pan*100)}` : `R${Math.round(pan*100)}`;
              // Effect objects: show meaningful values per object type
              let displayVal, roleStr;
              if (o.id === 'Coffee') {
                displayVal = `${speed}×`;
                const bpm = isNight ? 110 : 80;
                roleStr = `playback rate · ${Math.round(bpm * speed)} BPM · /soundroom/speed`;
              } else if (o.id === 'Vinyl') {
                const flutter = Math.abs(pos.lx - 0.5) * 2;
                const warmth  = Math.round(calcDepth(pos.lx, pos.ly) * 100);
                displayVal = `flutter ${Math.round(flutter * 100)}%`;
                roleStr = `tape warble LFO · warmth LP ${warmth}% · /soundroom/vinyl`;
              } else if (o.id === 'Laptop') {
                displayVal = laptopLabel ?? 'CLEAN';
                const stateDesc = { CLEAN: 'bypass · full freq range', 'LO-FI': 'crush=0.35 · subtle degradation', GLITCH: 'crush=0.7 · full digital glitch' };
                roleStr = `bitcrusher: ${stateDesc[laptopLabel] ?? ''} · /soundroom/laptop`;
              } else if (o.oscAddress) {
                displayVal = `${Math.round(calcDepth(pos.lx, pos.ly) * 100)}%`;
                roleStr = `fx → ${o.oscAddress.split('/').pop()}`;
              } else {
                displayVal = `${Math.round(vol*100)}%`;
                roleStr = (o.soundRole ?? 'fx');
              }
              return <Row key={o.id} label={o.name} value={displayVal} desc={`pan ${panStr} · ${roleStr}`} active />;
            })}
          </>}
          {placedObjs.length === 0 && <div style={{ fontSize:8, color:dim, fontStyle:'italic', marginBottom:8, ...mono }}>no objects placed</div>}

          <SectionHdr>Room controls</SectionHdr>
          <Row label="Lamp"    value={lamp === 0 ? 'OFF' : lamp < 50 ? 'COLD' : lamp < 80 ? 'WARM' : 'HOT'}
            desc={lamp === 0 ? 'Cold, no saturation' : lamp < 50 ? `Cold EQ · −${Math.round((50-lamp)/50*6)}dB bass` : `Warm EQ · +${Math.round((lamp-50)/50*6)}dB bass · sat`}
            active={lamp > 0} />
          <Row label="Blinds"  value={blindsT > .95 ? 'OPEN' : blindsT < .05 ? 'CLOSED' : 'HALF'}
            desc={`HF −${Math.round(14*(1-blindsT))}dB · vol ×${(blindsT*.35+0.65).toFixed(2)}`} active={blindsT < .95} />
          <Row label="Weather" value={weather === 'rain' ? 'RAIN' : 'CLEAR'}
            desc={weather === 'rain' ? 'Lowpass 550Hz · muffled' : 'Full frequency range'} active={weather !== 'rain'} />
          <Row label="Speed"   value={`${speed}×`}
            desc={`${Math.round((isNight ? 110 : 80) * speed)} BPM${speed === 1 ? ' · normal rate' : speed < 1 ? ' · slowed · tape warble' : ' · faster · tape warble'}`} active={speed !== 1} />

          {activeAmbients.length > 0 && <>
            <SectionHdr>Atmosphere</SectionHdr>
            {activeAmbients.map(id => {
              const amb = AMBIENTS.find(a => a.id === id);
              return amb ? <Row key={id} label={amb.label} value="ON" desc={amb.desc} active /> : null;
            })}
          </>}
        </div>
      </div>
    </div>
  );
}

// ─── MODE SELECT SCREEN ───────────────────────────────────────────────────────
// Shown before the main splash. Lets the user pick OSC (MaxMSP) or Web Audio,
// and gives an honest read on the current JS engine vs a hypothetical rebuild.
// ─── MODE SELECT SCREEN ───────────────────────────────────────────────────────
function ModeSelect({ onSelect }) {
  const [step,    setStep]    = useState('main');
  const [hov,     setHov]     = useState(null);
  const [visible, setVisible] = useState(false);
  useEffect(() => { const t = setTimeout(() => setVisible(true), 60); return () => clearTimeout(t); }, []);

  const mono = { fontFamily: "'Courier New', monospace" };
  const acc  = '#e8c84a', dim = 'rgba(240,232,208,.38)', bdr = 'rgba(232,200,74,.18)';
  const grn  = '#4ae880', blu = '#4ac8e8';

  const btnStyle = (id, color) => ({
    cursor: 'pointer', padding: '14px 20px', borderRadius: 4, marginBottom: 10,
    border: `1px solid ${hov === id ? color : bdr}`,
    background: hov === id ? 'rgba(255,255,255,.07)' : 'rgba(0,0,0,.3)',
    transition: 'all .15s', ...mono,
  });
  const titleStyle = (id, color) => ({
    fontSize: 11, color: hov === id ? color : acc,
    letterSpacing: 2, fontWeight: 'bold', marginBottom: 4,
  });

  const baseContainer = {
    position: 'fixed', inset: 0, zIndex: 200,
    background: 'rgba(6,8,18,.97)', backdropFilter: 'blur(4px)',
    display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center',
    opacity: visible ? 1 : 0, transition: 'opacity .5s', ...mono,
  };

  if (step === 'webaudio_info') {
    return (
      <div style={baseContainer}>
        <div style={{ width: 460, maxWidth: '92vw' }}>
          <div style={{ fontSize: 8, color: dim, letterSpacing: 3, marginBottom: 10 }}>◈ WEB AUDIO ENGINE — ASSESSMENT</div>

          <div style={{ border: `1px solid rgba(74,232,128,.2)`, borderRadius: 4, padding: '12px 14px', marginBottom: 10, background: 'rgba(74,232,128,.04)' }}>
            <div style={{ fontSize: 10, color: grn, letterSpacing: 2, marginBottom: 8 }}>▶ CURRENT ENGINE — GOOD ENOUGH FOR THIS PROJECT</div>
            {['Stem-based playback: 19 stems, day + night scenes','BPM-locked loop scheduling — shared clock, no drift',
              'Spatial pan/vol from room position','Lamp: low/high shelf EQ + soft saturation + 60Hz hum',
              'Blinds: HF shelf cut + volume reduction','Weather: lowpass filter at 550Hz when rain',
              'Vinyl: wow/flutter delay LFO + warmth filter','Laptop: bit-crush waveshaper (3 states)',
              'Day↔Night: 3s bus crossfade'
            ].map((t,i) => <div key={i} style={{ fontSize: 8, color: grn, letterSpacing: .5, lineHeight: 1.6 }}>✓ {t}</div>)}
          </div>

          <div style={{ border: `1px solid rgba(232,200,74,.2)`, borderRadius: 4, padding: '12px 14px', marginBottom: 10, background: 'rgba(232,200,74,.03)' }}>
            <div style={{ fontSize: 10, color: acc, letterSpacing: 2, marginBottom: 8 }}>⚠ WITHOUT MAX — THESE ARE SILENT</div>
            {['Ambient sounds (Rain/Storm/Ocean/Fire) — OSC-only → no browser synth yet',
              'Speed warp — needs Max for tape-warble effect'
            ].map((t,i) => <div key={i} style={{ fontSize: 8, color: acc, letterSpacing: .5, lineHeight: 1.6 }}>— {t}</div>)}
          </div>

          <div style={{ display: 'flex', gap: 8, marginTop: 4 }}>
            <div
              onMouseEnter={() => setHov('wa_go')} onMouseLeave={() => setHov(null)}
              onClick={() => onSelect('webaudio')}
              style={btnStyle('wa_go', grn)}>
              <div style={titleStyle('wa_go', grn)}>▶ USE WEB AUDIO ENGINE</div>
              <div style={{ fontSize: 8, color: dim }}>Stems play in-browser. Requires files in public/stems/</div>
            </div>
            <div onClick={() => setStep('main')}
              style={{ cursor: 'pointer', padding: '14px 16px', border: `1px solid ${bdr}`, borderRadius: 4, fontSize: 9, color: dim, alignSelf: 'flex-start', ...mono }}>
              ← back
            </div>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div style={baseContainer}>
      <div style={{ width: 400, maxWidth: '92vw' }}>
        <div style={{ marginBottom: 22, textAlign: 'center' }}>
          <div style={{ fontSize: 8, color: dim, letterSpacing: 4, marginBottom: 8 }}>DESE-61003 · AUDIO EXPERIENCE DESIGN</div>
          <div style={{ fontSize: 20, color: '#fff8f0', letterSpacing: 5, fontWeight: 'bold', textShadow: '0 0 30px rgba(232,200,74,.3)' }}>◈ SOUND ROOM ◈</div>
          <div style={{ fontSize: 8, color: dim, letterSpacing: 3, marginTop: 6 }}>SELECT AUDIO MODE</div>
        </div>
        <div style={{ borderTop: `1px solid ${bdr}`, margin: '14px 0' }} />

        <div onMouseEnter={() => setHov('osc')} onMouseLeave={() => setHov(null)}
          onClick={() => onSelect('osc')} style={btnStyle('osc', acc)}>
          <div style={titleStyle('osc', acc)}>◈ MAX/MSP — OSC MODE</div>
          <div style={{ fontSize: 8, color: dim }}>Send OSC to MaxMSP. All audio handled by your patch. Requires Max running.</div>
        </div>

        <div onMouseEnter={() => setHov('webaudio')} onMouseLeave={() => setHov(null)}
          onClick={() => setStep('webaudio_info')} style={btnStyle('webaudio', grn)}>
          <div style={titleStyle('webaudio', grn)}>▶ WEB AUDIO — STANDALONE MODE</div>
          <div style={{ fontSize: 8, color: dim }}>Run in-browser via Web Audio API. No Max required. Click to see engine details →</div>
        </div>

        <div onMouseEnter={() => setHov('both')} onMouseLeave={() => setHov(null)}
          onClick={() => onSelect('both')} style={btnStyle('both', blu)}>
          <div style={titleStyle('both', blu)}>⊕ HYBRID — OSC + WEB AUDIO</div>
          <div style={{ fontSize: 8, color: dim }}>Both run simultaneously. Useful for A/B testing or hybrid setups.</div>
        </div>

        <div style={{ borderTop: `1px solid ${bdr}`, margin: '14px 0' }} />
        <div style={{ fontSize: 7, color: dim, textAlign: 'center', letterSpacing: 1 }}>
          OSC is silent without Max · Web Audio needs stems in public/stems/day/ and public/stems/night/
        </div>
      </div>
    </div>
  );
}

// ─── APP ──────────────────────────────────────────────────────────────────────
export default function App() {
  const bgRef      = useRef(null);
  const ltRef      = useRef(null);
  const ovRef      = useRef(null);
  const rnRef      = useRef(null);
  const pageDivRef = useRef(null);
  const imgs       = useRef({});
  const [imgsLoaded, setImgsLoaded] = useState(false);

  const [placed,   setPlaced]   = useState({});
  const [sel,      setSel]      = useState(null);
  const [debug,    setDebug]    = useState(false);
  const [drag,     setDrag]     = useState(null);
  const [snapDiv,  setSnapDiv]  = useState(64);
  const [showFP,   setShowFP]   = useState(true);
  const [showCubes,setShowCubes]= useState(true);

  const [lamp,     setLamp]     = useState(0);
  const [blindsT,  setBlindsT]  = useState(0.9);
  const [dn,       setDn]       = useState(0);
  const [weather,  setWeather]  = useState('clear');
  const [speed,    setSpeed]    = useState(1.0);
  const [showModeSelect, setShowModeSelect] = useState(true);
  const [audioMode,      setAudioMode]      = useState(null); // 'osc' | 'webaudio' | 'both'
  // Derived from audioMode — declared early so all hooks/callbacks can close over them
  const oscEnabled   = audioMode === 'osc'      || audioMode === 'both';
  const audioEnabled = audioMode === 'webaudio' || audioMode === 'both';
  const [showLoad, setShowLoad] = useState(true);
  const [started,  setStarted]  = useState(false);
  const [hovTray,  setHovTray]  = useState(null);
  const [trayDrag, setTrayDrag] = useState(null);
  const [blindsDragging, setBlindsDragging] = useState(false);
  const [dropBlocked,    setDropBlocked]    = useState(false);
  const [rainPoly,       setRainPoly]       = useState(DEFAULT_WINDOW_POLY);
  const rainPolyRef = useRef(DEFAULT_WINDOW_POLY);
  const [mouseLXY, setMouseLXY] = useState(null);
  const [hovCelestial, setHovCelestial] = useState(false);
  const [hovWindow,    setHovWindow]    = useState(false);
  const [infoPanelOpen, setInfoPanelOpen] = useState(false);

  const [activeAmbients, setActiveAmbients] = useState(new Set());
  // Ambient volumes: id -> 0..1 (default 0.4)
  const ambientVolumes = useRef({});

  const rainDrops     = useRef([]);
  const rainRafRef    = useRef(null);
  const rainActiveRef = useRef(false);

  const blindsTRef = useRef(blindsT);
  const lampRef    = useRef(lamp);
  const weatherRef = useRef(weather);
  useEffect(() => { blindsTRef.current = blindsT; }, [blindsT]);
  useEffect(() => { lampRef.current    = lamp;    }, [lamp]);
  useEffect(() => { weatherRef.current = weather; }, [weather]);
  const blindsDragStartT = useRef(0);
  const drawRef          = useRef(null);
  const dragStartPos     = useRef(null);
  const dragMoved        = useRef(false);
  const trayDragRef      = useRef(null);
  const placedRef        = useRef(placed);
  // Throttle ref for OSC sends while dragging effect objects (50ms)
  const oscDragThrottle  = useRef(0);
  useEffect(() => { placedRef.current = placed; }, [placed]);
  useEffect(() => { rainPolyRef.current = rainPoly; }, [rainPoly]);

  const transTimers = useRef([]);
  const prevNight   = useRef(false);
  const dnTarget    = useRef(0);
  const dnRaf       = useRef(null);
  const osc         = useOSC();
  const audio       = useAudio();
  const [laptopLabel,  setLaptopLabel]  = useState('CLEAN');
  const [stemProgress, setStemProgress] = useState(0);
  const [stemLoadError, setStemLoadError] = useState(false);
  const [isLoadingStems, setIsLoadingStems] = useState(false);
  const isNight     = dn >= 0.5;
  const CFMS        = 5000;

  const snapAndClampDyn = useCallback((lx,ly,sprite) => snapAndClamp(lx,ly,sprite,snapDiv), [snapDiv]);

  // ── Day/Night transition ──────────────────────────────────────────────────
  const dnRef = useRef(0);
  const startDnTransition = useCallback((target) => {
    dnTarget.current=target;
    if (dnRaf.current) cancelAnimationFrame(dnRaf.current);
    const DURATION=5000, startVal=dnRef.current;
    let startTs=null;
    const step=(ts)=>{
      if (startTs===null) startTs=ts;
      const elapsed=ts-startTs,t=Math.min(1,elapsed/DURATION),e=t<.5?4*t*t*t:1-Math.pow(-2*t+2,3)/2;
      const next=startVal+(target-startVal)*e; dnRef.current=next;
      drawRef.current?.();
      if (pageDivRef.current) {
        const d=next,it=(a,b)=>Math.round(a+(b-a)*d);
        const topR=it(232,26),topG=it(184,42),topB=it(74,82);
        const midR=it(192,12),midG=it(128,24),midB=it(48,48);
        const botR=it(138,6),botG=it(88,14),botB=it(32,28);
        pageDivRef.current.style.background=`radial-gradient(ellipse at 50% 0%, rgb(${topR},${topG},${topB}) 0%, rgb(${midR},${midG},${midB}) 55%, rgb(${botR},${botG},${botB}) 100%)`;
      }
      if (t<1) dnRaf.current=requestAnimationFrame(step);
      else { dnRef.current=target; dnRaf.current=null; setDn(target); }
    };
    if (pageDivRef.current) {
      const d=startVal,it=(a,b)=>Math.round(a+(b-a)*d);
      const topR=it(232,26),topG=it(184,42),topB=it(74,82);
      const midR=it(192,12),midG=it(128,24),midB=it(48,48);
      const botR=it(138,6),botG=it(88,14),botB=it(32,28);
      pageDivRef.current.style.background=`radial-gradient(ellipse at 50% 0%, rgb(${topR},${topG},${topB}) 0%, rgb(${midR},${midG},${midB}) 55%, rgb(${botR},${botG},${botB}) 100%)`;
    }
    dnRaf.current=requestAnimationFrame(step);
  }, []);
  useEffect(()=>()=>{if(dnRaf.current) cancelAnimationFrame(dnRaf.current);},[]);
  useEffect(()=>{
    if (pageDivRef.current) {
      const d=dnRef.current,it=(a,b)=>Math.round(a+(b-a)*d);
      const topR=it(232,26),topG=it(184,42),topB=it(74,82);
      const midR=it(192,12),midG=it(128,24),midB=it(48,48);
      const botR=it(138,6),botG=it(88,14),botB=it(32,28);
      pageDivRef.current.style.background=`radial-gradient(ellipse at 50% 0%, rgb(${topR},${topG},${topB}) 0%, rgb(${midR},${midG},${midB}) 55%, rgb(${botR},${botG},${botB}) 100%)`;
    }
  },[]);

  // ── Load images ───────────────────────────────────────────────────────────
  useEffect(()=>{
    const names=[...new Set([...LAYER_ORDER.map(l=>l.name),...OBJECTS_DEF.map(o=>o.sprite)])];
    let pending=names.length;
    const done=()=>{if(--pending===0) setImgsLoaded(true);};
    names.forEach(name=>{
      if(imgs.current[name]){done();return;}
      const img=new Image();
      img.onload=()=>{imgs.current[name]=img;done();};img.onerror=done;img.src=`/sprites/${name}`;
    });
  },[]);

  // ── Rain drop init/tick ───────────────────────────────────────────────────
  const polyBounds = useCallback((poly) => {
    const xs = poly.map(p=>p.x), ys = poly.map(p=>p.y);
    return { minX:Math.min(...xs), maxX:Math.max(...xs), minY:Math.min(...ys), maxY:Math.max(...ys) };
  }, []);

  const initRainDrops = useCallback(() => {
    const poly = rainPolyRef.current;
    const b = polyBounds(poly);
    const drops = [];
    for (let i = 0; i < 28; i++) {
      drops.push({
        x: b.minX + Math.random() * (b.maxX - b.minX),
        y: b.minY + Math.random() * (b.maxY - b.minY),
        len: 6 + Math.random() * 10,
        speed: 1.2 + Math.random() * 1.8,
        alpha: 0.3 + Math.random() * 0.45,
        width: Math.random() < 0.4 ? 0.5 : 1,
      });
    }
    rainDrops.current = drops;
  }, [polyBounds]);

  const drawRain = useCallback(() => {
    if (!rainActiveRef.current) return;
    const poly = rainPolyRef.current;
    const b = polyBounds(poly);
    rainDrops.current.forEach(drop => {
      drop.y += drop.speed;
      drop.x -= drop.speed * 0.12;
      if (drop.y > b.maxY) {
        drop.y = b.minY - drop.len;
        drop.x = b.minX + Math.random() * (b.maxX - b.minX);
        drop.speed = 1.2 + Math.random() * 1.8;
        drop.alpha = 0.3 + Math.random() * 0.45;
      }
    });
    drawRef.current?.();
    rainRafRef.current = requestAnimationFrame(drawRain);
  }, [polyBounds]);

  useEffect(() => {
    if (weather === 'rain') {
      rainActiveRef.current = true;
      if (rainDrops.current.length === 0) initRainDrops();
      rainRafRef.current = requestAnimationFrame(drawRain);
    } else {
      rainActiveRef.current = false;
      if (rainRafRef.current) cancelAnimationFrame(rainRafRef.current);
      drawRef.current?.();
    }
    return () => {
      if (rainRafRef.current) cancelAnimationFrame(rainRafRef.current);
    };
  }, [weather, drawRain, initRainDrops]);

  // ── Draw BG + lights ──────────────────────────────────────────────────────
  const draw = useCallback(() => {
    const bgC=bgRef.current,ltC=ltRef.current;
    if (!bgC||!ltC||!imgsLoaded) return;
    try {
      const bgX=bgC.getContext('2d'),ltX=ltC.getContext('2d');
      bgX.imageSmoothingEnabled=false; ltX.imageSmoothingEnabled=false;
      bgX.clearRect(0,0,W,H);
      const draggables=OBJECTS_DEF
        .filter(o=>placed[o.sprite]&&ANCHORS[o.sprite]&&o.sprite!==drag)
        .map(o=>({sprite:o.sprite,lx:placed[o.sprite].lx,ly:placed[o.sprite].ly}))
        .sort((a,b)=>(a.lx+a.ly)-(b.lx+b.ly));
      let drawnDraggables=false;
      LAYER_ORDER.forEach(layer=>{
        if (layer.name==='Room - Avatar.png'&&!drawnDraggables) {
          drawnDraggables=true;
          draggables.forEach(({sprite,lx,ly})=>{
            const img=imgs.current[sprite];if(!img)return;
            const a=ANCHORS[sprite],off=getDrawOffset(a,lx,ly,0);
            bgX.drawImage(img,off.x,off.y,W,H);
          });
        }
        const img=imgs.current[layer.name];if(!img)return;
        if (layer.name==='Room - Day sky.png'){bgX.globalAlpha=1-dnRef.current;bgX.drawImage(img,0,0,W,H);bgX.globalAlpha=1;return;}
        if (layer.name==='Room - Night sky.png'){bgX.globalAlpha=dnRef.current;bgX.drawImage(img,0,0,W,H);bgX.globalAlpha=1;return;}
        if (layer.name==='Room - Floor cover.png' && rainActiveRef.current) {
          const poly = rainPolyRef.current;
          if (poly.length >= 3) {
            bgX.save();
            bgX.beginPath();
            bgX.moveTo(poly[0].x, poly[0].y);
            for (let i=1;i<poly.length;i++) bgX.lineTo(poly[i].x, poly[i].y);
            bgX.closePath();
            bgX.clip();
            bgX.fillStyle = 'rgba(180,200,220,0.22)';
            bgX.fill();
            rainDrops.current.forEach(drop => {
              bgX.beginPath();
              bgX.moveTo(drop.x, drop.y);
              bgX.lineTo(drop.x - drop.len * 0.15, drop.y + drop.len);
              bgX.strokeStyle = `rgba(160,200,240,${drop.alpha})`;
              bgX.lineWidth = drop.width;
              bgX.stroke();
            });
            bgX.restore();
          }
        }
        if (layer.type==='animated'){
          const kfs=KEYFRAMES[layer.name];if(!kfs)return;
          const a=ANCHORS[layer.name];if(!a)return;
          const isSun=layer.name.includes('Sun');
          const celestialT=isSun?dnRef.current:(1-dnRef.current);
          const pos=interpKFs(kfs,celestialT),off=getDrawOffset(a,pos.lx,pos.ly,pos.z);
          const d=dnRef.current;
          const alpha=isSun?Math.max(0,Math.min(1,(0.9-d)/0.25)):Math.max(0,Math.min(1,(d-0.1)/0.25));
          if(alpha<=0)return;
          bgX.globalAlpha=alpha;bgX.drawImage(img,off.x,off.y,W,H);bgX.globalAlpha=1;return;
        }
        if(layer.name==='Room - Blinds.png'){
          const pos=interpKFsLinear(KEYFRAMES['Room - Blinds.png'],blindsT);
          const a=ANCHORS['Room - Blinds.png'],off=getDrawOffset(a,pos.lx,pos.ly,pos.z);
          bgX.drawImage(img,off.x,off.y,W,H);return;
        }
        if(layer.name==='Room - Fairy lights - Bulb.png')return;
        bgX.drawImage(img,0,0,W,H);
      });
      if(!drawnDraggables){
        draggables.forEach(({sprite,lx,ly})=>{
          const img=imgs.current[sprite];if(!img)return;
          const off=getDrawOffset(ANCHORS[sprite],lx,ly,0);bgX.drawImage(img,off.x,off.y,W,H);
        });
      }
      bgX.fillStyle=`rgba(4,10,24,${dnRef.current*0.3})`;bgX.fillRect(0,0,W,H);
      if(drag&&placed[drag]&&ANCHORS[drag]){
        const dragImg=imgs.current[drag];
        if(dragImg){
          const{lx,ly}=placed[drag],a=ANCHORS[drag],LIFT=18,SCALE_D=1.06;
          const off=getDrawOffset(a,lx,ly,0),footX=off.x+a.naturalFoot.x,footY=off.y+a.naturalFoot.y;
          bgX.save();bgX.globalAlpha=.25;bgX.beginPath();bgX.ellipse(footX,footY+4,28,8,0,0,Math.PI*2);
          bgX.fillStyle='rgba(0,0,0,.7)';bgX.fill();bgX.restore();
          bgX.save();bgX.translate(footX,footY-LIFT);bgX.scale(SCALE_D,SCALE_D);
          bgX.translate(-a.naturalFoot.x,-a.naturalFoot.y);bgX.drawImage(dragImg,0,0,W,H);bgX.restore();
        }
      }
      ltX.clearRect(0,0,W,H);
      const lampT=lamp/100,lampAlpha=lampT*.55;
      if(lampAlpha>.01){
        const{x:cx,y:cy}=LAMP_APEX,ha=(LAMP_ANGLE/2)*Math.PI/180;
        ltX.save();ltX.beginPath();ltX.moveTo(cx,cy);
        ltX.lineTo(cx-Math.sin(ha)*LAMP_REACH,cy+Math.cos(ha)*LAMP_REACH);
        ltX.lineTo(cx+Math.sin(ha)*LAMP_REACH,cy+Math.cos(ha)*LAMP_REACH);
        ltX.closePath();ltX.clip();
        const cg=ltX.createRadialGradient(cx,cy,0,cx,cy,LAMP_REACH);
        cg.addColorStop(0,`rgba(255,230,140,${lampAlpha})`);
        cg.addColorStop(.35,`rgba(255,210,90,${lampAlpha*.7})`);
        cg.addColorStop(.7,`rgba(255,190,60,${lampAlpha*.3})`);
        cg.addColorStop(1,'rgba(255,170,40,0)');
        ltX.fillStyle=cg;ltX.fillRect(0,0,W,H);ltX.restore();
      }
      const fairyAlpha=.18+lampT*.6,fairyRadius=8+lampT*14;
      FAIRY_BULBS.forEach(b=>{
        const rg=ltX.createRadialGradient(b.x,b.y,0,b.x,b.y,fairyRadius);
        rg.addColorStop(0,`rgba(255,245,200,${fairyAlpha})`);
        rg.addColorStop(.4,`rgba(255,220,130,${fairyAlpha*.55})`);
        rg.addColorStop(1,'rgba(255,200,80,0)');
        ltX.fillStyle=rg;ltX.beginPath();ltX.arc(b.x,b.y,fairyRadius,0,Math.PI*2);ltX.fill();
      });
      const bulbImg=imgs.current['Room - Fairy lights - Bulb.png'];
      if(bulbImg)ltX.drawImage(bulbImg,0,0,W,H);
    }catch(err){console.warn('[draw]',err);}
  },[imgsLoaded,placed,lamp,blindsT,drag]);

  // ── Debug overlay ─────────────────────────────────────────────────────────
  const drawDebug = useCallback(()=>{
    const ov=ovRef.current;if(!ov)return;
    const ctx=ov.getContext('2d');ctx.clearRect(0,0,W,H);
    if(!debug)return;
    const steps=snapDiv;ctx.lineWidth=.5;
    for(let i=0;i<=steps;i++){
      const t=i/steps,maj=i===0||i===steps||i===steps/2;
      ctx.strokeStyle=maj?'rgba(232,200,74,.13)':'rgba(232,200,74,.04)';
      const a=l2s(0,t),b=l2s(1,t),c=l2s(t,0),d=l2s(t,1);
      ctx.beginPath();ctx.moveTo(a.sx,a.sy);ctx.lineTo(b.sx,b.sy);ctx.stroke();
      ctx.beginPath();ctx.moveTo(c.sx,c.sy);ctx.lineTo(d.sx,d.sy);ctx.stroke();
    }
    const{top:T,right:R,bot:B,left:L}=FLOOR;
    ctx.beginPath();ctx.moveTo(T.x,T.y);ctx.lineTo(R.x,R.y);ctx.lineTo(B.x,B.y);ctx.lineTo(L.x,L.y);ctx.closePath();
    ctx.strokeStyle='rgba(232,200,74,.18)';ctx.lineWidth=1.5;ctx.setLineDash([3,3]);ctx.stroke();ctx.setLineDash([]);
    [[FLOOR.top,'#e84a4a','T'],[FLOOR.right,'#e8e84a','R'],[FLOOR.bot,'#4a4ae8','B'],[FLOOR.left,'#4ae880','L']].forEach(([p,c,l])=>{
      ctx.beginPath();ctx.arc(p.x,p.y,4,0,Math.PI*2);ctx.fillStyle=c;ctx.fill();
      ctx.fillStyle='#000';ctx.font='bold 7px monospace';ctx.textAlign='center';ctx.fillText(l,p.x,p.y+3);
    });
    for(let xi=0;xi<=snapDiv;xi++)for(let yi=0;yi<=snapDiv;yi++){
      const s=l2s(xi/snapDiv,yi/snapDiv);
      ctx.beginPath();ctx.arc(s.sx,s.sy,2,0,Math.PI*2);ctx.fillStyle='rgba(74,200,232,.35)';ctx.fill();
    }
    if(mouseLXY){
      const step=1/snapDiv,cl=Math.round(mouseLXY.lx/step)*step,cr=cl+step,ct=Math.round(mouseLXY.ly/step)*step,cb=ct+step;
      const tl=l2s(cl,ct),tr2=l2s(cr,ct),br2=l2s(cr,cb),bl2=l2s(cl,cb);
      ctx.beginPath();ctx.moveTo(tl.sx,tl.sy);ctx.lineTo(tr2.sx,tr2.sy);ctx.lineTo(br2.sx,br2.sy);ctx.lineTo(bl2.sx,bl2.sy);ctx.closePath();
      ctx.fillStyle='rgba(74,200,232,.13)';ctx.fill();ctx.strokeStyle='rgba(74,200,232,.4)';ctx.lineWidth=1;ctx.stroke();
    }
    Object.entries(placed).forEach(([sprite,pos])=>{
      if(!pos)return;const a=ANCHORS[sprite];if(!a)return;
      const isSel=sel===sprite,fp=a.fp,lx=pos.lx,ly=pos.ly,ap=l2s(lx,ly);
      ctx.beginPath();ctx.arc(ap.sx,ap.sy,isSel?5:3,0,Math.PI*2);ctx.fillStyle=isSel?'#e8c84a':'rgba(74,200,232,.5)';ctx.fill();
      if(fp){
        const tw=fp.w/TILE_GRID,td=fp.d/TILE_GRID,lx0=lx-tw/2,ly0=ly-td/2;
        if(showFP||isSel){
          const corners=[[lx0,ly0],[lx0+tw,ly0],[lx0+tw,ly0+td],[lx0,ly0+td]].map(([x,y])=>({sx:l2s(x,y).sx,sy:l2s(x,y).sy}));
          ctx.beginPath();ctx.moveTo(corners[0].sx,corners[0].sy);corners.slice(1).forEach(c=>ctx.lineTo(c.sx,c.sy));ctx.closePath();
          ctx.fillStyle=isSel?'rgba(232,200,74,.12)':'rgba(74,200,232,.06)';ctx.fill();
          ctx.strokeStyle=isSel?'rgba(232,200,74,.8)':'rgba(74,200,232,.25)';ctx.lineWidth=isSel?1.5:1;ctx.stroke();
        }
        if(showCubes){
          const ph=fp.h/TILE_GRID,alpha=isSel?.4:.1;
          drawIsoCube(ctx,lx0,ly0,tw,td,ph,0,`rgba(100,200,255,${alpha})`,`rgba(55,130,210,${alpha})`,`rgba(35,95,175,${alpha})`,isSel?'rgba(100,200,255,.7)':'rgba(100,200,255,.13)');
        }
      }
      const label=sprite.replace(/^Room - /,'').replace(/\.png$/,'');
      ctx.font='8px monospace';ctx.textAlign='left';ctx.fillStyle=isSel?'rgba(232,200,74,.9)':'rgba(74,200,232,.35)';
      ctx.fillText(`${label} [${pos.lx.toFixed(3)},${pos.ly.toFixed(3)}]`,ap.sx+6,ap.sy-2);
    });
    if(mouseLXY){ctx.font='9px monospace';ctx.textAlign='left';ctx.fillStyle='rgba(74,200,232,.8)';ctx.fillText(`lx:${mouseLXY.lx.toFixed(3)} ly:${mouseLXY.ly.toFixed(3)}`,6,H-6);}
    const drawCelestialDebug=(isSun)=>{
      const name=isSun?'Room - Sun.png':'Room - Moon.png';
      const kfs=KEYFRAMES[name],a=ANCHORS[name];if(!kfs||!a)return;
      const celestialT=isSun?dnRef.current:(1-dnRef.current),pos=interpKFs(kfs,celestialT);
      const off=getDrawOffset(a,pos.lx,pos.ly,pos.z),footX=off.x+a.naturalFoot.x,footY=off.y+a.naturalFoot.y;
      const discDY=isSun?-30:-25,hx=footX,hy=footY+discDY,col=isSun?'#ffcc00':'#aaccff';
      ctx.beginPath();ctx.arc(hx,hy,35,0,Math.PI*2);ctx.strokeStyle=col;ctx.lineWidth=1.5;ctx.setLineDash([3,3]);ctx.stroke();ctx.setLineDash([]);
      ctx.strokeStyle=col;ctx.lineWidth=1;ctx.beginPath();ctx.moveTo(hx-12,hy);ctx.lineTo(hx+12,hy);ctx.stroke();
      ctx.beginPath();ctx.moveTo(hx,hy-12);ctx.lineTo(hx,hy+12);ctx.stroke();
    };
    drawCelestialDebug(true);drawCelestialDebug(false);
    const poly=rainPolyRef.current;
    const cornerCols=['#e84a4a','#e8e84a','#4ae880','#4ac8e8'];
    const cornerLbls=['TL','TR','BR','BL'];
    if(poly.length>=2){
      ctx.beginPath();ctx.moveTo(poly[0].x,poly[0].y);
      for(let i=1;i<poly.length;i++) ctx.lineTo(poly[i].x,poly[i].y);
      if(poly.length===4) ctx.closePath();
      ctx.strokeStyle='rgba(160,240,180,.7)';ctx.lineWidth=1.5;ctx.setLineDash([4,3]);ctx.stroke();ctx.setLineDash([]);
      if(poly.length===4){ctx.fillStyle='rgba(100,220,140,.06)';ctx.fill();}
    }
    poly.forEach((p,i)=>{
      ctx.beginPath();ctx.arc(p.x,p.y,5,0,Math.PI*2);ctx.fillStyle=cornerCols[i];ctx.fill();
      ctx.strokeStyle='#000';ctx.lineWidth=1;ctx.stroke();
      ctx.font='bold 8px monospace';ctx.textAlign='center';ctx.fillStyle='#000';ctx.fillText(cornerLbls[i],p.x,p.y+3);
      ctx.font='7px monospace';ctx.textAlign='left';ctx.fillStyle=cornerCols[i];
      ctx.fillText(`(${p.x},${p.y})`,p.x+7,p.y-4);
    });
    if(poly.length<4){
      const next=cornerLbls[poly.length];
      ctx.font='bold 9px monospace';ctx.textAlign='left';ctx.fillStyle='rgba(160,240,180,.9)';
      ctx.fillText(`click → ${next}`,6,14);
    }
  },[debug,placed,sel,snapDiv,showFP,showCubes,mouseLXY,dn,rainPoly]);

  useEffect(()=>{drawRef.current=draw;},[draw]);
  useEffect(()=>{draw();},[draw]);
  useEffect(()=>{drawDebug();},[drawDebug]);

  // ── Hit testing ───────────────────────────────────────────────────────────
  const hitTest=useCallback((cx,cy)=>{
    const hits=OBJECTS_DEF.filter(o=>placed[o.sprite]&&ANCHORS[o.sprite]&&CROP[o.sprite])
      .map(o=>({sprite:o.sprite,lx:placed[o.sprite].lx,ly:placed[o.sprite].ly}))
      .sort((a,b)=>(b.lx+b.ly)-(a.lx+a.ly));
    for(const{sprite,lx,ly}of hits){
      const a=ANCHORS[sprite],off=getDrawOffset(a,lx,ly,0),c=CROP[sprite];
      const lX=cx-off.x,lY=cy-off.y;
      if(lX>=c.ox-4&&lX<=c.ox+c.w+4&&lY>=c.oy-4&&lY<=c.oy+c.h+4)return sprite;
    }
    return null;
  },[placed]);

  const getCanvasXY=useCallback((e)=>{
    const rect=ovRef.current?.getBoundingClientRect();if(!rect)return{cx:0,cy:0};
    return{cx:(e.clientX-rect.left)*(W/rect.width),cy:(e.clientY-rect.top)*(H/rect.height)};
  },[]);

  const getCelestialScreenPos=useCallback((isSun)=>{
    const name=isSun?'Room - Sun.png':'Room - Moon.png';
    const kfs=KEYFRAMES[name],a=ANCHORS[name];if(!kfs||!a)return null;
    const celestialT=isSun?dnRef.current:(1-dnRef.current),pos=interpKFs(kfs,celestialT);
    const off=getDrawOffset(a,pos.lx,pos.ly,pos.z),footX=off.x+a.naturalFoot.x,footY=off.y+a.naturalFoot.y;
    return{x:footX,y:footY+(isSun?-30:-25)};
  },[]);

  const onPointerDown=useCallback((e)=>{
    e.preventDefault();
    const{cx,cy}=getCanvasXY(e);
    if(debug){
      setRainPoly(prev=>{
        if(prev.length>=4) return prev;
        const next=[...prev,{x:Math.round(cx),y:Math.round(cy)}];
        rainPolyRef.current=next;
        return next;
      });
      return;
    }
    const tasselY=217-blindsT*68;
    if(cx>=478&&cx<=500&&Math.abs(cy-tasselY)<20){setBlindsDragging(true);blindsDragStartY.current=cy;blindsDragStartT.current=blindsT;return;}
    const sunPos=getCelestialScreenPos(true),moonPos=getCelestialScreenPos(false),HIT_R=35;
    if(dnRef.current<.9&&sunPos&&Math.hypot(cx-sunPos.x,cy-sunPos.y)<HIT_R){startDnTransition(1);return;}
    if(dnRef.current>.1&&moonPos&&Math.hypot(cx-moonPos.x,cy-moonPos.y)<HIT_R){startDnTransition(0);return;}
    if(rainPolyRef.current.length===4 && ptInZone(cx,cy,rainPolyRef.current)){
      setWeather(w=>w==='rain'?'clear':'rain');
      return;
    }
    const hit=hitTest(cx,cy);setSel(hit);
    if(hit){dragStartPos.current=placed[hit]?{...placed[hit]}:null;dragMoved.current=false;setDrag(hit);}
  },[getCanvasXY,hitTest,blindsT,placed,getCelestialScreenPos,dn,startDnTransition,debug]);

  const onPointerMove=useCallback((e)=>{
    const{cx,cy}=getCanvasXY(e);
    if(debug){const raw=s2l(cx,cy);setMouseLXY({lx:raw.lx,ly:raw.ly});}
    if(!drag&&!blindsDragging){
      const sunPos=getCelestialScreenPos(true),moonPos=getCelestialScreenPos(false),HIT_R=35;
      const overSun=dnRef.current<.9&&sunPos&&Math.hypot(cx-sunPos.x,cy-sunPos.y)<HIT_R;
      const overMoon=dnRef.current>.1&&moonPos&&Math.hypot(cx-moonPos.x,cy-moonPos.y)<HIT_R;
      const overCelestial=!!(overSun||overMoon);
      setHovCelestial(overCelestial);
      const poly=rainPolyRef.current;
      setHovWindow(!overCelestial && poly.length===4 && ptInZone(cx,cy,poly));
    }else{setHovCelestial(false);setHovWindow(false);}
    if(blindsDragging){const dy=blindsDragStartY.current-cy;setBlindsT(prev=>Math.max(0,Math.min(1,blindsDragStartT.current+dy/80)));return;}
    if(!drag)return;
    dragMoved.current=true;
    const raw=s2l(cx,cy),pos=snapAndClampDyn(raw.lx,raw.ly,drag);
    setPlaced(prev=>({...prev,[drag]:pos}));
    // ── Send OSC for effect objects while dragging (throttled 50ms) ──
    if (started && oscEnabled) {
      const def = OBJECTS_DEF.find(d => d.sprite === drag);
      if (def?.oscAddress) {
        const now = Date.now();
        if (now - oscDragThrottle.current > 50) {
          oscDragThrottle.current = now;
          osc.send(def.oscAddress, calcDepth(pos.lx, pos.ly).toFixed(3));
        }
      }
    }
  },[drag,blindsDragging,getCanvasXY,snapAndClampDyn,debug,getCelestialScreenPos,dn,osc,started,oscEnabled]);

  const onPointerUp=useCallback(()=>{
    if(drag){
      if(!dragMoved.current){
        const def = OBJECTS_DEF.find(d => d.sprite === drag);
        if (def?.id === 'Laptop' && started) {
          // Click laptop = cycle bitcrusher state (CLEAN → LO-FI → GLITCH)
          if (audioEnabled) {
            const label = audio.cycleLaptop();
            if (label) {
              setLaptopLabel(label);
              // Send the matching OSC depth value to Max (0 / 0.35 / 0.7)
              if (oscEnabled && def.oscAddress) {
                const oscVal = LAPTOP_OSC_VALUES[label] ?? 0.0;
                osc.send(def.oscAddress, oscVal.toFixed(3));
              }
            }
          } else if (oscEnabled && def.oscAddress) {
            // OSC-only mode: cycle through states ourselves
            setLaptopLabel(prev => {
              const states = ['CLEAN', 'LO-FI', 'GLITCH'];
              const next = states[(states.indexOf(prev) + 1) % states.length];
              osc.send(def.oscAddress, (LAPTOP_OSC_VALUES[next] ?? 0.0).toFixed(3));
              return next;
            });
          }
        } else {
          // Click on any other placed object = remove it
          setPlaced(prev=>{const n={...prev};delete n[drag];return n;});
          setSel(null);
          // Send 0 for effect objects when click-removed
          if (started && oscEnabled) {
            if (def?.oscAddress) osc.send(def.oscAddress, '0.0');
          }
        }
      }
      else{
        const currentPos=placedRef.current[drag];
        if(currentPos&&wouldOverlap(drag,currentPos.lx,currentPos.ly,placedRef.current)){
          setDropBlocked(true);const sp=dragStartPos.current;
          setTimeout(()=>{if(sp)setPlaced(prev=>({...prev,[drag]:sp}));setDropBlocked(false);},350);
        }
      }
    }
    setDrag(null);setBlindsDragging(false);dragStartPos.current=null;dragMoved.current=false;
  },[drag,osc,audio,started,oscEnabled,audioEnabled]);

  const onPointerLeave=useCallback(()=>{
    setMouseLXY(null);
    if(drag&&dragStartPos.current){const sp=dragStartPos.current;setPlaced(prev=>({...prev,[drag]:sp}));}
    setDrag(null);setBlindsDragging(false);setDropBlocked(false);dragStartPos.current=null;dragMoved.current=false;
  },[drag]);

  // ── Tray drag ─────────────────────────────────────────────────────────────
  const onTrayDown=useCallback((e,def)=>{
    if(placedRef.current[def.sprite])return;
    e.preventDefault();e.stopPropagation();
    trayDragRef.current=def;setTrayDrag({def,x:e.clientX,y:e.clientY});
    const onMove=(me)=>setTrayDrag(td=>td?{...td,x:me.clientX,y:me.clientY}:null);
    const onUp=(ue)=>{
      const def2=trayDragRef.current;
      if(def2){
        const rect=ovRef.current?.getBoundingClientRect();
        if(rect){
          const cx=(ue.clientX-rect.left)*(W/rect.width),cy=(ue.clientY-rect.top)*(H/rect.height);
          if(cx>=0&&cx<=W&&cy>=0&&cy<=H){
            const raw=s2l(cx,cy),pos=snapAndClamp(raw.lx,raw.ly,def2.sprite,snapDiv);
            if(!isNaN(pos.lx)&&!isNaN(pos.ly)){
              if(!wouldOverlap(def2.sprite,pos.lx,pos.ly,placedRef.current)){
                setPlaced(prev=>({...prev,[def2.sprite]:pos}));
                // ── Send OSC on initial placement for effect objects ──
                if (started && oscEnabled && def2.oscAddress) {
                  osc.send(def2.oscAddress, calcDepth(pos.lx, pos.ly).toFixed(3));
                }
              }
              else{setDropBlocked(true);setTimeout(()=>setDropBlocked(false),400);}
            }
          }
        }
      }
      trayDragRef.current=null;setTrayDrag(null);
      window.removeEventListener('pointermove',onMove);window.removeEventListener('pointerup',onUp);
    };
    window.addEventListener('pointermove',onMove);window.addEventListener('pointerup',onUp);
  },[snapDiv,osc,started,oscEnabled]);

  // Send 0 for effect objects when removed via the Remove button
  const removeObj=useCallback((sprite)=>{
    if (started && oscEnabled) {
      const def = OBJECTS_DEF.find(d => d.sprite === sprite);
      if (def?.oscAddress) osc.send(def.oscAddress, '0.0');
    }
    setPlaced(prev=>{const n={...prev};delete n[sprite];return n;});
    setSel(null);
  },[osc,started,oscEnabled]);

  // ── OSC ───────────────────────────────────────────────────────────────────
  const clearTimers=useCallback(()=>{transTimers.current.forEach(clearTimeout);transTimers.current=[];},[]);
  useEffect(()=>()=>clearTimers(),[clearTimers]);
  const sendRole=useCallback((soundRole,p)=>{
    if(!soundRole||!oscEnabled)return;
    if(p) osc.send(`/soundroom/layer/${soundRole}`,computePan(p.lx).toFixed(3),(computeVol(p.lx,p.ly)*0.55).toFixed(3),'1.0');  // ×0.55 headroom: 9×0.28×0.82=2.07 before clip~
    else  osc.send(`/soundroom/layer/${soundRole}`,'0.0','0.0','0.0');
    // NOTE: harmony no longer gets a 0.18 floor when unplaced — silence = silence.
  },[osc,oscEnabled]);
  const sendAll=useCallback(()=>{
    if(!oscEnabled) return;
    const anyPlaced = OBJECTS_DEF.some(def => placed[def.sprite]);
    if (!anyPlaced) {
      // Room is empty — kill every layer and send master silence to Max
      OBJECTS_DEF.forEach(def=>{
        if(def.soundRole) osc.send(`/soundroom/layer/${def.soundRole}`,'0.0','0.0','0.0');
      });
      osc.send('/soundroom/master','0.0');  // patch can use this to mute reverb tail etc.
      return;
    }
    // Re-enable master in case it was silenced
    osc.send('/soundroom/master','1.0');
    OBJECTS_DEF.forEach(def=>{if(def.soundRole)sendRole(def.soundRole,placed[def.sprite]);});
  },[placed,sendRole,osc,oscEnabled]);
  const pushSpeed=useCallback(()=>{
    const p=placed['Room - Coffee.png'],s=p?0.4+p.lx*1.2:1.0;
    setSpeed(+s.toFixed(2));
    if(oscEnabled) osc.send('/soundroom/speed',s.toFixed(3));
  },[placed,osc,oscEnabled]);
  // Use a ref so handleStart always reads the latest audioMode (avoids stale closure)
  const audioModeRef = useRef(null);
  const handleModeSelect = useCallback((mode) => {
    audioModeRef.current = mode;
    setAudioMode(mode);
    setShowModeSelect(false);
  }, []);

  const handleStart=useCallback(()=>{
    const mode = audioModeRef.current;
    const useOSCMode   = mode === 'osc'      || mode === 'both';
    const useAudioMode = mode === 'webaudio' || mode === 'both';

    // For webaudio: don't dismiss load screen yet — keep it showing progress
    // For OSC-only: dismiss immediately, nothing async to wait for
    if (!useAudioMode) {
      setShowLoad(false);
    }
    setStarted(true);

    if (useAudioMode) {
      setIsLoadingStems(true);
      audio.start(
        (p) => setStemProgress(Math.round(p * 100)),
        (loadedCount) => {
          // Stems fully loaded — now dismiss load screen and sync everything
          setIsLoadingStems(false);
          setShowLoad(false);
          if (loadedCount === 0) setStemLoadError(true);
          audio.syncAll(placedRef.current);
          const vinylPos = placedRef.current['Room - Vinyl Player.png'];
          if (vinylPos) audio.applyVinyl(vinylPos.lx, vinylPos.ly);
          const coffeePos = placedRef.current['Room - Coffee.png'];
          audio.applySpeed(coffeePos ? 0.4 + coffeePos.lx * 1.2 : 1.0);
          audio.applyBlinds(1 - blindsTRef.current);
          audio.applyLamp(lampRef.current);
          audio.applyWeather(weatherRef.current === 'rain' ? 1 : 0);
        }
      );
    }

    if (!useOSCMode) return;
    const msgs = [];
    OBJECTS_DEF.forEach(({soundRole})=>{if(soundRole)msgs.push([`/soundroom/layer/${soundRole}`,'0.0','0.0','0.0']);});
    msgs.push(['/soundroom/layer/harmony','0.0','0.18','1.0']);
    msgs.push(['/soundroom/time','0.0']);
    msgs.push(['/soundroom/blinds',(1-0.9).toFixed(3)]);
    msgs.push(['/soundroom/lamp','0.0']);
    msgs.push(['/soundroom/weather','0.0']);
    msgs.push(['/soundroom/speed','1.0']);
    msgs.push(['/soundroom/master','0.0']);
    OBJECTS_DEF.forEach(({oscAddress}) => { if (oscAddress) msgs.push([oscAddress, '0.0']); });
    AMBIENTS.forEach(({oscAddress}) => msgs.push([oscAddress, '0.0']));
    const wsFn = osc.waitAndSend || osc.send;
    msgs.forEach(([addr,...args], i) => setTimeout(() => wsFn(addr,...args), i*30));
  },[osc, audio]);

  useEffect(()=>{if(!started)return;if(isNight===prevNight.current)return;prevNight.current=isNight;clearTimers();if(oscEnabled)osc.send('/soundroom/time',isNight?'100.0':'0.0');transTimers.current.push(setTimeout(sendAll,Math.round(CFMS*.3)),setTimeout(sendAll,CFMS+150));},[isNight,started,osc,sendAll,clearTimers,oscEnabled]);
  useEffect(()=>{if(started&&oscEnabled)osc.send('/soundroom/blinds',blindsT.toFixed(3));},[blindsT,started,osc,oscEnabled]);
  useEffect(()=>{if(started&&oscEnabled)osc.send('/soundroom/lamp',String(lamp));},[lamp,started,osc,oscEnabled]);
  useEffect(()=>{if(started&&oscEnabled)osc.send('/soundroom/weather',weather==='rain'?'1.0':'0.0');},[weather,started,osc,oscEnabled]);
  useEffect(()=>{if(started){sendAll();pushSpeed();}},[placed,started,sendAll,pushSpeed]);

  // ── WEB AUDIO ─────────────────────────────────────────────────────────────
  useEffect(()=>{
    if(!started||!audioEnabled)return;
    if(isNight===prevNight.current)return;
    audio.transitionScene(isNight?'night':'day', placed);
  },[isNight,started,audio,placed,audioEnabled]);
  useEffect(()=>{ if(started&&audioEnabled) audio.applyBlinds(1-blindsT); },[blindsT,started,audio,audioEnabled]);
  useEffect(()=>{ if(started&&audioEnabled) audio.applyLamp(lamp); },[lamp,started,audio,audioEnabled]);
  useEffect(()=>{ if(started&&audioEnabled) audio.applyWeather(weather==='rain'?1:0); },[weather,started,audio,audioEnabled]);
  useEffect(()=>{
    if(!started||!audioEnabled)return;
    audio.syncAll(placed);
    const vinylPos=placed['Room - Vinyl Player.png'];
    if(vinylPos) audio.applyVinyl(vinylPos.lx,vinylPos.ly);
    else audio.clearVinyl();
    if(!placed['Room - Laptop.png']){audio.clearLaptop();setLaptopLabel('CLEAN');}
    const coffeePos=placed['Room - Coffee.png'];
    audio.applySpeed(coffeePos?0.4+coffeePos.lx*1.2:1.0);
  },[placed,started,audio,audioEnabled]);

  // ── Ambient toggle ────────────────────────────────────────────────────────
  // Toggle an ambience on/off — sends gain via OSC to Max.
  const toggleAmbient = useCallback((ambId) => {
    if (!started) return;
    const amb = AMBIENTS.find(a => a.id === ambId);
    if (!amb) return;
    setActiveAmbients(prev => {
      const next = new Set(prev);
      if (next.has(ambId)) {
        if (oscEnabled) osc.send(amb.oscAddress, '0.0');
        next.delete(ambId);
      } else {
        const vol = Math.min(ambientVolumes.current[ambId] ?? 0.3, 0.5);
        if (oscEnabled) osc.send(amb.oscAddress, vol.toFixed(3));
        next.add(ambId);
      }
      return next;
    });
  }, [started, osc, oscEnabled]);

  const setAmbientVol = useCallback((ambId, vol) => {
    ambientVolumes.current[ambId] = vol;
    if (activeAmbients.has(ambId) && started && oscEnabled) {
      const amb = AMBIENTS.find(a => a.id === ambId);
      if (amb) osc.send(amb.oscAddress, vol.toFixed(3));
    }
  }, [activeAmbients, started, osc, oscEnabled]);

  // Zero all ambiences on unmount
  useEffect(() => () => {
    if (started && oscEnabled) AMBIENTS.forEach(({oscAddress}) => osc.send(oscAddress, '0.0'));
  }, []);

  // ── Shuffle / Reset ───────────────────────────────────────────────────────
  const doShuffle=useCallback(()=>{
    const count=1+Math.floor(Math.random()*OBJECTS_DEF.length);
    const pool=[...OBJECTS_DEF].sort(()=>Math.random()-.5).slice(0,count);
    const step=1/snapDiv,allPos=[];
    for(let xi=1;xi<snapDiv;xi++)for(let yi=1;yi<snapDiv;yi++)allPos.push({lx:+(xi*step).toFixed(4),ly:+(yi*step).toFixed(4)});
    const shuffled=allPos.sort(()=>Math.random()-.5),n={},used=new Set();
    pool.forEach(o=>{for(const pos of shuffled){const key=`${pos.lx},${pos.ly}`;if(used.has(key))continue;if(wouldOverlap(o.sprite,pos.lx,pos.ly,n))continue;used.add(key);n[o.sprite]=snapAndClamp(pos.lx,pos.ly,o.sprite,snapDiv);break;}});
    setPlaced(n);setSel(null);
  },[snapDiv]);

  // ── Colours ───────────────────────────────────────────────────────────────
  const isDark=isNight;
  const pBg  = isDark?'rgba(12,18,32,.93)':'rgba(40,20,5,.9)';
  const pBdr = isDark?'rgba(60,100,180,.3)':'rgba(180,110,50,.35)';
  const tCol = isDark?'#a0c0e0':'#c07840';
  const dCol = isDark?'rgba(120,170,220,.5)':'rgba(160,90,40,.5)';
  const placedCount=Object.keys(placed).length;
  const selDef=sel?OBJECTS_DEF.find(o=>o.sprite===sel):null;

  // ── Main UI ───────────────────────────────────────────────────────────────
  return (
    <div ref={pageDivRef} style={{width:'100%',minHeight:'100vh',display:'flex',fontFamily:"'Courier New',monospace",boxSizing:'border-box'}}>

      {showModeSelect && <ModeSelect onSelect={handleModeSelect} />}

      {showLoad&&(
        <div style={{position:'fixed',inset:0,zIndex:100,background:'rgba(20,10,4,.82)',backdropFilter:'blur(3px)',
          display:'flex',flexDirection:'column',alignItems:'center',justifyContent:'center',gap:'1.4rem',fontFamily:"'Courier New',monospace",
          cursor:isLoadingStems?'wait':'pointer'}}
          onClick={isLoadingStems?undefined:handleStart}>
          <div style={{fontSize:9,color:'rgba(255,210,150,.4)',letterSpacing:4}}>DESE-61003 · AUDIO EXPERIENCE DESIGN</div>
          <div style={{fontSize:22,color:'#fff8f0',letterSpacing:5,fontWeight:'bold',textShadow:'2px 2px 0 rgba(80,30,0,.6)'}}>◈ SOUND ROOM ◈</div>
          <div style={{width:200,height:8,background:'rgba(80,30,10,.35)',border:'2px solid rgba(200,120,50,.4)'}}>
            <div style={{height:'100%',background:'linear-gradient(90deg,#c07030,#f0b050)',
              width:`${isLoadingStems?stemProgress:0}%`,transition:'width .2s'}}/>
          </div>
          <div style={{fontSize:11,color:'rgba(255,210,150,.5)',letterSpacing:2}}>
            {isLoadingStems?`loading stems… ${stemProgress}%`:'click to enter'}
          </div>
          {stemLoadError&&(
            <div style={{maxWidth:320,textAlign:'center',padding:'8px 12px',background:'rgba(180,60,40,.15)',border:'1px solid rgba(220,80,50,.4)',borderRadius:4,fontSize:8,color:'#e09080',lineHeight:1.6,letterSpacing:.5}}>
              ✗ no stems found — check browser console for 404s<br/>
              put files in <span style={{color:'#f0b070'}}>public/stems/day/</span> and <span style={{color:'#f0b070'}}>public/stems/night/</span><br/>
              or flat in <span style={{color:'#f0b070'}}>public/stems/</span> (e.g. "1 Piano Main.aiff")
            </div>
          )}
        </div>
      )}

      {debug&&(<DebugPanel floor={FLOOR} snapDiv={snapDiv} onSnapDivChange={setSnapDiv} placed={placed} sel={sel} setSel={setSel} anchors={ANCHORS} showFP={showFP} setShowFP={setShowFP} showCubes={showCubes} setShowCubes={setShowCubes} objects={OBJECTS_DEF}
        rainPoly={rainPoly}
        onResetPoly={()=>{ const p=[]; setRainPoly(p); rainPolyRef.current=p; rainDrops.current=[]; }}
      />)}

      <div style={{flex:1,display:'flex',flexDirection:'column',alignItems:'center',justifyContent:'center',padding:16,gap:8}}>

        <div style={{width:DW+140,display:'flex',justifyContent:'space-between',alignItems:'center'}}>
          <div style={{fontSize:10,color:dCol,letterSpacing:3}}>
            ◈ SOUND ROOM · <span style={{color:isDark?'#80b8e0':'#d47830',transition:'color 1s'}}>{isDark?'NIGHT':'DAY'}</span>
            {audioMode&&<span style={{marginLeft:10,fontSize:7,color:audioMode==='osc'?'#e8c84a':audioMode==='webaudio'?'#4ae880':'#4ac8e8',letterSpacing:2,opacity:.7}}>
              {audioMode==='osc'?'[OSC]':audioMode==='webaudio'?'[WEB AUDIO]':'[HYBRID]'}
            </span>}
          </div>
          <div style={{display:'flex',alignItems:'center',gap:6}}>
            {[
              [()=>setWeather(w=>w==='rain'?'clear':'rain'),weather==='rain'?'🌧 rain':'☀ clear'],
              [()=>startDnTransition(dn<.5?1:0),isDark?'☀ day':'🌙 night'],
              [doShuffle,'shuffle'],
              [()=>{
                // Zero out effect + ambience OSC addresses on reset
                if (started && oscEnabled) {
                  OBJECTS_DEF.forEach(({oscAddress}) => { if (oscAddress) osc.send(oscAddress, '0.0'); });
                  OBJECTS_DEF.forEach(({soundRole}) => { if (soundRole) osc.send(`/soundroom/layer/${soundRole}`,'0.0','0.0','0.0'); });
                  AMBIENTS.forEach(({oscAddress}) => osc.send(oscAddress, '0.0'));
                  osc.send('/soundroom/master','0.0');
                }
                setActiveAmbients(new Set());
                setPlaced({});setSel(null);
                setLamp(0);setBlindsT(0.9);setWeather('clear');
                setSpeed(1.0);startDnTransition(0);
                if (audioEnabled) {
                  audio.applyBlinds(1-0.25);audio.applyLamp(0);
                  audio.applyWeather(0);audio.applySpeed(1.0);
                  audio.syncAll({});
                }
              },'reset'],
              [()=>setDebug(d=>!d),debug?'◉ debug':'○ debug'],
            ].map(([fn,label],i)=>(
              <div key={i} onClick={fn} style={{padding:'3px 10px',cursor:'pointer',fontSize:9,
                color:label.includes('debug')&&debug?'#4ac8e8':tCol,
                background:label.includes('debug')&&debug?'rgba(10,40,80,.4)':pBg,
                border:`1px solid ${label.includes('debug')&&debug?'rgba(74,200,232,.5)':pBdr}`,borderRadius:4}}>{label}</div>
            ))}
            <div style={{fontSize:9,color:dCol}}>{placedCount}/{OBJECTS_DEF.length}</div>
          </div>
        </div>

        <div style={{display:'flex',gap:8,alignItems:'flex-start'}}>
          <div style={{display:'flex',flexDirection:'column',gap:6}}>
            <div style={{background:pBg,border:`1px solid ${pBdr}`,borderRadius:6,transition:'background .8s,border-color .8s',padding:'8px 10px',display:'flex',flexDirection:'column',alignItems:'center',gap:2}}>
              <Dial value={lamp} onChange={setLamp} label="LAMP" size={52} color={isDark?'#80b8e0':'#d4a840'}/>
            </div>

            <div style={{background:pBg,border:`1px solid ${pBdr}`,borderRadius:6,transition:'background .8s,border-color .8s',padding:'8px 8px',display:'flex',flexDirection:'column',gap:2,minWidth:72}}>
              <div style={{fontSize:6,color:dCol,letterSpacing:1.5,textAlign:'center',marginBottom:3}}>ATMOSPHERE</div>
              {AMBIENTS.map(amb=>{
                const isOn=activeAmbients.has(amb.id);
                return (
                  <div key={amb.id}>
                    <div onClick={()=>toggleAmbient(amb.id)}
                      style={{display:'flex',alignItems:'center',gap:5,padding:'4px 6px',borderRadius:4,cursor:'pointer',
                        background:isOn?`rgba(${isDark?'60,40,120':'180,100,40'},.25)`:'transparent',
                        border:`1px solid ${isOn?pBdr:'transparent'}`,transition:'all .15s'}}>
                      <div style={{width:6,height:6,borderRadius:'50%',background:isOn?amb.color:'#333',flexShrink:0,transition:'background .3s'}}/>
                      <span style={{fontSize:8,color:isOn?tCol:dCol,letterSpacing:.3}}>{amb.label}</span>
                    </div>
                    {isOn&&(
                      <input type="range" min={0} max={0.5} step={.02}
                        defaultValue={.3}
                        onChange={e=>setAmbientVol(amb.id,parseFloat(e.target.value))}
                        onPointerDown={e=>e.stopPropagation()}
                        style={{width:'100%',marginTop:2,accentColor:amb.color,height:3}}/>
                    )}
                  </div>
                );
              })}
            </div>
          </div>

          <div style={{position:'relative',width:DW,height:DH,flexShrink:0,
            border:`2px solid ${dropBlocked?'rgba(220,60,40,.8)':isDark?'rgba(40,70,120,.5)':'rgba(140,70,20,.4)'}`,
            borderRadius:3,transition:'border-color .15s',
            boxShadow:`0 8px 48px ${isDark?'rgba(4,10,22,.9)':'rgba(80,40,8,.4)'}`}}>

            <canvas ref={bgRef} width={W} height={H} style={{position:'absolute',top:0,left:0,width:DW,height:DH,imageRendering:'pixelated'}}/>
            <canvas ref={ltRef} width={W} height={H} style={{position:'absolute',top:0,left:0,width:DW,height:DH,imageRendering:'pixelated',mixBlendMode:'screen',pointerEvents:'none'}}/>
            <canvas ref={ovRef} width={W} height={H}
              style={{position:'absolute',top:0,left:0,width:DW,height:DH,cursor:drag||blindsDragging?'grabbing':hovCelestial||hovWindow?'pointer':debug?'crosshair':'default'}}
              onPointerDown={onPointerDown} onPointerMove={onPointerMove} onPointerUp={onPointerUp} onPointerLeave={onPointerLeave}/>

            {dropBlocked&&(<div style={{position:'absolute',inset:0,pointerEvents:'none',border:'3px solid rgba(220,60,40,.6)',borderRadius:2,boxShadow:'inset 0 0 40px rgba(220,60,40,.2)'}}/>)}

            {sel&&selDef&&(
              <div style={{position:'absolute',bottom:10,left:10,zIndex:10,background:pBg,border:`1px solid ${pBdr}`,borderRadius:4,padding:'8px 12px'}}
                onPointerDown={e=>e.stopPropagation()}>
                <div style={{color:tCol,fontSize:11,marginBottom:2,letterSpacing:1}}>{selDef.name}</div>
                <div style={{color:dCol,fontSize:8,marginBottom:6}}>
                  {selDef.id === 'Coffee'
                    ? `☕ speed: ${speed}× · ${Math.round((isNight?110:80)*speed)} BPM · left=slow right=fast`
                    : selDef.id === 'Vinyl'
                      ? `🎛 tape warble · flutter ${Math.round(Math.abs((placed[sel]?.lx??0.5)-0.5)*200)}% · warmth ${Math.round(calcDepth(placed[sel]?.lx??0.5, placed[sel]?.ly??0.5)*100)}%`
                      : selDef.id === 'Laptop'
                        ? `💻 bitcrusher: ${laptopLabel} · click to cycle · drag to move`
                        : selDef.isSpeed
                          ? `⚡ speed: ${speed}x`
                          : `${selDef.soundRole??'no sound'} · drag to move`}
                </div>
                <button onClick={()=>removeObj(sel)} style={{padding:'3px 10px',background:'rgba(160,50,30,.15)',border:'1px solid rgba(180,70,40,.35)',color:'#d08870',fontSize:9,cursor:'pointer',fontFamily:'inherit',borderRadius:3}}>remove</button>
              </div>
            )}
            <div style={{position:'absolute',top:7,right:7,fontSize:8,color:dCol,pointerEvents:'none'}}>{placedCount}/{OBJECTS_DEF.length}</div>
          </div>

          <div style={{background:pBg,border:`1px solid ${pBdr}`,borderRadius:6,transition:'background .8s,border-color .8s',padding:'8px 10px',display:'flex',flexDirection:'column',alignItems:'center',gap:5}}>
            <div style={{fontSize:7,color:dCol,letterSpacing:1}}>BLINDS</div>
            <input type="range" min={0} max={1} step={.01} value={1-blindsT} onChange={e=>setBlindsT(1-(+e.target.value))}
              style={{writingMode:'vertical-lr',direction:'rtl',height:80,width:18,accentColor:isDark?'#80b0e0':'#d07830',transform:'scaleY(-1)'}}/>
            <div style={{fontSize:7,color:dCol}}>{Math.round(blindsT*100)}%</div>
            <div style={{fontSize:6,color:dCol,textAlign:'center',maxWidth:50,lineHeight:1.3,opacity:.7}}>drag tassel</div>
            <div style={{fontSize:18,cursor:'pointer',lineHeight:1}} onClick={()=>setWeather(w=>w==='rain'?'clear':'rain')}>
              {weather==='rain'?'🌧':'☀️'}
            </div>
          </div>
        </div>

        <div style={{background:pBg,border:`1px solid ${pBdr}`,borderRadius:4,width:DW+140,display:'flex',flexWrap:'wrap',gap:6,alignItems:'flex-end',padding:'10px 12px'}}>
          <div style={{fontSize:8,color:dCol,letterSpacing:2,marginRight:4,alignSelf:'center'}}>OBJECTS</div>
          {OBJECTS_DEF.map(def=>{
            const isPlaced=!!placed[def.sprite],isHov=hovTray===def.id&&!isPlaced,imgEl=imgs.current[def.sprite];
            return (
              <div key={def.id}
                onMouseEnter={()=>setHovTray(def.id)} onMouseLeave={()=>setHovTray(null)}
                onPointerDown={e=>onTrayDown(e,def)}
                title={isPlaced?`${def.name} · placed`
                  : def.id==='Coffee' ? `${def.name} · controls playback speed · drag into room`
                  : def.id==='Vinyl'  ? `${def.name} · tape warble + warmth filter · drag into room`
                  : def.id==='Laptop' ? `${def.name} · bitcrusher (CLEAN→LO-FI→GLITCH) · drag into room`
                  : `${def.name}${def.oscAddress?' · fx':''}· drag into room`}
                style={{position:'relative',display:'flex',flexDirection:'column',alignItems:'center',justifyContent:'flex-end',gap:3,padding:'6px 6px 3px',
                  background:isPlaced?'rgba(60,30,10,.04)':isHov?`rgba(${isDark?'60,100,160':'180,100,40'},.2)`:'rgba(60,30,10,.08)',
                  border:`1px solid rgba(${isDark?'80,130,200':'160,90,40'},${isPlaced?.04:isHov?.45:.14})`,
                  borderRadius:5,cursor:isPlaced?'default':isHov?'grab':'pointer',
                  opacity:isPlaced?.3:1,transition:'all .15s',
                  boxShadow:isHov?`0 0 10px rgba(${isDark?'60,120,220':'200,130,50'},.3)`:'none',minWidth:64}}>
                {imgEl&&<Thumbnail src={imgEl.src} sprite={def.sprite} maxW={72} maxH={54}/>}
                {isPlaced&&(<div style={{position:'absolute',inset:0,display:'flex',alignItems:'center',justifyContent:'center',fontSize:16,color:`rgba(${isDark?'100,160,220':'160,90,40'},.5)`}}>✓</div>)}
                {/* FX badge for effect objects */}
                {def.oscAddress&&!isPlaced&&(
                  <div style={{position:'absolute',top:3,right:3,fontSize:5,color:isDark?'#80c0ff':'#d47830',background:'rgba(0,0,0,.45)',padding:'1px 3px',borderRadius:2,letterSpacing:.5}}>FX</div>
                )}
                <div style={{fontSize:6,color:'rgba(255,255,255,.6)',background:'rgba(0,0,0,.4)',padding:'1px 4px',letterSpacing:.4,maxWidth:72,textAlign:'center',whiteSpace:'nowrap',overflow:'hidden',textOverflow:'ellipsis',borderRadius:2}}>
                  {def.name}
                </div>
              </div>
            );
          })}
        </div>

        <div style={{fontSize:7,color:dCol,opacity:.35,letterSpacing:2}}>DESE-61003 · Imperial College London · Dyson School</div>
      </div>

      {trayDrag&&(
        <div style={{position:'fixed',left:trayDrag.x-40,top:trayDrag.y-30,zIndex:9999,pointerEvents:'none',opacity:.85,filter:'drop-shadow(0 4px 12px rgba(0,0,0,.7)) drop-shadow(0 0 8px rgba(255,190,60,.6))'}}>
          {imgs.current[trayDrag.def.sprite]&&(<Thumbnail src={imgs.current[trayDrag.def.sprite].src} sprite={trayDrag.def.sprite} maxW={72} maxH={54}/>)}
        </div>
      )}

      <InfoPanel
        isOpen={infoPanelOpen}
        onToggle={()=>setInfoPanelOpen(o=>!o)}
        placed={placed}
        isNight={isNight}
        lamp={lamp}
        blindsT={blindsT}
        weather={weather}
        speed={speed}
        activeAmbients={[...activeAmbients]}
        laptopLabel={laptopLabel}
      />
    </div>
  );
}
