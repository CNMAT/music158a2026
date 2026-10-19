/* Source/graph regression. No native Max DSP or audio is emulated. */
'use strict';
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..');let clock=1000000,checks=0;
const ok=(v,m)=>{assert.ok(v,m);checks++;};
const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
const near=(a,b,m)=>ok(Math.abs(a-b)<1e-7,m||`${a} != ${b}`);
const read=k=>fs.readFileSync(path.join(root,'dependencies','ec_cnmat_sinusoids_opt_'+k+'.js'),'utf8');
function engine(kind,callback,bus){
 const events=[],tasks=[];function Date(){this.getTime=()=>clock;}
 function Task(fn,owner,...a){this.active=false;this.interval=5;this.repeat=()=>{this.active=true;};this.cancel=()=>{this.active=false;};this.schedule=()=>{this.active=true;};this.fire=()=>fn.apply(owner,a);tasks.push(this);}
 const c={jsarguments:['engine',101],inlet:0,Task,Date,JSON,Math,Number,Array,Object,String,isFinite,
  error:m=>{throw Error(m);},arrayfromargs:a=>Array.from(a),
  outlet:(n,...a)=>{const data=a.length===1&&Array.isArray(a[0])?Array.from(a[0]):a;events.push([n,data]);if(callback)callback(n,data);},
  messnamed:(...a)=>{if(bus)bus(...a);}};
 vm.createContext(c);vm.runInContext(read(kind),c);c.events=events;c.tasks=tasks;return c;
}
function advance(ms,...engines){for(let i=0;i<ms;i+=5){clock+=5;for(const e of engines)for(const t of e.tasks)if(t.active)t.fire();}}
function records(n=256,bank=0,offset=0){const a=[];for(let i=1;i<=n;i++)a.push(bank*512+2*i-1,(i+offset)*30,.2,bank*512+2*i,(i+offset)*30+.1,.1);return a;}
function nativeModels(g){const models=new Map();for(const [o,m]of g.events)if(o===0&&m[0]==='model')models.set(m[1],m[2]==='clear'?[]:m.slice(2));return models;}
function slots(g){return [...nativeModels(g).values()].reduce((a,b)=>a+b.length/2,0);}
function located(g,id){for(let l=0;l<24;l++)for(let s=0;s<g.renderSlots[l].length;s++)if(g.renderSlots[l][s]?.id===id&&!g.renderSlots[l][s].until)return[l,s];return null;}
const budgets=[];
for(let plan=0;plan<=4;plan++)for(const limit of [64,128,256]){
 const g=engine('groups');g.renderlimit(limit);advance(200,g);g.setPlan(plan);g.list(...records());advance(200,g);
 eq(slots(g),limit*2,`plan ${plan} steady cap ${limit}`);
 ok([...nativeModels(g)].filter(([i])=>i>=12).every(([,m])=>m.length===0),'unused bank B cleared');
 if(plan===0)budgets.push({limit,steady_slots:slots(g)});
 const before=g.events.filter(x=>x[1][0]==='model').length;
 g.list(...records());
 eq(g.events.filter(x=>x[1][0]==='model').length,before,'unchanged models are not resent');
 g.list(...records().concat(records(256,1)));advance(200,g);
 eq(slots(g),limit*4,'two-bank transition budget');
 if(plan===0)budgets.at(-1).crossfade_slots=slots(g);
 g.list(...records(256,1));advance(400,g);eq(slots(g),limit*2,'outgoing bank removed after release');
 ok([...nativeModels(g)].filter(([i])=>i<12).every(([,m])=>m.length===0),'unused bank A cleared');
 g.list();advance(400,g);eq(slots(g),0,'empty instrument has zero native oscillator slots');
 ok(!g.fadeTaskRunning,'fade task stops when idle');
}
// A count below the limit allocates only its actual paired records.
for(const n of [2,30,32,64,128,256]){
 const g=engine('groups');g.list(...records(n));advance(200,g);
 eq(slots(g),Math.min(n,128)*2,'actual count determines steady workload');
}
// Limit transitions preserve all memory and the slots of remaining tones.
const g=engine('groups');g.renderlimit(256);advance(200,g);g.list(...records());advance(200,g);
const location=located(g,1),hidden=g.currentAmplitude[511];g.renderlimit(64);advance(75,g);
near(g.limitGain(200,clock),.5,'limit reduction halfway through 150 ms fade');
g.renderlimit(256);near(g.limitGain(200,clock),.5,'rapid reversal starts from current gain');advance(200,g);
g.renderlimit(64);advance(400,g);eq(slots(g),128,'lower cap retires excess slots');eq(located(g,1),location,'fundamental slot never moves');
near(g.currentAmplitude[511],hidden,'hidden source amplitude not erased');g.renderlimit(256);advance(400,g);eq(slots(g),512,'raising limit recovers stored source');
g.setPlan(2);ok(g.fadeTaskRunning||!g.retirePending,'spatial edits schedule slot cleanup without another input');advance(400,g);ok(!g.retirePending,'spatial retirement completes');g.setPlan(0);advance(400,g);
// Retiring a middle identity does not move another sounding oscillator.
const neighbor=located(g,49),without=records().filter((_,i,a)=>a[Math.floor(i/3)*3]!==25);
g.list(...without);advance(400,g);eq(located(g,49),neighbor,'middle removal retains neighbor slot');
// Legacy snapshots rebuild only runtime caches and respect the chosen limit.
const saved=g.ec_export(),h=engine('groups');h.ec_import(saved);h.ec_emit();advance(400,h);
eq(h.renderLimit,128,'default is 128 after engine import');ok(slots(h)<1024,'legacy full allocation is not reinstated');

