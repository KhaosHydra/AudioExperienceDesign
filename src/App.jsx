/**
 * SOUND ROOM v3 — Pixel Art Room
 * Sprites: public/sprites/ (cropped, pre-positioned at 512×384)
 * Source canvas: 2560×1920 → displayed at 512×384 (scale 0.2)
 * DESE-61003 · Imperial College London
 */
import { useState, useRef, useCallback, useEffect, useMemo } from 'react';
import './index.css';
import useOSC from './useOSC';

const RW = 512, RH = 384;

// ── Sprite offset table ───────────────────────────────────────────────────────
// ox,oy = top-left of cropped sprite in 512×384 room space
// w,h   = rendered size in px
// anchorFx/Fy = foot point as fraction of sprite w/h (for draggable objects)
const S = {
  'Room - Room.png':            {ox:0,   oy:0,   w:512, h:384},
  'Room - Day.png':             {ox:387, oy:99,  w:88,  h:115},
  'Room - Night.png':           {ox:387, oy:99,  w:88,  h:115},
  'Room - Sun.png':             {ox:395, oy:123, w:31,  h:30},
  'Room - Moon.png':            {ox:441, oy:145, w:27,  h:29},
  'Room - Window.png':          {ox:380, oy:96,  w:96,  h:130},
  'Room - Blinds.png':          {ox:383, oy:97,  w:95,  h:133},  // full blind incl. tassel
  'Room - Lamp.png':            {ox:230, oy:30,  w:52,  h:78},
  // Draggable objects
  'Room - Bed.png':             {ox:189, oy:85,  w:170, h:128, anchorFx:0.50, anchorFy:0.98},
  'Room - Bookshelf.png':       {ox:13,  oy:105, w:138, h:158, anchorFx:0.50, anchorFy:0.97},
  'Room - Cat.png':             {ox:252, oy:131, w:51,  h:30,  anchorFx:0.50, anchorFy:0.99},
  'Room - Coffee.png':          {ox:231, oy:283, w:19,  h:25,  anchorFx:0.50, anchorFy:0.99},
  'Room - Duck teddy.png':      {ox:134, oy:189, w:31,  h:44,  anchorFx:0.50, anchorFy:0.98},
  'Room - Frog Teddy.png':      {ox:54,  oy:229, w:33,  h:45,  anchorFx:0.50, anchorFy:0.98},
  'Room - Plant oval base.png': {ox:136, oy:130, w:76,  h:68,  anchorFx:0.50, anchorFy:0.98},
  'Room - Plant.png':           {ox:128, oy:238, w:76,  h:89,  anchorFx:0.50, anchorFy:0.98},
  'Room - Speakers.png':        {ox:299, oy:159, w:57,  h:55,  anchorFx:0.50, anchorFy:0.95},
  'Room - Table.png':           {ox:208, oy:245, w:164, h:131, anchorFx:0.50, anchorFy:0.97},
  'Room - Vinyl Player.png':    {ox:302, oy:243, w:60,  h:43,  anchorFx:0.50, anchorFy:0.95},
  // Avatar — always visible, non-draggable, fixed centre-floor
  'Room - Avatar.png':          {ox:233, oy:168, w:43,  h:80,  anchorFx:0.50, anchorFy:0.99},
};

