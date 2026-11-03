// EC SFZ Builder v5 — filename messages, dialog callbacks, and real disk round trips.
// Native Max objects are simulated; File reads/writes use a temporary directory.
const fs=require('fs'),os=require('os'),path=require('path'),assert=require('assert');
const {harness}=require('./controller.cjs');
const root=path.resolve(__dirname,'..'),temp=fs.mkdtempSync(path.join(os.tmpdir(),'sfz-file-io-'));
let passed=0,failed=0;
function test(name,fn){try{fn();passed++;console.log('PASS',name)}catch(e){failed++;console.error('FAIL',name,e.stack)}}
function fixture(){
 const h=harness(),c=h.ctx,tasks=[],events=[],errors=[],loaded=[];let filename='My-Instrument.sfz',program=c.lastEditor;
 let gridReplies=[],editorReplies=[],nativeReplies=[],choice=null,openChoice=null,dialogs=0,asyncDialogs=false;
 c.File=function(p,mode){
  this.isopen=false;this.position=0;let fd;
  try{fd=fs.openSync(p,mode==='write'?'w':'r');this.isopen=true}catch(e){return}
  Object.defineProperty(this,'eof',{get:()=>fs.fstatSync(fd).size,set:n=>fs.ftruncateSync(fd,n)});
  this.readbytes=n=>{let b=Buffer.alloc(n),read=fs.readSync(fd,b,0,n,this.position);this.position+=read;return Array.from(b.subarray(0,read))};
  this.writebytes=a=>{let b=Buffer.from(a);this.position+=fs.writeSync(fd,b,0,b.length,this.position)};
  this.close=()=>{fs.closeSync(fd);this.isopen=false};
 };
 c.Task=function(fn,self){this.active=false;this.schedule=ms=>{this.active=true;tasks.push({task:this,fn,self,ms})};this.cancel=()=>{this.active=false}};
 c.error=s=>errors.push(s);
 c.loadOpenedInstrument=c.loadInstrument=p=>loaded.push(p);
 c.startScan=()=>{};
 c.baseDir=temp;c.catalogDir=temp;
 c.doc=c.C.parse('<global>\nvolume=0.0\n<group>\n<region>\nsample=*sine\nkey=60\n');
 c.scopeId=c.C.regions(c.doc)[0].id;c.selectedRegion=c.scopeId;
 c.renderPaths=()=>c.settext('filename_input',c.fileName);
 c.renderAll();program=c.lastEditor;
 const original=c.msg;
 c.msg=function(name,...args){
  events.push([name,...args]);
  if(name==='filename_input'){
   if(args[0]==='set')filename=String(args[1]);
   if(args[0]==='bang')c.instrument_filename('text',filename);
  }
  if(name==='editor'){
   if(args[0]==='ec_get')editorReplies.push({id:args[1],value:program});
   if(args[0]==='ec_end'&&c.paneText.editor!==undefined)program=c.paneText.editor;
  }
  if((name==='regions_view'||name==='opcodes_view')&&args[0]==='grid_get')gridReplies.push({name:name.replace('_view',''),id:args[1],revision:c.tableGridStates[name.replace('_view','')].revision});
  // Deliberately allow synchronous native output, including Cancel. This
  // reproduces the second request being cleared by the first request's finally.
  if(name==='save_dialog'&&args[0]==='bang'){
   dialogs++;const reply=()=>{if(choice===null)c.savecancelled();else c.saveaspath(choice)};
   if(asyncDialogs)nativeReplies.push(reply);else reply();
  }
  if(name==='open_dialog'&&args[0]==='bang'){
   dialogs++;const reply=()=>{if(openChoice!==null)c.opened(openChoice);else if(typeof c.opencancelled==='function')c.opencancelled()};
   if(asyncDialogs)nativeReplies.push(reply);else reply();
  }
  original.apply(c,[name,...args]);
 };
 function pump(){
  let count=0;
  while(gridReplies.length||editorReplies.length||nativeReplies.length||tasks.some(t=>t.task.active&&t.ms<15000)){
   assert(++count<1000,'event loop did not settle');
   if(gridReplies.length){let r=gridReplies.shift();h.send(r.name,{kind:'snapshot',request:r.id,revision:r.revision,edits:[]});continue}
   if(editorReplies.length){let r=editorReplies.shift(),s=encodeURIComponent(r.value),n=Math.ceil(s.length/512);c.webpane('editor','begin',r.id,n);for(let i=0;i<n;i++)c.webpane('editor','chunk',r.id,i,'x'+s.slice(i*512,(i+1)*512));c.webpane('editor','end',r.id);continue}
   if(nativeReplies.length){nativeReplies.shift()();continue}
   const i=tasks.findIndex(t=>t.task.active&&t.ms<15000),t=tasks.splice(i,1)[0];t.task.active=false;t.fn.call(t.self);
  }
 }
 function command(action,...args){c.go(action,...args);pump()}
 return {c,h,events,errors,loaded,pump,command,tasks,setName(s){filename=s},name:()=>filename,dialogCount:()=>dialogs,saveTo(p){choice=p},openFrom(p){openChoice=p},asynchronous(){asyncDialogs=true}};
}
try{
 test('Filename selector does not accumulate during repeated commands',()=>{
  const h=fixture();for(let i=0;i<30;i++){h.command('compile');h.command('check')}
  assert.equal(h.c.fileName,'My-Instrument.sfz');assert.equal(h.name(),'My-Instrument.sfz');
 });
 test('A literal filename beginning with text keeps that word and Unicode/spaces',()=>{
  const h=fixture();h.setName('text étude loop.sfz');h.command('compile');assert.equal(h.c.fileName,'text étude loop.sfz');
  h.c.instrument_filename('text','text étude loop.sfz');assert.equal(h.c.fileName,'text étude loop.sfz');
 });
 test('Save As writes the selected path after a synchronous native dialog callback',()=>{
  const h=fixture(),target=path.join(temp,'First instrument é');h.saveTo(target);h.command('saveas_dialog');
  assert.equal(h.c.pending,null);assert(fs.existsSync(target+'.sfz'));assert.equal(fs.readFileSync(target+'.sfz','utf8'),h.c.C.source(h.c.doc));assert.equal(h.name(),'First instrument é.sfz');
  assert(h.events.some(e=>e[0]==='status'&&String(e[2]).startsWith('Saved ')));
 });
 test('Open works repeatedly after Compile, Save, and another Open',()=>{
  const a=path.join(temp,'Open A.sfz'),b=path.join(temp,'Open B.sfz');
  fs.writeFileSync(a,'<global>\nvolume=-3\n<region>\nsample=*sine\nkey=60\n');fs.writeFileSync(b,'<region>\nsample=*sine\nkey=72\n');
  const h=fixture();for(let i=0;i<3;i++){for(const p of [a,b]){h.command('compile');h.openFrom(p);h.command('open_dialog');assert.equal(h.c.pending,null);assert.equal(h.c.fileName,path.basename(p));assert.equal(h.loaded.at(-1),p);h.saveTo(path.join(temp,'Resaved.sfz'));h.command('save');assert.equal(h.c.pending,null)}}
 });
 test('Save and Open cancellation leave the next command usable and preserve the document',()=>{
  const h=fixture(),source=h.c.C.source(h.c.doc);h.command('save');assert.equal(h.c.pending,null);assert.equal(h.c.saveDialogOpen,false);h.command('open_dialog');assert.equal(h.c.pending,null);assert.equal(h.c.C.source(h.c.doc),source);h.command('compile');assert.equal(h.c.pending,null);
 });
 test('Save + load writes before audition and an overwrite preserves the prior bytes',()=>{
  const h=fixture();h.setName('Saved for testing.sfz');h.command('save_load');const p=path.join(temp,'Saved for testing.sfz');assert.equal(h.loaded.at(-1),p);const before=fs.readFileSync(p,'utf8');h.c.C.set(h.c.doc.nodes[0],'volume','-6');h.c.renderAll();h.command('save_load');assert.equal(fs.readFileSync(p+'.bak','utf8'),before);assert(fs.readFileSync(p,'utf8').includes('volume=-6'));
 });
 test('Save As rebases real sample paths and reopening preserves the same sample',()=>{
  const h=fixture(),source=path.join(temp,'Sample folder'),destination=path.join(temp,'Other folder');fs.mkdirSync(source);fs.mkdirSync(destination);fs.writeFileSync(path.join(source,'sound é.wav'),'test sample');
  h.c.baseDir=source;h.c.doc=h.c.C.parse('<region>\nsample=sound é.wav\nkey=60\n');h.c.scopeId=h.c.doc.nodes[0].id;h.c.renderAll();const p=path.join(destination,'Rebased.sfz');h.saveTo(p);h.command('save');assert.equal(h.c.pending,null);assert(fs.existsSync(p));assert.equal(h.c.baseDir,destination);assert.equal(h.c.C.samplePath(h.c.doc,h.c.doc.nodes[0].id,h.c.baseDir),path.join(source,'sound é.wav'));h.openFrom(p);h.command('open_dialog');assert.equal(h.loaded.at(-1),p);assert.equal(h.c.C.samplePath(h.c.doc,h.c.doc.nodes[0].id,h.c.baseDir),path.join(source,'sound é.wav'));
 });
 test('Missing or unwritable paths report a failure and do not poison the next action',()=>{
  const h=fixture(),source=h.c.C.source(h.c.doc);h.saveTo(path.join(temp,'no such folder','No.sfz'));h.command('save');assert.equal(h.c.pending,null);assert.equal(h.c.C.source(h.c.doc),source);assert(h.events.some(e=>e[0]==='status'&&String(e[2]).includes('Cannot write')));h.openFrom(path.join(temp,'Missing.sfz'));h.command('open_dialog');assert.equal(h.c.pending,null);assert(h.events.some(e=>e[0]==='status'&&String(e[2]).includes('Cannot read')));assert(h.errors.some(e=>e.includes('Cannot write')));assert(h.errors.some(e=>e.includes('Cannot read')));h.command('compile');assert.equal(h.c.pending,null);
 });
 test('Asynchronous dialog replies also support repeated saves and opens',()=>{
  const h=fixture(),p=path.join(temp,'Async.sfz');h.asynchronous();h.saveTo(p);h.command('save');assert(fs.existsSync(p));h.openFrom(p);h.command('open_dialog');h.command('compile');h.command('save');assert.equal(h.c.pending,null);assert.equal(h.loaded.at(-1),p);assert.equal(h.dialogCount(),3);
 });
 test('Save + load with no folder opens one dialog and loads only after a successful write',()=>{
  const h=fixture(),p=path.join(temp,'New instrument.sfz');h.c.baseDir='';h.saveTo(p);h.command('save_load');assert.equal(h.dialogCount(),1);assert.equal(h.c.pending,null);assert(fs.existsSync(p));assert.equal(h.loaded.at(-1),p);assert.equal(h.c.saveDialogLoad,false);
 });
 test('Cancelling Save + load clears the load flag before the next plain Save',()=>{
  const h=fixture(),p=path.join(temp,'After cancel.sfz');h.c.baseDir='';h.command('save_load');assert.equal(h.c.saveDialogLoad,false);assert.equal(h.c.pending,null);h.saveTo(p);h.command('save');assert(fs.existsSync(p));assert.equal(h.loaded.length,0);
 });
 test('Native Open cancellation is wired back to the controller',()=>{
  const p=JSON.parse(fs.readFileSync(path.join(root,'_ec_sfz_builder_editor.maxpat'))).patcher,dialog=p.boxes.find(x=>x.box.varname==='open_dialog').box;
  const wire=p.lines.find(x=>x.patchline.source[0]===dialog.id&&x.patchline.source[1]===1).patchline;
  const message=p.boxes.find(x=>x.box.id===wire.destination[0]).box;assert.equal(message.text,'opencancelled');assert(p.lines.some(x=>x.patchline.source[0]===message.id&&x.patchline.destination[0]==='obj-1'&&x.patchline.destination[1]===0));
 });
}finally{fs.rmSync(temp,{recursive:true,force:true})}
console.log(`${passed} file I/O checks passed; ${failed} failed`);process.exitCode=failed?1:0;
