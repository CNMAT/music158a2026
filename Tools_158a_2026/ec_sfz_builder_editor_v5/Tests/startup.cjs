// EC SFZ Builder v5 — startup lifecycle and local HTML loading checks.
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..');
function startupHarness(filename=path.join(root,'_ec_sfz_builder_editor.maxpat')){
 let ready=false,ctx;const messages=[],includes=[],errors=[],objects={},outlets=[];let omit='';
 const box=name=>objects[name]||(objects[name]={cells:{},message(...args){messages.push([name,...args]);if(name==='regions'||name==='opcodes'){
  if(args[0]==='set')this.cells[args[1]+','+args[2]]=String(args[3]);
  if(args[0]==='clear'&&args[1]==='all')this.cells={};
  if(args[0]==='dump'){for(let k of Object.keys(this.cells)){let [c,r]=k.split(',').map(Number);ctx[name==='regions'?'region_table_data':'opcode_table_data'](c,r,this.cells[k])}}
 }},subpatcher(){return {getnamed:box}},getboxattr(k){return k==='presentation_rect'?[0,0,900,160]:k==='fontname'?'Arial':k==='fontsize'?12:null},getattr(k){return k==='rowheight'?26:null}});
 const patcher={filepath:filename,getnamed:box};
 const env={JSON,Math,Number,String,isFinite,encodeURIComponent,decodeURIComponent,inlet:0,messagename:'',
  arrayfromargs:function(a){return arguments.length===1&&typeof a!=='string'&&a&&typeof a.length==='number'?Array.from(a):Array.from(arguments)},
  outlet(...a){outlets.push(a)},error(s){errors.push(s)},Task:function(){this.schedule=()=>{};this.cancel=()=>{}},
  include(name){includes.push(name);assert(ready,'include before patcher creation');throw Error('Runtime include is not allowed in the bundled controller')}
 };
 Object.defineProperty(env,'patcher',{get(){if(!ready)throw Error('Patcher unavailable during global evaluation');return patcher}});
 ctx=vm.createContext(env);vm.runInContext(fs.readFileSync(path.join(root,'ec_sfz_builder_v5.js'),'utf8'),ctx,{filename:'ec_sfz_builder_v5.js'});
 return {ctx,patcher,box,messages,includes,errors,outlets,attach(){ready=true},omit(name){omit=name}};
}
let passed=0;function test(n,f){f();passed++;console.log('PASS',n)}
test('Global compilation does not access the patcher or include dependent scripts',()=>{let h=startupHarness();assert.equal(h.includes.length,0);assert.equal(h.messages.length,0);assert.equal(h.ctx.inlets,5);assert.equal(h.ctx.outlets,1);assert.equal(typeof h.ctx.C.parse,'function');assert.equal(typeof h.ctx.isPane,'function')});
test('All helpers are available before deferred initialization creates a blank instrument',()=>{let h=startupHarness();h.attach();h.ctx.initialize();assert.equal(h.includes.length,0);assert.equal(h.ctx.initialized,true);assert.equal(typeof h.ctx.paneSet,'function');assert.equal(h.ctx.doc.nodes.length,1);assert.equal(h.ctx.doc.nodes[0].type,'global');assert.equal(h.ctx.C.own(h.ctx.doc.nodes[0]).volume,'0.0');assert.deepEqual(h.errors,[])});
test('All seven HTML views receive local readfile messages',()=>{let h=startupHarness();h.attach();h.ctx.initialize();let loads=h.messages.filter(a=>a[1]==='readfile');assert.deepEqual(loads.map(a=>a[0]).sort(),['editor','mapper_view','opcodes_view','reference_text','regions_view','report','sample_text']);for(let a of loads){assert.equal(a.length,3);assert.equal(path.dirname(a[2]),path.join(root,'Support'));assert(fs.existsSync(a[2]));assert(!a[2].startsWith('file://'))}});
test('Saved jweb URLs are blank instead of invalid file://Support addresses',()=>{let count=0;function walk(p){for(let x of p.boxes){let b=x.box;if(b.maxclass==='jweb'){count++;assert.equal(b.url,'about:blank')}if(b.patcher)walk(b.patcher)}}walk(JSON.parse(fs.readFileSync(path.join(root,'_ec_sfz_builder_editor.maxpat'))).patcher);assert.equal(count,7)});
for(let [label,file,want] of [
 ['Mac volume path','Macintosh HD:/Users/A Person/SFZ #1/_ec_sfz_builder_editor.maxpat','Macintosh HD:/Users/A Person/SFZ #1/Support/'],
 ['POSIX path','/Users/A Person/SFZ é #1/_ec_sfz_builder_editor.maxpat','/Users/A Person/SFZ é #1/Support/'],
 ['Windows path','C:\\Users\\A Person\\SFZ #1\\_ec_sfz_builder_editor.maxpat','C:/Users/A Person/SFZ #1/Support/']
])test(label+' preserves spaces and resolves every support filename',()=>{let h=startupHarness(file);h.attach();h.ctx.initialize();assert(h.ctx.initialized);for(let name of h.includes)assert(name.startsWith(want));for(let a of h.messages.filter(a=>a[1]==='readfile'))assert(a[2].startsWith(want));assert.equal(h.errors.length,0)});
test('Ready callbacks populate all views with configuration and model state',()=>{let h=startupHarness();h.attach();h.ctx.initialize();h.messages.length=0;for(let n of ['sample_text','reference_text','editor','report'])h.ctx.webpane(n,'ready');for(let n of ['regions','opcodes'])h.ctx.webtable(n,'ready');h.ctx.mapper('ready');for(let n of ['sample_text','reference_text','editor','report']){assert(h.messages.some(a=>a[0]===n&&a[1]==='ec_config'));assert(h.messages.some(a=>a[0]===n&&a[1]==='ec_end'))}for(let n of ['regions_view','opcodes_view'])assert(h.messages.some(a=>a[0]===n&&a[1]==='grid_end'));assert(h.messages.some(a=>a[0]==='mapper_view'&&a[1]==='map_end'))});
test('A repeated initialize does not reload pages or erase the working instrument',()=>{let h=startupHarness();h.attach();h.ctx.initialize();h.ctx.C.set(h.ctx.doc.nodes[0],'volume','-9');let text=h.ctx.C.source(h.ctx.doc),messages=h.messages.length;h.ctx.initialize();assert.equal(h.messages.length,messages);assert.equal(h.includes.length,0);assert.equal(h.ctx.C.source(h.ctx.doc),text)});
test('Missing patch path reports a useful error and leaves initialization retryable',()=>{let h=startupHarness('');h.attach();h.ctx.initialize();assert.equal(h.ctx.initialized,false);assert.equal(h.includes.length,0);assert(h.errors[0].includes('extracted folder'));assert(h.messages.some(a=>a[0]==='status'&&String(a[2]).includes('Builder startup:')));h.ctx.close();h.ctx.notifydeleted();h.patcher.filepath=path.join(root,'_ec_sfz_builder_editor.maxpat');h.ctx.initialize();assert(h.ctx.initialized)});
test('Early table selections and list messages are ignored before patcher initialization',()=>{let h=startupHarness();h.ctx.opcode_selection('sync','select',1,1);h.ctx.region_table_data(0,1,'saved');h.ctx.opcode_table_data(2,1,'0');for(let n of [2,3]){h.ctx.inlet=n;h.ctx.list(0,1,'saved');h.ctx.messagename='2';h.ctx.anything(1,'saved')}assert.equal(h.messages.length,0);assert.equal(h.errors.length,0);assert.equal(h.ctx.doc,null);h.ctx.inlet=0;h.attach();h.ctx.initialize();assert(h.ctx.initialized)});
test('Named table and filename messages work entirely through inlet zero',()=>{let h=startupHarness();h.attach();h.ctx.initialize();h.ctx.inlet=0;h.ctx.instrument_filename('A name with spaces.sfz');assert.equal(h.ctx.fileName,'A name with spaces.sfz');let r=h.ctx.opcodeRows.indexOf('volume')+1;h.ctx.opcode_table_data(1,r,'volume');assert.equal(h.ctx.selectedOpcode,'volume');h.messages.length=0;h.ctx.tableDump('opcodes');assert.equal(h.ctx.capture['2,'+r],'0.0')});
test('The main patch has no wires to dynamically created extra controller inlets',()=>{let p=JSON.parse(fs.readFileSync(path.join(root,'_ec_sfz_builder_editor.maxpat'))).patcher,b=p.boxes.find(x=>x.box.id==='obj-1').box;assert.equal(b.text,'js ec_sfz_builder_v5.js');assert.equal(b.saved_object_attributes.filename,'ec_sfz_builder_v5.js');for(let x of p.lines){let l=x.patchline;if(l.destination[0]==='obj-1')assert.equal(l.destination[1],0)}for(let command of ['region_table_data','opcode_table_data','instrument_filename']){let o=p.boxes.find(x=>x.box.text==='prepend '+command);assert(o);assert(p.lines.some(x=>x.patchline.source[0]===o.box.id&&x.patchline.destination[0]==='obj-1'))}});

console.log(`${passed} startup/local-path checks passed`);
module.exports={startupHarness};
