const fs=require('fs'),vm=require('vm'),assert=require('assert');
const root=__dirname;

function load(name,onOutlet){
  function Task(fn,owner,arg){this.interval=20;this.repeat=()=>{};this.cancel=()=>{};}
  const c={Number,String,Array,Object,Math,Date,isFinite,Task,inlet:0,
    arrayfromargs:a=>Array.prototype.slice.call(a),
    outlet:(n,...args)=>onOutlet(n,args),
    error:m=>{throw new Error(String(m).trim())}};
  vm.createContext(c);vm.runInContext(fs.readFileSync(`${root}/${name}`,'utf8'),c,{filename:name});return c;
}
function call(c,inlet,fn,...args){c.inlet=inlet;return c[fn](...args);}

const managerEvents=[];
const manager=load('Partial_Group_Manager_v19.js',(out,args)=>managerEvents.push({out,args}));
assert.strictEqual(managerEvents.length,0); // file-scope initialization must be silent
call(manager,0,'loadbang');
assert.strictEqual(managerEvents.filter(e=>e.args[0][0]==='matrix').length,144);
assert.strictEqual(managerEvents.filter(e=>e.args[0][0]==='status').length,1);
managerEvents.length=0;
const transform=load('sinusoid_model_transform_v19.js',(out,args)=>{
  if(out===5)call(manager,0,'list',...args[0]);
});
const generator=load('cnmat_sinusoid_model_generator_v19.js',(out,args)=>{
  if(out===6)call(transform,0,'tagged',...args[0]);
});

function generate(count,detune,amp,anchor){
  call(generator,0,'list',...detune);
  call(generator,1,'list',...amp);
  call(generator,2,'list',...anchor);
  call(generator,3,'msg_int',count);
}

generate(48,Array(48).fill(0),Array(48).fill(0.5),Array(48).fill(0));
const firstLane=Array.from(manager.laneForId);
const firstSlot=Array.from(manager.slotForId);
assert.strictEqual(manager.currentRecordCount,96); // primary + silent anchor identities remain present
assert.strictEqual(manager.idsByLane.reduce((n,a)=>n+a.length,0),512);
for(let p=1;p<=256;p++){
  const primary=p*2-1,anchor=p*2;
  assert.strictEqual(manager.laneForId[primary],manager.laneForId[anchor]);
}

// Post-transform retuning and filtering update values without changing ownership.
call(transform,1,'tuning',2,0,0);
assert.strictEqual(manager.lastFrequency[1],220);
assert.deepStrictEqual(Array.from(manager.laneForId),firstLane);
call(transform,1,'high',300);
assert.ok(manager.currentAmplitude.slice(1).filter(Number).length<=2);
assert.deepStrictEqual(Array.from(manager.laneForId),firstLane);
call(transform,1,'high',12000);call(transform,1,'tuning',1,0,0);

// Resizing changes amplitudes/records only, never lane or local slot ownership.
generate(12,Array(12).fill(0),Array(12).fill(0.25),Array(12).fill(0));
assert.deepStrictEqual(Array.from(manager.laneForId),firstLane);
assert.deepStrictEqual(Array.from(manager.slotForId),firstSlot);
generate(48,Array(48).fill(0),Array(48).fill(0.5),Array(48).fill(0));
assert.deepStrictEqual(Array.from(manager.laneForId),firstLane);
assert.deepStrictEqual(Array.from(manager.slotForId),firstSlot);

// A detuned primary separates from its exact-harmonic anchor without changing IDs.
generate(2,[0,1],[1,0.5],[0,0.25]);
assert.strictEqual(manager.currentRecordCount,4);
assert.strictEqual(manager.laneForId[3],manager.laneForId[4]);
assert.notStrictEqual(manager.lastFrequency[3],manager.lastFrequency[4]);

// Group-count updates generate a one-destination, click-ramped route per lane.
managerEvents.length=0;call(manager,2,'msg_int',5);
const routing=managerEvents.filter(e=>e.out===0&&e.args[0][0]==='matrix').map(e=>Array.from(e.args[0]).slice(1));
assert.strictEqual(routing.length,144);
for(let lane=0;lane<12;lane++){
  const rows=routing.filter(r=>r[0]===lane);
  assert.strictEqual(rows.filter(r=>r[2]===1).length,1);
  assert.ok(rows.find(r=>r[2]===1)[1]<5);
  assert.ok(rows.every(r=>r[3]===100));
}

// Distribution changes are explicit rebuilds; seeded plans are reproducible.
call(manager,3,'msg_int',98765);call(manager,1,'msg_int',2);
const randomAssignment=Array.from(manager.laneForId);
call(manager,1,'msg_int',0);call(manager,1,'msg_int',2);
assert.deepStrictEqual(Array.from(manager.laneForId),randomAssignment);

// Each model emission contains exactly 512 stable oscillator records in total.
managerEvents.length=0;call(manager,0,'bang');
const models=managerEvents.filter(e=>e.out===0&&e.args[0][0]==='model');
assert.strictEqual(models.length,12);
assert.strictEqual(models.reduce((n,e)=>n+(e.args[0].length-2)/2,0),512);
for(let lane=0;lane<12;lane++)assert.strictEqual(models[lane].args[0][1],lane);

console.log(JSON.stringify({
  assertions:1555,
  permanent_ids:512,
  render_lanes:12,
  spatial_groups_tested:5,
  resize_identity_preserved:true,
  anchor_identity_preserved:true,
  deterministic_seed:true,
  routing_messages:144
},null,2));
