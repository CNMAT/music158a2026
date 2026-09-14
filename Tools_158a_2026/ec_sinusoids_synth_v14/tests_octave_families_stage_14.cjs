const fs=require('fs'),vm=require('vm'),assert=require('assert'),path=require('path');
function load(name,cb){const c={inlet:0,Task:function(){this.cancel=()=>{};this.repeat=()=>{};},arrayfromargs:a=>Array.from(a),outlet:cb||(()=>{}),isFinite,Math,Date};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,name),'utf8'),c);return c;}
const g=load('cnmat_sinusoid_model_generator_14.js',(...a)=>{if(a[0]===0)models++;});let models=0,e;
e=load('multislider_interpolation_engine_14.js',(ch,msg,n)=>{if(ch===3){g.inlet=7;g[msg]();}else if(msg!=='size'){g.inlet=ch;g.list(...msg);}});
g.inlet=3;g.msg_int(256);e.inlet=9;e.msg_int(256);assert.equal(g.componentCount,256);assert(e.memory.every(x=>x.length===256));
for(let ch=0;ch<3;ch++){e.inlet=ch+3;e.list(...Array(256).fill(.6));}
const before=models;e.inlet=10;e.octavefamily(2,'on');assert.equal(models-before,1);
for(const [j,n] of [2,4,8,16,32,64,128,256].entries()){assert.equal(e.memory[1][n-1],Math.round(1/(j+1)*1e6)/1e6);assert.equal(e.memory[2][n-1],0);assert.equal(e.memory[0][n-1],.6);}
assert.equal(e.memory[1][0],.6);assert.equal(e.memory[1][2],.6);
e.inlet=9;e.msg_int(32);e.inlet=10;e.octavefamily(2,'off');assert.equal(e.memory[1][31],0);assert.equal(e.memory[1][255],.125);
e.inlet=9;e.msg_int(256);assert.equal(e.current[1][255],.125);
e.inlet=10;e.octavefamily(2,'off');assert.equal(e.memory[1][255],0);
const saved=JSON.stringify(e.memory);for(const b of [1,4,6,256,257,NaN,3.5])e.octavefamily(b,'on');e.octavefamily(3,'bad');assert.equal(JSON.stringify(e.memory),saved);
e.running=[true,true,true];e.inlet=10;e.octavefamily(3,'on');assert.equal(e.running[0],true);assert.equal(e.running[1],false);assert.equal(e.running[2],false);
const p=JSON.parse(fs.readFileSync(path.join(__dirname,'_ec_sinusoids_synth_stage_14.maxpat'))).patcher;
const sub=p.boxes.find(x=>x.box.id==='workspace14').box.patcher;
const seen=[];for(const {box:b} of sub.boxes.filter(x=>x.box.id.startsWith('family'))){const ns=b.text.split(' ').map(Number);assert(ns[0]===2||ns[0]%2===1);for(let j=1;j<ns.length;j++)assert.equal(ns[j],ns[j-1]*2);seen.push(...ns);}
assert.equal(new Set(seen).size,255);assert.deepEqual(seen.sort((a,b)=>a-b),Array.from({length:255},(_,i)=>i+2));
assert(p.lines.some(x=>x.patchline.source[0]==='workspace14'&&x.patchline.destination[0]==='syn-interpolation-js'&&x.patchline.destination[1]===10));
for(const name of ['dynamic_shape_library_14.js','dynamic_shape_library_weights_14.js','random_multislider_values_14.js']){const c=load(name);c.inlet=0;c.msg_int(256);assert.equal(c.componentCount,256);}
console.log('PASS: 128 disjoint families cover 2–256; reciprocal amplitudes, anchor silence, preserved inharmonicity/unrelated/hidden slots, morph behavior, single model transaction, 256-slot generation and workspace routing.');
