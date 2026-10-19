// Deterministic graph harness for the native Max objects used by the score models.
// Validates graph event order/cancellation; native Max rendering and scheduler remain separate checks.
const fs=require('fs'),path=require('path'),assert=require('assert');
const read=n=>JSON.parse(fs.readFileSync(path.join(__dirname,n),'utf8')).patcher;
const boxes=p=>Object.fromEntries(p.boxes.map(x=>[x.box.id,x.box]));
const gallery=read('Send_Message_Space_v20.maxpat');const models={};
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
  const c=['Partial_Drift_v20','Partial_Amplitude_v20','Partial_Anchor_v20'].indexOf(name);
  if(c>=0){if(a[0]==='get'){this.bus(name.slice(0,-4)+'_current_v20',this.partial[c][a[1]-1]);return;}this.partial[c][a[0]-1]=a[1];}
  if(this.autoFeedback!==false&&a.length===1&&typeof a[0]==='number')this.bus(name.slice(0,-4)+'_state_v20',a[0]);
  this.bus(name,msg);
 }
}
class Graph{
 constructor(p,w,onout=()=>{}){this.p=p;this.w=w;this.b=boxes(p);this.state={};this.child={};this.onout=onout;
  for(const b of Object.values(this.b)){const t=(b.text||'').split(/\s+/);this.state[b.id]={value:val(t[1]||'0'),gen:0,stored:(b.text||'').split(/\s+/).map(val)};
   if(t[0]==='pack')this.state[b.id].pack=t.slice(1).map(x=>['f','i'].includes(x)?0:val(x));
   if(t[0]==='gate')this.state[b.id].value=num(t[2]||0);
   if(t[0]==='receive'||t[0]==='r')w.listen(t[1],msg=>this.emit(b.id,0,msg));
   if(b.patcher)this.child[b.id]=new Graph(b.patcher,w,(out,msg)=>this.emit(b.id,out,msg));
  }
 }
 input(msg,inlet=0){const b=Object.values(this.b).find(b=>b.maxclass==='inlet'&&b.index===inlet+1);assert(b);this.emit(b.id,0,msg);}
 emit(id,out,msg){const edges=this.p.lines.map(x=>x.patchline).filter(l=>l.source[0]===id&&l.source[1]===out).sort((a,b)=>(a.order??0)-(b.order??0));for(const l of edges)this.deliver(l.destination[0],l.destination[1],structuredClone(msg));}
 deliver(id,inlet,msg){const b=this.b[id],s=this.state[id],t=(b.text||'').split(/\s+/),a=atoms(msg),first=a[0];
  if(b.patcher){this.child[id].input(msg,inlet);return;}
  if(b.maxclass==='comment')return;
  if(['flonum','number','toggle','umenu'].includes(b.maxclass)){
   if(first==='set'){s.value=num(a[1]);return;}
   if(msg!=='bang')s.value=['number','toggle','umenu'].includes(b.maxclass)?Math.trunc(num(first)):num(first);
   this.emit(id,0,s.value);return;
  }
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
  if(op==='+'){if(inlet===1){s.operand=num(first);return;}this.emit(id,0,num(first)+(s.operand??num(t[1])));return;}
  if(op==='print'){return;}
  if(op==='>='){if(inlet===1){s.threshold=num(first);return;}this.emit(id,0,num(first)>=(s.threshold??num(t[1]))?1:0);return;}
  if(op==='clip'){this.emit(id,0,Math.max(num(t[1]),Math.min(num(t[2]),num(first))));return;}
  if(op==='unpack'){for(let i=Math.min(a.length,t.length-1)-1;i>=0;i--)this.emit(id,i,t[i+1]==='i'?Math.trunc(num(a[i])):num(a[i]));return;}
  if(op==='pack'){s.pack[inlet]=first;if(inlet===0)this.emit(id,0,s.pack.slice());return;}
  if(op==='f'||op==='i'){if(msg!=='bang')s.value=op==='i'?Math.trunc(num(first)):num(first);if(inlet===0)this.emit(id,0,s.value);return;}
  if(op==='prepend'){this.emit(id,0,t.slice(1).map(val).concat(a));return;}
  if(op==='forward'||op==='send'||op==='s'){this.w.send(t[1],msg);return;}
  if(op==='gate'){if(inlet===0)s.value=num(first);else if(s.value>=1&&s.value<=num(t[1]||1))this.emit(id,s.value-1,msg);return;}
  if(op==='delay'){if(first==='stop'){s.gen++;return;}if(inlet===1){s.delay=num(first);return;}const token=++s.gen;this.w.later(s.delay??num(t[1]),()=>{if(token===s.gen)this.emit(id,0,'bang');});return;}
  if(op==='line'){
   if(first==='stop'){s.gen++;return;}if(first==='set'){s.gen++;s.value=num(a[1]);return;}
   const target=num(first),duration=a.length>1?num(a[1]):0,start=num(s.value),token=++s.gen,grain=num(t[2]||20);
   if(duration<=0){s.value=target;this.emit(id,0,target);this.emit(id,1,'bang');return;}
   for(let ms=Math.min(grain,duration);;ms=Math.min(ms+grain,duration)){const step=ms;this.w.later(step,()=>{if(token!==s.gen)return;s.value=start+(target-start)*step/duration;this.emit(id,0,s.value);if(step===duration)this.emit(id,1,'bang');});if(ms===duration)break;}return;
  }
  throw Error('Unsupported '+op+' at '+id);
 }
}
// Bare floats default to 20ms, readback seeds the start, explicit duration is respected.
let w=new World(),g=new Graph(models.Source_Base_Hz_v20,w);assert.equal(w.sent.length,0);w.bus('Source_Base_Hz_state_v20',60);g.input([100,40]);w.advance(20);assert.equal(w.sent.at(-1).msg[0],80);w.advance(40);assert.equal(w.sent.at(-1).msg[0],100);
g.input(120);w.advance(60);assert.equal(w.sent.at(-1).msg[0],120);g.input([200,100]);w.advance(80);const count=w.sent.length;g.input(['stop']);w.advance(200);assert.equal(w.sent.length,count);
// Copies can run independently, and querying a second partial cannot reset the first copy's line.
w=new World();w.partial[1][2]=.2;w.partial[1][3]=.4;let a=new Graph(models.Partial_Amplitude_v20,w),b=new Graph(models.Partial_Amplitude_v20,w);
a.input([3,.8,100]);w.advance(20);b.input([4,.9,100]);w.advance(100);assert(Math.abs(w.partial[1][2]-.8)<1e-12);w.advance(120);assert.equal(w.partial[1][3],.9);
// Stop tokens never execute discrete/action cues; integers do not emit intermediate selections.
w=new World();g=new Graph(models.Amplitude_Shape_v20,w);g.input(7);assert.equal(w.sent.length,1);assert.equal(w.sent[0].msg[0],7);g.input(['stop']);assert.equal(w.sent.length,1);
g=new Graph(models.All_Off_v20,w);g.input(['stop']);assert.equal(w.sent.length,1);g.input('bang');assert.equal(w.sent.length,2);
// Timed example opens silently, cancels future events and ramp work, and can restart without stale cues.
w=new World();g=new Graph(read('Example_Timed_Score_v20.maxpat'),w);assert.equal(w.sent.length,0);g.input('bang');w.advance(300);assert(w.sent.some(x=>x.name==='ADSR_12_Lanes_Global_Trigger_v20'&&x.at===300));g.input('bang',1);const stopped=w.sent.length;w.advance(5000);assert.equal(w.sent.length,stopped);
g.input('bang');w.advance(5300);assert(w.sent.some(x=>x.name==='ADSR_12_Lanes_Global_Trigger_v20'&&x.at===5300));w.advance(9500);assert(w.sent.some(x=>x.name==='All_Off_v20'&&x.at===9500));
console.log('PASS: graph-executed scalar default/explicit ramps, readback starts, stop cancellation, independent copied partial cues, query isolation, discrete/action protocols, silent score loading, timed dispatch, restart and cancellation.');

