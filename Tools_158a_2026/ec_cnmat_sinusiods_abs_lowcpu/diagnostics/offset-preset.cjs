/* Full preset transport with the latest native-object hierarchy modeled. */
'use strict';
const fs=require('fs'),path=require('path'),assert=require('assert');
const {ctx:c,M,objects,liveEngines,outputs}=require('./validate.cjs');
let checks=0;const ok=(v,m)=>{assert.ok(v,m);checks++;};
const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
const saved=JSON.parse(JSON.stringify(c.captured));
const modelSpec=M.engines.find(m=>m.kind==='model'),retuneSpec=M.engines.find(m=>m.kind==='retuning');
saved.ui.ec_opt_distribution.value=0;saved.ui.ec_partial_offset_v20_toggle.value=1;saved.ui.ec_partial_offset_v20_number.value=5;saved.ui.ec_syn_base.value=100;
saved.engines[modelSpec.key].baseFrequency=100;saved.engines[modelSpec.key].firstPartial=5;
saved.engines[modelSpec.key].driftValues[0]=0;saved.engines[modelSpec.key].microAmount=0;
Object.assign(saved.engines[retuneSpec.key],{referenceBase:100,targetBase:100,actualBase:100,active:false,rampStart:100,rampEnd:100});
ok(c.validate(saved),'offset 5 snapshot retains format 3');
c.emitPreset(saved);const atoms=outputs.filter(x=>x[0]===0).at(-1)[1];
const moved=M.ui.filter(m=>m.path[0]==='ec_auto_level_compensation_variables');eq(moved.length,7,'seven relocated controls retain serialized keys');
for(const m of moved){ok(m.key.startsWith('ec_alc_'),'legacy key stable');objects[m.path.join('/')].value=-999;}
objects.ec_syn_base.value=321;objects.ec_partial_offset_v20_number.value=1;
liveEngines[modelSpec.key].baseFrequency=321;liveEngines[modelSpec.key].firstPartial=1;
c.preset(...Array.from(atoms).slice(2));ok(c.restoreBusy,'wire preset accepted');c.muteTask.fire();c.unmuteTask.fire();
ok(!c.restoreBusy,'recall completed');eq(objects.ec_syn_base.value,100,'reference display restored');eq(objects.ec_partial_offset_v20_number.value,5,'offset number restored');
eq(objects.ec_partial_offset_v20_toggle.value,1,'offset enabled state restored');
for(const m of moved)eq(objects[m.path.join('/')].value,saved.ui[m.key].value,'relocated UI recall '+m.key);
const model=liveEngines[modelSpec.key];model.buildModel();const first=model.events.filter(x=>x[0]===6).at(-1)[1];
eq(first[1],500,'recalled first primary is 5x base');eq(first[4],500,'recalled first anchor is 5x base');eq(model.baseFrequency,100,'generator reference stays f0');
c.dump();eq(c.captured.engines[modelSpec.key].firstPartial,5,'dump recaptures offset');eq(c.captured.ui.ec_syn_base.value,100,'dump recaptures f0');
for(const m of moved)eq(c.captured.ui[m.key].value,saved.ui[m.key].value,'recapture retains legacy key '+m.key);
const report={result:'PASS',assertions:checks,scenarios:['format 3 offset=5 message recall','BASE FREQ restoration','first primary and anchor after recall','all seven relocated Auto Level controls','recaptured stable preset keys'],limitations:['Actual controller/Dict/engine protocol with modeled Max UI; no native Max reload.']};
fs.writeFileSync(path.join(__dirname,'offset-preset-results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
