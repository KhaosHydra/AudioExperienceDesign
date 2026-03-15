/**
 * SOUND ROOM — Cozy Pixel Isometric Room
 * Unpacking-style placement · OSC → MaxMSP
 */
import { useState, useRef, useCallback, useEffect, useMemo } from 'react';
import './index.css';
import useOSC from './useOSC';

// Room geometry (iso diamond)
const SW=1024,SH=768;
// The room corners from the SVG template
const RM={top:{x:512,y:140},left:{x:164,y:310},right:{x:860,y:310},
  bot:{x:512,y:640},floorTop:{x:512,y:300},
  leftBot:{x:164,y:470},rightBot:{x:860,y:470}};

// Logical room coords → screen coords (isometric projection)
// lx,ly ∈ [0..1] → screen position on floor diamond
function toScreen(lx,ly){
  // Bilinear interpolation on the floor diamond
  // top=512,300  right=860,470  bot=512,640  left=164,470
  const tx=512+(lx-ly)*348, ty=300+(lx+ly)*170;
  return{sx:tx,sy:ty};
}
function fromScreen(sx,sy){
  const dx=sx-512, dy=sy-300;
  const lx=(dx/348+dy/170)/2, ly=(dy/170-dx/348)/2;
  return{lx:Math.max(0.02,Math.min(0.98,lx)),ly:Math.max(0.02,Math.min(0.98,ly))};
}

function computePan(lx,ly){return Math.max(-1,Math.min(1,(lx-ly)*2));}
function computeVol(lx,ly){const d=Math.sqrt((lx-0.5)**2+(ly-0.5)**2);return 0.15+0.5*Math.pow(Math.max(0,1-d/0.6),0.65);}

// ═══ TRUE ISOMETRIC PIXEL ART OBJECTS ═══
// Each uses parallelogram faces: top (diamond), left face, right face
function drawIsoBox(ctx,s,x,y,w,h,d,topC,leftC,rightC){
  // Top face (diamond)
  ctx.fillStyle=topC;
  ctx.beginPath();
  ctx.moveTo((x+w/2)*s,y*s);
  ctx.lineTo((x+w)*s,(y+d/2)*s);
  ctx.lineTo((x+w/2)*s,(y+d)*s);
  ctx.lineTo(x*s,(y+d/2)*s);
  ctx.fill();
  // Left face
  ctx.fillStyle=leftC;
  ctx.beginPath();
  ctx.moveTo(x*s,(y+d/2)*s);
  ctx.lineTo((x+w/2)*s,(y+d)*s);
  ctx.lineTo((x+w/2)*s,(y+d+h)*s);
  ctx.lineTo(x*s,(y+d/2+h)*s);
  ctx.fill();
  // Right face
  ctx.fillStyle=rightC;
  ctx.beginPath();
  ctx.moveTo((x+w/2)*s,(y+d)*s);
  ctx.lineTo((x+w)*s,(y+d/2)*s);
  ctx.lineTo((x+w)*s,(y+d/2+h)*s);
  ctx.lineTo((x+w/2)*s,(y+d+h)*s);
  ctx.fill();
}

