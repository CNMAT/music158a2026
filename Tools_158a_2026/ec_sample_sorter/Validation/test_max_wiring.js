'use strict';
const assert = require('assert').strict;
const fs = require('fs');
const vm = require('vm');
const path = require('path');
const patch = JSON.parse(fs.readFileSync('_ec_sample_sorter.maxpat')).patcher;
const objects = new Map(patch.boxes.map(x=>[x.box.id,x.box]));
assert.equal(objects.size,patch.boxes.length,'unique object IDs');
const names = new Map(patch.boxes.filter(x=>x.box.varname).map(x=>[x.box.varname,x.box]));
assert.equal(names.size,patch.boxes.filter(x=>x.box.varname).length,'unique scripting names');
for(const {patchline:l} of patch.lines){
  assert(objects.has(l.source[0])&&objects.has(l.destination[0]));
  assert(l.source[1] < objects.get(l.source[0]).numoutlets, 'outlet range '+JSON.stringify(l));
  assert(l.destination[1] < objects.get(l.destination[0]).numinlets,'inlet range '+JSON.stringify(l));
}
const wire=(a,b,ao=0,bi=0)=>patch.lines.some(({patchline:l})=>l.source[0]===a&&l.source[1]===ao&&l.destination[0]===b&&l.destination[1]===bi);
assert(wire('engine','ui'));assert(wire('ui','transport'));
for(const n of ['available','preferred'])assert(wire(n,n+'_select')&&wire(n+'_select','engine'));
assert(wire('play_order','file_open_gate',2,1)&&wire('play_order','open_file',1)&&wire('play_order','mark_open'));
assert(wire('file_open_gate','mark_closed')&&wire('mark_closed','close_old'));
assert(wire('mark_open','defer_start')&&wire('mark_open','file_open_gate',1)&&wire('mark_closed','file_open_gate',1));
assert(wire('close_old','player')&&wire('open_file','player')&&wire('start','start_if_open',0,1)&&wire('start_if_open','player'));
assert(wire('player','left')&&wire('player','right',1)&&wire('left','audio')&&wire('right','audio',0,1));
assert(wire('mono_init','player'));assert(wire('gain_init','gain_db'));
assert(!objects.get('audio').value,'audio does not auto-enable');
for(const prefix of ['new','replace']) {
  assert.equal(objects.get(prefix+'_dialog').text,'savedialog fold','native folder Save dialog');
  assert.equal(objects.get(prefix+'_dialog').numoutlets,3);
  assert.equal(objects.get(prefix+'_choose').text,'t b b');
  assert(wire(prefix+'_button',prefix+'_choose'));
  assert(wire(prefix+'_choose','cancel_button_msg',1),'clear stale review before opening dialog');
  assert(wire(prefix+'_choose',prefix+'_dialog'));
  assert(wire(prefix+'_dialog','cancel_button_msg',2),'dialog Cancel invalidates pending export');
  assert(wire(prefix+'_dialog',prefix+'_path')&&wire(prefix+'_path',prefix+'_prepend'));
  assert(wire(prefix+'_name_init',prefix+'_dialog'));
}
assert.equal(objects.get('confirm_button').text,'CONFIRM EXPORT');
for(const dep of patch.dependency_cache)assert(fs.existsSync(path.join('.',dep.name)));
const outputs=[],messages=[];
const api={patcher:{getnamed:n=>{assert(names.has(n),'scripting name '+n);return {message:(...args)=>messages.push([n,...args])};}},
  outlet:(...args)=>outputs.push(args),post:()=>{}};
vm.createContext(api);vm.runInContext(fs.readFileSync('sample_sorter_ui.js','utf8'),api);
const state={root:'/sounds',available:['kit/hit.wav','other/hit.wav','音, "quote".wav'],preferred:[],selected:{available:1,preferred:-1},current:{which:'available',rel:'other/hit.wav'},busy:false,pending:false};
api.state(JSON.stringify(state));
assert.equal(messages.filter(x=>x[0]==='available'&&x[1]==='append').length,3);
assert(messages.some(x=>x[0]==='available'&&x[1]==='append'&&x[2].includes('音，')));
assert(messages.some(x=>x[0]==='keep_button'&&x[1]==='active'&&x[2]===1));
assert(messages.some(x=>x[0]==='confirm_button'&&x[1]==='active'&&x[2]===0));
const first=messages.length;api.state(JSON.stringify(state));
assert(!messages.slice(first).some(x=>x[1]==='append'),'unchanged menus not rebuilt');
state.busy=true;state.pending=true;api.state(JSON.stringify(state));
assert(messages.some(x=>x[0]==='available'&&x[1]==='ignoreclick'&&x[2]===1));
api.play('/sounds/音, "quote".wav');assert.equal(outputs.at(-1)[2],'/sounds/音, "quote".wav');
api.stop();assert.deepEqual(outputs.at(-1),[0,'stop']);
api.cue('/sounds/first.wav');assert.deepEqual(outputs.at(-1),[0,'cue','/sounds/first.wav']);
api.status('Complete');api.review('Target /sounds');api.result('Exported');
console.log('PASS Max JSON, all patch connections, scripting targets, UI state updates, transport order, stereo routing, and exact-path message forwarding.');
// Run the real Node bridge against a mock Max API and verify every incoming selector.
const handlers=new Map();let ready=false;
const max={addHandler:(name,fn)=>handlers.set(name,fn),outlet:(t)=>{if(t==='state')ready=true;},post:()=>{}};
const bridge={require:n=>n==='max-api'?max:require(path.resolve('sample_sorter_core.js'))};
vm.createContext(bridge);vm.runInContext(fs.readFileSync('sample_sorter_node.js','utf8'),bridge);
assert(ready);
assert(!handlers.has('autonext'),'autoplay-next command removed');
for(const id of ['autonext','autonext_label','auto_msg','auto_init'])assert(!objects.has(id),'autoplay-next object removed: '+id);
const selectors=new Set();
for(const b of objects.values()){
 if(b.maxclass==='message'&&wire(b.id,'engine'))selectors.add(b.text);
 if(b.maxclass==='newobj'&&b.text.startsWith('prepend ')&&wire(b.id,'engine'))selectors.add(b.text.split(' ')[1]);
}
for(const s of selectors)assert(handlers.has(s),'Node handler: '+s);
console.log('PASS all '+selectors.size+' Max-to-Node commands have registered handlers.');
