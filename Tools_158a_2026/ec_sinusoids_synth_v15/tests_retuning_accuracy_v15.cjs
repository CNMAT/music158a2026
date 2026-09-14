const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');let time=0;
class Clock extends Date{constructor(...a){super(...(a.length?a:[time]));}}
function load(name,cb){const c={inlet:0,Math,Date:Clock,isFinite,error:()=>{},Task:function(){this.cancel=()=>{};this.repeat=()=>{};},arrayfromargs:a=>Array.from(a),outlet:cb||(()=>{})};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,name),'utf8'),c);return c;}
const patch=JSON.parse(fs.readFileSync(path.join(__dirname,'_ec_sinusoids_synth_stage_v15.maxpat'))).patcher;let safe=[],targetDisplay;
const transform=load('sinusoid_model_transform_v15.js',(out,...v)=>{if(out===0)safe=Array.from(v[0]);});
const gen=load('cnmat_sinusoid_model_generator_v15.js',(out,...v)=>{if(out===4){transform.inlet=0;transform.list(...v[0]);}});
// Follow the real patch's numeric filter outlet, including the previously missing float route.
const filter=patch.boxes.find(x=>x.box.id==='syn-filter-base-number').box;
assert.equal(filter.text,'routepass int float');
function generatorBase(value){const out=Number.isInteger(value)?0:1;const l=patch.lines.find(x=>x.patchline.source[0]===filter.id&&x.patchline.source[1]===out);assert(l,'numeric base must reach generator');gen.inlet=l.patchline.destination[1];gen.msg_float(value);}
const controller=load('global_retuning_controller_v15.js',(out,...v)=>{if(out===0)generatorBase(v[0]);if(out===1)transform.tuning(...v.slice(1));if(out===3)targetDisplay=v[1];});
function ctl(i,x){controller.inlet=i;controller.msg_float(x);}
function close(a,b){assert(Math.abs(a-b)<1e-7,`${a} vs ${b}`);}
gen.inlet=3;gen.msg_int(4);for(let ch=0;ch<3;ch++){gen.inlet=ch;gen.list(...Array(4).fill(ch===1?1:0));}
ctl(3,0);ctl(0,27.5);close(gen.baseFrequency,27.5);close(safe[0],27.5);close(safe[2],55);close(targetDisplay,27.5);
for(let mode=0;mode<=2;mode++){
 ctl(2,mode);ctl(0,110);ctl(1,220);
 close(safe[0],220);close(safe[2],mode===2?330:440);
 close(gen.baseFrequency,mode===0?220:110);
}
// Source reset works in every mode, and not just for integer Hz.
for(let mode=0;mode<=2;mode++){ctl(2,mode);ctl(0,27.5);close(safe[0],27.5);close(safe[2],55);close(controller.actualBase,27.5);}
ctl(2,1);ctl(0,110);ctl(3,1000);ctl(1,220);time=500;controller.tick();close(controller.actualBase,110*Math.sqrt(2));ctl(1,440);close(controller.rampStart,110*Math.sqrt(2));time=1500;controller.tick();close(safe[0],440);assert.equal(controller.active,false);
ctl(3,0);ctl(0,110);ctl(1,220);transform.bypass(1);close(safe[0],110);transform.bypass(0);close(safe[0],220);
transform.semitones(12);close(safe[0],440);transform.cents(1200);close(safe[0],880);transform.offset(5);close(safe[0],885);
transform.gain(.5);close(safe[1],.5);transform.semitones(0);transform.cents(0);transform.offset(0);
transform.low(300);assert(safe.every((v,i)=>i%2||v>=300));transform.high(300);assert.deepEqual(safe,[1,0]);transform.low(20);transform.high(12000);
transform.bypass(0);transform.tuning(1,0,0);transform.gain(1);transform.cluster(0);transform.list(100,0.3,102,0.4);assert.equal(safe.length,4);transform.cluster(3);assert.equal(safe.length,2);close(safe[0],101.28);close(safe[1],.5);
transform.cluster(0);transform.samplerate(200);assert.deepEqual(safe,[1,0]);
function graph(q){const ids=new Map(q.boxes.map(x=>[x.box.id,x.box]));for(const {patchline:l} of q.lines){assert(ids.has(l.source[0])&&ids.has(l.destination[0]));assert(l.source[1]<ids.get(l.source[0]).numoutlets);assert(l.destination[1]<ids.get(l.destination[0]).numinlets);}for(const {box:b} of q.boxes){if(b.text==='routepass int float'){for(const out of [0,1])assert(q.lines.some(x=>x.patchline.source[0]===b.id&&x.patchline.source[1]===out));}if(b.patcher)graph(b.patcher);}}
graph(patch);
console.log('PASS: decimal 27.5 Hz through actual filter routing, three retuning modes, source resets, glide/re-targeting, bypass, semitones/cents/offset/gain, frequency rejection/silence, clustering, sample-rate limit, all numeric filter outlets and graph bounds.');