const ISO = {
  desk:{
    name:'Desk',soundRole:'melody',w:64,h:48,
    draw(ctx,s,glow){
      // Desktop surface
      drawIsoBox(ctx,s,4,10,56,4,16,'#9d8ebb','#7a6a9a','#8b7aaa');
      // Legs
      drawIsoBox(ctx,s,8,26,8,16,4,'#6a5a8a','#5a4a7a','#6a5a8a');
      drawIsoBox(ctx,s,44,26,8,16,4,'#6a5a8a','#5a4a7a','#6a5a8a');
      // Items on desk (small detail)
      drawIsoBox(ctx,s,18,6,8,3,4,'#c8b8d8','#a898c0','#b8a8c8');
      if(glow){ctx.fillStyle='rgba(180,160,240,0.12)';ctx.fillRect(0,0,64*s,48*s);}
    }
  },
  bed:{
    name:'Bed',soundRole:'melody2',w:72,h:52,
    draw(ctx,s,glow){
      // Frame
      drawIsoBox(ctx,s,0,14,72,14,22,'#7a6a9a','#5a4a7a','#6a5a8a');
      // Mattress
      drawIsoBox(ctx,s,4,8,64,4,20,'#b8a8d8','#9888b8','#a898c8');
      // Pillow
      drawIsoBox(ctx,s,6,4,18,3,8,'#e0d4ff','#c8b8e8','#d4c8f0');
      // Blanket
      drawIsoBox(ctx,s,26,5,38,3,16,'#d8a0c8','#c088b0','#c890b8');
      // Headboard
      drawIsoBox(ctx,s,0,0,8,18,8,'#6a5a8a','#4a3a6a','#5a4a7a');
      if(glow){ctx.fillStyle='rgba(200,180,255,0.1)';ctx.fillRect(0,0,72*s,52*s);}
    }
  },
  plant:{
    name:'Plant',soundRole:'harmony',w:28,h:40,
    draw(ctx,s,glow){
      // Pot
      drawIsoBox(ctx,s,6,26,16,10,8,'#d89878','#b87858','#c8886a');
      // Soil
      drawIsoBox(ctx,s,8,24,12,2,6,'#5a4030','#4a3020','#503828');
      // Leaves (stacked diamonds)
      const lc=[['#78b868','#58a048','#68a858'],['#88c878','#68b058','#78b868'],['#68a858','#488838','#58a048']];
      drawIsoBox(ctx,s,4,12,20,2,10,lc[0][0],lc[0][1],lc[0][2]);
      drawIsoBox(ctx,s,6,6,16,2,8,lc[1][0],lc[1][1],lc[1][2]);
      drawIsoBox(ctx,s,8,2,12,2,6,lc[2][0],lc[2][1],lc[2][2]);
      // Stem
      ctx.fillStyle='#5a8040';ctx.fillRect(13*s,18*s,2*s,8*s);
      if(glow){ctx.fillStyle='rgba(120,200,120,0.1)';ctx.fillRect(0,0,28*s,40*s);}
    }
  },
  shelf:{
    name:'Shelf',soundRole:'bass',w:44,h:56,
    draw(ctx,s,glow){
      // Main frame
      drawIsoBox(ctx,s,0,0,44,48,12,'#9a8070','#7a6050','#8a7060');
      // Shelf boards
      for(let i=0;i<3;i++) drawIsoBox(ctx,s,2,4+i*14,40,1,10,'#8a7060','#6a5040','#7a6050');
      // Books (iso blocks on shelves)
      const bc=['#c86080','#6888c8','#88b868','#d8a848','#a868b8','#68b8a8'];
      for(let sh=0;sh<3;sh++){
        for(let b=0;b<4;b++){
          const bx=4+b*10,by=sh*14;
          drawIsoBox(ctx,s,bx,by,8,10,4,bc[(sh*4+b)%6],
            '#'+bc[(sh*4+b)%6].slice(1).replace(/../g,h=>Math.max(0,parseInt(h,16)-40).toString(16).padStart(2,'0')),
            '#'+bc[(sh*4+b)%6].slice(1).replace(/../g,h=>Math.max(0,parseInt(h,16)-20).toString(16).padStart(2,'0')));
        }
      }
      if(glow){ctx.fillStyle='rgba(200,180,255,0.1)';ctx.fillRect(0,0,44*s,56*s);}
    }
  },
  clock:{
    name:'Clock',soundRole:'rhythm',w:20,h:24,
    draw(ctx,s,glow){
      // Body
      drawIsoBox(ctx,s,2,2,16,14,8,'#f0e8d0','#d8c8a8','#e0d0b8');
      // Frame
      drawIsoBox(ctx,s,0,0,20,2,10,'#8a7858','#6a5838','#7a6848');
      // Stand
      drawIsoBox(ctx,s,6,18,8,4,4,'#8a7858','#6a5838','#7a6848');
      // Hands
      ctx.fillStyle='#3a2a1a';ctx.fillRect(9*s,6*s,2*s,5*s);ctx.fillRect(10*s,8*s,4*s,2*s);
      if(glow){ctx.fillStyle='rgba(240,220,140,0.12)';ctx.fillRect(0,0,20*s,24*s);}
    }
  },
  lamp:{
    name:'Lamp',soundRole:'pad',w:22,h:36,isLamp:true,
    draw(ctx,s,glow,lampOn){
      // Base
      drawIsoBox(ctx,s,5,30,12,4,6,'#a890c0','#8870a0','#9880b0');
      // Stem
      ctx.fillStyle='#c8b8d8';ctx.fillRect(10*s,14*s,2*s,16*s);
      // Shade (iso)
      drawIsoBox(ctx,s,2,2,18,6,8,
        lampOn?'#f8e8c0':'#d0c0e0',
        lampOn?'#d8c898':'#b0a0c0',
        lampOn?'#e8d8a8':'#c0b0d0');
      if(lampOn){
        ctx.fillStyle='rgba(255,240,180,0.2)';
        ctx.beginPath();ctx.moveTo(11*s,10*s);ctx.lineTo(0,36*s);ctx.lineTo(22*s,36*s);ctx.fill();
      }
      if(glow){ctx.fillStyle='rgba(248,220,140,0.15)';ctx.fillRect(0,0,22*s,36*s);}
    }
  },
  mug:{
    name:'Mug',soundRole:'arp',w:18,h:16,
    draw(ctx,s,glow){
      drawIsoBox(ctx,s,0,2,12,10,6,'#a0c8c0','#80a8a0','#90b8b0');
      // Handle
      ctx.fillStyle='#80a8a0';ctx.fillRect(12*s,5*s,4*s,2*s);ctx.fillRect(14*s,5*s,2*s,6*s);ctx.fillRect(12*s,9*s,4*s,2*s);
      // Steam
      ctx.fillStyle='rgba(200,220,240,0.25)';
      ctx.fillRect(3*s,0,2*s,2*s);ctx.fillRect(7*s,0,2*s,3*s);
      if(glow){ctx.fillStyle='rgba(160,200,200,0.12)';ctx.fillRect(0,0,18*s,16*s);}
    }
  },
  cat:{
    name:'Cat',soundRole:'sparkle',w:26,h:20,
    draw(ctx,s,glow){
      // Body (iso box)
      drawIsoBox(ctx,s,4,8,16,6,8,'#d8a858','#b88838','#c89848');
      // Head
      drawIsoBox(ctx,s,14,2,10,5,6,'#d8a858','#b88838','#c89848');
      // Ears
      ctx.fillStyle='#c89848';ctx.fillRect(15*s,0,3*s,3*s);ctx.fillRect(21*s,0,3*s,3*s);
      ctx.fillStyle='#e8b8a8';ctx.fillRect(16*s,1*s,1*s,1*s);ctx.fillRect(22*s,1*s,1*s,1*s);
      // Eyes
      ctx.fillStyle='#2a2a2a';ctx.fillRect(16*s,4*s,2*s,2*s);ctx.fillRect(20*s,4*s,2*s,2*s);
      // Tail
      ctx.fillStyle='#c89848';ctx.fillRect(0,6*s,5*s,2*s);ctx.fillRect(0,4*s,2*s,4*s);
      if(glow){ctx.fillStyle='rgba(216,168,88,0.1)';ctx.fillRect(0,0,26*s,20*s);}
    }
  },
  headphones:{
    name:'Headphones',soundRole:'texture',w:20,h:20,
    draw(ctx,s,glow){
      // Band
      drawIsoBox(ctx,s,2,0,16,2,4,'#5a5a6a','#3a3a4a','#4a4a5a');
      // Left cup
      drawIsoBox(ctx,s,0,4,8,12,4,'#8a8aaa','#6a6a8a','#7a7a9a');
      // Right cup
      drawIsoBox(ctx,s,12,4,8,12,4,'#8a8aaa','#6a6a8a','#7a7a9a');
      // Cushions
      ctx.fillStyle='#b8a8c8';ctx.fillRect(1*s,8*s,2*s,6*s);ctx.fillRect(17*s,8*s,2*s,6*s);
      if(glow){ctx.fillStyle='rgba(140,140,200,0.12)';ctx.fillRect(0,0,20*s,20*s);}
    }
  },
};