// ── Isometric floor projection ─────────────────────────────────────────────────
const FLOOR = {
  top:  {x:256, y:184},
  left: {x:44,  y:295},
  right:{x:468, y:295},
  bot:  {x:256, y:375},
};
function toScreen(lx, ly) {
  const {top,left,right,bot}=FLOOR;
  return {
    sx: top.x+(right.x-top.x)*lx+(left.x-top.x)*ly+(bot.x-right.x-left.x+top.x)*lx*ly,
    sy: top.y+(right.y-top.y)*lx+(left.y-top.y)*ly+(bot.y-right.y-left.y+top.y)*lx*ly,
  };
}
function fromScreen(sx, sy) {
  let lx=(sx-FLOOR.left.x)/(FLOOR.right.x-FLOOR.left.x);
  let ly=(sy-FLOOR.top.y)/(FLOOR.bot.y-FLOOR.top.y);
  for(let i=0;i<8;i++){
    const p=toScreen(lx,ly);
    lx=Math.max(0.02,Math.min(0.98,lx+(sx-p.sx)/(FLOOR.right.x-FLOOR.left.x)));
    ly=Math.max(0.02,Math.min(0.98,ly+(sy-p.sy)/(FLOOR.bot.y-FLOOR.top.y)));
  }
  return {lx,ly};
}
function computePan(lx,ly){return Math.max(-1,Math.min(1,(lx-ly)*2));}
function computeVol(lx,ly){const d=Math.sqrt((lx-.5)**2+(ly-.5)**2);return .15+.5*Math.pow(Math.max(0,1-d/.6),.65);}

// Given sprite name + floor position, return {left,top,width,height} for absolute positioning
function getObjPos(sprite, lx, ly) {
  const sp=S[sprite];
  const {sx,sy}=toScreen(lx,ly);
  const ax=sp.w*(sp.anchorFx??0.5);
  const ay=sp.h*(sp.anchorFy??0.98);
  return {left:Math.round(sx-ax), top:Math.round(sy-ay), width:sp.w, height:sp.h};
}

// ── Object definitions ─────────────────────────────────────────────────────────
const OBJECTS_DEF = [
  {id:'Bed',      sprite:'Room - Bed.png',           soundRole:'melody2', name:'Bed'},
  {id:'Bookshelf',sprite:'Room - Bookshelf.png',     soundRole:'bass',    name:'Bookshelf'},
  {id:'Cat',      sprite:'Room - Cat.png',           soundRole:'sparkle', name:'Cat'},
  {id:'Coffee',   sprite:'Room - Coffee.png',        soundRole:'texture', name:'Coffee Mug'},
  {id:'Duck',     sprite:'Room - Duck teddy.png',    soundRole:'pad',     name:'Duck Teddy'},
  {id:'Frog',     sprite:'Room - Frog Teddy.png',    soundRole:'arp',     name:'Frog Teddy'},
  {id:'Plant',    sprite:'Room - Plant oval base.png',soundRole:'harmony',name:'Plant'},
  {id:'Speakers', sprite:'Room - Speakers.png',      soundRole:'rhythm',  name:'Speakers'},
  {id:'Table',    sprite:'Room - Table.png',         soundRole:'melody',  name:'Table'},
  {id:'Vinyl',    sprite:'Room - Vinyl Player.png',  soundRole:'bass',    name:'Vinyl Player'},
];

