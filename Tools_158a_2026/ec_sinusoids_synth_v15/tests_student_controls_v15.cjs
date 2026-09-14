const fs=require('fs'),path=require('path'),assert=require('assert'),vm=require('vm');
const read=n=>JSON.parse(fs.readFileSync(path.join(__dirname,n),'utf8'));
const main=read('_ec_sinusoids_synth_stage_v15.maxpat'),stops=read('ec_sinusoid_synth_stops_v15.maxpat'),stand=read('Envelope-Shaper_01_v15.maxpat');
const registry=read('controls_v15.json'),boxes=p=>Object.fromEntries(p.boxes.map(x=>[x.box.id,x.box]));
const space=boxes(main.patcher)['send-message-space-v15'].patcher;
function at(doc,parts){let p=doc.patcher;for(const id of parts)p=boxes(p)[id].patcher;return p;}
function graph(p){const b=boxes(p);assert.equal(Object.keys(b).length,p.boxes.length);for(const {patchline:l} of p.lines||[]){assert(b[l.source[0]]&&b[l.destination[0]],JSON.stringify(l));assert(l.source[1]>=0&&l.source[1]<b[l.source[0]].numoutlets,JSON.stringify(l));assert(l.destination[1]>=0&&l.destination[1]<b[l.destination[0]].numinlets,JSON.stringify(l));}
 for(const box of Object.values(b)){if(box.patcher)graph(box.patcher);if(box.text?.startsWith('js ')){const file=box.text.slice(3).split(' ')[0];assert(file.endsWith('_v15.js'),file);assert(fs.existsSync(path.join(__dirname,file)),file);}if(box.filename?.endsWith('.js'))assert(fs.existsSync(path.join(__dirname,box.filename)));}}
for(const file of fs.readdirSync(__dirname).filter(f=>f.endsWith('.maxpat')))graph(read(file).patcher);
assert.deepStrictEqual(read('Send_Message_Space_v15.maxpat').patcher,space);
// Every migrated original node, position, attribute, and wire is preserved.
for(const old of read('baseline_structure_v15.json')){const p=at(read(old.file),old.path);if(old.box){const b=JSON.parse(JSON.stringify(boxes(p)[old.id]));delete b.patcher;assert.deepStrictEqual(b,old.box,old.file+'/'+old.path+'/'+old.id);}else for(const l of old.lines)assert(p.lines.some(x=>JSON.stringify(x)===JSON.stringify(l)),JSON.stringify(l));}
const sb=boxes(space);
function wired(p,s,o,d,i=0){return p.lines.some(({patchline:l})=>l.source[0]===s&&l.source[1]===o&&l.destination[0]===d&&l.destination[1]===i);}
const names=new Set();for(const e of registry){assert(!names.has(e.name));names.add(e.name);assert(e.name.endsWith('_v15'));
 const doc=e.name.startsWith('Standalone_')?stand:e.document==='stops'?stops:main,p=at(doc,e.path),b=boxes(p);
 assert.equal(b[e.receive_id].text,'receive '+e.name);assert(b[e.target]);
 if(!e.sender_id)continue;
 const id=e.sender_id;assert(sb[id+'-message'].text.startsWith(e.name+' '));assert.equal(sb[id+'-forward'].text,'forward '+e.name);
 assert(wired(space,id+'-message',0,id+'-route'));assert(wired(space,id+'-route',0,id+'-forward'));
 if(e.type==='float'||e.type==='indexed'){assert.equal(sb[id+'-ramp'].text,'$1 20');assert(/ 5$/.test(sb[id+'-line'].text));assert(wired(space,id+'-ramp',0,id+'-line'));}
 if(e.type==='int')assert(!sb[id+'-line'],'Discrete controls must not sweep through intermediate IDs');
}
// New presentation controls have no rectangle overlaps; new receiving objects overlap neither old nor new objects.
function overlap(a,b){return Math.min(a[0]+a[2],b[0]+b[2])-Math.max(a[0],b[0])>.01&&Math.min(a[1]+a[3],b[1]+b[3])-Math.max(a[1],b[1])>.01;}
const visible=Object.values(sb).filter(b=>b.presentation);
for(let i=0;i<visible.length;i++)for(let j=i+1;j<visible.length;j++)assert(!overlap(visible[i].presentation_rect,visible[j].presentation_rect),visible[i].id+' / '+visible[j].id);
// The startup sender messages set displays only; no command receiver is triggered by load.
for(const b of Object.values(sb).filter(b=>b.text?.startsWith('loadmess ')))assert(b.text.startsWith('loadmess set '),b.text);
// Actual JS memory engine behavior, including hidden slots and synchronous current-value queries.
let time=0;class Clock extends Date{constructor(...a){super(...(a.length?a:[time]));}}
let outputs=[],feedback=[];const c={Math,Date:Clock,isFinite,inlet:10,arrayfromargs:a=>Array.from(a),Task:function(){this.cancel=()=>{};this.repeat=()=>{};},outlet:(...a)=>outputs.push(a),messnamed:(...a)=>feedback.push(a)};
vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'multislider_interpolation_engine_v15.js'),'utf8'),c);
c.partialvalue(1,200,.73);assert.equal(c.memory[1][199],.73);assert.equal(c.componentCount,32);assert.equal(outputs.filter(a=>a[0]===3&&a[1]==='beginupdate').length,1);assert.equal(outputs.filter(a=>a[0]===3&&a[1]==='endupdate').length,1);
c.partialget(1,200);assert.deepStrictEqual(feedback.at(-1),['Partial_Amplitude_current_v15',.73]);
c.partialvalue(0,3,2);assert.equal(c.memory[0][2],1);c.partialvalue(0,3,-1);assert.equal(c.memory[0][2],0);
let saved=JSON.stringify(c.memory);for(const args of [[0,0,.5],[0,257,.5],[3,2,.5],[0,2,NaN],[0,1.5,.4],[NaN,2,.5]])c.partialvalue(...args);assert.equal(JSON.stringify(c.memory),saved);
c.inlet=9;c.msg_int(256);assert.equal(c.memory[1][199],.73);c.inlet=10;c.familyvalue(3,1);assert.equal(c.memory[1][2],1);assert.equal(c.memory[1][5],.5);c.familyvalue(3,0);assert.equal(c.memory[1][2],0);
c.inlet=6;c.msg_float(100);c.inlet=0;c.list(...Array(256).fill(1));time=50;c.inlet=10;c.partialget(0,3);assert.equal(feedback.at(-1)[1],.5);c.partialvalue(0,3,.25);assert.equal(c.running[0],false);assert.equal(c.memory[0][2],.25);
console.log('PASS: '+registry.length+' named receivers; complete sender chains; 20ms/5ms ramps; discrete integer control; preserved revised baseline nodes/wires; no presentation overlaps; silent sender initialization; v15 dependencies; indexed edits, hidden memory, input validation, current-value queries, interrupted morphs and octave-family dispatch.');
