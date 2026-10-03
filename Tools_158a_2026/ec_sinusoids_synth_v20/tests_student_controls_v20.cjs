const fs=require('fs'),path=require('path'),assert=require('assert'),vm=require('vm');
const read=n=>JSON.parse(fs.readFileSync(path.join(__dirname,n))).patcher;
const boxes=p=>Object.fromEntries(p.boxes.map(x=>[x.box.id,x.box]));
const main=read('_ec_sinusoids_synth_v20.maxpat'), b=boxes(main);
assert.deepStrictEqual(b['obj-112'].patcher,read('ADSR_LANE_PANEL_v20.maxpat'));
assert.deepStrictEqual(b['send-message-space-v20'].patcher,read('Send_Message_Space_v20.maxpat'));
// Actual JS memory engine behavior, including hidden slots and synchronous current-value queries.
let time=0;class Clock extends Date{constructor(...a){super(...(a.length?a:[time]));}}
let outputs=[],feedback=[];const c={Math,Date:Clock,isFinite,inlet:10,arrayfromargs:a=>Array.from(a),Task:function(){this.cancel=()=>{};this.repeat=()=>{};},outlet:(...a)=>outputs.push(a),messnamed:(...a)=>feedback.push(a)};
vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'multislider_interpolation_engine_v20_add_restore.js'),'utf8'),c);
c.partialvalue(1,200,.73);assert.equal(c.memory[1][199],.73);assert.equal(c.componentCount,32);assert.equal(outputs.filter(a=>a[0]===3&&a[1]==='beginupdate').length,1);assert.equal(outputs.filter(a=>a[0]===3&&a[1]==='endupdate').length,1);
c.partialget(1,200);assert.deepStrictEqual(feedback.at(-1),['Partial_Amplitude_current_v20',.73]);
c.partialvalue(0,3,2);assert.equal(c.memory[0][2],1);c.partialvalue(0,3,-1);assert.equal(c.memory[0][2],-1);
let saved=JSON.stringify(c.memory);for(const args of [[0,0,.5],[0,257,.5],[3,2,.5],[0,2,NaN],[0,1.5,.4],[NaN,2,.5]])c.partialvalue(...args);assert.equal(JSON.stringify(c.memory),saved);
c.inlet=9;c.msg_int(256);assert.equal(c.memory[1][199],.73);c.inlet=10;c.familyvalue(3,1);assert.equal(c.memory[1][2],1);assert.equal(c.memory[1][5],.5);c.familyvalue(3,0);assert.equal(c.memory[1][2],0);
c.inlet=3;c.list(...Array(256).fill(0));c.inlet=6;c.msg_float(100);c.inlet=0;c.list(...Array(256).fill(1));time=50;c.inlet=10;c.partialget(0,3);assert.equal(feedback.at(-1)[1],.5);c.partialvalue(0,3,.25);assert.equal(c.running[0],false);assert.equal(c.memory[0][2],.25);

console.log('PASS: active indexed controls, signed detune bounds, hidden memory, rejected malformed commands, feedback query, atomic updates, interrupted morph, octave-family edits, alloff stop bus and standalone/embedded parity.');
c.inlet=10;c.alloff();assert(feedback.some(e=>e[0]==='ADSR_12_Lanes_Stop_v20'&&e[1]==='bang'));assert(feedback.some(e=>e[0]==='Envelope_Loop_v20'&&e[1]===0));assert(c.memory.every(a=>a.every(v=>v===0)));
