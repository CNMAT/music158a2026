const fs=require('fs'),vm=require('vm'),assert=require('assert'),path=require('path');let time=0,seed=12345;
function random(){seed=(Math.imul(seed,1664525)+1013904223)>>>0;return seed/4294967296;}
class Clock extends Date{constructor(...a){super(...(a.length?a:[time]));}}
function load(name,callback){const outputs=[];function Task(){this.cancel=()=>{};this.repeat=()=>{};}const math=Object.create(Math);math.random=random;
 const c={Math:math,Date:Clock,Task,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),error:()=>{},outlet:(...a)=>{outputs.push(a);if(callback)callback(...a);}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,name),'utf8'),c);c.outputs=outputs;return c;
}
function last(c,out){return c.outputs.filter(x=>x[0]===out).at(-1)[1];}
function configure(c,n,w,amps=Array(n).fill(1),anchors=Array(n).fill(0)){c.inlet=5;c.msg_int(n);c.inlet=1;c.list(...w);c.inlet=3;c.list(...amps);c.inlet=4;c.list(...anchors);c.inlet=0;}
const r=load('weighted_partial_removal_11.js');configure(r,24,Array.from({length:24},(_,i)=>24-i));r.remove('X','partials',10);
let selected=Array.from(last(r,1));assert.equal(selected.length,10);assert.equal(new Set(selected).size,10);assert(selected.every(x=>x>=1&&x<=24));
configure(r,5,[1,0,0,0,0]);r.remove(3);assert(Array.from(last(r,1)).includes(1));assert.equal(last(r,2)[3],2);
configure(r,5,[0,0,0,0,0]);r.remove(3);assert.equal(last(r,2)[3],3);
configure(r,5,[1,1,1,1,1],[0,.5,0,0,0],[0,0,0,0,.8]);r.remove(10);assert.deepEqual(Array.from(last(r,1)),[2,5]);assert.equal(last(r,2)[2],0);
const before=r.outputs.length;r.remove(-1);r.remove(1.5);assert.equal(r.outputs.length,before);
let meanLow=0,meanHigh=0;
configure(r,24,Array.from({length:24},(_,i)=>23-i));for(let i=0;i<8000;i++){r.remove(1);meanLow+=last(r,1)[0];}
configure(r,24,Array.from({length:24},(_,i)=>i));for(let i=0;i<8000;i++){r.remove(1);meanHigh+=last(r,1)[0];}
meanLow/=8000;meanHigh/=8000;assert(meanLow<10);assert(meanHigh>15);
const patch=JSON.parse(fs.readFileSync(path.join(__dirname,'01_CNMAT_sinusoids_synth_stage_11.maxpat'))).patcher;
const ids=new Map(patch.boxes.map(x=>[x.box.id,x.box]));const names=ids.get('rm11-shape-menu').items.filter(x=>x!==',');
let remover,engine;const display=[[],[],[]];
const gen=load('cnmat_sinusoid_model_generator_11.js');
engine=load('multislider_interpolation_engine_11.js',(channel,message,n)=>{
 if(channel===3){gen.inlet=7;gen[message]();return;}
 display[channel]=message==='size'?Array(n).fill(0):Array.from(message);
 engine.inlet=channel+3;engine.list(...display[channel]);
 gen.inlet=channel;gen.list(...display[channel]);
 if(remover){remover.inlet=channel+2;remover.list(...display[channel]);}
});
remover=load('weighted_partial_removal_11.js',(out,command)=>{if(out===0){engine.inlet=10;engine[command[0]](...command.slice(1));}});
const library=load('dynamic_shape_library_weights_11.js',(out,values)=>{if(out===0){remover.inlet=1;remover.list(...values);}});
function count(n){gen.inlet=3;gen.msg_int(n);remover.inlet=5;remover.msg_int(n);engine.inlet=9;engine.msg_int(n);library.inlet=0;library.msg_int(n);library.bang();}
function edit(c,v){display[c]=v.slice();engine.inlet=c+3;engine.list(...v);remover.inlet=c+2;remover.list(...v);gen.inlet=c;gen.list(...v);}
count(24);for(let c=0;c<3;c++)edit(c,Array(24).fill((c+1)/4));
count(120);let v=display[1].slice();v[69]=.77;edit(1,v);count(24);
const saved=JSON.stringify(engine.memory);
library.inlet=1;library.msg_int(names.indexOf('Triple Gaussian'));assert.equal(JSON.stringify(engine.memory),saved);assert.equal(remover.weights.length,24);
const rawBefore=gen.outputs.filter(x=>x[0]===4).length;
remover.inlet=0;remover.remove('X','partials',10);selected=Array.from(last(remover,1));
assert.equal(gen.outputs.filter(x=>x[0]===4).length-rawBefore,1);
for(let c=0;c<3;c++)for(const index of selected)assert.equal(engine.memory[c][index-1],0);
count(12);count(24);for(let c=0;c<3;c++)for(const index of selected)assert.equal(display[c][index-1],0);
count(120);assert.equal(display[1][69],.77);assert.equal(remover.weights.length,120);
count(24);remover.inlet=0;remover.remove('partials',10);const second=Array.from(last(remover,1));assert(second.every(x=>!selected.includes(x)));assert.equal(second.length,10);assert.equal(last(remover,2)[2],4);
remover.inlet=0;remover.remove(99);assert.equal(last(remover,2)[1],4);assert.equal(last(remover,2)[2],0);
// Zero is a no-op: no generator transaction or stopped morph.
const noOp=gen.outputs.filter(x=>x[0]===4).length;remover.remove(0);assert.equal(gen.outputs.filter(x=>x[0]===4).length,noOp);
// Triple-Gaussian distribution selects peak indices more often than its valleys.
const lib=load('dynamic_shape_library_weights_11.js');lib.inlet=0;lib.msg_int(48);lib.inlet=1;lib.msg_int(names.indexOf('Triple Gaussian'));
const gaussian=Array.from(last(lib,0));configure(r,48,gaussian);const bins=Array(48).fill(0);
for(let i=0;i<8000;i++){r.remove(1);bins[last(r,1)[0]-1]++;}
const peak=gaussian.map((w,i)=>[w,bins[i]]).filter(x=>x[0]>.8),valley=gaussian.map((w,i)=>[w,bins[i]]).filter(x=>x[0]<.1);
assert(peak.reduce((s,x)=>s+x[1],0)/peak.length>5*valley.reduce((s,x)=>s+x[1],0)/valley.length);
function graph(p){const map=new Map(p.boxes.map(x=>[x.box.id,x.box]));assert.equal(map.size,p.boxes.length);for(const l of p.lines||[]){const q=l.patchline;assert(map.has(q.source[0]));assert(map.has(q.destination[0]));assert(q.source[1]<map.get(q.source[0]).numoutlets);assert(q.destination[1]<map.get(q.destination[0]).numinlets);}for(const x of p.boxes){if(x.box.patcher)graph(x.box.patcher);if(x.box.text?.startsWith('js '))assert(x.box.text.endsWith('_11.js'));}}
graph(patch);
assert.deepEqual(names,ids.get('syn-amp-shape-menu').items.filter(x=>x!==','));
assert(!patch.lines.some(l=>l.patchline.source[0]==='rm11-weight-library'&&['syn-freq-slider','syn-amp-slider','syn-harmonic-amp-slider','syn-interpolation-js'].includes(l.patchline.destination[0])));
const oldPath=path.join(__dirname,'01_CNMAT_sinusoids_synth_stage_10.maxpat');
if(fs.existsSync(oldPath)){for(const {box} of JSON.parse(fs.readFileSync(oldPath)).patcher.boxes){const b=ids.get(box.id.replace(/rt10/g,'rt11').replace(/stage10/g,'stage11'));assert.deepEqual(b.patching_rect,box.patching_rect);for(const k of Object.keys(box).filter(k=>/color/.test(k)))assert.deepEqual(b[k],box[k]);}}
console.log(`PASS: weighted bias means ${meanLow.toFixed(2)} / ${meanHigh.toFixed(2)}, Gaussian peaks, unique draws, fallbacks, silent exclusion, atomic memory removal/restoration, hidden slots, independent library, routing/names/layout/colors.`);
