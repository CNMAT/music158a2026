const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const dir=__dirname;let clock=0,cases=0;
class Clock extends Date{constructor(){super(clock);}}
function load(file,callback=()=>{}){
 const c={Math,Date:Clock,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),messnamed:()=>{},post:()=>{},error:()=>{},Task:function(){this.cancel=()=>{};this.repeat=()=>{};},outlet:callback};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(dir,file),'utf8'),c);return c;
}
const near=(a,b,eps=1e-8)=>assert(Math.abs(a-b)<=eps,`${a} != ${b}`);
let shape=[];const s=load('detune_shape_library_v19.js',(o,v)=>shape=Array.from(v));
for(const base of [1,55,508,23000])for(let count=2;count<=256;count++)for(let index=0;index<93;index++){
 s.sourceHz=base;s.componentCount=count;s.selection=index;s.bang();
 assert.equal(shape.length,count);assert(shape.every(x=>Number.isFinite(x)&&x>=-1&&x<=1));
 if(index===0)assert(shape.every(x=>x===0));
 else{
  const variant=(index-1)%4;assert(shape.every(x=>variant%2 ? x<=0:x>=0));
  if(index===1){near(shape[0],0);near(shape[count-1],1);}
  if(index===2){near(shape[0],0);near(shape[count-1],-1);}
  if(index===3||index===4){
   const f=base*count,delta=(index===3?1:-1)*24.7*(1+.00437*f)/2;
   const cents=1200*Math.log2(Math.max(f*Math.pow(2,-1/12),f+delta)/f);
   near(shape[count-1]*100,Math.max(-100,Math.min(100,cents)));
  }
 }
 cases++;
}
s.inlet=0;s.msg_int(12);s.inlet=1;s.msg_int(3);s.inlet=2;s.msg_float(55);const before=shape.slice();s.msg_float(508);assert.notDeepEqual(shape,before);
s.inlet=1;s.msg_int(2);const signed=shape.slice();s.inlet=2;s.msg_float(1000);assert.deepEqual(shape,signed);

let raw=[];const g=load('cnmat_sinusoid_model_generator_v19.js',(o,v)=>{if(o===4)raw=Array.from(v);});
let frequencyCases=0;
for(const base of [1,55,508,23000])for(const n of [2,12,48,256])for(const value of [-1,-.5,0,.5,1]){
 g.inlet=3;g.msg_int(n);g.inlet=4;g.msg_float(base);g.inlet=1;g.list(...Array(n).fill(.5));g.inlet=2;g.list(...Array(n).fill(0));g.inlet=0;g.list(...Array(n).fill(value));
 near(raw[0],base);for(let i=1;i<n;i++){near(1200*Math.log2(raw[i*2]/(base*(i+1))),100*value,1e-7);near(raw[i*2+1],.5);}frequencyCases++;
}
g.inlet=3;g.msg_int(12);g.inlet=4;g.msg_float(55);g.inlet=2;g.list(...Array(12).fill(.25));g.inlet=0;g.list(...Array(12).fill(-1));
assert.equal(raw.length,48);for(let i=0;i<12;i++){near(raw[i*4+2],55*(i+1));near(raw[i*4+3],.25);}
g.microEnabled=true;g.microAmount=1;g.microDepthHz=5;g.microValue=()=>-1;g.buildModel();for(let i=1;i<12;i++)near(raw[i*4],55*(i+1)*Math.pow(2,-1/12)-1,1e-7);

const m=load('multislider_interpolation_engine_v19.js');m.inlet=9;m.msg_int(12);
m.inlet=3;m.list(...Array(12).fill(-1));m.inlet=0;m.list(...Array(12).fill(1));
clock=250;m.tick(0);near(m.current[0][5],-.5);clock=500;m.tick(0);near(m.current[0][5],0);clock=1000;m.tick(0);near(m.current[0][5],1);
m.inlet=10;m.partialvalue(0,256,-.75);m.inlet=9;m.msg_int(256);near(m.current[0][255],-.75);m.msg_int(12);m.msg_int(256);near(m.current[0][255],-.75);
m.inlet=10;m.partialvalue(1,2,-1);near(m.memory[1][1],0);m.partialvalue(2,2,-1);near(m.memory[2][1],0);
m.inlet=4;m.list(...Array.from({length:256},(_,i)=>i/255));m.inlet=10;m.PartialAmplitudes_to_Inharmonicity();assert.deepEqual(m.memory[0],m.memory[1]);assert(m.memory[0].every(x=>x>=0&&x<=1));
m.stoplayers(...Array(256).fill(-.25),...Array(512).fill(.4));assert(m.memory[0].every(x=>x===-.25));assert(m.memory[1].every(x=>x===.4));
let random=[];const r=load('random_multislider_values_v19.js',(o,v)=>random=Array.from(v));r.componentCount=256;r.inlet=1;r.bang();assert(random.some(x=>x<0)&&random.some(x=>x>0));for(const inlet of [2,3]){r.inlet=inlet;r.bang();assert(random.every(x=>x>=0&&x<=1));}