// Completion boundaries and each new canonical global CUE are exercised on the saved graph.
for(const ms of [0,149,150,151]){
 w=new World();g=new Graph(models.ADSR_12_Lanes_Duration_ms_v20,w);w.bus('ADSR_12_Lanes_Duration_ms_state_v20',1000);g.input([2000,ms]);w.advance(ms);
 const done=w.sent.filter(e=>e.name==='ADSR_12_Lanes_Duration_ms_done_v20');assert.equal(done.length,ms>=150?1:0);
 if(done.length)assert.equal(done[0].at,ms);
 assert.equal(w.sent.filter(e=>e.name==='ADSR_12_Lanes_Duration_ms_v20').at(-1).msg[0],2000);
}
w=new World();g=new Graph(models.ADSR_12_Lanes_Duration_ms_v20,w);g.input([2000,1000]);w.advance(200);g.input(['stop']);w.advance(1200);assert(!w.sent.some(e=>e.name.endsWith('_done_v20')));
for(const [name,input,expected] of [
 ['ADSR_12_Lanes_Duration_ms_v20',[-5,0],1],['ADSR_12_Lanes_Duration_ms_v20',[9000000,0],3600000],
 ['ADSR_12_Lanes_Smoothing_ms_v20',[-5,0],0],['ADSR_12_Lanes_Smoothing_ms_v20',[9000000,0],600000],
 ['ADSR_12_Lanes_Loop_v20',7,1],['ADSR_12_Lanes_Shape_v20',99,24]]){
 w=new World();g=new Graph(models[name],w);g.input(input);assert.equal(atoms(w.sent.findLast(e=>e.name===name).msg)[0],expected);
}
for(const name of ['ADSR_12_Lanes_Global_Trigger_v20','ADSR_12_Lanes_Stop_v20']){w=new World();g=new Graph(models[name],w);g.input(['stop']);assert.equal(w.sent.length,0);g.input('bang');assert.equal(w.sent.length,1);assert.equal(w.sent[0].name,name);}
// Panel only: bpatcher audio internals are not simulated. Check the actual global command fanout/UI graph.
function panel(){const w=new World();w.autoFeedback=false;const g=new Graph(read('ADSR_LANE_PANEL_v20.maxpat'),w);return [w,g];}
for(const [suffix,value,expected] of [['Duration_ms',2400.5,2400.5],['Shape',8,8],['Loop',1,1]]){
 [w,g]=panel();w.bus('ADSR_12_Lanes_'+suffix+'_v20',value);
 for(let n=1;n<=12;n++){const name='ADSR_Lane_'+String(n).padStart(2,'0')+'_'+suffix+'_v20';const e=w.sent.filter(e=>e.name===name);assert.equal(e.length,1,name);assert.equal(atoms(e[0].msg)[0],expected);}
 const state=w.sent.filter(e=>e.name==='ADSR_12_Lanes_'+suffix+'_state_v20');assert.equal(state.length,1);assert.equal(atoms(state[0].msg)[0],expected);
}
[w,g]=panel();w.bus('ADSR_12_Lanes_Global_Trigger_v20','bang');for(let n=1;n<=12;n++)assert.equal(w.sent.filter(e=>e.name==='ADSR_Lane_'+String(n).padStart(2,'0')+'_Trigger_v20').length,1);
[w,g]=panel();w.bus('ADSR_12_Lanes_Smoothing_ms_v20',321.5);assert.equal(w.sent.filter(e=>e.name==='ADSR_Lane_Smoothing_ms_v20').length,1);assert.equal(atoms(w.sent.find(e=>e.name==='ADSR_12_Lanes_Smoothing_ms_state_v20').msg)[0],321.5);
[w,g]=panel();w.bus('ADSR_12_Lanes_Stop_v20','bang');for(let n=1;n<=12;n++){
 const base='ADSR_Lane_'+String(n).padStart(2,'0');assert.equal(w.sent.filter(e=>e.name===base+'_Stop_v20').length,1);assert.equal(atoms(w.sent.find(e=>e.name===base+'_Loop_v20').msg)[0],0);
}
const lastLoop=Math.max(...w.sent.map((e,i)=>e.name.match(/^ADSR_Lane_\d\d_Loop_v20$/)?i:-1)),firstStop=w.sent.findIndex(e=>e.name.match(/^ADSR_Lane_\d\d_Stop_v20$/));assert(lastLoop<firstStop);
console.log('PASS: six global lane CUEs, value bounds, 0/149/150/151 ms completion boundaries, completion cancellation, exact 12-way trigger/duration/shape/loop/stop fanout, smoothing alias/state path without recursion, float durations, and loop-off-before-stop order.');