// ── Dial ───────────────────────────────────────────────────────────────────────
function Dial({value,onChange,label,size=52,color='#d4a840'}) {
  const drag=useRef(false),sY=useRef(0),sV=useRef(0);
  const MIN=-135,MAX=135,deg=MIN+(value/100)*(MAX-MIN);
  const atMin=value<=0,atMax=value>=100;
  const onPD=useCallback((e)=>{
    e.preventDefault();drag.current=true;sY.current=e.clientY;sV.current=value;
    const m=(me)=>{if(!drag.current)return;
      onChange(Math.max(0,Math.min(100,Math.round(sV.current+(sY.current-me.clientY)*0.8))));};
    const u=()=>{drag.current=false;window.removeEventListener('pointermove',m);window.removeEventListener('pointerup',u);};
    window.addEventListener('pointermove',m);window.addEventListener('pointerup',u);
  },[value,onChange]);
  const cx=size/2,cy=size/2,r=size*0.38,rad=deg*Math.PI/180;
  const dx=cx+Math.cos(rad)*r*0.65,dy=cy+Math.sin(rad)*r*0.65;
  const sR=MIN*Math.PI/180,aR=r*0.85;
  const x1=cx+Math.cos(sR)*aR,y1=cy+Math.sin(sR)*aR;
  const x2=cx+Math.cos(rad)*aR,y2=cy+Math.sin(rad)*aR;
  const la=(deg-MIN)>180?1:0;
  return(
    <div style={{display:'flex',flexDirection:'column',alignItems:'center',gap:3,userSelect:'none'}}>
      <svg width={size} height={size} style={{cursor:'ns-resize',touchAction:'none'}} onPointerDown={onPD}>
        <circle cx={cx} cy={cy} r={r} fill="rgba(0,0,0,.3)"
          stroke={atMin||atMax?color:'rgba(200,160,80,.2)'} strokeWidth={atMin||atMax?2:1}/>
        <path d={`M${x1} ${y1} A${aR} ${aR} 0 ${la} 1 ${x2} ${y2}`}
          fill="none" stroke={color} strokeWidth={2.5} strokeLinecap="round" opacity={0.85}/>
        <circle cx={cx} cy={cy} r={r*.72} fill={atMin?'#1a1408':atMax?color:'#4a3a20'} stroke={color} strokeWidth={1.5}/>
        <circle cx={dx} cy={dy} r={2.5} fill={atMin?'rgba(255,200,80,.25)':'#fffbe8'}/>
        {(atMin||atMax)&&<text x={cx} y={cy+3} textAnchor="middle" fontSize={size*.22} fill={color} fontFamily="monospace">{atMax?'●':'○'}</text>}
      </svg>
      <div style={{fontSize:7,color:'rgba(200,160,80,.6)',letterSpacing:1,fontFamily:"'Courier New',monospace"}}>{label} {value}%</div>
    </div>
  );
}