const sequences=[
 [1,2,3,4,5,6,7,8], [1,2,4,6,8,10,12,14],
 [1,3,5,7,9,11,13,15], [1,2,3,5,7,11,13,17]
];
for(let mode=0;mode<4;mode++){
 const m=engine('model');m.componentCount=8;m.baseFrequency=55;m.amplitudeValues=Array(8).fill(.2);m.harmonicAmplitudeValues=Array(8).fill(.1);m.driftValues=Array(8).fill(0);
 m.distribution(mode);m.buildModel();let a=m.events.filter(x=>x[0]===6).at(-1)[1];
 eq(a.filter((_,i)=>i%6===1).map(x=>x/55),sequences[mode],'primary sequence '+mode);
 eq(a.filter((_,i)=>i%6===4).map(x=>x/55),sequences[mode],'anchor sequence '+mode);
 eq(a.filter((_,i)=>i%3===0),Array.from({length:16},(_,i)=>i+1),'stable IDs independent of sequence');
 m.driftValues=Array(8).fill(1);m.buildModel();a=m.events.filter(x=>x[0]===6).at(-1)[1];
 near(a[1],55,'f0 never detunes');near(a[7],55*sequences[mode][1]*Math.pow(2,1/12),'detune is applied after distribution');near(a[10],55*sequences[mode][1],'anchor remains exact');
 m.inlet=8;m.firstpartial(3);m.buildModel();a=m.events.filter(x=>x[0]===6).at(-1)[1];
 near(a[1],55*sequences[mode][2]*Math.pow(2,1/12),'offset shifts slider 1 and applies detune');near(a[4],55*sequences[mode][2],'first anchor shifts exactly');near(a[10],55*sequences[mode][3],'offset shifts the entire sequence');
}
const primes=engine('model');primes.distributionIndex=3;
const first32=[1,2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113];
eq(Array.from({length:first32.length},(_,i)=>primes.partialMultiple(i)),first32,'all user-supplied prime multiples');
for(let i=1;i<256;i++){
 const n=primes.partialMultiple(i);for(let k=2;k*k<=n;k++)ok(n%k!==0,'prime membership');
 ok(n>primes.partialMultiple(i-1),'prime sequence strictly increases');
}
primes.firstPartial=23000;ok(primes.partialMultiple(255)>primes.partialMultiple(254),'prime offset supports maximum range');

