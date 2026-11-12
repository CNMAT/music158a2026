/* Three real controllers and 75 real engine instances; simulated Max boundary.
 * Every controller shares the same root scripting lookup surface. */
const assert=require('assert'),fs=require('fs'),path=require('path');
const hs=[];
for(let v=1;v<=3;v++){
 process.env.SYNTH_TEST_VOICE=String(v);
 for(const n of ['./test_preset_v23.cjs','./package_layout_three.cjs'])delete require.cache[require.resolve(n)];
 hs.push(require('./test_preset_v23.cjs'));
}
let checks=0;
const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
const ok=(x,m)=>{assert.ok(x,m);checks++;};
const commonHost={getnamed(n){const m=/^V([123])_/.exec(n);return m?hs[Number(m[1])-1].host.getnamed(n):null;}};
for(const h of hs){h.ctx.patcher=commonHost;h.ctx.handles={};}
function snap(h){let d;h.ctx.capture(x=>d=JSON.parse(JSON.stringify(x)));ok(!!d,'capture completes');return d;}
function signature(h){return {state:snap(h),slots:JSON.parse(JSON.stringify(h.ctx.morphSlots)),target:h.ctx.morphTargetSlot,current:h.ctx.morphCurrentSlot,gain:h.ctx.gainValue};}
function addressed(address,...args){
 const m=/^V([123])_Synth_(Control|Command)_v23$/.exec(address);
 if(!m)return false;
 const c=hs[Number(m[1])-1].ctx;
 if(m[2]==='Command')c.command(...args);
 else {const [selector,...rest]=args;if(typeof c[selector]==='function')c[selector](...rest);else c.command(...args);}
 return true;
}
for(let i=0;i<3;i++){
 const h=hs[i],c=h.ctx;c.morphstop();c.clear('all');
 addressed(h.PREFIX+'Synth_Control_v23','gain',.1*(i+1));c.morphcapture('A',2+i);
 addressed(h.PREFIX+'Synth_Command_v23','gain',.6+.1*i);c.morphcapture('B',4+i);c.morphjump('A');
}
for(let i=0;i<3;i++)ok(Math.abs(hs[i].ctx.gainValue-.1*(i+1))<1e-12,'different independent initial gain '+(i+1));
const before=hs.map(signature);
addressed('V2_Synth_Command_v23','morphto','B',4);
hs[1].setClock(hs[1].ctx.morphRun.start+2000);hs[1].ctx.morphTick();
ok(Math.abs(hs[1].ctx.gainValue-.45)<1e-8,'voice 2 midpoint');
eq(signature(hs[0]),before[0],'voice 2 morph preserves voice 1 state and bank');
eq(signature(hs[2]),before[2],'voice 2 morph preserves voice 3 state and bank');
const mid2=signature(hs[1]);
addressed('V1_Synth_Command_v23','morphclear','B');
eq(signature(hs[1]),mid2,'voice 1 bank edit leaves voice 2 morph state unchanged');
ok(hs[2].ctx.morphSlots.B&&hs[1].ctx.morphSlots.B,'peer B slots remain populated');
addressed('V2_Synth_Command_v23','morphfinish');
ok(Math.abs(hs[1].ctx.gainValue-.7)<1e-8,'voice 2 finish reaches its own target');
addressed('V3_Synth_Command_v23','morphcue','A','B');
const beforeStop3=signature(hs[2]);addressed('V1_Synth_Command_v23','stop');
eq(signature(hs[2]),beforeStop3,'voice 1 stop leaves voice 3 cue untouched');
ok(hs[2].ctx.morphCue&&hs[2].ctx.morphRun,'voice 3 cue still running');
for(const h of hs)h.ctx.morphstop();
// Requests constructed for another voice cannot be consumed by an engine.
for(let i=0;i<3;i++){
 const h=hs[i],m=h.M.engines.find(x=>x.kind==='model'),e=h.liveEngines[m.key];
 const state=JSON.stringify(e.ec_export());e.ecpreset(hs[(i+1)%3].ctx.ns+'preset-transfer-999999');
 eq(JSON.stringify(e.ec_export()),state,'foreign voice dictionary rejected');
 ok(h.rawBusEvents.every(x=>x[0].startsWith(h.PREFIX)),'all JS emissions stay in '+h.PREFIX);
 ok([...h.dictNames].every(n=>n.startsWith(h.PREFIX)),'all transfer names stay in '+h.PREFIX);
 h.ctx.control('MIDI_Channel',i+1);
 eq(h.rawBusEvents.at(-1),[h.PREFIX+'MIDI_Channel_v23',i+1],'MIDI channel command uses voice bus');
}
for(let i=0;i<3;i++)for(let j=i+1;j<3;j++)ok(![...hs[i].dictNames].some(n=>hs[j].dictNames.has(n)),'no shared temporary dictionary names');
ok(!addressed('Synth_Command_v23','gain',0),'unprefixed legacy command has no target');
const report={status:'PASS',checks,controllers:3,engine_instances:75,coverage:['same root scripting namespace','external voice-addressed commands','morph isolation across full captured states','independent MorphBanks and cue transport','foreign dictionary rejection','all emitted JS messages and dictionary names voice-local','MIDI addressing'],limitations:['Simulated native Max objects, Tasks and message routing; no audio engine or hardware test.']};
fs.writeFileSync(path.join(__dirname,'three_voice_isolation_results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