// ── Main App ───────────────────────────────────────────────────────────────────
export default function App() {
  const roomRef=useRef(null);
  const [placed,setPlaced]=useState([]);
  const [drag,setDrag]=useState(null);
  const [dragPos,setDragPos]=useState({x:0,y:0});
  const [sel,setSel]=useState(null);
  const [lamp,setLamp]=useState(0);
  const [blinds,setBlinds]=useState(0);   // 0=fully open, 100=fully closed
  const [weather,setWeather]=useState('clear');
  const [dn,setDn]=useState(0);
  const [showLoad,setShowLoad]=useState(true);
  const [started,setStarted]=useState(false);
  const [hovTray,setHovTray]=useState(null);
  const [trayDrag,setTrayDrag]=useState(null);
  const trayDragRef=useRef(null);
  const transTimer=useRef(null);
  const prevIsNight=useRef(false);
  const osc=useOSC();

  const isNight=dn>=50, n=dn/100;
  // Blinds: 0=fully open (blind slid UP, hidden), 100=fully closed (blind fully down)
  // translateY: at 0 → -BLIND_H (hidden above), at 100 → 0 (fully down)
  const BLIND_H=133;
  const blindSlideY = -BLIND_H + (blinds/100)*BLIND_H;  // -133 (open) → 0 (closed)
  // Lamp glow
  const lampAlpha=(lamp/100)*0.5;
  const lampRadius=30+lamp*0.5;
  const CFMS=5000;

  // OSC
  const handleStart=useCallback(()=>{
    setShowLoad(false);setStarted(true);
    for(const{soundRole}of OBJECTS_DEF) osc.send(`/soundroom/layer/${soundRole}`,'0.0','0.0','0.0');
    osc.send('/soundroom/layer/harmony','0.0','0.15','1.0');
    osc.send('/soundroom/time','0.0');
    osc.send('/soundroom/blinds',blinds);
    osc.send('/soundroom/lamp',lamp);
    osc.send('/soundroom/weather','0.0');
  },[osc,blinds,lamp]);

  const sendAll=useCallback(()=>{
    for(const{soundRole}of OBJECTS_DEF){
      const o=placed.find(p=>p.soundRole===soundRole);
      if(o) osc.send(`/soundroom/layer/${soundRole}`,computePan(o.lx,o.ly).toFixed(3),computeVol(o.lx,o.ly).toFixed(3),'1.0');
      else if(soundRole==='harmony') osc.send('/soundroom/layer/harmony','0.0','0.15','1.0');
      else osc.send(`/soundroom/layer/${soundRole}`,'0.0','0.0','0.0');
    }
  },[placed,osc]);

  useEffect(()=>{if(!started)return;if(isNight===prevIsNight.current)return;prevIsNight.current=isNight;
    osc.send('/soundroom/time',isNight?'100.0':'0.0');
    if(transTimer.current)clearTimeout(transTimer.current);
    transTimer.current=setTimeout(()=>{sendAll();transTimer.current=null;},CFMS+200);
  },[isNight,started,osc,sendAll]);
  useEffect(()=>{if(!started)return;osc.send('/soundroom/blinds',blinds);},[blinds,started]);
  useEffect(()=>{if(!started)return;osc.send('/soundroom/lamp',lamp);},[lamp,started]);
  useEffect(()=>{if(!started)return;osc.send('/soundroom/weather',weather==='rain'?'1.0':'0.0');},[weather,started]);
  useEffect(()=>{if(!started)return;sendAll();},[placed,started]);
  useEffect(()=>{
    if(!started||drag===null)return;
    const o=placed[drag];if(!o)return;
    osc.send(`/soundroom/layer/${o.soundRole}`,computePan(o.lx,o.ly).toFixed(3),computeVol(o.lx,o.ly).toFixed(3),'1.0');
  },[placed,drag,started]);

  // Drag placed objects
  const onObjPD=useCallback((e,i)=>{
    e.stopPropagation();e.preventDefault();
    setSel(i);setDrag(i);
  },[]);

  useEffect(()=>{
    if(drag===null)return;
    const onPM=(e)=>{
      const r=roomRef.current.getBoundingClientRect();
      const rw=r.width/RW,rh=r.height/RH;
      const rx=(e.clientX-r.left)/rw,ry=(e.clientY-r.top)/rh;
      setDragPos({x:rx,y:ry});
      const{lx,ly}=fromScreen(rx,ry);
      setPlaced(p=>p.map((o,i)=>i===drag?{...o,lx,ly}:o));
    };
    const onPU=()=>setDrag(null);
    window.addEventListener('pointermove',onPM);
    window.addEventListener('pointerup',onPU);
    return()=>{window.removeEventListener('pointermove',onPM);window.removeEventListener('pointerup',onPU);};
  },[drag]);

  // Tray drag
  const onTrayPD=useCallback((e,def)=>{
    if(placed.some(p=>p.id===def.id))return;
    e.preventDefault();e.stopPropagation();
    trayDragRef.current=def;
    setTrayDrag({def,x:e.clientX,y:e.clientY});
    const m=(me)=>setTrayDrag(td=>td?{...td,x:me.clientX,y:me.clientY}:null);
    const u=(ue)=>{
      if(trayDragRef.current&&roomRef.current){
        const r=roomRef.current.getBoundingClientRect();
        const rx=ue.clientX-r.left,ry=ue.clientY-r.top;
        if(rx>=0&&rx<=r.width&&ry>=0&&ry<=r.height){
          const rw=r.width/RW,rh=r.height/RH;
          const{lx,ly}=fromScreen(rx/rw,ry/rh);
          setPlaced(prev=>[...prev,{...trayDragRef.current,
            lx:Math.max(0.05,Math.min(0.95,lx)),
            ly:Math.max(0.05,Math.min(0.95,ly)),
            iid:Date.now()+Math.random()}]);
        }
      }
      trayDragRef.current=null;setTrayDrag(null);
      window.removeEventListener('pointermove',m);window.removeEventListener('pointerup',u);
    };
    window.addEventListener('pointermove',m);window.addEventListener('pointerup',u);
  },[placed]);

  const removeObj=(i)=>{setPlaced(p=>p.filter((_,j)=>j!==i));setSel(null);};
  const resetAll=()=>{setPlaced([]);setSel(null);};
  const randomise=()=>setPlaced([...OBJECTS_DEF].sort(()=>Math.random()-.5).map((o,i)=>({
    ...o,lx:0.15+((i%3)/3)*.65+Math.random()*.08,
    ly:0.15+(Math.floor(i/3)/3)*.65+Math.random()*.08,iid:Date.now()+i})));

  const sorted=useMemo(()=>[...placed].map((o,i)=>({o,i})).sort((a,b)=>(a.o.lx+a.o.ly)-(b.o.lx+b.o.ly)),[placed]);
  const selObj=sel!==null?placed[sel]:null;

  // Avatar position — sits at centre-front of room, not draggable
  const avatarPos=getObjPos('Room - Avatar.png',0.5,0.72);

  const isDark=isNight;
  const pBg=isDark?'rgba(12,18,32,.93)':'rgba(40,20,5,.9)';
  const pBdr=isDark?'rgba(60,100,180,.3)':'rgba(180,110,50,.35)';
  const tCol=isDark?'#a0c0e0':'#c07840';
  const dCol=isDark?'rgba(120,170,220,.5)':'rgba(160,90,40,.5)';
  const pageBg=isDark
    ?'radial-gradient(ellipse at 50% 0%,#1a2a42 0%,#0a1220 60%,#050a14 100%)'
    :'radial-gradient(ellipse at 50% 0%,#e8d090 0%,#c09858 50%,#9a7438 100%)';

  const sp=(name)=>`/sprites/${name}`;

  if(showLoad) return(
    <div style={{position:'fixed',inset:0,cursor:'pointer',
      background:'radial-gradient(ellipse at 50% 30%,#c87040 0%,#7a3418 60%,#320e02 100%)',
      display:'flex',flexDirection:'column',alignItems:'center',justifyContent:'center',gap:'1.4rem',
      fontFamily:"'Courier New',monospace"}} onClick={handleStart}>
      <div style={{fontSize:9,color:'rgba(255,210,150,.4)',letterSpacing:4}}>DESE-61003 · AUDIO EXPERIENCE DESIGN</div>
      <div style={{fontSize:22,color:'#fff8f0',letterSpacing:5,fontWeight:'bold',textShadow:'2px 2px 0 rgba(80,30,0,.6)'}}>◈ SOUND ROOM ◈</div>
      <div style={{width:200,height:8,background:'rgba(80,30,10,.35)',border:'2px solid rgba(200,120,50,.4)'}}>
        <div style={{height:'100%',background:'linear-gradient(90deg,#c07030,#f0b050)',width:'100%'}}/>
      </div>
      <div style={{fontSize:11,color:'rgba(255,210,150,.5)',letterSpacing:2}}>click to enter</div>
      <div style={{fontSize:8,color:'rgba(200,140,90,.2)',marginTop:16,textAlign:'center',lineHeight:2}}>
        Imperial College London · Dyson School of Design Engineering
      </div>
    </div>
  );

  return(
    <div style={{width:'100%',minHeight:'100vh',display:'flex',flexDirection:'column',
      alignItems:'center',justifyContent:'center',background:pageBg,transition:'background 1.5s',
      fontFamily:"'Courier New',monospace",padding:16,boxSizing:'border-box',gap:8}}>

      {/* Header */}
      <div style={{width:RW+140,display:'flex',justifyContent:'space-between',alignItems:'center'}}>
        <div style={{fontSize:10,color:dCol,letterSpacing:3}}>
          ◈ SOUND ROOM ·{' '}
          <span style={{color:isDark?'#80b8e0':'#d47830',transition:'color 1s'}}>{isDark?'NIGHT':'DAY'}</span>
        </div>
        <div style={{display:'flex',alignItems:'center',gap:6}}>
          {[[()=>setWeather(w=>w==='clear'?'rain':'clear'),weather==='rain'?'🌧 rain':'☀ clear'],
            [randomise,'shuffle'],[resetAll,'reset']].map(([fn,label],i)=>(
            <div key={i} onClick={fn} style={{padding:'3px 10px',cursor:'pointer',fontSize:9,
              color:tCol,background:pBg,border:`1px solid ${pBdr}`,borderRadius:4}}>{label}</div>
          ))}
          <div style={{fontSize:9,color:dCol}}>{placed.length}/{OBJECTS_DEF.length}</div>
        </div>
      </div>

      {/* Room row */}
      <div style={{display:'flex',gap:8,alignItems:'center'}}>

        {/* Lamp dial */}
        <div style={{background:pBg,border:`1px solid ${pBdr}`,borderRadius:6,
          padding:'8px 10px',display:'flex',flexDirection:'column',alignItems:'center',gap:2}}>
          <Dial value={lamp} onChange={setLamp} label="LAMP" size={52} color={isDark?'#80b8e0':'#d4a840'}/>
        </div>

        {/* ── ROOM ── */}
        <div ref={roomRef} onClick={()=>setSel(null)}
          style={{position:'relative',width:RW,height:RH,overflow:'hidden',flexShrink:0,
            borderRadius:3,imageRendering:'pixelated',cursor:'default',
            border:`2px solid ${isDark?'rgba(40,70,120,.5)':'rgba(140,70,20,.4)'}`,
            boxShadow:`0 8px 48px ${isDark?'rgba(4,10,22,.9)':'rgba(80,40,8,.4)'}`}}>

          {/* Room base */}
          <img src={sp('Room - Room.png')} alt="" draggable={false}
            style={{position:'absolute',top:0,left:0,width:RW,height:RH,imageRendering:'pixelated',pointerEvents:'none'}}/>

          {/* Sky crossfade */}
          {[['Room - Day.png',Math.max(0,1-n*1.5)],['Room - Night.png',Math.max(0,n*1.5-.3)]].map(([src,op])=>{
            const s=S[src]; return(
            <img key={src} src={sp(src)} alt="" draggable={false}
              style={{position:'absolute',left:s.ox,top:s.oy,width:s.w,height:s.h,
                imageRendering:'pixelated',pointerEvents:'none',
                opacity:Math.min(1,op),transition:'opacity 1.5s'}}/>
          );})}

          {/* Sun / Moon */}
          {[['Room - Sun.png',Math.max(0,1-n*4)],['Room - Moon.png',Math.max(0,n*4-3)]].map(([src,op])=>{
            const s=S[src]; return(
            <img key={src} src={sp(src)} alt="" draggable={false}
              style={{position:'absolute',left:s.ox,top:s.oy,width:s.w,height:s.h,
                imageRendering:'pixelated',pointerEvents:'none',
                opacity:Math.min(1,op),transition:'opacity 1.5s'}}/>
          );})}

          {/* Window frame — click to toggle day/night */}
          {(()=>{ const s=S['Room - Window.png']; return(
            <img src={sp('Room - Window.png')} alt="" draggable={false}
              onClick={e=>{e.stopPropagation();setDn(isNight?0:100);}}
              style={{position:'absolute',left:s.ox,top:s.oy,width:s.w,height:s.h,
                imageRendering:'pixelated',cursor:'pointer',pointerEvents:'all',zIndex:2}}/>
          );})()}

          {/* ── BLINDS — single sprite that slides up/down ── */}
          {/* Clipping container matches the window opening */}
          <div style={{
            position:'absolute',
            left: S['Room - Blinds.png'].ox,
            top:  S['Room - Window.png'].oy + 4,  // clip to just inside window top
            width: S['Room - Blinds.png'].w,
            height: S['Room - Window.png'].h - 4,
            overflow:'hidden',
            zIndex:3, pointerEvents:'none',
          }}>
            <img src={sp('Room - Blinds.png')} alt="" draggable={false}
              style={{
                position:'absolute',
                left:0,
                top: blindSlideY - (S['Room - Window.png'].oy + 4 - S['Room - Blinds.png'].oy),
                width: S['Room - Blinds.png'].w,
                height: S['Room - Blinds.png'].h,
                imageRendering:'pixelated',
                transition:'top .35s ease',
              }}/>
          </div>

          {/* Lamp glow */}
          <div style={{position:'absolute',pointerEvents:'none',zIndex:4,
            left:256-lampRadius*2,top:20,
            width:lampRadius*4,height:lampRadius*3,
            background:`radial-gradient(ellipse at 50% 15%,rgba(255,230,100,${lampAlpha}) 0%,rgba(255,200,60,${lampAlpha*.5}) 35%,transparent 70%)`,
            transition:'all .4s',mixBlendMode:'screen'}}/>

          {/* Avatar — always visible, not draggable, behind most objects */}
          <img src={sp('Room - Avatar.png')} alt="avatar" draggable={false}
            style={{position:'absolute',
              left:avatarPos.left,top:avatarPos.top,
              width:avatarPos.width,height:avatarPos.height,
              imageRendering:'pixelated',pointerEvents:'none',
              zIndex:8  // below most objects so they render in front
            }}/>

          {/* Placed objects — depth sorted */}
          {sorted.map(({o,i})=>{
            const pos=getObjPos(o.sprite,o.lx,o.ly);
            const iSel=sel===i,isDrag=drag===i;
            return(
              <img key={o.iid} src={sp(o.sprite)} alt={o.name} draggable={false}
                onPointerDown={e=>onObjPD(e,i)}
                onClick={e=>{e.stopPropagation();setSel(i);}}
                style={{position:'absolute',
                  left:pos.left,top:pos.top,
                  width:pos.width,height:pos.height,
                  imageRendering:'pixelated',
                  cursor:isDrag?'grabbing':'grab',
                  filter:iSel
                    ?'drop-shadow(0 0 4px rgba(255,220,60,1)) drop-shadow(0 0 8px rgba(255,200,40,.7))'
                    :'drop-shadow(1px 3px 2px rgba(0,0,0,.3))',
                  transition:isDrag?'none':'filter .15s',
                  zIndex:10+Math.round((o.lx+o.ly)*100),
                  opacity:1,
                }}/>
            );
          })}

          {/* Lamp — always on top */}
          {(()=>{ const s=S['Room - Lamp.png']; return(
            <img src={sp('Room - Lamp.png')} alt="" draggable={false}
              style={{position:'absolute',left:s.ox,top:s.oy,width:s.w,height:s.h,
                imageRendering:'pixelated',pointerEvents:'none',zIndex:250}}/>
          );})()}

          {/* Night overlay */}
          <div style={{position:'absolute',inset:0,pointerEvents:'none',zIndex:260,
            background:`rgba(4,10,24,${n*.3})`,transition:'background 1.5s'}}/>

          {/* Selection panel */}
          {selObj&&(
            <div onClick={e=>e.stopPropagation()}
              style={{position:'absolute',bottom:10,left:10,zIndex:300,
                background:pBg,border:`1px solid ${pBdr}`,borderRadius:4,padding:'8px 12px'}}>
              <div style={{color:tCol,fontSize:11,marginBottom:2,letterSpacing:1}}>{selObj.name}</div>
              <div style={{color:dCol,fontSize:8,marginBottom:6}}>{selObj.soundRole} · drag to move</div>
              <button onClick={()=>removeObj(sel)}
                style={{padding:'3px 10px',background:'rgba(160,50,30,.15)',
                  border:'1px solid rgba(180,70,40,.35)',color:'#d08870',
                  fontSize:9,cursor:'pointer',fontFamily:'inherit',borderRadius:3}}>remove</button>
            </div>
          )}
          <div style={{position:'absolute',top:7,right:7,zIndex:300,
            fontSize:8,color:dCol,pointerEvents:'none'}}>{placed.length}/{OBJECTS_DEF.length}</div>
        </div>

        {/* Blinds + weather */}
        <div style={{background:pBg,border:`1px solid ${pBdr}`,borderRadius:6,
          padding:'8px 10px',display:'flex',flexDirection:'column',alignItems:'center',gap:5}}>
          <div style={{fontSize:7,color:dCol,letterSpacing:1}}>BLINDS</div>
          <input type="range" min={0} max={100} value={blinds}
            onChange={e=>setBlinds(+e.target.value)}
            style={{writingMode:'vertical-lr',direction:'rtl',height:80,width:18,
              accentColor:isDark?'#80b0e0':'#d07830'}}/>
          <div style={{fontSize:7,color:dCol}}>{blinds}%</div>
          <div style={{fontSize:18,cursor:'pointer',marginTop:2,lineHeight:1}}
            title="toggle rain"
            onClick={()=>setWeather(w=>w==='clear'?'rain':'clear')}>
            {weather==='rain'?'🌧':'☀️'}
          </div>
        </div>
      </div>

      {/* Tray */}
      <div style={{background:pBg,border:`1px solid ${pBdr}`,borderRadius:4,width:RW+140,
        display:'flex',gap:5,flexWrap:'wrap',alignItems:'center',padding:'8px 12px'}}>
        <div style={{fontSize:8,color:dCol,letterSpacing:2,marginRight:5}}>OBJECTS</div>
        {OBJECTS_DEF.map(def=>{
          const done=placed.some(p=>p.id===def.id);
          const hov=hovTray===def.id&&!done;
          return(
            <div key={def.id}
              onMouseEnter={()=>setHovTray(def.id)} onMouseLeave={()=>setHovTray(null)}
              onPointerDown={e=>onTrayPD(e,def)}
              title={`${def.name} — ${def.soundRole} · drag into room`}
              style={{position:'relative',width:60,height:48,
                display:'flex',alignItems:'center',justifyContent:'center',
                background:done?'rgba(60,30,10,.04)':hov?`rgba(${isDark?'60,100,160':'180,100,40'},.18)`:'rgba(60,30,10,.08)',
                border:`1px solid rgba(${isDark?'80,130,200':'160,90,40'},${done?.04:hov?.4:.14})`,
                borderRadius:4,cursor:done?'default':hov?'grab':'pointer',
                opacity:done?.25:1,transition:'all .15s',
                boxShadow:hov?`0 0 10px rgba(${isDark?'60,120,220':'200,130,50'},.3)`:'none'}}>
              <img src={sp(def.sprite)} alt={def.name} draggable={false}
                style={{maxWidth:56,maxHeight:44,imageRendering:'pixelated',objectFit:'contain',pointerEvents:'none'}}/>
              {done&&<div style={{position:'absolute',inset:0,display:'flex',
                alignItems:'center',justifyContent:'center',fontSize:14,
                color:`rgba(${isDark?'100,160,220':'160,90,40'},.45)`}}>✓</div>}
              <div style={{position:'absolute',bottom:0,left:0,right:0,textAlign:'center',
                fontSize:5,color:'rgba(255,255,255,.55)',background:'rgba(0,0,0,.4)',
                padding:'1px 0',letterSpacing:.4}}>{def.name}</div>
            </div>
          );
        })}
      </div>

      {/* Tray ghost */}
      {trayDrag&&(
        <div style={{position:'fixed',left:trayDrag.x-30,top:trayDrag.y-24,
          width:60,height:48,display:'flex',alignItems:'center',justifyContent:'center',
          zIndex:9999,pointerEvents:'none',
          filter:'drop-shadow(0 4px 12px rgba(0,0,0,.7)) drop-shadow(0 0 8px rgba(255,190,60,.6))',
          opacity:.92}}>
          <img src={sp(trayDrag.def.sprite)} alt="" draggable={false}
            style={{maxWidth:56,maxHeight:44,imageRendering:'pixelated',objectFit:'contain'}}/>
        </div>
      )}

      <div style={{fontSize:7,color:dCol,opacity:.35,letterSpacing:2}}>
        DESE-61003 · Imperial College London · Dyson School
      </div>
    </div>
  );
}