// Real generator -> transform -> offset -> group JS, with scoped layout bus.
const group=engine('groups');
const off=engine('offset',(n,a)=>{if(n===0){group.inlet=0;group.list(...a);}});
const trans=engine('transform',(n,a)=>{if(n===5){off.inlet=0;off.list(...a);}});
const mod=engine('model',(n,a)=>{if(n===6){trans.inlet=0;trans.tagged(...a);}},(name,selector,...a)=>{eq(name,'101-ec-cnmat-sinusoids-opt_Partial_Offset_Crossfade','scoped layout bus');off.inlet=1;off[selector](...a);});
mod.baseFrequency=55;mod.componentCount=32;mod.amplitudeValues=Array(32).fill(.2);mod.harmonicAmplitudeValues=Array(32).fill(.1);mod.buildModel();advance(200,group,off);
eq(slots(group),64,'pipeline steady paired slots');const original=off.activeBank;mod.distribution(3);
ok(off.fading,'sequence change starts existing offset crossfade');advance(75,group,off);
eq(slots(group),128,'both banks active halfway through crossfade');advance(300,group,off);
eq(off.activeBank,1-original,'new sequence becomes active bank');eq(slots(group),64,'outgoing bank clears after transition');
mod.distribution(1);advance(40,group,off);mod.distribution(2);advance(40,group,off);mod.distribution(0);advance(500,group,off);
eq(off.activeOffset,1,'rapid menu changes keep latest requested sequence');ok(!off.fading,'queued changes eventually settle');eq(slots(group),64,'rapid changes leave no extra active bank');
// Existing frequency and Nyquist filtering handles widely spaced primes.
mod.distribution(3);mod.baseFrequency=2000;mod.buildModel();advance(400,group,off);
ok([...nativeModels(group).values()].flat().filter((_,i)=>i%2===0).every(f=>f<12000),'out-of-band prime multiples are not rendered');

// ALC target power excludes remembered sliders beyond the rendering limit.
const alc=engine('auto_level');alc.list(...records());near(alc.power,128*(.2*.2+.1*.1)/2);
alc.renderlimit(64);near(alc.power,64*(.2*.2+.1*.1)/2);alc.renderlimit(256);near(alc.power,256*(.2*.2+.1*.1)/2);

// Saved graph connects the new menus and all 24 audio banks correctly.
const main=JSON.parse(fs.readFileSync(path.join(root,'ec_cnmat_sinusoids_lowcpu_abs~.maxpat'))).patcher;
const boxes=Object.fromEntries(main.boxes.map(x=>[x.box.id,x.box]));
const rp=boxes['sinusoids-audio-rendering-v20'].patcher,lines=rp.lines.map(x=>x.patchline);
eq(rp.boxes.filter(x=>x.box.text==='sinusoids~').length,24,'24 physical A/B banks');
for(let n=1;n<=12;n++){
 const pad=String(n).padStart(2,'0');
 for(const id of ['lane-'+pad,'bank-b-'+pad])ok(lines.some(l=>l.source[0]===id&&l.destination[0]==='lane-env-mult-'+pad&&l.destination[1]===0),'both banks share lane ADSR');
 ok(lines.some(l=>l.source[0]==='lane-route'&&l.source[1]===n+11&&l.destination[0]==='bank-b-'+pad),'bank B route outlet');
}
eq(boxes['opt-limit'].items,['64',',','128',',','256'],'limit menu order');
eq(boxes['opt-distribution'].items.filter(x=>x!==','),['one-to-one','even num partials','odd num partials','prime multiples'],'distribution menu order');
eq(boxes['opt-limit-init'].text,'loadmess 1','128 is startup default');
eq(boxes['opt-distribution-init'].text,'loadmess 0','linear is startup default');
const report={result:'PASS',assertions:checks,render_budgets:budgets,scenarios:['all five spatial assignment plans','source counts below and above limit','independent bank clearing','unchanged-message suppression','150 ms budget ramps and reversal','hidden-memory recovery','stable sounding slots','legacy engine import','four harmonic mappings and anchors','maximum prime offset','generator/transform/crossfade/render integration','rapid sequence changes','alias filtering','Auto Level budget','24-bank saved audio graph'],limitations:['Runs actual classic JS with modeled Tasks/time and inspects saved Max graph. Native sinusoids~ DSP, CPU measurement, phase continuity and listening require Max.','Slot holes are retained to preserve sounding identities; distribution changes can temporarily or persistently leave extra zero slots until the bank becomes idle. Render statistics report actual native slots.']};
fs.writeFileSync(path.join(__dirname,'lowcpu-results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));

module.exports={engine,advance,nativeModels,slots,root};
