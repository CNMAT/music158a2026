const layout=require('./package_layout_v23.cjs');
/* v23 preset roundtrip tests. Actual controller and engines; native objects and Tasks are simulated. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..');let checks=0,clock=1000000;
const ok=(v,m)=>{assert.ok(v,m);checks++;};
const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
const read=n=>layout.readFileSync(path.join(root,n),'utf8');const patch=n=>JSON.parse(read(n)).patcher;
const main=patch('_ec_sinusoids_synth_v23.maxpat');
const M=JSON.parse(layout.readFileSync(path.join(__dirname,'preset_manifest_v23.json')));
const legacyJSON={stringify:JSON.stringify,parse(s){if(!/^\s*[\[{]/.test(String(s)))throw new Error('JSON.parse');return JSON.parse(s);}};
const dictStore=new Map();let dictOperations=0,engineRequests=0;
function Dict(name){
 name=String(name);if(!dictStore.has(name))dictStore.set(name,{refs:0,values:{}});
 const peer=dictStore.get(name);peer.refs++;let freed=false;
 this.set=(key,v)=>{assert.ok(typeof v==='number'||typeof v==='string','dictionary atom is scalar');if(typeof v==='string'){assert.ok(v.length<=481,'bounded dictionary string');assert.ok(/^[A-Za-z0-9+/=]+$/.test(v),'dictionary text carries no JSON quoting or whitespace');}peer.values[key]=v;dictOperations++;};
 this.get=key=>Object.hasOwn(peer.values,key)?[peer.values[key]]:undefined;this.contains=key=>Object.hasOwn(peer.values,key)?1:0;
 this.clear=()=>{peer.values={};};
 this.freepeer=()=>{assert.ok(!freed,'dictionary freed only once');freed=true;if(--peer.refs===0)dictStore.delete(name);};
}
function engine(kind,ns='101',filename){
 const events=[],buses=[],tasks=[];
 function Clock(){this.getTime=()=>clock;}
 function Task(fn,owner,...args){this.active=false;this.repeat=()=>{this.active=true;};this.schedule=()=>{this.active=true;};this.cancel=()=>{this.active=false;};this.fire=()=>{this.active=false;return fn.apply(owner,args);};tasks.push(this);}
 const c={JSON:legacyJSON,Dict,Task,Date:Clock,jsarguments:['script',ns],inlet:0,outlet:(...a)=>events.push(a),arrayfromargs:a=>Array.from(a),messnamed:(...a)=>{buses.push(a);if(a[0]==='Synth_Control_v23'&&a[1]==='_morphfault'&&ctx)ctx._morphfault(...a.slice(2));},error:m=>{throw Error(m);}};
 vm.createContext(c);vm.runInContext(read(filename),c,{filename});c.events=events;c.buses=buses;c.tasks=tasks;return c;
}
let ctx;const outputs=[],busEvents=[],messages=[],objects={};
function native(b){return {valid:true,b,value:b.maxclass==='function'?[0,0,1000,0]:b.maxclass==='multislider'?Array(b.size||48).fill(.25):b.maxclass==='kslider'?-1:b.maxclass==='live.gain~'?-70:0,attrs:{domain:b.domain||1000,size:b.size||48},getvalueof(){return this.value;},getattr(k){return this.attrs[k];},setattr(k,v){this.attrs[k]=v;},setvalueof(...v){this.value=v.length===1?v[0]:v;},message(...a){
 if(b.maxclass==='function'&&a[0]==='dump'){
  const key=Object.keys(objects).find(k=>objects[k]===this);
  for(let j=0;j<this.value.length;j+=2)ctx._curvepoint(key,this.value[j],this.value[j+1]);return;
 }
 if(b.maxclass==='function'&&a[0]==='clear'){this.value=[];return;}
 if(b.maxclass==='function'&&a[0]==='list'){this.value.push(Number(a[1]),Number(a[2]));return;}
 messages.push([b.varname,...a]);if(a[0]==='set')this.value=a.length===2?a[1]:a.slice(1);else if(a[0]==='int'||a[0]==='float')this.value=Number(a[1]);else if(a[0]==='bang'&&b.maxclass==='toggle')this.value=Number(this.value)?0:1;},subpatcher(){return this.sub;}};}
function hierarchy(p,prefix=[]){const map={};for(const {box:b}of p.boxes){const o=native(b),key=[...prefix,b.varname].join('/');if(b.varname){map[b.varname]=o;objects[key]=o;}if(b.patcher)o.sub=hierarchy(b.patcher,[...prefix,b.varname]);else if(b.maxclass==='bpatcher')o.sub=hierarchy(patch(b.name),[...prefix,b.varname]);else if(b.maxclass==='newobj'&&b.text&&layout.existsSync(path.join(root,b.text.split(' ')[0]+'.maxpat')))o.sub=hierarchy(patch(b.text.split(' ')[0]+'.maxpat'),[...prefix,b.varname]);}return{getnamed(n){return map[n];}};}
const host=hierarchy(main);
const liveEngines={};
for(const m of M.engines){
 const box=objects[m.path.join("/")].b;
 const filename=box.saved_object_attributes?.filename||box.text.split(/\s+/)[1];
 const e=engine(m.kind,'101',filename);liveEngines[m.key]=e;
 eq(e.EC_PRESET_KIND,m.kind,'actual saved script has expected preset kind: '+m.key);
 ok(typeof e.ecpreset==='function'&&!e.ecpreset.local,'actual saved script exposes public preset endpoint: '+m.key);
 // Reproduce the host boundary: direct access is unavailable and must never be used.
 Object.defineProperty(objects[m.path.join("/")],'js',{get(){throw new Error('Maxobj.js access forbidden in regression test');}});
 objects[m.path.join("/")].message=function(selector,...args){
  engineRequests++;const fn=e[selector];
  if(typeof fn==='function'&&!fn.local){e.inlet=0;return fn.apply(e,args);}
  if(e.anything){e.messagename=selector;return e.anything.apply(e,args);}
 };
}

const modelSpec=M.engines.find(e=>e.kind==='model'),memorySpec=M.engines.find(e=>e.kind==='partial_memory');
const model=liveEngines[modelSpec.key],memory=liveEngines[memorySpec.key];
// Emulate the native callbacks which are significant during full-synth recall.
function callback(key,fn){const o=objects[key],old=o.message;o.message=function(s,...a){old.call(this,s,...a);if(s==='bang'||s==='int'||s==='float')fn(this.value,s);};}
callback('ec_opt_distribution',v=>model.distribution(Number(v)));
let masterWrites=0;const dacKeys=M.ui.filter(m=>m.type==='live.gain~').map(m=>m.key);
callback('ec_obj_74',v=>{masterWrites++;for(const k of dacKeys)if(k!=='ec_obj_74')objects[k].value=v;});
let fullMode=-1,fullRange=[2000,10000];const automixEvents=[];
const collStores={};for(const m of M.colls){collStores[m.key]=[{key:1,values:[.2,.4,.3]},{key:'custom',values:[.1,.8,.1]}];objects[m.path.join('/')].message=function(sel,...a){if(sel==='dump'){for(const x of collStores[m.key]){ctx._collkey(m.key,x.key);ctx._colldata(m.key,...x.values);}ctx._colldone(m.key);}else if(sel==='clear')collStores[m.key]=[];else if(sel==='store')collStores[m.key].push({key:a[0],values:a.slice(1)});};}
const tasks=[];function Task(fn,owner,...args){this.active=false;this.schedule=()=>{this.active=true;};this.cancel=()=>{this.active=false;};this.fire=()=>{this.active=false;fn.apply(owner,args);};tasks.push(this);}
function ControllerClock(){this.getTime=()=>clock;}
ctx={Date:ControllerClock,JSON:legacyJSON,patcher:host,Dict,Task,jsarguments:['controller'],arrayfromargs:a=>Array.from(a),messnamed:(...a)=>{busEvents.push(a);if(a[0]==='Automixer_v23'){automixEvents.push(a);if(a[1]==='range'){fullRange=a.slice(2);objects.ec_am_ui_min.value=a[2];objects.ec_am_ui_max.value=a[3];}if(a[1]==='mode'){fullMode=a[2];objects.ec_am_ui_mode.value=fullMode;}}},outlet:(...a)=>outputs.push(a)};
vm.createContext(ctx);vm.runInContext(read('synth_controller_v23.js'),ctx);
Object.assign(objects.ec_am_ui_min,{value:2000});Object.assign(objects.ec_am_ui_max,{value:10000});Object.assign(objects.ec_am_ui_grain,{value:20});
ctx.loadbang();eq(ctx.gainValue,1,'unity startup preserves full v20 balance');ctx.check();eq(outputs.at(-1)[1],['preset_bridge_ok',25,'engines'],'all actual engine scripts reply through public Dict endpoint');
ctx.gain(.35);eq(objects.ec_ec_gain_slider.value,.35,'gain slider follows addressed gain');ctx.gain(9);eq(ctx.gainValue,1,'gain clipped');ctx.gaindb(-20);ok(Math.abs(ctx.gainValue-.1)<1e-12,'dB gain converts to linear');
ctx.note(60,90);eq(outputs.at(-2),[2,[60,90]],'note routing');let n=outputs.length;ctx.note(60,0);eq(outputs.length,n,'velocity-zero notes ignored');ctx.note(-1,10);eq(outputs.at(-1)[1][0],'error','bad note rejected');
ctx.control('Partial_Distribution',3);eq(busEvents.at(-1),['Partial_Distribution_v23',3],'sequence bus v23');ctx.control('Partial_Distribution',4);eq(outputs.at(-1)[1][0],'error','bad sequence rejected');ctx.control('Render_Limit',64);eq(outputs.at(-1)[1][0],'error','no render limit API');
ctx._count(256);eq(ctx.activeCount,256,'full 256 UI supported');ctx._count(999);eq(ctx.activeCount,256,'only original ceiling 256');ctx._count(32);
// Capture rich custom state, then mutate it before recall.
memory.memory[0][255]=-.625;memory.memory[1][255]=.375;memory.memory[2][255]=.75;memory.anchorScale=.4;
objects.ec_opt_distribution.value=3;model.distribution(3);
for(let i=0;i<12;i++){const m=M.ui.find(x=>x.path.includes('ec_lane_bpatch_'+String(i+1).padStart(2,'0'))&&x.path.at(-1)==='ec_delay_ms');objects[m.path.join('/')].value=i*125;}
objects.ec_am_ui_mode.value=1;objects.ec_am_ui_min.value=30000;objects.ec_am_ui_max.value=50000;objects.ec_am_ui_wait.value=1500;objects.ec_am_ui_peak.value=1;objects.ec_am_ui_grain.value=25;
for(let i=0;i<dacKeys.length;i++)objects[dacKeys[i]].value=-12-i;
const messageCount=messages.length,busCount=busEvents.length;ctx.dump();ok(outputs.some(x=>x[0]===0),'dump emitted');eq(messages.length,messageCount,'capture does not output/change UI');eq(busEvents.length,busCount,'capture does not send sound controls');
let dumped=outputs.filter(x=>x[0]===0).at(-1)[1];eq(dumped.slice(0,3),['set','preset',2],'passive set message protocol');ok(dumped.slice(4).every(x=>x.length<=513&&x[0]==='p'),'bounded Base64 chunks');
const saved=JSON.parse(JSON.stringify(ctx.captured));eq(saved.format,'ec_cnmat_sinusoids_full_v23','full version-specific schema');eq(Object.keys(saved.ui).length,227,'full UI controls');eq(Object.keys(saved.engines).length,25,'25 engines');eq(Object.keys(saved.colls).length,14,'14 user stores');
const lines=main.lines.map(x=>x.patchline);ok(lines.some(l=>l.source[0]==='ec-controller'&&l.source[1]===0&&l.destination[0]==='v23-preset-message'&&l.destination[1]===0),'dump goes to message left inlet');ok(lines.some(l=>l.source[0]==='v23-preset-message'&&l.destination[0]==='ec-controller'),'click recalls stored message');
const clicked=Array.from(dumped).slice(1);eq(clicked[0],'preset','stored box drops set selector');
const broken=Array.from(dumped).slice(2);broken[1]='h000';n=messages.length;ctx.preset(...broken);ok(!ctx.restoreBusy,'checksum rejected');eq(messages.length,n,'invalid checksum never changes UI');
for(const [key,value] of [['ec_am_ui_mode',4],['ec_am_ui_min',0],['ec_am_ui_grain',1001],['ec_am_ui_peak',2],['ec_obj_74',20],['ec_opt_distribution',4]]){const bad=JSON.parse(JSON.stringify(saved));bad.ui[key].value=value;let denied=false;try{ctx.validate(bad);}catch(e){denied=true;}ok(denied,'invalid added field rejected '+key);}
const low=JSON.parse(JSON.stringify(saved));low.format='ec_cnmat_sinusoids';let denied=false;try{ctx.validate(low);}catch(e){denied=true;}ok(denied,'lowcpu schema not falsely accepted');
const beforeMode=automixEvents.length;
memory.memory[0][255]=0;memory.memory[1][255]=0;memory.memory[2][255]=0;objects.ec_syn_base.value=999;ctx.gain(.8);objects.ec_am_ui_min.value=100;objects.ec_am_ui_max.value=1000;objects.ec_am_ui_mode.value=0;
ctx[clicked[0]](...clicked.slice(1));ok(ctx.restoreBusy,'recall mutes before scheduled restore');eq(busEvents.slice(-3).map(x=>x[0]),['ec-gain-value_v23','ADSR_12_Lanes_Stop_v23','Envelope_Loop_v23'],'mute and stop ordering');
n=outputs.filter(x=>x[0]===2).length;ctx.note(72,100);eq(outputs.filter(x=>x[0]===2).length,n,'notes rejected during restore');
ctx.muteTask.fire();ctx.unmuteTask.fire();ok(outputs.some(x=>x[0]===1&&x[1][0]==='recalled'),'recall completes');eq(ctx.gainValue,.1,'gain restored');eq(memory.memory.map(x=>x[255]),[-.625,.375,.75],'three hidden slots restored');eq(memory.anchorScale,.4,'anchor scale restored');eq(objects.ec_syn_base.value,saved.ui.ec_syn_base.value,'scalar restored');eq(collStores,saved.colls,'all user stores restored');eq(fullRange,[30000,50000],'range restored atomically');eq(fullMode,1,'mode restored last');eq(automixEvents.slice(beforeMode).slice(-2).map(x=>x[1]),['range','mode'],'automix recall order');
for(const k of dacKeys)eq(objects[k].value,saved.ui[k].value,'individual DAC fader survives master fanout '+k);ok(masterWrites>0,'master callback tested');
for(const m of M.ui.filter(x=>x.path.at(-1)==='ec_delay_ms'))eq(objects[m.path.join('/')].value,saved.ui[m.key].value,'DEL recalled '+m.key);
ok(!busEvents.some(x=>x[0]==='ADSR_12_Lanes_Global_Trigger_v23'),'recall does not start envelopes');
// Bridge failures report rather than dump incomplete state. A failed import rolls back.
const memoryObject=objects[memorySpec.path.join('/')],oldMessage=memoryObject.message;
memoryObject.message=()=>{};let failed=false;try{ctx.engineCall(memorySpec,'export');}catch(e){failed=e.message.includes(memorySpec.key);}ok(failed,'missing endpoint identified');memoryObject.message=oldMessage;
const originalImport=memory.ec_import;let failOnce=true;memory.ec_import=function(d){if(failOnce){failOnce=false;throw new Error('injected import failure');}return originalImport(d);};
ctx.preset(...Array.from(dumped).slice(2));ctx.muteTask.fire();ctx.unmuteTask.fire();ok(outputs.some(x=>x[0]===1&&x[1][0]==='rollback'),'import fault rolls back');ok(!ctx.restoreBusy,'rollback releases mute lock');memory.ec_import=originalImport;
for(const s of ['','a','ab','abc','{"x":"\\u00e9"}'])eq(ctx.decode(ctx.encode(s)),s,'codec roundtrip');eq(dictStore.size,0,'all temporary dictionary peers released');ok(engineRequests>100,'public engine dispatch exercised');
const report={status:'PASS',checks,controls:M.ui.length,engines:M.engines.length,user_stores:M.colls.length,engine_requests:engineRequests,dict_operations:dictOperations,limitations:['Actual v23 JS and manifest with simulated native UI, message outlets and Tasks. No DSP or native GUI execution.']};fs.writeFileSync(path.join(__dirname,'preset_results_v23.json'),JSON.stringify(report,null,2));console.log(JSON.stringify(report,null,2));
module.exports={root,main,ctx,objects,outputs,busEvents,liveEngines,M,messages,collStores,setClock(t){clock=t;},getClock(){return clock;},saved};
