const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
let time=0;
class Clock extends Date{constructor(...a){super(...(a.length?a:[time]));}}
function load(name,callback){
 const outputs=[];function Task(){this.cancel=()=>{};this.repeat=()=>{};}
 const c={Task,Date:Clock,Math,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),error:()=>{},outlet:(...a)=>{outputs.push(a);if(callback)callback(...a);}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,name),'utf8'),c);c.outputs=outputs;return c;
}
let engine;const display=[[],[],[]];
engine=load('multislider_interpolation_engine_10.js',(channel,message,n)=>{
 // Simulate a multislider that emits a freshly zeroed list during size changes.
 engine.inlet=channel+3;
 if(message==='size'){display[channel]=Array(n).fill(0);engine.list(...display[channel]);}
 else {display[channel]=Array.from(message);engine.list(...display[channel]);}
});
function count(n){engine.inlet=9;engine.msg_int(n);}
function edit(c,values){display[c]=Array.from(values);engine.inlet=c+3;engine.list(...values);}
function target(c,values){engine.inlet=c;engine.list(...values);}
count(24);const originals=[0,1,2].map(c=>Array.from({length:24},(_,i)=>(c+1)*(i+1)/100));
for(let c=0;c<3;c++)edit(c,originals[c]);
count(120);
for(let c=0;c<3;c++){assert.deepEqual(display[c].slice(0,24),originals[c]);assert(display[c].slice(24).every(x=>x===0));}
let edited=display[1].slice();edited[69]=.77;edit(1,edited);
count(12);assert.deepEqual(display[0],originals[0].slice(0,12));
edited=display[0].slice();edited[0]=.91;edit(0,edited);
count(24);assert.equal(display[0][0],.91);assert.deepEqual(display[0].slice(1),originals[0].slice(1));
assert.deepEqual(display[1],originals[1]);
count(120);assert.equal(display[1][69],.77);
count(12);engine.inlet=7;engine.msg_int(0);target(1,Array(12).fill(.2));
count(120);assert(display[1].slice(0,12).every(x=>x===.2));assert.deepEqual(display[1].slice(12,24),originals[1].slice(12));assert.equal(display[1][69],.77);
// A manual edit stops the next interpolated frame from replacing the edit.
count(24);engine.inlet=6;engine.msg_int(1000);target(0,Array(24).fill(1));
time=500;engine.tick(0);assert(Math.abs(display[0][1]-(originals[0][1]+1)/2)<1e-6);
edited=display[0].slice();edited[1]=.123;edit(0,edited);time=1000;engine.tick(0);assert.equal(display[0][1],.123);
// Count changes snapshot an elapsed morph and stop it before restoring hidden values.
target(0,Array(24).fill(0));time=1500;count(120);const snapshot=display[0].slice();
time=2000;engine.tick(0);assert.deepEqual(display[0],snapshot);assert.equal(engine.running[0],false);
assert.equal(engine.memory[0].length,255);assert.equal(engine.memory[1].length,255);
const lib=load('dynamic_shape_library_10.js');lib.loadbang();
const getOutput=c=>Array.from(lib.outputs.filter(a=>a[0]===c).at(-1)[1]);
assert(getOutput(0).every(x=>x===0));assert.equal(getOutput(1)[0],1);assert.equal(getOutput(1).at(-1),0);assert(getOutput(2).every(x=>x===0));
const outputCount=lib.outputs.length;lib.inlet=0;lib.msg_int(120);assert.equal(lib.outputs.length,outputCount);
lib.inlet=2;lib.msg_int(0);assert(getOutput(1).every(x=>x===0));
lib.msg_int(3);assert.equal(getOutput(1).length,120);assert.equal(getOutput(1)[0],1);assert.equal(getOutput(1).at(-1),0);
const trans=load('sinusoid_model_transform_10.js');assert.equal(trans.minimumHz,20);assert.equal(trans.maximumHz,12000);
trans.gain(15);assert.equal(trans.amplitudeGain,2);
const patch=JSON.parse(fs.readFileSync(path.join(__dirname,'01_CNMAT_sinusoids_synth_stage_10.maxpat'))).patcher;
const byId=new Map(patch.boxes.map(x=>[x.box.id,x.box]));
assert.equal(byId.get('rt10-gain').maximum,2);assert.equal(byId.get('rt10-low-load').text,'loadmess 20');assert.equal(byId.get('rt10-high-load').text,'loadmess 12000');
assert.deepEqual(byId.get('obj-1').saved_attribute_attributes.valueof.parameter_initial,[-65]);
assert.equal(byId.get('syn-freq-shape-menu').items[0],'Flat zero (default)');assert.equal(byId.get('syn-amp-shape-menu').items[0],'Flat zero');
function graph(p){
 const ids=new Map(p.boxes.map(x=>[x.box.id,x.box]));assert.equal(ids.size,p.boxes.length);
 for(const l of p.lines||[]){const q=l.patchline;assert(ids.has(q.source[0]));assert(ids.has(q.destination[0]));assert(q.source[1]<ids.get(q.source[0]).numoutlets);assert(q.destination[1]<ids.get(q.destination[0]).numinlets);}
 for(const x of p.boxes){if(x.box.patcher)graph(x.box.patcher);if(x.box.text?.startsWith('js '))assert(x.box.text.endsWith('_10.js'));if(x.box.maxclass==='jsui'){assert.equal(x.box.ignoreclick,1);assert(x.box.filename.endsWith('_10.js'));}}
}
graph(patch);
const oldPath=path.join(__dirname,'01_CNMAT_sinusoids_synth_stage_09.maxpat');
if(fs.existsSync(oldPath)){
 const old=JSON.parse(fs.readFileSync(oldPath)).patcher;
 for(const x of old.boxes){const id=x.box.id.replace(/rt09/g,'rt10'),b=byId.get(id);assert.deepEqual(b.patching_rect,x.box.patching_rect);for(const k of Object.keys(x.box).filter(k=>/color/.test(k)))assert.deepEqual(b[k],x.box[k]);}
}
assert(!patch.lines.some(l=>l.patchline.source[0]==='syn-size-message'));
assert(patch.lines.some(l=>l.patchline.source[0]==='syn-count-update'&&l.patchline.destination[0]==='syn-interpolation-js'&&l.patchline.destination[1]===9));
console.log('PASS: indexed 255-slot memory, zero padding, shrink/restore, hidden edits, guarded resize echoes, morph interruptions, menu/gain/window defaults, graph, names, unchanged positions/colors.');