let layers=[];const stops=load('ec_sinusoid_synth_stops_v19.js',(o,v)=>{if(o===0)layers=Array.from(v).slice(1);});stops.inlet=1;stops.msg_float(55);stops.beathz(.2);stops.registration('CelesteII');
assert.equal(layers.length,768);for(let i=1;i<256;i++)if(layers[i]>0)near(55*(i+1)*(Math.pow(2,layers[i]/12)-1),.2,1e-7);

let counts={patchers:0,objects:0,patchCords:0,completionGates:0},masterCounts,dependencies=new Set();
function graph(p,path=''){
 counts.patchers++;counts.objects+=p.boxes.length;counts.patchCords+=p.lines.length;
 const boxes=new Map(p.boxes.map(e=>[e.box.id,e.box]));assert.equal(boxes.size,p.boxes.length);
 for(const {patchline:l} of p.lines){assert(boxes.has(l.source[0])&&boxes.has(l.destination[0]),path);assert(l.source[1]<boxes.get(l.source[0]).numoutlets,path);assert(l.destination[1]<boxes.get(l.destination[0]).numinlets,path);}
 for(const b of boxes.values()){
  if(path.includes('Cue_Partial_Drift_v19')&&/^clip -?\d+\.? 1\.?$/.test(b.text||''))assert(/^clip -1\.? 1\.?$/.test(b.text),b.text);
  if(b.id==='control-Partial_Drift_v19-input')assert.equal(b.minimum,-1);
  if(b.id==='control-Drift_Shape_v19-input')assert.equal(b.maximum,92);
  if(b.text?.startsWith('js ')||b.text?.startsWith('jsui ')){const f=b.text.split(/\s+/)[1];assert(fs.existsSync(pathModule(f)),f);dependencies.add(f);}
  if(b.id==='completion-compare'){assert.equal(b.text,'>= 150.');counts.completionGates++;}
  if(b.patcher)graph(b.patcher,path+'/'+b.text);
 }
}
function pathModule(f){return path.join(dir,f);}
const master=JSON.parse(fs.readFileSync(path.join(dir,'_ec_sinusoids_synth_stage_v19.maxpat'))).patcher;
graph(master);masterCounts={...counts};
for(const f of fs.readdirSync(dir).filter(f=>f.endsWith('.maxpat')&&!f.startsWith('_ec_')))graph(JSON.parse(fs.readFileSync(path.join(dir,f))).patcher,f);
const b=new Map(master.boxes.map(e=>[e.box.id,e.box]));assert.deepEqual(b.get('syn-freq-slider').setminmax,[-1,1]);assert.equal(b.get('syn-freq-shape-menu').items.filter(x=>x!==',').length,93);
const newRect=b.get('detune-shapes-v19').patching_rect;for(const [id,x]of b)if(id!=='detune-shapes-v19'&&x.patching_rect){const q=x.patching_rect;assert(!(newRect[0]<q[0]+q[2]&&newRect[0]+newRect[2]>q[0]&&newRect[1]<q[1]+q[3]&&newRect[1]+newRect[3]>q[1]),id);}
for(const edge of [['syn-count-update',0,'detune-shapes-v19',0],['syn-freq-shape-menu',0,'detune-shapes-v19',1],['detune-shapes-v19',0,'syn-interpolation-js',0]])assert(master.lines.some(({patchline:l})=>l.source[0]===edge[0]&&l.source[1]===edge[1]&&l.destination[0]===edge[2]&&l.destination[1]===edge[3]));
const report={status:'passed',shapeCountBaseCases:cases,frequencyCountBaseDetuneCases:frequencyCases,otherChecks:['ERB base recalculation','signed morph crossing zero','hidden-slot preservation','amplitude/anchor nonnegative clipping','positive full-bank amplitude transfer','signed stop-layer restore','signed random detune','organ-stop Hz beating conversion','harmonic anchors','F0 lock','micro-walk additive offset','all patch graphs and JS dependencies','new object placement','150 ms completion comparison preservation'],master:masterCounts,allSuppliedPatchers:counts,jsDependencies:[...dependencies].sort(),runtime:'Node VM with Max message and Task stubs; not tested in Max audio runtime'};
fs.writeFileSync(path.join(dir,'VALIDATION_v19.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
