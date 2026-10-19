/* Source/graph tests with simulated Max messages, UI objects and Tasks.
   This is not a Max/MSP DSP or native GUI test. Run: node diagnostics/validate.cjs
   Optional: append a text-file path containing a complete preset or set preset. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..');let checks=0,clock=1000000;
const ok=(v,m)=>{assert.ok(v,m);checks++;};const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
// Script-harness lookup only; paths.cjs separately audits each owning patch file.
const resolve=name=>{const n=name.replace(/^Patcher:\//,'');return fs.existsSync(path.join(root,n))?path.join(root,n):path.join(root,'dependencies',n);};
const read=n=>fs.readFileSync(resolve(n),'utf8');const patch=n=>JSON.parse(read(n)).patcher;
const helpFile=fs.readdirSync(root).find(n=>n.endsWith('.maxhelp'));
const main=patch('ec_cnmat_sinusoids_lowcpu_abs~.maxpat');const files=fs.readdirSync(root).concat(fs.readdirSync(path.join(root,'dependencies')).map(n=>'dependencies/'+n));
let boxes=0,ports=0,scoped=0,dependencies=new Set(),namespaces=new Set();
function graph(p,name){
 const ids=new Map(p.boxes.map(x=>[x.box.id,x.box]));ok(ids.size===p.boxes.length,name+' IDs unique');
 const vars=p.boxes.map(x=>x.box.varname).filter(Boolean);ok(new Set(vars).size===vars.length,name+' scripting names unique');
 for(const {patchline:l} of p.lines||[]){for(const side of ['source','destination']){const b=ids.get(l[side][0]);ok(b,name+' cord endpoint exists');const count=side==='source'?b.numoutlets:b.numinlets;if(count!==undefined)ok(l[side][1]<count,name+' valid '+side+' port '+l[side]);ports++;}}
 for(const {box:b}of p.boxes){boxes++;const t=b.text||'';
  ok(b.maxclass!=='live.gain~'&&!/^(dac~|ezdac~|notein|midiinfo|automatic_lines)\b/.test(t),'removed hardware/mixer object');
  ok(!/Automixer|automatic_lines/.test(t),'no mixer remnants');
  if(/^(send|receive|send~|receive~|forward|s|r) /.test(t)){ok(/^\S+ #[01]-ec-cnmat-sinusoids-opt_/.test(t),'scoped bus '+t);scoped++;}
  if(/^coll [^@]/.test(t))ok(/^coll #[01]-ec-cnmat-sinusoids-opt_/.test(t),'scoped collection');
  if(t.startsWith('js ')){dependencies.add(t.split(' ')[1]);ok(/ #[01]$/.test(t),'JS namespace argument');}
  if(b.filename?.endsWith('.js'))dependencies.add(b.filename);
  if(b.maxclass==='bpatcher'){dependencies.add(b.name);eq(b.args,['#0'],'parent namespace passed to lane');}
  ok(!/v20/.test(t)||b.maxclass==='comment','no old runtime name '+t.slice(0,100));
  if(b.patcher)graph(b.patcher,name+'/'+b.id);
 }
}
for(const n of files.filter(n=>n.endsWith('.maxpat')))graph(patch(n),n);
for(const n of dependencies)ok(fs.existsSync(resolve(n)),'local dependency '+n);
// Native saves may serialize automatic port indices as zero. Check actual
// left-to-right geometry, allowing either automatic or explicit indices.
function orderedPorts(p,type){return p.boxes.map(x=>x.box).filter(b=>b.maxclass===type).sort((a,b)=>a.patching_rect[0]-b.patching_rect[0]);}
const out=orderedPorts(main,'outlet');eq(out.map(b=>b.id),Array.from({length:15},(_,i)=>'ec-out-'+(i+1)),'15 correctly ordered outlets');
for(let i=0;i<out.length;i++)ok(!out[i].index||out[i].index===i+1,'automatic or matching explicit outlet index');
eq(orderedPorts(main,'inlet').map(b=>b.id),['ec-in','ec-gain-in'],'control then gain inlet');
const M=JSON.parse(fs.readFileSync(path.join(__dirname,'preset-manifest.json'),'utf8'));
// Fault model: a container-only JSON parser and a host dictionary boundary
// returning single atoms as one-item lists. This is a compatibility stress
// test, not a claim that every Max version has these behaviors.
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
function engine(kind,ns='101',filename='ec_cnmat_sinusoids_opt_'+kind+'.js'){
 const events=[],buses=[],tasks=[];
 function Clock(){this.getTime=()=>clock;}
 function Task(fn,owner,...args){this.active=false;this.repeat=()=>{this.active=true;};this.schedule=()=>{this.active=true;};this.cancel=()=>{this.active=false;};this.fire=()=>{this.active=false;return fn.apply(owner,args);};tasks.push(this);}
 const c={JSON:legacyJSON,Dict,Task,Date:Clock,jsarguments:['script',ns],inlet:0,outlet:(...a)=>events.push(a),arrayfromargs:a=>Array.from(a),messnamed:(...a)=>buses.push(a),error:m=>{throw Error(m);}};
 vm.createContext(c);vm.runInContext(read(filename),c,{filename});c.events=events;c.buses=buses;c.tasks=tasks;return c;
}
for(const kind of new Set(M.engines.map(e=>e.kind))){
 const e=engine(kind);const d=e.ec_export();ok(e.ec_validate(d),kind+' validates own exported defaults');e.ec_import(d);e.ec_emit();const bad=JSON.parse(JSON.stringify(d));bad.unexpected=0;ok(!e.ec_validate(bad),kind+' rejects unexpected fields');
}
const a=engine('partial_memory','101'),b=engine('partial_memory','202');
a.inlet=10;a.partialvalue(0,256,-0.625);a.partialvalue(1,256,.375);a.partialvalue(2,256,.75);a.anchorscale(.4);
const state=a.ec_export();a.memory[0][255]=0;a.ec_import(state);a.ec_emit();eq(a.memory[0][255],-.625,'hidden 256th partial restored');eq(a.memory[1][255],.375,'hidden amplitude restored');eq(a.anchorScale,.4,'absolute anchor gain restored');
a.anchormirror(1);b.anchormirror(0);ok(a.buses.every(x=>x[0].startsWith('101-ec-cnmat-sinusoids-opt_')),'instance A names');ok(b.buses.every(x=>x[0].startsWith('202-ec-cnmat-sinusoids-opt_')),'instance B names');
const gainEngine=engine('auto_level');gainEngine.referencePower=.012345;gainEngine.referenceReady=true;const gl=gainEngine.ec_export();gainEngine.referencePower=.9;gainEngine.ec_import(gl);eq(gainEngine.referencePower,.012345,'reference power restored');
// Full controller: actual JS engines and a simulated native object hierarchy.
let ctx;const outputs=[],busEvents=[],messages=[],objects={};
function native(b){return {valid:true,b,value:b.maxclass==='function'?[0,0,1000,0]:b.maxclass==='multislider'?Array(b.size||48).fill(.25):b.maxclass==='kslider'?-1:0,attrs:{domain:b.domain||1000,size:b.size||48},getvalueof(){return this.value;},getattr(k){return this.attrs[k];},setattr(k,v){this.attrs[k]=v;},setvalueof(...v){this.value=v.length===1?v[0]:v;},message(...a){messages.push([b.varname,...a]);if(a[0]==='set')this.value=a.length===2?a[1]:a.slice(1);else if(a[0]==='int'||a[0]==='float')this.value=Number(a[1]);else if(a[0]==='bang'&&b.maxclass==='toggle')this.value=Number(this.value)?0:1;},subpatcher(){return this.sub;}};}
function hierarchy(p,prefix=[]){const map={};for(const {box:b}of p.boxes){const o=native(b),key=[...prefix,b.varname].join('/');if(b.varname){map[b.varname]=o;objects[key]=o;}if(b.patcher)o.sub=hierarchy(b.patcher,[...prefix,b.varname]);else if(b.maxclass==='bpatcher')o.sub=hierarchy(patch(b.name),[...prefix,b.varname]);}return{getnamed(n){return map[n];}};}
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
for(const key of ['ec_opt_limit','ec_opt_distribution']){
 const o=objects[key],original=o.message;
 o.message=function(sel,...a){
  original.call(this,sel,...a);
  if(sel!=='bang'&&sel!=='int')return;
  const v=Array.isArray(this.value)?this.value[0]:this.value;
  if(key==='ec_opt_limit'){
   liveEngines[M.engines.find(x=>x.kind==='groups').key].renderlimit([64,128,256][v]);
   liveEngines[M.engines.find(x=>x.kind==='auto_level').key].renderlimit([64,128,256][v]);
  }else liveEngines[M.engines.find(x=>x.kind==='model').key].distribution(v);
 };
}
const collStores={};for(const m of M.colls){collStores[m.key]=[{key:1,values:[.2,.4,.3]},{key:'custom',values:[.1,.8,.1]}];objects[m.path.join('/')].message=function(sel,...a){if(sel==='dump'){for(const x of collStores[m.key]){ctx._collkey(m.key,x.key);ctx._colldata(m.key,...x.values);}ctx._colldone(m.key);}else if(sel==='clear')collStores[m.key]=[];else if(sel==='store')collStores[m.key].push({key:a[0],values:a.slice(1)});};}
const tasks=[];function Task(fn,owner,...args){this.active=false;this.schedule=()=>{this.active=true;};this.cancel=()=>{this.active=false;};this.fire=()=>{this.active=false;fn.apply(owner,args);};tasks.push(this);}
ctx={JSON:legacyJSON,patcher:host,Dict,Task,jsarguments:['controller','101'],arrayfromargs:a=>Array.from(a),messnamed:(...a)=>busEvents.push(a),outlet:(...a)=>outputs.push(a),include:n=>vm.runInContext(read(n),ctx)};
vm.createContext(ctx);vm.runInContext(read('ec_cnmat_sinusoids_opt_controller.js'),ctx);
ctx.loadbang();eq(outputs.at(-1)[1],['ready','gain',0.1,'build','2.4-lowcpu'],'repair build identifies itself');ctx.check();ok(outputs.at(-1)[1][0]==='preset_bridge_ok','all 25 message endpoints respond with private JS access blocked');eq(ctx.gainValue,.1,'default gain');ctx.gain(.35);eq(objects.ec_ec_gain_slider.value,.35,'slider follows addressed gain');ctx.gain(9);eq(ctx.gainValue,1,'gain clipped');ctx.gain(.1);
ctx.note(60,90);eq(outputs.at(-2),[2,[60,90]],'note uses keyboard-routing outlet');const count=outputs.length;ctx.note(60,0);eq(outputs.length,count,'note-offs ignored');ctx.note(-1,10);ok(outputs.at(-1)[1][0]==='error','invalid note rejected');
const messageCount=messages.length,busCount=busEvents.length;ctx.dump();ok(outputs.some(x=>x[0]===0),'dump emitted');eq(messages.length,messageCount,'dump does not output or change UI');eq(busEvents.length,busCount,'dump does not send sound controls');
let dumped=outputs.filter(x=>x[0]===0).at(-1)[1];eq(dumped.slice(0,3),['set','preset',3],'message-box set protocol');ok(dumped.slice(4).every(x=>x.length<=513&&x[0]==='p'),'bounded symbol chunks');
// Exercise the actual example wiring. A right-inlet connection stores the
// selector 'set' literally, so merely testing dump.slice(2) misses this defect.
function messageBoxInput(atoms,inlet){
 if(inlet===1)return {stored:Array.from(atoms),output:[]};
 if(atoms[0]==='set')return {stored:Array.from(atoms).slice(1),output:[]};
 throw new Error('This test models only dump storage, not arbitrary Max messages');
}
function exampleRecall(file,synth,box,atoms){
 const p=patch(file),lines=p.lines.map(x=>x.patchline);
 const outgoing=lines.filter(l=>l.source[0]===synth&&l.source[1]===13);
 eq(outgoing.length,1,file+' has one preset-output connection');
 const target=p.boxes.find(x=>x.box.id===outgoing[0].destination[0]).box;
 let input=outgoing[0],targetID=box;
 if(target.patcher){
  const child=target.patcher,cords=child.lines.map(x=>x.patchline);
  const inlet=orderedPorts(child,'inlet')[0];
  const outlet=orderedPorts(child,'outlet')[0];
  eq(outgoing[0].destination[1],0,'preset subpatch inlet');
  input=cords.find(l=>l.source[0]===inlet.id&&l.source[1]===0);
  ok(cords.some(l=>l.source[0]===box&&l.source[1]===0&&l.destination[0]===outlet.id&&l.destination[1]===0),'preset box returns to subpatch outlet');
  ok(child.boxes.some(x=>x.box.id===box&&x.box.maxclass==='message'),'nested preset target is a message box');
  targetID=target.id;
 }else ok(target.maxclass==='message','preset target is a message box');
 eq(input.destination,[box,0],file+' preset output goes to message LEFT inlet');
 ok(lines.some(l=>l.source[0]===targetID&&l.source[1]===0&&l.destination[0]===synth&&l.destination[1]===0),file+' click returns to abstraction inlet 1');
 const received=messageBoxInput(atoms,input.destination[1]);
 eq(received.output,[],file+' dump fills message silently');
 eq(received.stored[0],'preset',file+' click emits preset selector');
 return received.stored;
}
const clickedPreset=exampleRecall(helpFile,'synth','preset',dumped);
for(const suffix of ['A','B'])eq(exampleRecall('diagnostics/ec_cnmat_sinusoids_opt_isolation.maxpat','s'+suffix,'p'+suffix,dumped),clickedPreset,'isolation example uses same storage protocol');
eq(messageBoxInput(dumped,1).stored[0],'set','fault model reproduces literal set from a right-inlet connection');
const saved=JSON.parse(JSON.stringify(ctx.captured));
// Validate JSON fidelity for nested arrays, nulls, booleans and hidden values.
const memorySpec=M.engines.find(e=>e.kind==='partial_memory');
const memoryEngine=liveEngines[memorySpec.key];
memoryEngine.memory[0][255]=-.625;memoryEngine.memory[2][255]=.42;
const transported=ctx.engineCall(memorySpec,'export');
eq(transported.memory[0][255],-.625,'dictionary transfer preserves signed hidden slot');
eq(transported.anchorMirror,false,'dictionary transfer preserves booleans');
const offsetSpec=M.engines.find(e=>e.kind==='offset');eq(ctx.engineCall(offsetSpec,'export').queuedModel,null,'dictionary transfer preserves null');
const importState=JSON.parse(JSON.stringify(transported));importState.memory[0][255]=-.375;
ctx.engineCall(memorySpec,'import',importState);eq(memoryEngine.memory[0][255],-.375,'message-based import');
// A missing endpoint must report its path and must never emit an incomplete dump.
const savedMessage=objects[memorySpec.key].message;objects[memorySpec.key].message=function(){};
let rejectedMissing=false;try{ctx.engineCall(memorySpec,'export');}catch(e){rejectedMissing=e.message.includes(memorySpec.key);}
ok(rejectedMissing,'missing endpoint identifies object');objects[memorySpec.key].message=savedMessage;
const savedEndpoint=memoryEngine.ecpreset;memoryEngine.ecpreset=function(name){const q=new Dict(name);memoryEngine.ec_wireWrite(q,'response',{protocol:1,sequence:-1,kind:'partial_memory',ok:true,data:{}});q.freepeer();};
let rejectedReply=false;try{ctx.engineCall(memorySpec,'export');}catch(e){rejectedReply=e.message.includes('Mismatched');}
ok(rejectedReply,'stale or mismatched reply rejected');memoryEngine.ecpreset=savedEndpoint;
const damaged=Array.from(dumped).slice(2);damaged[1]='h000';ctx.preset(...damaged);ok(!ctx.restoreBusy,'checksum failure makes no mutation');
objects.ec_syn_base.value=999;ctx.gain(.8);ctx[clickedPreset[0]](...clickedPreset.slice(1));ok(ctx.restoreBusy,'click through help wiring mutes and schedules recall');ctx.muteTask.fire();ctx.unmuteTask.fire();eq(ctx.gainValue,.1,'gain recalled');eq(objects.ec_syn_base.value,saved.ui.ec_syn_base.value,'UI scalar recalled');eq(collStores.c0,saved.colls.c0,'user collection recalled');ok(outputs.some(x=>x[0]===1&&x[1][0]==='recalled'),'successful recall status');
ctx.control('Source_Base_Hz',220);eq(busEvents.at(-1),['101-ec-cnmat-sinusoids-opt_Source_Base_Hz',220],'instance-local control forwarding');
// Unicode and partial final Base64 blocks, plus schema rejection before mutation.
for(const s of ['','a','ab','abc','{"x":"\\u00e9"}'])eq(ctx.decode(ctx.encode(s)),s,'codec roundtrip');
const invalid=JSON.parse(JSON.stringify(saved));invalid.engines[Object.keys(invalid.engines)[0]].componentCount=99999;let rejected=false;try{ctx.validate(invalid);}catch{rejected=true;}ok(rejected,'invalid engine bounds rejected');
for(const n of files.filter(x=>x.endsWith('.js')))new vm.Script(read(n),{filename:n});
ok(!/\.js\.ec_/.test(read('ec_cnmat_sinusoids_opt_controller.js')),'controller has no cross-object JS function calls');
eq(dictStore.size,0,'all temporary dictionaries released on success and failure');
ok(engineRequests>100,'full controller uses message dispatch for capture validation and recall');
// Namespace isolation is enforced by the engine endpoint, even for a wrong target.
const wrong=new Dict('202-ec-cnmat-sinusoids-opt_preset-transfer-1');a.ec_wireWrite(wrong,'request',{protocol:1,sequence:1,kind:'partial_memory',action:'export'});
a.ecpreset('202-ec-cnmat-sinusoids-opt_preset-transfer-1');
const denial=a.ec_wireRead(wrong,'response');
ok(denial.ok===false&&denial.error.includes('namespace mismatch'),'instance A explicitly rejects B dictionary');
ok(!Object.hasOwn(denial,'data'),'foreign instance receives no preset data');wrong.freepeer();
// Report all failures in one check, distinguishing a silent endpoint from an
// instance namespace mismatch. Neither ping may change an engine's state.
const morphSpec=M.engines.find(e=>e.key==='ec_obj_21/ec_adsr_morph_engine');
const morph=liveEngines[morphSpec.key],savedNS=morph.EC_NS;
morph.EC_NS='202-ec-cnmat-sinusoids-opt_';
const modelSpec=M.engines.find(e=>e.kind==='model');
const modelMessage=objects[modelSpec.key].message;objects[modelSpec.key].message=function(){};
const checkStart=outputs.length;ctx.check();
const failures=outputs.slice(checkStart);
ok(failures.some(x=>x[1][0]==='error'&&x[1][1].includes(morphSpec.key)&&x[1][1].includes('namespace mismatch')),'check identifies mismatched instance');
ok(failures.some(x=>x[1][0]==='error'&&x[1][1].includes(modelSpec.key)&&x[1][1].includes('No preset reply')),'check continues to missing handler');
eq(failures.at(-1)[1],['preset_bridge_failed',2,'of',25,'engines'],'check reports total failures');
morph.EC_NS=savedNS;objects[modelSpec.key].message=modelMessage;
ctx.check();eq(outputs.at(-1)[1],['preset_bridge_ok',25,'engines'],'all endpoints recover after diagnostics');
eq(dictStore.size,0,'diagnostic success and failure release dictionaries');
// Ordinary numeric/string UI values no longer pass through JSON.parse.
let rejectsScalar=false;try{legacyJSON.parse(JSON.stringify(0));}catch{rejectsScalar=true;}
ok(rejectsScalar,'fault model reproduces the old scalar clone failure');
for(const value of [0,-.625,1e-12,true,false,null,'quoted "text"\nUnicode: é 音 🎵'])eq(ctx.clone(value),value,'direct value copy preserves scalar');
const nested={a:[1,null,false,[],{s:'"\\\n音'}]};const copied=ctx.clone(nested);copied.a[4].s='changed';ok(nested.a[4].s!=='changed','deep copy shares no nested object');
// Long payloads, escaping and Unicode cross only bounded dictionary atoms.
const wire=new Dict('101-ec-cnmat-sinusoids-opt_preset-transfer-999999');
const payload={text:('quotes " backslash \\ newline\n é 音 🎵 ').repeat(2500),nested:[true,false,null,[1,-.625,0]]};
ctx.ec_wireWrite(wire,'probe',payload);eq(ctx.ec_wireRead(wire,'probe'),payload,'large Unicode and escaped payload survives chunks');
const first=ctx.ec_wireAtom(wire,'probe_0');wire.set('probe_0',first.slice(0,-1));
let truncated=false;try{ctx.ec_wireRead(wire,'probe');}catch(e){truncated=e.message.includes('truncated chunk 0');}ok(truncated,'truncated chunk identified before JSON parse');
wire.set('probe_0','p'+(first[1]==='A'?'B':'A')+first.slice(2));
let corrupt=false;try{ctx.ec_wireRead(wire,'probe');}catch(e){corrupt=e.message.includes('checksum mismatch');}ok(corrupt,'same-length corruption rejected by checksum');
wire.set('probe_0',first);wire.set('probe_ready',0);
let incomplete=false;try{ctx.ec_wireRead(wire,'probe');}catch(e){incomplete=e.message.includes('not complete');}ok(incomplete,'incomplete transfer rejected');
wire.clear();wire.freepeer();eq(dictStore.size,0,'large-payload test releases dictionary');
// A native-value failure identifies the UI object and emits no partial preset.
const uiKey=M.ui[0].key,uiObject=objects[uiKey],uiValue=uiObject.value;
uiObject.value=NaN;const outputStart=outputs.length;ctx.dump();
ok(outputs.slice(outputStart).some(x=>x[1][0]==='error'&&x[1][1].includes('capture UI '+uiKey)&&x[1][1].includes('Non-finite')),'capture error identifies the exact UI value');
ok(!outputs.slice(outputStart).some(x=>x[0]===0),'failed capture emits no preset');uiObject.value=uiValue;

// Optional real exported snapshot: verify the exact payload and run recall
// through the same help-patch connection and public controller selector.
function findSavedPreset(p){
 for(const {box:b} of p.boxes){
  if(b.maxclass==='message'&&/^(set )?preset [123] /.test(b.text||''))return b.text;
  if(b.patcher){const found=findSavedPreset(b.patcher);if(found)return found;}
 }
 return null;
}
const savedPresetText=process.argv[2]?fs.readFileSync(process.argv[2],'utf8'):findSavedPreset(patch(helpFile));
let suppliedPreset=null,adsrFlow=null;
if(savedPresetText){
 const tokens=savedPresetText.trim().split(/\s+/);
 if(!process.argv[2])eq(tokens[0],'preset','saved help message is directly recallable');
 const incoming=tokens[0]==='set'?tokens:['set',...tokens];
 eq(incoming.slice(0,2),['set','preset'],'supplied preset selector');
 ok(['1','2','3'].includes(incoming[2]),'supplied preset version');
 ok(incoming.slice(4).every(x=>/^p[A-Za-z0-9+/=]+$/.test(x)&&x.length<=513),'supplied preset chunks');
 const jsonText=ctx.decode(incoming.slice(4).map(x=>x.slice(1)).join(''));
 eq(ctx.checksum(jsonText),incoming[3],'supplied preset checksum');
 const originalSnapshot=JSON.parse(jsonText),actual=ctx.upgradePreset(originalSnapshot),clicked=exampleRecall(helpFile,'synth','preset',incoming);
 ok(ctx.validate(actual),'supplied preset schema and all engine states validate');
 if(originalSnapshot.version===1){
  eq(Object.keys(originalSnapshot.ui).length,195,'legacy source snapshot unchanged');
  for(const m of M.ui.filter(x=>x.path.at(-1)==='ec_delay_ms'))eq(actual.ui[m.key].value,0,'legacy delay defaults to zero');
 }
 const effects=require('./adsr-effects.cjs')({main,patch,objects,liveEngines,M,engine,eq,ok});
 effects.coldStart();
 const start=outputs.length;
 ctx[clicked[0]](...clicked.slice(1));ok(ctx.restoreBusy,'supplied preset starts recall');
 ctx.muteTask.fire();ctx.unmuteTask.fire();
 const events=outputs.slice(start);
 ok(!events.some(x=>x[1][0]==='error'||x[1][0]==='rollback'),'supplied preset recalls without errors or rollback');
 ok(events.some(x=>x[1][0]==='recalled'),'supplied preset reports recalled');
 eq(ctx.gainValue,actual.gain,'supplied preset gain restored');
 for(const m of M.ui){
  const value=actual.ui[m.key].value;
  const expected=Array.isArray(value)&&value.length===1?value[0]:value;
  eq(objects[m.path.join("/")].value,expected,'supplied UI restored '+m.key);
  for(const attr of m.attrs)eq(objects[m.path.join("/")].attrs[attr],actual.ui[m.key].attrs[attr],'supplied UI attribute restored '+m.key+'/'+attr);
 }
 for(const m of M.colls)eq(collStores[m.key],actual.colls[m.key],'supplied store restored '+m.key);
 eq(dictStore.size,0,'supplied preset releases transfer dictionaries');
 effects.verify(actual,'cold-state supplied preset');
 // A second recall must not reverse any restored switches.
 ctx[clicked[0]](...clicked.slice(1));ctx.muteTask.fire();ctx.unmuteTask.fire();
 effects.verify(actual,'repeated supplied preset');
 // Independent lane overrides must survive the global duration/smoothing fanout.
 const mixed=JSON.parse(JSON.stringify(actual));
 for(let n=1;n<=12;n++){
  const base='ec_obj_112/ec_lane_bpatch_'+String(n).padStart(2,'0')+'/';
  const duration=500+n*137,smoothing=n*25;
  mixed.ui[base+'ec_duration'].value=[duration];
  mixed.ui[base+'ec_shape_smoothing_ms'].value=[smoothing];
  mixed.ui[base+'ec_loop_toggle'].value=[n%2];
  mixed.ui[base+'ec_delay_ms'].value=[n*75];
  // Directly edited function differs from the 48-point sampled shape.
  mixed.ui[base+'ec_function']={value:[duration,0,1,0,0,0,duration*.37,n/12,0,duration,0,0],attrs:{domain:duration}};
  mixed.engines[base+'ec_shape_smoothing_engine'].durations[0]=smoothing;
 }
 mixed.ui['ec_obj_112/ec_all_lane_duration_ms'].value=[2000];
 mixed.ui['ec_obj_112/ec_all_lane_smoothing_ms'].value=[500];
 mixed.ui['ec_obj_112/ec_all_lane_loops_toggle'].value=[1];
 ctx.emitPreset(mixed);const mixedDump=outputs.filter(x=>x[0]===0).at(-1)[1];
 ctx.preset(...Array.from(mixedDump).slice(2));ok(ctx.restoreBusy,'mixed preset starts recall');
 ctx.muteTask.fire();ctx.unmuteTask.fire();effects.verify(mixed,'independent lane overrides');
 // Read back from live UI/engines rather than trusting the cached input snapshot.
 ctx.dump();
 for(const m of M.ui.filter(x=>x.key.startsWith('ec_obj_112/'))){
  const wanted=mixed.ui[m.key].value;
  eq(ctx.captured.ui[m.key].value,Array.isArray(wanted)&&wanted.length===1?wanted[0]:wanted,'post-recall capture '+m.key);
 }
 // New v2 presets must preserve nonzero delays; legacy v1 recalls reset all
 // twelve delays to zero even when the current patch has nonzero values.
 const v2Snapshot=JSON.parse(JSON.stringify(ctx.captured));
 for(const m of M.ui.filter(x=>x.path.at(-1)==='ec_delay_ms'))eq(v2Snapshot.ui[m.key].value,mixed.ui[m.key].value[0],'v2 delay captured');
 const legacy=JSON.parse(JSON.stringify(actual));legacy.version=1;delete legacy.ui.ec_opt_limit;delete legacy.ui.ec_opt_distribution;
 for(const m of M.ui.filter(x=>x.path.at(-1)==='ec_delay_ms'))delete legacy.ui[m.key];
 ctx.emitPreset(legacy);const legacyDump=outputs.filter(x=>x[0]===0).at(-1)[1];
 ctx.preset(...Array.from(legacyDump).slice(2));ok(ctx.restoreBusy,'legacy preset remains recallable');
 ctx.muteTask.fire();ctx.unmuteTask.fire();
 for(const m of M.ui.filter(x=>x.path.at(-1)==='ec_delay_ms'))eq(objects[m.path.join("/")].value,0,'legacy recall clears previous delay');
 const delayKey=M.ui.find(x=>x.path.at(-1)==='ec_delay_ms').key;
 for(const bad of [-1,0.5,3600001,'500',[],[1,2]]){
  const corrupt=JSON.parse(JSON.stringify(v2Snapshot));corrupt.ui[delayKey].value=bad;
  let rejected=false;try{ctx.validate(corrupt);}catch{rejected=true;}ok(rejected,'invalid delay rejected before recall');
 }
 const incomplete=JSON.parse(JSON.stringify(v2Snapshot));delete incomplete.ui[delayKey];
 let missing=false;try{ctx.validate(incomplete);}catch{missing=true;}ok(missing,'v2 snapshot requires every delay control');
 const badLegacy=JSON.parse(JSON.stringify(legacy));delete badLegacy.ui.ec_syn_base;
 let missingLegacy=false;try{ctx.upgradePreset(badLegacy);}catch{missingLegacy=true;}ok(missingLegacy,'migration never fills missing original controls');
 adsrFlow={scenarios:['cold-state supplied snapshot','repeat recall','mixed loops and durations','individual smoothing overrides','directly edited function and cached playback message','capture after recall','v2 nonzero delay capture','legacy v1 resets delays to zero','malformed delay rejection'],...effects.state};
 suppliedPreset={bytes:Buffer.byteLength(jsonText),chunks:incoming.length-4,checksum:incoming[3],original_version:originalSnapshot.version,source_controls:Object.keys(originalSnapshot.ui).length,restored_controls:Object.keys(actual.ui).length,engines:Object.keys(actual.engines).length,stores:Object.keys(actual.colls).length,simulated_recall:'PASS'};
}

// Version-3 menu roundtrip and exact version-2 migration.
const optSnapshot=JSON.parse(JSON.stringify(ctx.captured));
optSnapshot.ui.ec_opt_limit.value=0;optSnapshot.ui.ec_opt_distribution.value=3;
ctx.emitPreset(optSnapshot);let optDump=outputs.filter(x=>x[0]===0).at(-1)[1];
ctx.preset(...Array.from(optDump).slice(2));ok(ctx.restoreBusy,'lowcpu preset accepted');
ctx.muteTask.fire();ctx.unmuteTask.fire();
eq(liveEngines[M.engines.find(x=>x.kind==='groups').key].renderLimit,64,'64 limit restored');
eq(liveEngines[M.engines.find(x=>x.kind==='model').key].distributionIndex,3,'prime sequence restored');
eq(liveEngines[M.engines.find(x=>x.kind==='auto_level').key].renderLimit,64,'Auto Level follows restored limit');
ctx.dump();eq(ctx.captured.ui.ec_opt_limit.value,0,'limit recaptured');eq(ctx.captured.ui.ec_opt_distribution.value,3,'sequence recaptured');
const v2=JSON.parse(JSON.stringify(optSnapshot));v2.version=2;delete v2.ui.ec_opt_limit;delete v2.ui.ec_opt_distribution;
const upgraded=ctx.upgradePreset(v2);eq(upgraded.ui.ec_opt_limit.value,1,'v2 defaults to 128');eq(upgraded.ui.ec_opt_distribution.value,0,'v2 defaults to linear');
ok(ctx.validate(upgraded),'v2 migration validates without deleting any original values');
for(const key of ['ec_opt_limit','ec_opt_distribution'])for(const value of [-1,0.5,4,'1',[],[1,2]]){
 const corrupt=JSON.parse(JSON.stringify(optSnapshot));corrupt.ui[key].value=value;
 let rejected=false;try{ctx.validate(corrupt);}catch{rejected=true;}ok(rejected,'invalid lowcpu menu rejected '+key);
}
const report={result:'PASS',assertions:checks,patch_boxes:boxes,cord_endpoints:ports,scoped_connections:scoped,local_dependencies:dependencies.size,preset_controls:M.ui.length,preset_engines:M.engines.length,user_stores:M.colls.length,dump_atoms:dumped.length,message_box_connections_checked:3,supplied_preset:suppliedPreset,adsr_control_flow:adsrFlow,message_requests:engineRequests,dictionary_operations:dictOperations,transport_tests:['Actual help and isolation patch cords route outlet 14 to the message LEFT inlet','Dump stores silently; click sends preset to inlet 1 and completes simulated recall','Right-inlet fault reproduces literal set selector','Toggle bang flips state in the model; explicit numeric recall preserves ON and OFF','ADSR global fanout, loop gates and function playback-cache effects simulated','Dictionary text atoms limited to 481 characters and Base64-safe characters','Single-atom dictionary results wrapped in lists','Container-only JSON parser with direct scalar copying','Large escaped/Unicode payload roundtrip','Truncated and checksum-corrupt chunks rejected','Exact UI context and no incomplete dump on capture failure'],limitations:['Simulated Max UI/messages/Tasks/Dict; Maxobj.js access is deliberately blocked. Native host verification is still required.','The stress-test behaviors are fault models, not verified explanations of the user\'s generic JSON.parse error.','No native sinusoids~ DSP, audio playback or listening test was available.']};
fs.writeFileSync(path.join(__dirname,'validation-results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
// Reuse the already-validated host for the linked-count integration regression.
module.exports={root,main,M,objects,liveEngines,ctx,outputs,busEvents,
 advanceTime(ms){clock+=ms;},report};
