// Deterministic graph harness for the native Max objects used by the score models.
// Validates graph event order/cancellation; native Max rendering and scheduler remain separate checks.
const fs=require('fs'),path=require('path'),assert=require('assert');
const read=n=>JSON.parse(fs.readFileSync(path.join(__dirname,n),'utf8')).patcher;
const boxes=p=>Object.fromEntries(p.boxes.map(x=>[x.box.id,x.box]));
const gallery=read('Send_Message_Space_v19.maxpat');const models={};
function collect(p){for(const {box:b} of p.boxes){if(b.text?.startsWith('p Cue_'))models[b.text.slice(6)]=b.patcher;else if(b.patcher&&b.id!=='live-controls')collect(b.patcher);}}collect(gallery);
const num=v=>typeof v==='number'?v:Number(v),atoms=x=>x==='bang'?[]:Array.isArray(x)?x:[x];
function val(x){const n=Number(x);return x!==''&&Number.isFinite(n)?n:x;}
class World{
 constructor(){this.time=0;this.queue=[];this.seq=0;this.receives={};this.sent=[];this.partial=[Array(256).fill(0),Array(256).fill(0),Array(256).fill(0)];}
 later(ms,fn){this.queue.push({at:this.time+ms,seq:this.seq++,fn});}
 advance(to){while(true){this.queue.sort((a,b)=>a.at-b.at||a.seq-b.seq);const e=this.queue[0];if(!e||e.at>to)break;this.queue.shift();this.time=e.at;e.fn();}this.time=to;}
 listen(name,fn){(this.receives[name]??=[]).push(fn);}
 bus(name,msg){for(const fn of this.receives[name]||[])fn(msg);}
 send(name,msg){const a=atoms(msg);this.sent.push({at:this.time,name,msg:structuredClone(msg)});
  const c=['Partial_Drift_v19','Partial_Amplitude_v19','Partial_Anchor_v19'].indexOf(name);
  if(c>=0){if(a[0]==='get'){this.bus(name.slice(0,-4)+'_current_v19',this.partial[c][a[1]-1]);return;}this.partial[c][a[0]-1]=a[1];}
  if(a.length===1&&typeof a[0]==='number')this.bus(name.slice(0,-4)+'_state_v19',a[0]);
  this.bus(name,msg);
 }
}
class Graph{
 constructor(p,w,onout=()=>{}){this.p=p;this.w=w;this.b=boxes(p);this.state={};this.child={};this.onout=onout;
  for(const b of Object.values(this.b)){const t=(b.text||'').split(/\s+/);this.state[b.id]={value:val(t[1]||'0'),gen:0,stored:(b.text||'').split(/\s+/).map(val)};
   if(t[0]==='pack')this.state[b.id].pack=t.slice(1).map(x=>['f','i'].includes(x)?0:val(x));
   if(t[0]==='gate')this.state[b.id].value=num(t[2]||0);
   if(t[0]==='receive')w.listen(t[1],msg=>this.emit(b.id,0,msg));
   if(b.patcher)this.child[b.id]=new Graph(b.patcher,w,(out,msg)=>this.emit(b.id,out,msg));
  }
 }
 input(msg,inlet=0){const b=Object.values(this.b).find(b=>b.maxclass==='inlet'&&b.index===inlet+1);assert(b);this.emit(b.id,0,msg);}
 emit(id,out,msg){const edges=this.p.lines.map(x=>x.patchline).filter(l=>l.source[0]===id&&l.source[1]===out).sort((a,b)=>(a.order??0)-(b.order??0));for(const l of edges)this.deliver(l.destination[0],l.destination[1],structuredClone(msg));}
 deliver(id,inlet,msg){const b=this.b[id],s=this.state[id],t=(b.text||'').split(/\s+/),a=atoms(msg),first=a[0];
  if(b.patcher){this.child[id].input(msg,inlet);return;}
  if(b.maxclass==='comment')return;
  if(b.maxclass==='outlet'){this.onout((b.index||1)-1,msg);return;}
  if(b.maxclass==='button'){this.emit(id,0,'bang');return;}
  if(b.maxclass==='message'){
   if(first==='set'){s.stored=a.slice(1);return;}
   const template=s.stored;const result=template.map(v=>typeof v==='string'&&/^\$\d+$/.test(v)?(a[Number(v.slice(1))-1]??0):v);
   this.emit(id,0,result.length===1&&result[0]==='bang'?'bang':result);return;
  }
  const op=t[0];
  if(op==='t'){for(let i=t.length-2;i>=0;i--){const k=t[i+1];this.emit(id,i,k==='b'?'bang':k==='i'?Math.trunc(num(first)):k==='f'?num(first):a);}return;}
  if(op==='route'){
   const keys=t.slice(1).map(val);let index=msg==='bang'?keys.indexOf('bang'):keys.indexOf(first);
   if(index>=0)this.emit(id,index,a.length>1?a.slice(1):'bang');else this.emit(id,keys.length,msg);return;
  }
  if(op==='routepass'){if(a.length>1&&typeof first==='number')this.emit(id,0,msg);return;}
  if(op==='clip'){this.emit(id,0,Math.max(num(t[1]),Math.min(num(t[2]),num(first))));return;}
  if(op==='unpack'){for(let i=Math.min(a.length,t.length-1)-1;i>=0;i--)this.emit(id,i,t[i+1]==='i'?Math.trunc(num(a[i])):num(a[i]));return;}
  if(op==='pack'){s.pack[inlet]=first;if(inlet===0)this.emit(id,0,s.pack.slice());return;}
  if(op==='f'||op==='i'){if(msg!=='bang')s.value=op==='i'?Math.trunc(num(first)):num(first);if(inlet===0)this.emit(id,0,s.value);return;}
  if(op==='prepend'){this.emit(id,0,t.slice(1).map(val).concat(a));return;}
  if(op==='forward'){this.w.send(t[1],msg);return;}
  if(op==='gate'){if(inlet===0)s.value=num(first);else if(s.value===1)this.emit(id,0,msg);return;}
  if(op==='delay'){if(first==='stop'){s.gen++;return;}if(inlet===1){s.delay=num(first);return;}const token=++s.gen;this.w.later(s.delay??num(t[1]),()=>{if(token===s.gen)this.emit(id,0,'bang');});return;}
  if(op==='line'){
   if(first==='stop'){s.gen++;return;}if(first==='set'){s.gen++;s.value=num(a[1]);return;}
   const target=num(first),duration=a.length>1?num(a[1]):0,start=num(s.value),token=++s.gen,grain=num(t[2]||20);
   if(duration<=0){s.value=target;this.emit(id,0,target);return;}
   for(let ms=Math.min(grain,duration);;ms=Math.min(ms+grain,duration)){const step=ms;this.w.later(step,()=>{if(token!==s.gen)return;s.value=start+(target-start)*step/duration;this.emit(id,0,s.value);});if(ms===duration)break;}return;
  }
  throw Error('Unsupported '+op+' at '+id);
 }
}
// Bare floats default to 20ms, readback seeds the start, explicit duration is respected.
let w=new World(),g=new Graph(models.Source_Base_Hz_v19,w);assert.equal(w.sent.length,0);w.bus('Source_Base_Hz_state_v19',60);g.input([100,40]);w.advance(20);assert.equal(w.sent.at(-1).msg[0],80);w.advance(40);assert.equal(w.sent.at(-1).msg[0],100);
g.input(120);w.advance(60);assert.equal(w.sent.at(-1).msg[0],120);g.input([200,100]);w.advance(80);const count=w.sent.length;g.input(['stop']);w.advance(200);assert.equal(w.sent.length,count);
// Copies can run independently, and querying a second partial cannot reset the first copy's line.
w=new World();w.partial[1][2]=.2;w.partial[1][3]=.4;let a=new Graph(models.Partial_Amplitude_v19,w),b=new Graph(models.Partial_Amplitude_v19,w);
a.input([3,.8,100]);w.advance(20);b.input([4,.9,100]);w.advance(100);assert(Math.abs(w.partial[1][2]-.8)<1e-12);w.advance(120);assert.equal(w.partial[1][3],.9);
// Stop tokens never execute discrete/action cues; integers do not emit intermediate selections.
w=new World();g=new Graph(models.Amplitude_Shape_v19,w);g.input(7);assert.equal(w.sent.length,1);assert.equal(w.sent[0].msg[0],7);g.input(['stop']);assert.equal(w.sent.length,1);
g=new Graph(models.All_Off_v19,w);g.input(['stop']);assert.equal(w.sent.length,1);g.input('bang');assert.equal(w.sent.length,2);
// Timed example opens silently, cancels future events and ramp work, and can restart without stale cues.
w=new World();g=new Graph(read('Example_Timed_Score_v19.maxpat'),w);assert.equal(w.sent.length,0);g.input('bang');w.advance(300);assert(w.sent.some(x=>x.name==='Envelope_Trigger_v19'&&x.at===300));g.input('bang',1);const stopped=w.sent.length;w.advance(5000);assert.equal(w.sent.length,stopped);
g.input('bang');w.advance(5300);assert(w.sent.some(x=>x.name==='Envelope_Trigger_v19'&&x.at===5300));w.advance(9500);assert(w.sent.some(x=>x.name==='All_Off_v19'&&x.at===9500));
console.log('PASS: graph-executed scalar default/explicit ramps, readback starts, stop cancellation, independent copied partial cues, query isolation, discrete/action protocols, silent score loading, timed dispatch, restart and cancellation.');
