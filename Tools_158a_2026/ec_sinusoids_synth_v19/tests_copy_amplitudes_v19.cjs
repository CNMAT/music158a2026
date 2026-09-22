const fs=require('fs'),vm=require('vm'),assert=require('assert'),path=require('path');let time=0,transactions=0;
class Clock extends Date{constructor(){super(time);}}
const c={Math,Date:Clock,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),Task:function(){this.cancel=()=>{};this.repeat=()=>{};},outlet:(o,m)=>{if(o===3&&m==='endupdate')transactions++;}};
vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'multislider_interpolation_engine_v19.js'),'utf8'),c);
c.inlet=9;c.msg_int(256);for(let ch=0;ch<3;ch++){c.inlet=ch+3;c.list(...Array.from({length:256},(_,i)=>ch===1?i/255:.9));}
c.inlet=9;c.msg_int(32);const drift=JSON.stringify(c.memory[0]);c.inlet=10;c.PartialAmplitudes_to_HarmonicAnchor();assert.equal(transactions,1);assert.equal(JSON.stringify(c.memory[1]),JSON.stringify(c.memory[2]));assert.equal(c.componentCount,32);assert.equal(JSON.stringify(c.memory[0]),drift);assert.notEqual(c.memory[1],c.memory[2]);assert.equal(c.memory[2][255],1);
c.inlet=9;c.msg_int(256);assert.equal(c.current[2][255],1);
c.inlet=9;c.msg_int(32);c.inlet=1;c.list(...Array(32).fill(0));time=500;c.inlet=10;c.PartialAmplitudes_to_HarmonicAnchor();assert.equal(c.running[1],false);assert.equal(c.running[2],false);assert.equal(JSON.stringify(c.memory[1]),JSON.stringify(c.memory[2]));assert.equal(c.memory[1][31],Math.round(Math.round((31/255)*1e6)/2)/1e6);
const p=JSON.parse(fs.readFileSync(path.join(__dirname,'_ec_sinusoids_synth_stage_v19.maxpat'))).patcher;assert(p.lines.some(x=>x.patchline.source[0]==='copy-amplitudes14'&&x.patchline.destination[0]==='syn-interpolation-js'&&x.patchline.destination[1]===10));
console.log('PASS: full-bank independent copy, visible-count preservation, unchanged inharmonicity, morph snapshot/stop, one transaction and main-page routing.');
