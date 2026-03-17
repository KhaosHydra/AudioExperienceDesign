/**
 * SOUND ROOM v3 — Pixel Art Room
 * Tweaked for smoother musical transitions and gentler spatial behaviour.
 */
import { useState, useRef, useCallback, useEffect, useMemo } from 'react';
import './index.css';
import useOSC from './useOSC';

const RW = 512, RH = 384;

const S = {
  'Room - Room.png':            {ox:0,   oy:0,   w:512, h:384},
  'Room - Day.png':             {ox:387, oy:99,  w:88,  h:115},
  'Room - Night.png':           {ox:387, oy:99,  w:88,  h:115},
  'Room - Sun.png':             {ox:395, oy:123, w:31,  h:30},
  'Room - Moon.png':            {ox:441, oy:145, w:27,  h:29},
  'Room - Window.png':          {ox:380, oy:96,  w:96,  h:130},
  'Room - Blinds.png':          {ox:383, oy:97,  w:95,  h:133},
  'Room - Lamp.png':            {ox:230, oy:30,  w:52,  h:78},
  'Room - Bed.png': {ox:189, oy:85, w:170, h:128, anchorFx:0.4765, anchorFy:0.6328},
  'Room - Bookshelf.png': {ox:13, oy:105, w:138, h:158, anchorFx:0.4638, anchorFy:0.981},
  'Room - Coffee.png': {ox:231, oy:283, w:19, h:25, anchorFx:0.3684, anchorFy:0.96},
  'Room - Cat.png': {ox:252, oy:131, w:51, h:30, anchorFx:0.5294, anchorFy:1},
  'Room - Duck teddy.png': {ox:134, oy:189, w:31, h:44, anchorFx:0.5161, anchorFy:1},
  'Room - Frog Teddy.png': {ox:54, oy:229, w:33, h:45, anchorFx:0.5152, anchorFy:0.9556},
  'Room - Plant oval base.png': {ox:136, oy:130, w:76, h:68, anchorFx:0.4605, anchorFy:1},
  'Room - Plant.png': {ox:128, oy:238, w:76, h:89, anchorFx:0.4737, anchorFy:0.9775},
  'Room - Speakers.png': {ox:299, oy:159, w:57, h:55, anchorFx:0.4561, anchorFy:1},
  'Room - Table.png': {ox:208, oy:245, w:164, h:131, anchorFx:0.9878, anchorFy:1},
  'Room - Vinyl Player.png':    {ox:302, oy:243, w:60,  h:43,  anchorFx:0.50, anchorFy:0.95},
  'Room - Avatar.png':          {ox:233, oy:168, w:43,  h:80,  anchorFx:0.50, anchorFy:0.99},
};

