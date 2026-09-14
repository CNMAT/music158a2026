const fs=require('fs'), vm=require('vm'), assert=require('assert'), path=require('path');
let time=0;
class Clock extends Date { constructor(...args){super(...(args.length?args:[time]));} }
function load(name,onOutput){
 const outputs=[];
 function Task(fn,scope,arg){this.interval=0;this.cancel=()=>{};this.repeat=()=>{};}
 const context={Task,Date:Clock,Math,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),error:()=>{},outlet:(...args)=>{outputs.push(args);if(onOutput)onOutput(...args);}};
 vm.createContext(context);vm.runInContext(fs.readFileSync(path.join(__dirname,name),'utf8'),context);
 context.outputs=outputs;return context;
}
function result(c,n=0){return JSON.parse(JSON.stringify(c.outputs.filter(x=>x[0]===n).at(-1)[1]));}
function near(a,b){assert(Math.abs(a-b)<1e-6,`${a} != ${b}`);}
const t=load('sinusoid_model_transform_09.js');
t.list(110,.2,220,.4,24000,.1,220,.1);
assert.deepEqual(result(t),[110,.2,220,.5]);
assert.deepEqual(result(t,1),[4,2,1,1,0,23000]);
t.tuning(.5,0);
assert.deepEqual(result(t),[55,.2,110,.5,12000,.1]);
assert.deepEqual(Array.from(t.sourceModel),[110,.2,220,.4,24000,.1,220,.1]);
t.offset(100);near(result(t)[0],155);
t.semitones(12);near(result(t)[0],210);
t.bypass(1);near(result(t)[0],110);
t.high(0);assert.deepEqual(result(t),[1,0]);assert.equal(result(t,1)[1],0);
t.high(23000);t.low(23000);assert.equal(result(t,1)[1],0);
t.low(0);t.bypass(0);t.tuning(1,0);t.offset(0);t.semitones(0);
t.list(100,.3,110,.4);t.cluster(20);
near(result(t)[0],106.4);near(result(t)[1],.5);
t.cluster(0);assert.equal(result(t).length,4);
const retained=Array.from(t.sourceModel);t.list(100,.1,200);assert.deepEqual(Array.from(t.sourceModel),retained);
t.offset(-1000);assert.deepEqual(result(t),[1,0]);
t.offset(0);t.samplerate(44100);t.list(22000,.1,22500,.1);assert.equal(result(t).length,2);near(result(t,1)[5],22005.9);
const r=load('global_retuning_controller_09.js');
r.inlet=3;r.msg_int(1000);r.inlet=1;r.msg_int(220);
time=500;r.tick();near(r.actualBase,110*Math.sqrt(2));
r.inlet=3;r.msg_int(0);time=750;r.tick();near(r.actualBase,110*Math.pow(2,.75));
r.inlet=1;r.msg_int(330);near(r.actualBase,330);
r.inlet=2;r.msg_int(1);near(r.outputs.filter(x=>x[0]===1).at(-1)[2],3);
r.inlet=2;r.msg_int(2);near(r.outputs.filter(x=>x[0]===1).at(-1)[3],220);
r.inlet=3;r.msg_int(1000);r.inlet=1;r.msg_int(550);time=1250;r.tick();near(r.actualBase,440);
r.inlet=1;r.msg_float(NaN);near(r.targetBase,550);
// End-to-end: mode changes cannot issue a stale-source/double-scaled model.
const trans=load('sinusoid_model_transform_09.js');
const gen=load('cnmat_sinusoid_model_generator_09.js',(n,v)=>{if(n===4){trans.inlet=0;trans.list(...v);}});
gen.inlet=3;gen.msg_int(3);gen.inlet=1;gen.list(.2,.3,.4);
const before=[...gen.driftValues,...gen.amplitudeValues,...gen.harmonicAmplitudeValues];
const control=load('global_retuning_controller_09.js',(n,...args)=>{
 if(n===1)trans.tuning(args[1],args[2],args[3]);
 if(n===0){gen.inlet=4;gen.msg_float(args[0]);}
});
control.inlet=3;control.msg_int(0);control.inlet=1;control.msg_int(220);
near(result(trans)[0],220);
control.inlet=2;control.msg_int(1);near(result(trans)[0],220);near(gen.baseFrequency,110);
control.inlet=1;control.msg_int(330);near(result(trans)[0],330);
control.inlet=2;control.msg_int(2);near(result(trans)[0],330);
assert.deepEqual([...gen.driftValues,...gen.amplitudeValues,...gen.harmonicAmplitudeValues],before);
// Source model retains pre-filter frequencies so downward transforms recover them.
gen.inlet=3;gen.msg_int(30);gen.inlet=4;gen.msg_int(1000);
assert(gen.outputs.filter(x=>x[0]===4).at(-1)[1].some(x=>x>23000));
trans.bypass(0);trans.tuning(.5,0);assert.equal(result(trans,1)[1],30);
const patch=JSON.parse(fs.readFileSync(path.join(__dirname,'01_CNMAT_sinusoids_synth_stage_09.maxpat')));
function graph(p){
 const ids=new Map(p.boxes.map(x=>[x.box.id,x.box]));assert.equal(ids.size,p.boxes.length);
 for(const l of p.lines||[]){const q=l.patchline;assert(ids.has(q.source[0]));assert(ids.has(q.destination[0]));const s=ids.get(q.source[0]),d=ids.get(q.destination[0]);assert(q.source[1]<s.numoutlets);assert(q.destination[1]<d.numinlets);}
 for(const x of p.boxes){if(x.box.patcher)graph(x.box.patcher);if(x.box.text?.startsWith('js '))assert(x.box.text.endsWith('_09.js'));}
}
graph(patch.patcher);
const baselinePath=path.join(__dirname,'01_CNMAT_sinusoids_synth_stage_08.maxpat');
if(fs.existsSync(baselinePath)){
 const old=JSON.parse(fs.readFileSync(baselinePath)).patcher;
 const map=new Map(patch.patcher.boxes.map(x=>[x.box.id,x.box]));
 for(const x of old.boxes){const b=map.get(x.box.id);assert.deepEqual(b.patching_rect,x.box.patching_rect);for(const k of Object.keys(x.box).filter(k=>/color/.test(k)))assert.deepEqual(b[k],x.box[k]);}
 for(const id of ['syn-freq-slider','syn-amp-slider','syn-harmonic-amp-slider'])assert.deepEqual(map.get(id),old.boxes.find(x=>x.box.id===id).box);
}
console.log('PASS: transforms, recovery, clustering, safety, retuning, routing, stage naming, unchanged slider data/layout/colors.');
