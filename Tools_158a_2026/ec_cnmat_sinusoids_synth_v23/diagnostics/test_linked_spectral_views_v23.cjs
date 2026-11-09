/* Actual viewport and interpolation scripts, driven through the delivered root
 * patch cords. Native multislider/number behavior is modeled, not Max GUI/DSP. */
'use strict';
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const R=path.resolve(__dirname,'..');const P=JSON.parse(fs.readFileSync(path.join(R,'patchers/_ec_sinusoids_synth_v23_main.maxpat'))).patcher;
const B=Object.fromEntries(P.boxes.map(x=>[x.box.id,x.box]));const lines=P.lines.map(x=>x.patchline);
let checks=0,clock=0,steps=0,edits=0;const scripts={},ui={},numbers={},buses=[];
const copy=x=>JSON.parse(JSON.stringify(x));
function eq(a,b,m){assert.deepStrictEqual(copy(a),copy(b),m);checks++;}
function ok(a,m){assert.ok(a,m);checks++;}
function call(c,i,f,...a){let prior=c.inlet;c.inlet=i;try{return c[f](...a);}finally{c.inlet=prior;}}
function emit(id,port,a){for(const l of lines.filter(l=>l.source[0]===id&&l.source[1]===port).sort((a,b)=>(a.order||0)-(b.order||0)))send(l.destination[0],l.destination[1],a);}
function jsMessage(c,inlet,a){
 if(a.length===0)return call(c,inlet,'bang');
 if(typeof a[0]==='number')return call(c,inlet,a.length===1?'msg_float':'list',...a);
 return call(c,inlet,typeof c[a[0]]==='function'?a[0]:'anything',...a.slice(1));
}
function send(id,inlet,a){
 if(++steps>100000)throw Error('Message feedback loop: '+id);const b=B[id];
 if(scripts[id])return jsMessage(scripts[id],inlet,a);
 if(ui[id]){
  const u=ui[id],s=a[0];
  if(s==='size'){
   u.values=Array.from({length:a[1]},(_,i)=>u.values[i]||0);emit(id,0,u.values.slice()); // adversarial resize echo
  }else if(s==='setlist'){u.values=a.slice(1);}
  else if(s==='ignoreclick'){u.lock=!!a[1];}
  else if(s==='bang'){emit(id,0,u.values.slice());}
  else if(typeof s==='number'){u.values=a.slice();emit(id,0,u.values.slice());}
  return;
 }
 if(numbers[id]){
  const n=numbers[id];
  if(a[0]==='min'||a[0]==='max'){n[a[0]]=a[1];let prior=n.value;n.value=Math.max(n.min,Math.min(n.max,n.value));if(n.value!==prior)emit(id,0,[n.value]);}
  else if(a[0]==='set')n.value=Math.max(n.min,Math.min(n.max,a[1]));
  else{n.value=Math.max(n.min,Math.min(n.max,Math.trunc(Number(a[0]))));emit(id,0,[n.value]);}
  return;
 }
 if(b.maxclass==='toggle'){
  if(a[0]==='set')b.testValue=a[1];else{b.testValue=Number(a[0])!==0?1:0;emit(id,0,[b.testValue]);}return;
 }
 if((b.text||'').startsWith('prepend '))return emit(id,0,b.text.split(/\s+/).slice(1).concat(a));
 if((b.text||'').startsWith('send ')){buses.push([b.text.slice(5),...a]);return;}
 if(b.maxclass==='message')return emit(id,0,b.text.split(/\s+/).map(s=>/^[-\d.]+$/.test(s)?Number(s):s));
 // Other original synth paths are outside this UI test. Test their audio behavior separately.
}
function load(id){
 const text=B[id].text.split(/\s+/);const file=text[1];
 function Clock(){this.getTime=()=>clock;}
 function Task(){this.cancel=()=>{};this.repeat=()=>{};this.schedule=()=>{};}
 const c={Math,Date:Clock,Task,Number,String,Array,Object,JSON,isFinite,inlet:0,jsarguments:text.slice(1),arrayfromargs:a=>Array.from(a),post:()=>{},error:m=>{throw Error(m);},messnamed:(...a)=>buses.push(a),
 outlet:(port,...a)=>{const v=a.length===1&&Array.isArray(a[0])?Array.from(a[0]):a;if(id.endsWith('-viewport-js')&&port===1)edits++;emit(id,port,v);}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(R,'javascript',file),'utf8'),c);scripts[id]=c;return c;
}
for(const id of ['syn-freq-slider','syn-amp-slider','syn-harmonic-amp-slider','amp-viewport-slider','detune-viewport-slider','anchor-viewport-slider'])ui[id]={values:Array(32).fill(0),lock:false};
for(const id of ['amp-display-first','amp-display-last'])numbers[id]={value:1,min:1,max:1};
const amp=load('amp-viewport-js'),detune=load('detune-viewport-js'),anchor=load('anchor-viewport-js'),engine=load('syn-interpolation-js');
function resetSteps(){steps=0;}
function count(n){resetSteps();emit('syn-count-update',2,[n]);call(engine,9,'msg_int',n);clock+=200;engine.lifeTick();}
function click(id){resetSteps();send(id,0,['bang']);}
function userNumber(id,n){resetSteps();send('amp-display-'+id,0,[n]);}
function hear(on){resetSteps();send('partial-hear-toggle',0,[on]);}
function seed(){for(let c=0;c<3;c++){call(engine,6+c,'msg_int',0);call(engine,c,'list',...Array.from({length:engine.componentCount},(_,i)=>c===0?(i%19-9)/10:(i%17+1)/(c===1?20:40)));}}
function state(first,last,total){
 for(const [name,c] of [['amplitude',amp],['detune',detune],['anchor',anchor]]){
  eq([c.viewFirst,c.viewLast,c.availableCount()],[first,last,total],name+' range');eq(c.shownValues,c.fullValues.slice(first-1,last),name+' crop');
 }
 eq([numbers['amp-display-first'].value,numbers['amp-display-last'].value],[first,last]);
}
count(32);seed();state(1,32,32);const before=copy(engine.memory),editBefore=edits;
userNumber('first',4);userNumber('last',16);state(4,16,32);eq(engine.memory,before,'crop did not change any of three memories');eq(edits,editBefore);
// A single bar in each view maps back to slot 7, not bar position 4 globally.
for(const [c,id,value] of [[0,'detune-viewport-slider',-.73],[1,'amp-viewport-slider',.83],[2,'anchor-viewport-slider',.24]]){
 const prev=copy(engine.memory);const a=ui[id].values.slice();a[3]=value;resetSteps();send(id,0,a);
 const expected=prev;expected[c][6]=value;eq(engine.memory,expected,'manual edit maps to original slot 7 in layer '+c);state(4,16,32);
}
const after=copy(engine.memory);hear(1);ok(amp.hearDisplayed);ok(buses.some(a=>a[0]==='Partial_Audition_Control_v23'&&a[1]==='audition'&&a[2]===1&&a[3]===4&&a[4]===16));
hear(0);state(4,16,32);eq(engine.memory,after);ok(!amp.hearDisplayed,'OFF keeps crop');
hear(1);click('amp-display-all');state(1,32,32);ok(!amp.hearDisplayed);eq(B['partial-hear-toggle'].testValue,0);eq(engine.memory,after,'display all retains every edit');
// Silent limits, count changes, single-slot views, and hidden memory in all layers.
for(let n=2;n<=256;n++){
 count(n);click('amp-display-all');state(1,n,n);
 userNumber('first',Math.min(4,n));userNumber('last',n+100);state(Math.min(4,n),n,n);
 userNumber('last',1);state(Math.min(4,n),Math.min(4,n),n);
 userNumber('first',0);state(1,Math.min(4,n),n);
 eq(engine.memory,after,'resizing and cropping preserve all hidden layer memories');
}
// Simultaneous sequence/offset multiplier updates go to the same original labels.
count(32);click('amp-display-all');userNumber('first',4);userNumber('last',8);
const labels=Array.from({length:32},(_,i)=>(i+10)*2);emit('syn-js',7,['multipliers',...labels]);
for(const c of [amp,detune,anchor])eq(c.labels,labels,'full label vector retained');
// Live full-model updates remain visible when cropped without becoming manual edits.
let editSnapshot=edits;for(let c=0;c<3;c++){call(engine,6+c,'msg_int',1000);call(engine,c,'list',...Array(32).fill(c===0?-.2:.4));}
clock+=500;for(let c=0;c<3;c++)engine.tick(c);state(4,8,32);eq(edits,editSnapshot,'morph frames never feed back as manual edits');
// Mirror uses the existing anchor engine; the NEW visible editor receives its UI lock.
const mirrorEdge=lines.find(l=>l.source[0]==='anchor-mirror-lock-v23-6'&&l.destination[0]==='anchor-viewport-slider');ok(mirrorEdge,'mirror ignoreclick reaches visible anchor editor');
resetSteps();emit('anchor-mirror-lock-v23-6',0,['ignoreclick',1]);ok(ui['anchor-viewport-slider'].lock);
call(engine,10,'anchormirror',1);eq(engine.memory[2],engine.memory[1]);state(4,8,32);
const anchorBefore=copy(engine.memory[2]);resetSteps();send('anchor-viewport-slider',0,Array(5).fill(.99));eq(engine.memory[2],anchorBefore,'engine rejects anchor override while Mirror is on');
call(engine,10,'anchormirror',0);emit('anchor-mirror-lock-v23-6',0,['ignoreclick',0]);ok(!ui['anchor-viewport-slider'].lock);
// Only the full canonical slider names are used by the preset manifest.
const controller=fs.readFileSync(path.join(R,'javascript/synth_controller_v23.js'),'utf8');
for(const name of ['ec_syn_freq_slider','ec_syn_amp_slider','ec_syn_harmonic_amp_slider'])ok(controller.includes(name));
for(const name of ['detune_viewport_v23','amplitude_viewport_v23','anchor_viewport_v23','partial_hear_displayed_v23'])ok(!controller.includes(name),'transient viewport state not in model presets');
const report={status:'PASS',checks,coverage:['Saved graph routes actual script outputs for all three editors','Signed detune and independent amplitude/anchor edits target original slots','All counts 2..256, linked clipping and full-view restoration','No spectral edits from limit, size, silent set or live morph updates','Hidden memory across count changes; full canonical preset sliders unchanged','Hear toggle and display-all command/state wiring; anchor mirror lock'],limitations:['Native Max multislider/number events are modeled, including adversarial echoes. No Max GUI or audio executed.']};
fs.writeFileSync(path.join(__dirname,'LINKED_SPECTRAL_VIEWS_v23.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