const FLOOR = {
  top:  {x:256, y:128},
  left: {x:6, y:253},
  right:{x:505, y:254},
  bot:  {x:256, y:378},
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

function clamp(v, lo, hi) {
  return Math.max(lo, Math.min(hi, v));
}

// Gentler horizontal pan. This gives a more believable spatial image than the old diagonal mapping.
function computePan(lx) {
  return clamp((lx - 0.5) * 1.5, -0.75, 0.75);
}

// Depth-based level so front objects are a little clearer, but nothing gets too loud.
function computeVol(lx, ly) {
  const depth = clamp(ly, 0, 1);
  const centreBias = 1 - Math.min(1, Math.abs(lx - 0.5) * 1.2);
  return 0.16 + 0.28 * Math.pow(depth, 0.65) + 0.06 * centreBias;
}

function getObjPos(sprite, lx, ly) {
  const sp=S[sprite];
  if(!sp) return {left:0,top:0,width:0,height:0};
  const {sx,sy}=toScreen(lx,ly);
  const ax=sp.w*(sp.anchorFx??0.5);
  const ay=sp.h*(sp.anchorFy??0.98);
  return {left:Math.round(sx-ax), top:Math.round(sy-ay), width:sp.w, height:sp.h};
}

const OBJECTS_DEF = [
  {id:'Bed',      sprite:'Room - Bed.png',            soundRole:'melody2', name:'Bed'},
  {id:'Bookshelf',sprite:'Room - Bookshelf.png',      soundRole:'bass',    name:'Bookshelf'},
  {id:'Cat',      sprite:'Room - Cat.png',            soundRole:'sparkle', name:'Cat'},
  {id:'Coffee',   sprite:'Room - Coffee.png',         soundRole:null,      name:'Coffee Mug', isSpeed:true},
  {id:'Duck',     sprite:'Room - Duck teddy.png',     soundRole:'pad',     name:'Duck Teddy'},
  {id:'Frog',     sprite:'Room - Frog Teddy.png',     soundRole:'arp',     name:'Frog Teddy'},
  {id:'PlantOval',sprite:'Room - Plant oval base.png',soundRole:'harmony', name:'Plant (oval)'},
  {id:'PlantBox', sprite:'Room - Plant.png',          soundRole:'texture', name:'Plant (box)'},
  {id:'Speakers', sprite:'Room - Speakers.png',       soundRole:'rhythm',  name:'Speakers'},
  {id:'Table',    sprite:'Room - Table.png',          soundRole:'melody',  name:'Table'},
];

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

export default function App() {
  const roomRef=useRef(null);
  const [placed,setPlaced]=useState([]);
  const [drag,setDrag]=useState(null);
  const [sel,setSel]=useState(null);
  const [touchOrder,setTouchOrder]=useState([]);
  const [speed,setSpeed]=useState(1.0);
  const [lamp,setLamp]=useState(0);
  const [blinds,setBlinds]=useState(0);
  const [weather,setWeather]=useState('clear');
  const [dn,setDn]=useState(0);
  const [showLoad,setShowLoad]=useState(true);
  const [started,setStarted]=useState(false);
  const [hovTray,setHovTray]=useState(null);
  const [trayDrag,setTrayDrag]=useState(null);
  const trayDragRef=useRef(null);
  const transitionTimers=useRef([]);
  const prevIsNight=useRef(false);
  const osc=useOSC();

  const isNight=dn>=50, n=dn/100;
  const BLIND_H=133;
  const blindSlideY = -BLIND_H + (blinds/100)*BLIND_H;
  const lampAlpha=(lamp/100)*0.5;
  const lampRadius=30+lamp*0.5;
  const CFMS=5000;

  const clearTransitionTimers = useCallback(() => {
    transitionTimers.current.forEach(clearTimeout);
    transitionTimers.current = [];
  }, []);

  const sendRoleState = useCallback((soundRole, obj) => {
    if (!soundRole) return;
    if (obj) {
      osc.send(
        `/soundroom/layer/${soundRole}`,
        computePan(obj.lx).toFixed(3),
        computeVol(obj.lx, obj.ly).toFixed(3),
        '1.0'
      );
      return;
    }
    if (soundRole === 'harmony') {
      osc.send('/soundroom/layer/harmony', '0.0', '0.18', '1.0');
      return;
    }
    osc.send(`/soundroom/layer/${soundRole}`, '0.0', '0.0', '0.0');
  }, [osc]);

  const sendAll = useCallback(() => {
    for (const def of OBJECTS_DEF) {
      if (!def.soundRole) continue;
      const obj = placed.find((p) => p.soundRole === def.soundRole);
      sendRoleState(def.soundRole, obj);
    }
  }, [placed, sendRoleState]);

  const pushSpeed = useCallback((items) => {
    const coffee = items.find((p) => p.id === 'Coffee');
    if (coffee) {
      const nextSpeed = 0.9 + coffee.lx * 0.25; // 0.90 → 1.15, much more musical
      setSpeed(+nextSpeed.toFixed(2));
      osc.send('/soundroom/speed', nextSpeed.toFixed(3));
      return;
    }
    setSpeed(1.0);
    osc.send('/soundroom/speed', '1.0');
  }, [osc]);

  const handleStart=useCallback(()=>{
    setShowLoad(false);
    setStarted(true);
    for (const { soundRole } of OBJECTS_DEF) {
      if (!soundRole) continue;
      osc.send(`/soundroom/layer/${soundRole}`, '0.0', '0.0', '0.0');
    }
    osc.send('/soundroom/layer/harmony', '0.0', '0.18', '1.0');
    osc.send('/soundroom/time', '0.0');
    osc.send('/soundroom/blinds', String(blinds));
    osc.send('/soundroom/lamp', String(lamp));
    osc.send('/soundroom/weather', '0.0');
    osc.send('/soundroom/speed', '1.0');
  },[osc,blinds,lamp]);

  useEffect(() => () => clearTransitionTimers(), [clearTransitionTimers]);

  useEffect(()=>{
    if(!started) return;
    if(isNight===prevIsNight.current) return;
    prevIsNight.current=isNight;

    clearTransitionTimers();
    osc.send('/soundroom/time', isNight ? '100.0' : '0.0');

    // Stage the resend so Max can crossfade before all layers are reasserted.
    transitionTimers.current.push(
      setTimeout(() => sendAll(), Math.round(CFMS * 0.3)),
      setTimeout(() => sendAll(), CFMS + 150)
    );
  },[isNight,started,osc,sendAll,clearTransitionTimers]);

  useEffect(()=>{ if(started) osc.send('/soundroom/blinds', String(blinds)); },[blinds,started,osc]);
  useEffect(()=>{ if(started) osc.send('/soundroom/lamp', String(lamp)); },[lamp,started,osc]);
  useEffect(()=>{ if(started) osc.send('/soundroom/weather', weather==='rain' ? '1.0' : '0.0'); },[weather,started,osc]);

  useEffect(()=>{
    if(!started) return;
    sendAll();
    pushSpeed(placed);
  },[placed,started,sendAll,pushSpeed]);

  useEffect(()=>{
    if(!started || drag===null) return;
    const o=placed[drag];
    if(!o || !o.soundRole) return;
    osc.send(
      `/soundroom/layer/${o.soundRole}`,
      computePan(o.lx).toFixed(3),
      computeVol(o.lx,o.ly).toFixed(3),
      '1.0'
    );
  },[placed,drag,started,osc]);

  const bringToFront=useCallback((iid)=>{
    setTouchOrder(prev=>[...prev.filter(x=>x!==iid), iid]);
  },[]);

  const onObjPD=useCallback((e,i)=>{
    e.stopPropagation();e.preventDefault();
    setSel(i);setDrag(i);
    if(placed[i]) bringToFront(placed[i].iid);
  },[placed,bringToFront]);

  useEffect(()=>{
    if(drag===null)return;
    const onPM=(e)=>{
      const r=roomRef.current.getBoundingClientRect();
      const rw=r.width/RW,rh=r.height/RH;
      const rx=(e.clientX-r.left)/rw,ry=(e.clientY-r.top)/rh;
      const{lx,ly}=fromScreen(rx,ry);
      setPlaced(p=>p.map((o,i)=>i===drag?{...o,lx,ly}:o));
    };
    const onPU=()=>setDrag(null);
    window.addEventListener('pointermove',onPM);
    window.addEventListener('pointerup',onPU);
    return()=>{window.removeEventListener('pointermove',onPM);window.removeEventListener('pointerup',onPU);};
  },[drag]);

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
          if(!rw||!rh) return;
          const{lx,ly}=fromScreen(rx/rw,ry/rh);
          if(isNaN(lx)||isNaN(ly)) return;
          const newObj = {
            ...trayDragRef.current,
            lx: clamp(lx, 0.05, 0.95),
            ly: clamp(ly, 0.05, 0.95),
            iid: `${trayDragRef.current.id}_${Date.now()}`,
          };
          setPlaced(prev=>[...prev, newObj]);
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
  const avatarPos=getObjPos('Room - Avatar.png',0.5,0.72);

  const isDark=isNight;
  const pBg=isDark?'rgba(12,18,32,.93)':'rgba(40,20,5,.9)';
  const pBdr=isDark?'rgba(60,100,180,.3)':'rgba(180,110,50,.35)';
  const tCol=isDark?'#a0c0e0':'#c07840';
  const dCol=isDark?'rgba(120,170,220,.5)':'rgba(160,90,40,.5)';
  const pageBg=isDark
    ?'radial-gradient(ellipse at 50% 0%,#1a2a42 0%,#0a1220 60%,#050a14 100%)'
    :'radial-gradient(ellipse at 50% 0%,#e8d090 0%,#c09858 50%,#9a7438 100%)';

  const toggleWeather = useCallback((e) => {
    e?.stopPropagation?.();
    setWeather((w) => (w === 'clear' ? 'rain' : 'clear'));
  }, []);

  const switchToNight = useCallback((e) => {
    e?.stopPropagation?.();
    if (!isNight) setDn(100);
  }, [isNight]);

  const switchToDay = useCallback((e) => {
    e?.stopPropagation?.();
    if (isNight) setDn(0);
  }, [isNight]);

  const sunX = S['Room - Sun.png'].ox + n * 44;
  const sunY = S['Room - Sun.png'].oy + n * 54;
  const moonX = S['Room - Moon.png'].ox - (1 - n) * 28;
  const moonY = S['Room - Moon.png'].oy + (1 - n) * 42;

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

      <div style={{width:RW+140,display:'flex',justifyContent:'space-between',alignItems:'center'}}>
        <div style={{fontSize:10,color:dCol,letterSpacing:3}}>
          ◈ SOUND ROOM ·{' '}
          <span style={{color:isDark?'#80b8e0':'#d47830',transition:'color 1s'}}>{isDark?'NIGHT':'DAY'}</span>
        </div>
        <div style={{display:'flex',alignItems:'center',gap:6}}>
          {[[toggleWeather,weather==='rain'?'🌧 rain':'☀ clear'],
            [randomise,'shuffle'],[resetAll,'reset']].map(([fn,label],i)=>(
            <div key={i} onClick={fn} style={{padding:'3px 10px',cursor:'pointer',fontSize:9,
              color:tCol,background:pBg,border:`1px solid ${pBdr}`,borderRadius:4}}>{label}</div>
          ))}
          <div style={{fontSize:9,color:dCol}}>{placed.length}/{OBJECTS_DEF.length}</div>
        </div>
      </div>

      <div style={{display:'flex',gap:8,alignItems:'center'}}>
        <div style={{background:pBg,border:`1px solid ${pBdr}`,borderRadius:6,
          padding:'8px 10px',display:'flex',flexDirection:'column',alignItems:'center',gap:2}}>
          <Dial value={lamp} onChange={setLamp} label="LAMP" size={52} color={isDark?'#80b8e0':'#d4a840'}/>
        </div>

        <div ref={roomRef} onClick={()=>setSel(null)}
          style={{position:'relative',width:RW,height:RH,overflow:'hidden',flexShrink:0,
            borderRadius:3,imageRendering:'pixelated',cursor:'default',
            border:`2px solid ${isDark?'rgba(40,70,120,.5)':'rgba(140,70,20,.4)'}`,
            boxShadow:`0 8px 48px ${isDark?'rgba(4,10,22,.9)':'rgba(80,40,8,.4)'}`}}>

          <img src={sp('Room - Room.png')} alt="" draggable={false}
            style={{position:'absolute',top:0,left:0,width:RW,height:RH,imageRendering:'pixelated',pointerEvents:'none'}}/>

          {[['Room - Day.png',Math.max(0,1-n*1.5)],['Room - Night.png',Math.max(0,n*1.5-.3)]].map(([src,op])=>{
            const s=S[src]; return(
            <img key={src} src={sp(src)} alt="" draggable={false}
              style={{position:'absolute',left:s.ox,top:s.oy,width:s.w,height:s.h,
                imageRendering:'pixelated',pointerEvents:'none',
                opacity:Math.min(1,op),transition:'opacity 1.5s'}}/>
          );})}

          {[['Room - Sun.png',Math.max(0,1-n*4)],['Room - Moon.png',Math.max(0,n*4-3)]].map(([src,op])=>{
            const s=S[src]; return(
            <img key={src} src={sp(src)} alt="" draggable={false}
              style={{position:'absolute',left:s.ox,top:s.oy,width:s.w,height:s.h,
                imageRendering:'pixelated',pointerEvents:'none',
                opacity:Math.min(1,op),transition:'opacity 1.5s'}}/>
          );})}

          {(()=>{ const s=S['Room - Window.png']; return(
            <img src={sp('Room - Window.png')} alt="" draggable={false}
              onClick={e=>{e.stopPropagation();setDn(isNight?0:100);}}
              style={{position:'absolute',left:s.ox,top:s.oy,width:s.w,height:s.h,
                imageRendering:'pixelated',cursor:'pointer',pointerEvents:'all',zIndex:2}}/>
          );})()}

          <div style={{
            position:'absolute',
            left: S['Room - Blinds.png'].ox,
            top:  S['Room - Window.png'].oy + 4,
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

          <div style={{position:'absolute',pointerEvents:'none',zIndex:4,
            left:256-lampRadius*2,top:20,
            width:lampRadius*4,height:lampRadius*3,
            background:`radial-gradient(ellipse at 50% 15%,rgba(255,230,100,${lampAlpha}) 0%,rgba(255,200,60,${lampAlpha*.5}) 35%,transparent 70%)`,
            transition:'all .4s',mixBlendMode:'screen'}}/>

          <img src={sp('Room - Avatar.png')} alt="avatar" draggable={false}
            style={{position:'absolute',
              left:avatarPos.left,top:avatarPos.top,
              width:avatarPos.width,height:avatarPos.height,
              imageRendering:'pixelated',pointerEvents:'none',
              zIndex:8
            }}/>

          {sorted.map(({o,i})=>{
            if(!S[o.sprite]) return null;
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
                  zIndex:10+touchOrder.indexOf(o.iid),
                  opacity:1,
                }}/>
            );
          })}

          {(()=>{ const s=S['Room - Lamp.png']; return(
            <img src={sp('Room - Lamp.png')} alt="" draggable={false}
              style={{position:'absolute',left:s.ox,top:s.oy,width:s.w,height:s.h,
                imageRendering:'pixelated',pointerEvents:'none',zIndex:250}}/>
          );})()}

          <div style={{position:'absolute',inset:0,pointerEvents:'none',zIndex:260,
            background:`rgba(4,10,24,${n*.3})`,transition:'background 1.5s'}}/>

          {selObj&&(
            <div onClick={e=>e.stopPropagation()}
              style={{position:'absolute',bottom:10,left:10,zIndex:300,
                background:pBg,border:`1px solid ${pBdr}`,borderRadius:4,padding:'8px 12px'}}>
              <div style={{color:tCol,fontSize:11,marginBottom:2,letterSpacing:1}}>{selObj.name}</div>
              <div style={{color:dCol,fontSize:8,marginBottom:6}}>
                {selObj.isSpeed ? `⚡ speed: ${speed}x (drag left=slow, right=fast)` : `${selObj.soundRole} · drag to move`}
              </div>
              <button onClick={()=>removeObj(sel)}
                style={{padding:'3px 10px',background:'rgba(160,50,30,.15)',
                  border:'1px solid rgba(180,70,40,.35)',color:'#d08870',
                  fontSize:9,cursor:'pointer',fontFamily:'inherit',borderRadius:3}}>remove</button>
            </div>
          )}
          <div style={{position:'absolute',top:7,right:7,zIndex:300,
            fontSize:8,color:dCol,pointerEvents:'none'}}>{placed.length}/{OBJECTS_DEF.length}</div>
        </div>

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
            onClick={toggleWeather}>
            {weather==='rain'?'🌧':'☀️'}
          </div>
        </div>
      </div>

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
