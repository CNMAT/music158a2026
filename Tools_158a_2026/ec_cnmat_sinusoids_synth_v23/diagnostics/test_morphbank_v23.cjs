/* Actual v23 controller + engine tests, with modeled Max UI and File API.
   File adapter does real disk I/O; this is NOT native Max dialog/loader testing. */
const h=require('./test_preset_v23.cjs');
const fs=require('fs'),path=require('path'),assert=require('assert'),os=require('os');
const c=h.ctx,L='ABCDEFGHIJKLMNOPQRSTUVWX',copy=x=>JSON.parse(JSON.stringify(x));
let checks=0;const ok=(x,m)=>{assert.ok(x,m);checks++;},eq=(a,b,m)=>{assert.deepStrictEqual(copy(a),copy(b),m);checks++;},near=(a,b,m)=>{assert.ok(Math.abs(a-b)<1e-9,m+': '+a+' vs '+b);checks++;};
const tmp=fs.mkdtempSync(path.join(os.tmpdir(),'CNMAT MorphBank Δ # '));
let filesOpen=0,writes=0,reads=0,shortWrite=false,stalledRead=false;
function File(filename,mode){
 this.fd=null;this.position=0;this.isopen=false;
 try{this.fd=fs.openSync(filename,mode==='write'?'a+':'r');this.isopen=true;filesOpen++;}catch(e){return;}
 Object.defineProperty(this,'eof',{get:()=>fs.fstatSync(this.fd).size,set:v=>fs.ftruncateSync(this.fd,v)});
 this.writestring=s=>{writes++;let b=Buffer.from(s,'ascii');if(shortWrite){b=b.subarray(0,Math.floor(b.length/2));shortWrite=false;}const n=fs.writeSync(this.fd,b,0,b.length,this.position);this.position+=n;};
 this.readstring=n=>{reads++;if(stalledRead){stalledRead=false;return '';}let b=Buffer.alloc(n);const read=fs.readSync(this.fd,b,0,n,this.position);this.position+=read;return b.toString('ascii',0,read);};
 this.close=()=>{if(this.isopen){fs.closeSync(this.fd);this.fd=null;this.isopen=false;filesOpen--;}};
}
c.File=File;c.inlet=0;
const memory=h.liveEngines[h.M.engines.find(m=>m.kind==='partial_memory').key];
const noise=(start)=>h.outputs.slice(start).filter(a=>a[0]===1&&a[1][0]==='error');
const passive=(ev)=>/^Synth_MorphSlotTime_[A-X]_v23$/.test(ev[0])||ev[0]==='Synth_Morph_color_state_v23'||/^Synth_Morph_(?:current|destination)_state_v23$/.test(ev[0])||/^Synth_MorphSlot_[A-X]_v23$/.test(ev[0])||/^Synth_MorphBank_(?:slot_state|state|occupancy)_v23$/.test(ev[0])||ev[0]==='Synth_Morph_seconds_state_v23';
let originals={},n;
// All 24 captures use the existing full-state collector, never a partial preset.
for(let i=0;i<L.length;i++){
 const s=L[i];c.gain((i+1)/25);memory.memory[0][255]=(i-12)/24;memory.memory[1][255]=(i+1)/25;memory.memory[2][255]=1-(i+1)/25;
 const bs=h.busEvents.length,ms=h.messages.length;n=h.outputs.length;c.morphcapture(s);
 eq(noise(n),[],'capture succeeds '+s);ok(c.morphSlots[s],'slot exists '+s);c.validate(c.morphSlots[s]);checks++;
 eq(Object.keys(c.morphSlots[s].ui).length,227,'full UI '+s);eq(Object.keys(c.morphSlots[s].engines).length,25,'full engines '+s);eq(Object.keys(c.morphSlots[s].colls).length,14,'full stores '+s);
 eq(h.messages.length,ms,'capture does not change live UI '+s);ok(h.busEvents.slice(bs).every(passive),'capture sends only bank readbacks '+s);
 const msg=h.busEvents.slice(bs).find(e=>e[0]==='Synth_MorphSlot_'+s+'_v23');ok(msg&&msg[1]==='set'&&msg[2]==='preset','passive correct-slot dump '+s);
 eq(c.readPreset(msg.slice(3)),c.morphSlots[s],'full encoded dump matches independent slot '+s);originals[s]=copy(c.morphSlots[s]);
}
eq(Object.keys(c.morphSlots).join(''),L,'exactly A-X');
for(const s of L)for(const t of L)if(s!==t){ok(c.morphSlots[s]!==c.morphSlots[t],'independent objects '+s+t);ok(c.morphSlots[s].gain!==c.morphSlots[t].gain,'unique captured values '+s+t);}
// Existing numeric sound preset does not recursively embed the bank.
ok(!Object.keys(originals.A).some(k=>/bank|slots/i.test(k)),'no recursive bank in sound dump');
c.gain(.123);c.morphcapture('x');near(c.morphSlots.X.gain,.123,'lowercase accepted');for(const s of L.slice(0,-1))eq(c.morphSlots[s],originals[s],'overwrite X leaves '+s);
c.morphslot('X',...c.morphPresetMessage(originals.X));eq(c.morphSlots.X,originals.X,'complete dump stages X');
// Test every source/destination selection with actual public morphto dispatch.
const originalStart=c.morphStartRequest;let routed;
c.morphStartRequest=function(target,seconds){routed={target,seconds,sourceGain:this.gainValue};};
for(const a of L)for(const b of L){c.gainValue=originals[a].gain;c.morphto(b,.5);eq(routed.target,originals[b],'all-pair destination '+a+'>'+b);near(routed.sourceGain,originals[a].gain,'all-pair live source '+a+'>'+b);near(routed.seconds,.5,'all-pair duration');}
c.morphStartRequest=originalStart;
// Real adapter setup, time progress and mid-flight retargeting are not mocked.
c.gain(.1);c.command('morphto','G',10);ok(c.morphRun,'command starts actual G morph');eq(c.morphRun.ms,10000,'seconds to milliseconds');eq(c.morphRun.b,originals.G,'actual G destination');
h.setClock(h.getClock()+1000);c.morphTick();let mid=c.gainValue;c.control('morphto','X',.5);ok(c.morphRun,'control wrapper retargets actual X');near(c.gainValue,mid,'retarget no gain jump');eq(c.morphRun.ms,500,'half-second actual morph');eq(c.morphRun.b,originals.X,'actual X destination');
c.command('morphpause');ok(c.morphRun&&!c.morphRun.running,'pause via command');c.command('morphresume');ok(c.morphRun.running,'resume via command');c.command('morphstop');ok(!c.morphRun,'hold via command');
c.morphseconds(1.25);c.morphto('G');eq(c.morphRun.ms,c.morphSlotSeconds.G*1000,'stored slot seconds override the next-capture setting');c.morphstop();
n=h.outputs.length;c.command('not-a-command',10);c.command('morphBankDecode',{});c.morphto('Y',1);c.morphcapture('Z');eq(noise(n).length,4,'unknown commands and nonbank letters rejected');
c.command('gain',.2);near(c.gainValue,.2,'ordinary command gain');c.command('control','Partial_Distribution',2);ok(h.busEvents.at(-1)[0]==='Partial_Distribution_v23','ordinary addressed control through command');
// Unicode in user stores stays inside the existing ASCII-safe full preset codec.
const storeKey=h.M.colls[0].key;h.collStores[storeKey].push({key:'音色 Δ',values:['café','a space',.5]});
c.morphcapture('A');originals.A=copy(c.morphSlots.A);
for(let i=0;i<L.length;i++)c.morphslottime(L[i],i*.25);c.morphcolor(0);const savedTimes=copy(c.morphSlotSeconds);
const full=path.join(tmp,'My full bank é.json');c.morphseconds(.75);n=h.outputs.length;let bs=h.busEvents.length;c.morphbank('write',full);
eq(noise(n),[],'full bank file save succeeds');ok(fs.existsSync(full),'actual file created');ok(h.busEvents.slice(bs).every(passive),'save has no sound-control outputs');eq(filesOpen,0,'file handles closed');
let doc=JSON.parse(fs.readFileSync(full,'utf8'));eq(Object.keys(doc.payload.slots).join(''),L,'disk contains all labels');ok(Object.values(doc.payload.slots).every(Array.isArray),'24 full preset arrays written');near(doc.payload.seconds,.75,'duration persisted');ok(!/[^\x00-\x7f]/.test(fs.readFileSync(full,'utf8')),'file is ASCII-safe even for Unicode stores');
eq(doc.payload.slotSeconds,savedTimes,'24 independent times written to disk');eq(doc.payload.colorVariant,0,'color variant on disk');
// Clear bank during playback must not clear or interrupt the live transition.
c.morphto('G',10);let run=c.morphRun,gain=c.gainValue,target=copy(run.b);bs=h.busEvents.length;c.clear('all');ok(c.morphRun===run,'clear does not cancel current morph');eq(c.morphRun.b,target,'active target is an independent snapshot');near(c.gainValue,gain,'clear does not change gain');eq(Object.values(c.morphSlots).filter(Boolean).length,0,'clear empties all slots');
for(const s of L)ok(h.busEvents.slice(bs).some(e=>e[0]==='Synth_MorphSlot_'+s+'_v23'&&e.length===2&&e[1]==='set'),'clears hidden message '+s);
ok(h.busEvents.slice(bs).every(passive),'clear never sends All_Off or sound buses');c.morphstop();
// Reload is passive and stages all 24 destinations immediately.
bs=h.busEvents.length;n=h.outputs.length;const beforeGain=c.gainValue;c.morphbank('read',full);eq(noise(n),[],'full bank reload succeeds');eq(c.morphSlots,originals,'all 24 slots round-trip');near(c.morphSeconds,.75,'default seconds restored');near(c.gainValue,beforeGain,'load does not recall any sound');ok(h.busEvents.slice(bs).every(passive),'load only publishes passive bank displays');
eq(c.morphSlotSeconds,savedTimes,'24 independent times restored from disk');eq(c.morphColorVariant,0,'color variant restored from disk');
// Loading sparse or empty banks replaces stale destinations and clears their boxes.
for(const s of L.slice(1,-1))c.morphclear(s);const sparse=path.join(tmp,'Sparse.json');c.morphbank('save',sparse);c.morphslot('B',...c.morphPresetMessage(originals.B));c.morphbank('load',sparse);ok(!c.morphSlots.B&&c.morphSlots.A&&c.morphSlots.X,'sparse load removes stale B');
const zero=path.join(tmp,'Empty.json');c.clear('all');c.morphbank('write',zero);c.morphslot('X',...c.morphPresetMessage(originals.X));c.morphbank('read',zero);eq(Object.values(c.morphSlots).filter(Boolean).length,0,'empty-bank roundtrip');
c.morphbank('read',full);
// Validate whole bank before commit: corruption in last slot cannot erase the first.
function rejection(name,change,checksum=true){
 const broken=copy(doc);change(broken);if(checksum)broken.checksum=c.checksum(c.morphAscii(JSON.stringify(broken.payload)));
 const file=path.join(tmp,name+'.json');fs.writeFileSync(file,JSON.stringify(broken));const snapshot=copy(c.morphSlots),sec=c.morphSeconds,g=c.gainValue;let at=h.busEvents.length,k=h.outputs.length;
 c.morphbank('read',file);ok(noise(k).length>0,'reject '+name);eq(c.morphSlots,snapshot,'bank unchanged '+name);near(c.morphSeconds,sec,'seconds unchanged '+name);near(c.gainValue,g,'sound unchanged '+name);eq(h.busEvents.length,at,'no partial UI clear '+name);eq(filesOpen,0,'read handles closed '+name);
}
rejection('bad-envelope-checksum',d=>d.checksum='h0',false);
rejection('missing-X',d=>delete d.payload.slots.X);rejection('extra-Y',d=>d.payload.slots.Y=null);
rejection('invalid-seconds',d=>d.payload.seconds=3601);rejection('string-seconds',d=>d.payload.seconds='1');
rejection('corrupt-final-preset',d=>d.payload.slots.X[2]='h0');
rejection('invalid-state-final-preset',d=>{let x=copy(originals.X);x.gain=2;d.payload.slots.X=c.morphPresetMessage(x);});
rejection('wrong-format',d=>d.format='not-a-bank');
const invalid=path.join(tmp,'Truncated.json');fs.writeFileSync(invalid,'{"payload":');let snapshot=copy(c.morphSlots);n=h.outputs.length;c.morphbank('read',invalid);ok(noise(n).length>0,'truncated JSON rejected');eq(c.morphSlots,snapshot,'truncated unchanged');
n=h.outputs.length;c.morphbank('read',path.join(tmp,'missing.json'));ok(noise(n).length>0,'missing file rejected');eq(c.morphSlots,snapshot,'missing unchanged');
n=h.outputs.length;stalledRead=true;c.morphbank('read',full);ok(noise(n).length>0,'nonprogress read rejected');eq(c.morphSlots,snapshot,'nonprogress unchanged');eq(filesOpen,0,'failed read closed');
n=h.outputs.length;shortWrite=true;c.morphbank('write',path.join(tmp,'short-write.json'));ok(noise(n).length>0,'short write is an error, not a false success');eq(filesOpen,0,'failed write closed');eq(c.morphSlots,snapshot,'write error does not change memory');
// Writing a smaller bank over a bigger file must truncate obsolete data.
const rewrite=path.join(tmp,'rewritten.json');c.morphbank('write',rewrite);const oldSize=fs.statSync(rewrite).size;c.clear('all');c.morphbank('write',rewrite);ok(fs.statSync(rewrite).size<oldSize,'shorter write truncates');ok(JSON.parse(fs.readFileSync(rewrite)).payload.slots.A===null,'overwritten bank valid');
// Dialog commands stage requests only; native Cancel is audited in the graph test.
let w=writes,r=reads;bs=h.busEvents.length;c.command('morphbank','write');c.control('morphbank','read');eq(writes,w,'dialog request does not write');eq(reads,r,'dialog request does not read');eq(h.busEvents.slice(bs),[['Synth_MorphBank_Dialog_v23','write'],['Synth_MorphBank_Dialog_v23','read']],'correct native dialog requests');
n=h.outputs.length;c.morphbank('write','split','path');ok(noise(n).length>0,'split unquoted path rejected');
// Delayed collector completion cannot resurrect a cleared or replaced slot.
const capture=c.capture;let callback;c.capture=function(cb){callback=cb;};c.morphcapture('Q');c.morphclear('Q');callback.call(c,originals.Q);ok(!c.morphSlots.Q,'clear cancels pending Q store');
c.morphcapture('Q');c.morphslot('Q',...c.morphPresetMessage(originals.A));callback.call(c,originals.Q);eq(c.morphSlots.Q,originals.A,'newer Q staging wins over delayed capture');c.capture=capture;
// Per-call guard must not release an outer operation's lock.
c.morphBankIOBusy=true;c.morphbank('read',full);ok(c.morphBankIOBusy,'reentrant request retains outer lock');c.morphBankIOBusy=false;
const report={status:'PASS',checks,slots:24,source_destination_selection_pairs:576,real_file_reads:reads,real_file_writes:writes,coverage:['24 actual full captures and independent hidden memories','576 source/destination dispatch pairs','real G->X retarget, seconds, pause/resume/hold','24-slot, sparse, empty, Unicode and overwrite disk roundtrips','whole-bank validation before commit','corrupt last slot cannot partially replace bank','clear-all and file-load do not recall/mute live state','pending capture invalidation','direct, command and control dispatch','native File API modeled over real disk I/O'],limits:['Max UI, loader, dialogs, File and Tasks modeled; no native Max execution or audio audition.']};
fs.writeFileSync(path.join(__dirname,'MORPHBANK_TEST_RESULTS_v23.json'),JSON.stringify(report,null,2));console.log(JSON.stringify(report,null,2));fs.rmSync(tmp,{recursive:true,force:true});