const OBJECTS=Object.entries(ISO).map(([id,o])=>({id,...o}));

// ═══ CANVAS SPRITE ═══
function IsoSprite({obj,scale=3,glow=false,lampOn=false,style={}}){
  const ref=useRef(null);
  useEffect(()=>{
    const c=ref.current;if(!c)return;
    c.width=obj.w*scale;c.height=obj.h*scale;
    const ctx=c.getContext('2d');ctx.imageSmoothingEnabled=false;
    ctx.clearRect(0,0,c.width,c.height);
    obj.draw(ctx,scale,glow,lampOn);
  },[obj,scale,glow,lampOn]);
  return<canvas ref={ref} style={{...style,imageRendering:'pixelated',width:obj.w*scale,height:obj.h*scale}}/>;
}

// ═══ AVATAR (isometric pixel person) ═══
function Avatar({scale=3}){
  const ref=useRef(null);
  useEffect(()=>{
    const c=ref.current;if(!c)return;
    const w=12,h=20;c.width=w*scale;c.height=h*scale;
    const ctx=c.getContext('2d');ctx.imageSmoothingEnabled=false;const s=scale;
    // Hair (iso-ish)
    drawIsoBox(ctx,s,2,0,8,2,4,'#4a3058','#3a2048','#402850');
    // Head
    drawIsoBox(ctx,s,3,2,6,3,3,'#f0c8a8','#d8b090','#e0b898');
    // Eyes
    ctx.fillStyle='#3a2848';ctx.fillRect(4*s,3.5*s,1.5*s,1*s);ctx.fillRect(7*s,3.5*s,1.5*s,1*s);
    // Body
    drawIsoBox(ctx,s,2,7,8,5,4,'#7868a8','#584888','#6858a0');
    // Arms
    ctx.fillStyle='#f0c8a8';ctx.fillRect(1*s,8*s,2*s,3*s);ctx.fillRect(9*s,8*s,2*s,3*s);
    // Legs
    drawIsoBox(ctx,s,3,13,3,5,2,'#5a4878','#4a3868','#504070');
    drawIsoBox(ctx,s,7,13,3,5,2,'#5a4878','#4a3868','#504070');
  },[scale]);
  return<canvas ref={ref} style={{imageRendering:'pixelated',width:12*scale,height:20*scale}}/>;
}

