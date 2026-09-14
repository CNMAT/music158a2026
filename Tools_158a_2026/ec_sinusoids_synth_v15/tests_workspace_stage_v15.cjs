const fs=require('fs'),vm=require('vm'),assert=require('assert'),path=require('path');
const p=JSON.parse(fs.readFileSync(path.join(__dirname,'_ec_sinusoids_synth_stage_v15.maxpat'))).patcher;
const sub=p.boxes.find(x=>x.box.id==='workspace14').box.patcher;
const map=new Map(sub.boxes.map(x=>[x.box.id,x.box]));assert.equal(sub.openinpresentation,1);
const bases=[2,...Array.from({length:127},(_,i)=>3+i*2)];
for(const [i,b] of bases.entries()){
 const on=map.get('on'+b),off=map.get('off'+b);assert.equal(on.text,b+' on');assert.equal(off.text,b+' off');
 assert.equal(on.presentation_rect[0],20+i%10*110);assert.equal(on.presentation_rect[1],190+Math.floor(i/10)*116);
 assert.equal(off.presentation_rect[0],on.presentation_rect[0]);assert.equal(off.presentation_rect[1],on.presentation_rect[1]+28);
}
assert(sub.lines.some(x=>x.patchline.source[0]==='alloff14'&&x.patchline.destination[0]==='output'));
let transactions=0,lists=0;const c={inlet:0,Math,Date,isFinite,Task:function(){this.cancel=()=>{};this.repeat=()=>{};},arrayfromargs:a=>Array.from(a),outlet:(ch,msg)=>{if(ch===3&&msg==='endupdate')transactions++;if(ch<3&&Array.isArray(msg))lists++;}};
vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'multislider_interpolation_engine_v15.js'),'utf8'),c);
c.inlet=9;c.msg_int(256);for(let ch=0;ch<3;ch++){c.inlet=ch+3;c.list(...Array(256).fill(.7));}
c.inlet=9;c.msg_int(32);c.running=[true,true,true];transactions=0;lists=0;c.inlet=10;c.alloff();assert.equal(transactions,1);assert.equal(lists,3);
for(let ch=0;ch<3;ch++){assert.equal(c.running[ch],false);assert(c.memory[ch].slice(0,32).every(v=>v===0));assert(c.memory[ch].slice(32).every(v=>v===0));}
c.inlet=9;c.msg_int(256);c.inlet=10;c.alloff();assert(c.memory.every(a=>a.every(v=>v===0)));
function check(q){for(const {box:b} of q.boxes){if(b.text?.startsWith('js '))assert(fs.existsSync(path.join(__dirname,b.text.slice(3))));if(b.patcher)check(b.patcher);}}
check(p);assert(!/_12\.(js|maxpat)/.test(JSON.stringify(p)));assert(!JSON.stringify(p).includes('stage-12'));
console.log('PASS: ten pairs per row, ON above OFF, complete presentation layout, direct ALL OFF routing, visible/full-bank zeroing, all hidden slots cleared, stopped morphs, one transaction, renamed dependencies.');