// ═══ COLOR HELPERS ═══
function parseColor(c){if(c.startsWith('rgb')){const m=c.match(/[\d.]+/g);return m?m.map(Number):[0,0,0]}const h=c.replace('#','');return[parseInt(h.slice(0,2),16),parseInt(h.slice(2,4),16),parseInt(h.slice(4,6),16)]}
function lc(a,b,t){const A=parseColor(a),B=parseColor(b);return`rgb(${A.map((v,i)=>Math.round(v+(B[i]-v)*t)).join(',')})`}

export default function App(){
  const roomRef=useRef(null);
  const[placed,setPlaced]=useState([]);const[drag,setDrag]=useState(null);const[dOff,setDOff]=useState({x:0,y:0});
  const[sel,setSel]=useState(null);const[bDrag,setBDrag]=useState(false);const bY=useRef(0),bV=useRef(0);
  const[lamp,setLamp]=useState(60);const[blinds,setBlinds]=useState(80);
  const[weather,setWeather]=useState('clear');const[dn,setDn]=useState(0);
  const isNight=dn>=50;const n=dn/100;
  const osc=useOSC();
  const[showLoad,setShowLoad]=useState(true);
  const[started,setStarted]=useState(false);
  const[hovTray,setHovTray]=useState(null);

  const lampObj=placed.find(p=>p.id==='lamp');
  const lampOn=lamp>20&&!!lampObj;

  const handleStart=useCallback(()=>{
    setShowLoad(false);setStarted(true);
    const allRoles=['melody','melody2','harmony','bass','rhythm','pad','texture','arp','sparkle'];
    for(const role of allRoles) osc.send(`/soundroom/layer/${role}`,'0.0','0.0','0.0');
    osc.send('/soundroom/layer/harmony','0.0','0.15','1.0');
    osc.send('/soundroom/time','0.0');osc.send('/soundroom/blinds',blinds);
    osc.send('/soundroom/lamp',lamp);osc.send('/soundroom/weather','0.0');
  },[osc,blinds,lamp]);

  // OSC sends
  useEffect(()=>{if(!started)return;osc.send('/soundroom/time',isNight?'100.0':'0.0');},[dn,started]);
  useEffect(()=>{if(!started)return;osc.send('/soundroom/blinds',blinds);},[blinds,started]);
  useEffect(()=>{if(!started)return;osc.send('/soundroom/lamp',lamp);},[lamp,started]);
  useEffect(()=>{if(!started)return;osc.send('/soundroom/weather',weather==='rain'?'1.0':'0.0');},[weather,started]);
  useEffect(()=>{
    if(!started)return;
    for(const role of ['melody','melody2','harmony','bass','rhythm','pad','texture','arp','sparkle']){
      const obj=placed.find(p=>p.soundRole===role);
      if(obj){osc.send(`/soundroom/layer/${role}`,computePan(obj.lx,obj.ly).toFixed(3),computeVol(obj.lx,obj.ly).toFixed(3),'1.0');
      }else if(role==='harmony'){osc.send('/soundroom/layer/harmony','0.0','0.15','1.0');
      }else{osc.send(`/soundroom/layer/${role}`,'0.0','0.0','0.0');}
    }
  },[placed,started]);
  useEffect(()=>{if(!started||drag===null)return;const o=placed[drag];if(!o)return;
    osc.send(`/soundroom/layer/${o.soundRole}`,computePan(o.lx,o.ly).toFixed(3),computeVol(o.lx,o.ly).toFixed(3),'1.0');
  },[placed,drag,started]);

  // Interaction
  const onPD=useCallback((e,i)=>{e.stopPropagation();e.preventDefault();const r=roomRef.current.getBoundingClientRect();const s=toScreen(placed[i].lx,placed[i].ly);setDrag(i);setDOff({x:e.clientX-r.left-s.sx,y:e.clientY-r.top-s.sy});setSel(i);},[placed]);
  const onPM=useCallback(e=>{if(drag===null&&!bDrag)return;e.preventDefault();
    if(bDrag){setBlinds(Math.max(0,Math.min(100,Math.round(bV.current-(e.clientY-bY.current)*0.8))));return;}
    const r=roomRef.current.getBoundingClientRect();const{lx,ly}=fromScreen(e.clientX-r.left-dOff.x,e.clientY-r.top-dOff.y);
    setPlaced(p=>p.map((o,i)=>i===drag?{...o,lx:Math.max(0.02,Math.min(0.98,lx)),ly:Math.max(0.02,Math.min(0.98,ly))}:o));
  },[drag,dOff,bDrag]);
  const onPU=useCallback(()=>{setDrag(null);setBDrag(false);},[]);
  useEffect(()=>{if(drag!==null||bDrag){window.addEventListener('pointermove',onPM);window.addEventListener('pointerup',onPU);return()=>{window.removeEventListener('pointermove',onPM);window.removeEventListener('pointerup',onPU)};}return undefined;},[drag,bDrag,onPM,onPU]);
  const onBD=e=>{e.stopPropagation();e.preventDefault();setBDrag(true);bY.current=e.clientY;bV.current=blinds;};
  const addObj=od=>{setPlaced(prev=>[...prev,{...od,lx:0.2+Math.random()*0.6,ly:0.2+Math.random()*0.6,iid:Date.now()+Math.random()}]);};
  const rmObj=i=>{setPlaced(p=>p.filter((_,j)=>j!==i));setSel(null);};
  const randomise=()=>{const shuffled=[...OBJECTS].sort(()=>Math.random()-.5);setPlaced(shuffled.map((o,i)=>({...o,lx:0.15+((i%3)/3)*0.6+Math.random()*0.15,ly:0.15+(Math.floor(i/3)/3)*0.6+Math.random()*0.15,iid:Date.now()+i})));};
  const resetAll=()=>{setPlaced([]);setSel(null);};

  // Depth sort
  const sorted=useMemo(()=>{const it=placed.map((o,i)=>({o,i,d:o.lx+o.ly}));it.sort((a,b)=>a.d-b.d);return it;},[placed]);
  const avPos={lx:0.5,ly:0.5};const avS=toScreen(avPos.lx,avPos.ly);const avD=avPos.lx+avPos.ly;
  const selectedObj=sel!==null?placed[sel]:null;

  // Dynamic colors
  const skyC=lc('#88c0f0','#0a1838',n);
  const wlL=lc('#7A5CC9','#3a2858',n);const wlR=lc('#8867D7','#4a3868',n);
  const flC=lc('#C58AD9','#5a3878',n);const flD=lc('#8A5AA9','#3a1858',n);

  // Window area on right wall
  const wTL={x:620,y:205},wTR={x:765,y:275},wBR={x:765,y:392},wBL={x:620,y:322};
  const wCX=(wTL.x+wTR.x)/2,wCY=(wTL.y+wBL.y)/2;
  const bCov=100-blinds;

  const P={background:'rgba(30,20,48,0.92)',border:'1px solid rgba(160,140,200,0.15)',borderRadius:10};

  // ═══ LOADING ═══
  if(showLoad) return<div style={{position:'fixed',inset:0,background:'linear-gradient(160deg,#2A1F3F,#1C1530)',zIndex:999,display:'flex',flexDirection:'column',alignItems:'center',justifyContent:'center',gap:'1.6rem',fontFamily:"'Courier New',monospace",cursor:'pointer'}} onClick={handleStart}>
    <div style={{fontSize:10,color:'rgba(200,180,240,0.3)',letterSpacing:4}}>DESE-61003 · AUDIO EXPERIENCE DESIGN</div>
    <div style={{fontSize:24,color:'#c8b0e8',letterSpacing:6,textShadow:'0 0 30px rgba(180,140,240,.4)'}}>◈ SOUND ROOM ◈</div>
    <div style={{width:200,height:6,background:'#1a1028',border:'1px solid rgba(160,140,200,0.2)',borderRadius:3,overflow:'hidden'}}><div style={{height:'100%',background:'linear-gradient(90deg,#7A5CC9,#C58AD9)',width:'100%',borderRadius:2}}/></div>
    <div style={{fontSize:12,color:'rgba(200,180,240,0.4)',letterSpacing:2}}>click to enter</div>
    <div style={{fontSize:9,color:'rgba(160,140,200,0.15)',marginTop:30,textAlign:'center',lineHeight:2}}>Imperial College London · Dyson School of Design Engineering</div>
  </div>;

  return<div style={{width:'100%',minHeight:'100vh',display:'flex',flexDirection:'column',alignItems:'center',justifyContent:'center',background:'linear-gradient(160deg,#2A1F3F,#1C1530)',fontFamily:"'Courier New',monospace",padding:16,boxSizing:'border-box',gap:10}}>
    {/* Header */}
    <div style={{maxWidth:SW,width:'100%',display:'flex',justifyContent:'space-between',alignItems:'center'}}>
      <div style={{fontSize:11,color:'rgba(200,180,240,.5)',letterSpacing:3}}>◈ SOUND ROOM · <span style={{color:isNight?'#a0b0e0':'#e8c090',transition:'color .8s'}}>{isNight?'NIGHT':'DAY'}</span></div>
      <div style={{display:'flex',alignItems:'center',gap:8}}>
        <div onClick={()=>setWeather(weather==='clear'?'rain':'clear')} style={{padding:'3px 10px',...P,cursor:'pointer',fontSize:10,color:weather==='rain'?'#8098c0':'#c8b0e8'}}>{weather==='rain'?'🌧 Rain':'☀ Clear'}</div>
        <div onClick={randomise} style={{padding:'3px 10px',...P,cursor:'pointer',fontSize:10,color:'#a898c8'}}>shuffle</div>
        <div onClick={resetAll} style={{padding:'3px 10px',...P,cursor:'pointer',fontSize:10,color:'#a898c8'}}>reset</div>
        <div style={{fontSize:9,color:'rgba(200,180,240,.3)'}}>{placed.length}/{OBJECTS.length}</div>
      </div>
    </div>

    {/* ═══ ROOM ═══ */}
    <div style={{position:'relative',width:SW,height:SH,overflow:'hidden',borderRadius:12,border:'1px solid rgba(160,140,200,0.1)',boxShadow:'0 0 40px rgba(100,60,200,0.12)'}} ref={roomRef} onClick={()=>setSel(null)}>
      <svg width={SW} height={SH} viewBox="0 0 1024 768" style={{position:'absolute',top:0,left:0}}>
        <defs>
          <linearGradient id="bgG" x1="0" y1="0" x2="1024" y2="768" gradientUnits="userSpaceOnUse">
            <stop offset="0%" stopColor="#2A1F3F"/><stop offset="100%" stopColor="#1C1530"/>
          </linearGradient>
          <linearGradient id="lwG" x1="240" y1="140" x2="240" y2="470" gradientUnits="userSpaceOnUse">
            <stop offset="0%" stopColor={wlL}/><stop offset="100%" stopColor={lc(wlL,'#2a1838',0.3)}/>
          </linearGradient>
          <linearGradient id="rwG" x1="784" y1="140" x2="784" y2="470" gradientUnits="userSpaceOnUse">
            <stop offset="0%" stopColor={wlR}/><stop offset="100%" stopColor={lc(wlR,'#2a1838',0.3)}/>
          </linearGradient>
          <linearGradient id="flG" x1="512" y1="300" x2="512" y2="620" gradientUnits="userSpaceOnUse">
            <stop offset="0%" stopColor={flC}/><stop offset="100%" stopColor={flD}/>
          </linearGradient>
          <filter id="glow"><feGaussianBlur stdDeviation="12" result="b"/><feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge></filter>
          <pattern id="fb" width="48" height="24" patternUnits="userSpaceOnUse" patternTransform="skewX(-30)">
            <line x1="0" y1="0" x2="0" y2="24" stroke={lc('#6D457F','#2a1040',n)} strokeWidth="2" opacity="0.28"/>
          </pattern>
          <clipPath id="fc"><polygon points="512,300 860,470 512,640 164,470"/></clipPath>
          <clipPath id="wClip"><polygon points="632,218 753,277 753,380 632,321"/></clipPath>
        </defs>
        {/* Background */}
        <rect width="1024" height="768" fill="url(#bgG)"/>
        {/* Walls */}
        <polygon points="512,140 164,310 164,470 512,300" fill="url(#lwG)" stroke="#A98BFF" strokeWidth="2" style={{transition:'fill .8s'}}/>
        <polygon points="512,140 860,310 860,470 512,300" fill="url(#rwG)" stroke="#B79BFF" strokeWidth="2" style={{transition:'fill .8s'}}/>
        {/* Floor */}
        <polygon points="512,300 860,470 512,640 164,470" fill="url(#flG)" stroke="#D9A7FF" strokeWidth="2" style={{transition:'fill .8s'}}/>
        <g clipPath="url(#fc)" opacity="0.45"><rect x="140" y="280" width="760" height="400" fill="url(#fb)"/></g>
        {/* Corner seam */}
        <line x1="512" y1="140" x2="512" y2="300" stroke="#C8B4FF" strokeWidth="2" opacity="0.55"/>
        {/* ═══ WINDOW ═══ */}
        <polygon points="620,205 765,275 765,392 620,322" fill="#E9C6FF" stroke="#FFE3FF" strokeWidth="2"/>
        <polygon points="632,218 753,277 753,380 632,321" fill={skyC} stroke="#C6D4FF" strokeWidth="1.5" style={{transition:'fill .8s'}}/>
        {/* Mullions */}
        <line x1="692.5" y1="247.5" x2="692.5" y2="350.5" stroke="#F7E7FF" strokeWidth="2" opacity="0.9"/>
        <line x1="632" y1="270" x2="753" y2="329" stroke="#F7E7FF" strokeWidth="2" opacity="0.9"/>
        {/* ═══ ANIMATED SUN/MOON (clickable!) ═══ */}
        <g clipPath="url(#wClip)" style={{cursor:'pointer'}} onClick={e=>{e.stopPropagation();setDn(isNight?0:100);}}>
          {/* Rain */}
          {weather==='rain'&&Array.from({length:14}).map((_,i)=>{const t=(i*.07+.03)%.94;const x1=632+(753-632)*t;
            return<line key={i} x1={x1} y1="218" x2={x1} y2="228" stroke={isNight?'#6878a0':'#5888b8'} strokeOpacity=".4" strokeWidth="1.5">
              <animate attributeName="y1" values="208;390" dur={`${.3+i*.025}s`} repeatCount="indefinite"/>
              <animate attributeName="y2" values="218;400" dur={`${.3+i*.025}s`} repeatCount="indefinite"/>
            </line>})}
          {/* Stars at night */}
          {isNight&&<>{[{x:660,y:250},{x:740,y:300},{x:720,y:340},{x:650,y:300},{x:690,y:235}].map((s,i)=>
            <circle key={i} cx={s.x} cy={s.y} r={1.5} fill="#FDF6FF" opacity={0.6}>
              <animate attributeName="opacity" values="0.3;0.8;0.3" dur={`${1.5+i*0.3}s`} repeatCount="indefinite"/>
            </circle>)}</>}
          {/* Moon (night) — animated */}
          {isNight&&<g filter="url(#glow)">
            <circle cx="705" cy="260" r="18" fill="#FFF4C7">
              <animate attributeName="cy" values="265;255;265" dur="6s" repeatCount="indefinite"/>
            </circle>
            <circle cx="713" cy="256" r="18" fill={skyC}>
              <animate attributeName="cy" values="261;251;261" dur="6s" repeatCount="indefinite"/>
            </circle>
          </g>}
          {/* Sun (day) — animated with rays */}
          {!isNight&&<g filter="url(#glow)">
            <circle cx="690" cy="260" r="20" fill="#F8D848" opacity="0.9">
              <animate attributeName="r" values="19;22;19" dur="4s" repeatCount="indefinite"/>
            </circle>
            {[0,45,90,135,180,225,270,315].map((a,i)=>{const rd=a*Math.PI/180;const cx=690,cy=260;
              return<line key={i} x1={cx+Math.cos(rd)*24} y1={cy+Math.sin(rd)*24} x2={cx+Math.cos(rd)*32} y2={cy+Math.sin(rd)*32} stroke="#F8D848" strokeWidth="2.5" strokeLinecap="round" opacity="0.5">
                <animate attributeName="opacity" values="0.3;0.6;0.3" dur={`${2+i*0.2}s`} repeatCount="indefinite"/>
              </line>})}
          </g>}
          {/* Window glow */}
          <polygon points="632,218 753,277 753,380 632,321" fill={isNight?'rgba(80,100,180,0.08)':'rgba(248,167,255,0.15)'}/>
        </g>
        {/* Blinds */}
        {bCov>0&&<polygon points={`620,205 765,275 765,${275+(392-275)*(bCov/100)} 620,${205+(322-205)*(bCov/100)}`} fill={isNight?'#2a2050':'#c8b0d8'} opacity=".75"/>}
        {/* Blinds cord */}
        {(()=>{const cx=762,ct=275,cb=275+(392-275)*(bCov/100)+15;return<g>
          <line x1={cx} y1={ct} x2={cx} y2={cb} stroke="rgba(200,180,240,.3)" strokeWidth="1.5"/>
          <rect x={cx-4} y={cb} width={8} height={12} rx={2} fill="#b8a0d8" stroke="#9880b8" strokeWidth="1" style={{cursor:'ns-resize'}} onPointerDown={onBD}/>
        </g>})()}
        {/* Wall light effects */}
        <polygon points="240,300 332,255 332,360 240,405" fill="#FFD7F8" opacity={isNight?"0.03":"0.08"}/>
        <polygon points="575,330 780,430 780,455 575,355" fill="#FFB8F0" opacity={isNight?"0.02":"0.06"}/>
        {/* Skirting */}
        <line x1="164" y1="470" x2="512" y2="300" stroke="#E7CBFF" strokeWidth="2" opacity="0.18"/>
        <line x1="512" y1="300" x2="860" y2="470" stroke="#E7CBFF" strokeWidth="2" opacity="0.18"/>
        {/* Night overlay */}
        <rect width="1024" height="768" fill="#0a0020" opacity={n*0.25} style={{pointerEvents:'none',transition:'opacity .8s'}}/>
        {/* Lamp light scatter on floor */}
        {lampOn&&(()=>{const ls=toScreen(lampObj.lx,lampObj.ly);const intensity=lamp/100;return<>
          <ellipse cx={ls.sx} cy={ls.sy+30} rx={100+intensity*80} ry={40+intensity*30} fill={`rgba(255,240,180,${intensity*0.1})`} style={{pointerEvents:'none'}} filter="url(#glow)"/>
          <ellipse cx={ls.sx} cy={ls.sy} rx={60+intensity*50} ry={50+intensity*30} fill={`rgba(255,240,180,${intensity*0.06})`} style={{pointerEvents:'none'}}/>
        </>})()}
        {/* Floor light from window */}
        {!isNight&&<polygon points="590,430 730,497 640,540 500,472" fill="#FFB7E8" opacity="0.08" filter="url(#glow)"/>}
      </svg>

      {/* ═══ PLACED OBJECTS + AVATAR ═══ */}
      {(()=>{
        const all=[];
        sorted.forEach(({o,i,d})=>all.push({t:'o',o,i,d,s:toScreen(o.lx,o.ly)}));
        all.push({t:'a',d:avD,s:avS});
        all.sort((a,b)=>a.d-b.d);
        return all.map((it,idx)=>{
          if(it.t==='a') return<div key="av" style={{position:'absolute',left:it.s.sx*(SW/1024),top:it.s.sy*(SH/768),zIndex:10+idx,transform:'translate(-50%,-85%)',pointerEvents:'none',filter:'drop-shadow(0 4px 10px rgba(20,10,40,.5))'}}>
            <Avatar scale={3}/>
          </div>;
          const scx=it.s.sx*(SW/1024),scy=it.s.sy*(SH/768);
          return<div key={it.o.iid} style={{position:'absolute',left:scx,top:scy,zIndex:10+idx,transform:'translate(-50%,-80%)',cursor:drag===it.i?'grabbing':'grab',transition:drag===it.i?'none':'filter .2s'}}
            onPointerDown={e=>onPD(e,it.i)} onClick={e=>{e.stopPropagation();setSel(it.i);}}>
            <IsoSprite obj={ISO[it.o.id]} scale={3} glow={sel===it.i} lampOn={it.o.isLamp&&lampOn}/>
            <div style={{position:'absolute',bottom:-3,left:'50%',transform:'translateX(-50%)',width:it.o.w*2.5,height:8,background:'rgba(20,10,40,0.15)',borderRadius:'50%',filter:'blur(4px)'}}/>
          </div>;
        });
      })()}

      {/* Selection tooltip */}
      {selectedObj&&<div style={{position:'absolute',bottom:16,left:16,zIndex:40,...P,boxShadow:'0 0 20px rgba(120,80,200,0.1)',padding:'10px 16px',maxWidth:220}} onClick={e=>e.stopPropagation()}>
        <div style={{color:'#e0d0f8',fontSize:13,marginBottom:3}}>{selectedObj.name}</div>
        <div style={{color:'rgba(180,160,220,.5)',fontSize:9,marginBottom:8}}>{selectedObj.soundRole} layer · drag to move</div>
        <button onClick={()=>rmObj(sel)} style={{padding:'4px 12px',background:'rgba(200,80,100,.1)',border:'1px solid rgba(200,80,100,.2)',color:'#e0a0a8',fontSize:10,cursor:'pointer',fontFamily:'inherit',borderRadius:6}}>remove</button>
      </div>}

      {/* Lamp slider */}
      <div style={{position:'absolute',top:12,left:12,zIndex:30,...P,padding:'6px 12px',display:'flex',alignItems:'center',gap:8}}>
        <span style={{fontSize:12}}>💡</span>
        <input type="range" min={0} max={100} value={lamp} onChange={e=>setLamp(+e.target.value)} style={{width:70,accentColor:'#a888d8',height:3}}/>
        <span style={{fontSize:9,color:'rgba(200,180,240,.35)'}}>{lamp}%</span>
      </div>

      {/* Info */}
      <div style={{position:'absolute',top:12,right:12,zIndex:30,fontSize:9,color:'rgba(200,180,240,.2)',pointerEvents:'none'}}>{placed.length}/{OBJECTS.length}</div>
    </div>

    {/* ═══ INVENTORY ═══ */}
    <div style={{...P,boxShadow:'0 0 20px rgba(100,60,200,0.08)',padding:'10px 16px',maxWidth:SW,width:'100%',display:'flex',gap:5,flexWrap:'wrap',alignItems:'center'}}>
      <div style={{fontSize:9,color:'rgba(200,180,240,.3)',letterSpacing:2,marginRight:10}}>OBJECTS</div>
      {OBJECTS.map(o=>{
        const done=placed.some(p=>p.id===o.id);const hov=hovTray===o.id&&!done;
        return<div key={o.id} onMouseEnter={()=>setHovTray(o.id)} onMouseLeave={()=>setHovTray(null)}
          onClick={()=>!done&&addObj(o)} title={`${o.name} — ${o.soundRole}`}
          style={{position:'relative',width:56,height:56,display:'flex',alignItems:'center',justifyContent:'center',
            background:done?'rgba(160,140,200,.02)':hov?'rgba(160,140,200,.1)':'rgba(160,140,200,.04)',
            border:`1px solid rgba(160,140,200,${done?.04:hov?.2:.08})`,borderRadius:8,
            cursor:done?'default':'pointer',opacity:done?.2:1,transition:'all .15s',
            boxShadow:hov?'0 0 14px rgba(140,100,220,.12)':'none'}}>
          <IsoSprite obj={ISO[o.id]} scale={1.5} glow={hov}/>
          {done&&<div style={{position:'absolute',inset:0,display:'flex',alignItems:'center',justifyContent:'center',fontSize:16,color:'rgba(160,140,200,.25)'}}>✓</div>}
        </div>;
      })}
    </div>
    <div style={{fontSize:8,color:'rgba(160,140,200,.1)',letterSpacing:2}}>DESE-61003 · Imperial College London · Dyson School</div>
  </div>;
}
