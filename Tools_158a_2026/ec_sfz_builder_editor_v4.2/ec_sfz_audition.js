/* Automatic preview and MIDI-device selection. Legacy Max js / ES5. */
var auditionFileName='.ec_sfz_preview_'+new Date().getTime()+'_'+Math.floor(Math.random()*1000000000)+'.sfz';
var auditionPath='',auditionTempPath='',auditionSignature='',auditionIssue='',auditionIsPreview=false;
var midiDevices=[],midiDevice='',midiRefreshChoice='',midiRefreshEnabled=0,midiListTask=null;

function blankDocument(){return C.parse('// New SFZ instrument\n// Blank table values inherit settings or use sampler defaults.\n\n<global>\nvolume=0.0\nampeg_release=0.2\n');}
function resolvedFilePath(path){
    // File.foldername is Max's resolved absolute parent folder. Do not pass a
    // Tempfolder: alias to sfizz or depend on a synchronous message returning
    // from conformpath into this same js object.
    var f=new File(path,'read'),folder;
    if(!f.isopen)throw new Error('Cannot read '+path);
    try{folder=C.norm(f.foldername||'');}finally{f.close();}
    if(!C.absolute(folder)||/^(Tempfolder|C74|~):/i.test(folder))throw new Error('Cannot resolve file folder: '+path);
    return C.resolve(folder,basename(path));
}
function previewRelative(base,target){
    // Windows drive letters are case-insensitive. Keep all filename spelling.
    if(/^[a-z]:\//i.test(base)&&/^[a-z]:\//i.test(target)){
        base=base.charAt(0).toUpperCase()+base.substring(1);
        target=target.charAt(0).toUpperCase()+target.substring(1);
    }
    try{return C.relative(base,target);}catch(e){e.previewCrossVolume=true;throw e;}
}
function auditionSource(previewBase){
    if(!previewBase)throw new Error('The preview folder has not been resolved.');
    var next=C.clone(doc),regs=C.regions(doc),i,n,o,path,cache={};
    // Give each region its effective sample, relative to the ACTUAL preview
    // file. sfizz~ documents relative sample paths for SFZ file loading.
    for(i=0;i<regs.length;i++){
        n=regs[i];o=C.effective(doc,n.id);path=o.sample||'';
        if(path&&path.charAt(0)!=='*'){
            if(!baseDir&&!C.absolute(path))throw new Error('Load a sound folder before auditioning relative sample paths.');
            path=C.samplePath(doc,n.id,baseDir);
            if(!cache.hasOwnProperty('$'+path))cache['$'+path]=resolvedFilePath(path);
            path=previewRelative(previewBase,cache['$'+path]);
        }
        if(path)C.set(C.node(next,n.id),'sample',path);
    }
    for(i=0;i<next.nodes.length;i++){
        n=next.nodes[i];
        if(n.type==='control')C.set(n,'default_path','');
        if(n.type!=='region')C.set(n,'sample','');
    }
    return C.source(next);
}
function createPreviewFile(path){
    // The first write establishes a real file so File.foldername can resolve it.
    // This private filename never replaces a named user instrument.
    writeBytes(path,encodeUTF8('// Internal EC SFZ preview\n<region> sample=*silence end=0\n'));
    return resolvedFilePath(path);
}
function prepareAudition(){
    var path,text,tempError,haveTemp=false;
    try{
        if(!auditionTempPath)auditionTempPath=createPreviewFile('Tempfolder:/'+auditionFileName);
        path=auditionTempPath;haveTemp=true;text=auditionSource(dirname(path));
    }catch(e){
        tempError=e;
        // A relative path cannot cross Windows drives / Max volume roots.
        // Keep a small, private sidecar beside the instrument in that case.
        // This also allows preview if Max's temporary folder is unavailable.
        if(!baseDir||(haveTemp&&!e.previewCrossVolume))throw tempError;
        path=C.resolve(baseDir,auditionFileName);
        if(!exists(path))path=createPreviewFile(path);else path=resolvedFilePath(path);
        text=auditionSource(dirname(path));
    }
    var bytes=encodeUTF8(text);
    if(bytes.length>MAX_TEXT_BYTES)throw new Error('Audition copy exceeds the 2 MB limit.');
    writeBytes(path,bytes); // closes the file before sfizz receives read
    if(readUTF8(path)!==text)throw new Error('Audition copy could not be verified.');
    return path;
}
function stopAudition(skipReset){
    panic();loadedPath='';mapperLoadedSource='';auditionIsPreview=false;
    if(!skipReset)outlet(0,'read',patchDir()+'/ec_sfz_empty.sfz');
}
function auditionSync(){
    if(!doc)return;
    var source=C.source(doc),signature=baseDir+'\u0000'+source;
    if(signature===auditionSignature)return;
    auditionIssue='';
    if(!C.regions(doc).length&&!doc.blocked.length){
        if(loadedPath)stopAudition();auditionSignature=signature;
        settext('loaded_label','No samples yet. Load a sound folder, then Add samples.');return;
    }
    try{
        if(doc.blocked.length)throw new Error('Text mode: use Save and load for testing.');
        var check=C.check(doc);if(check.errors.length)throw new Error(check.errors[0]);
        var path=prepareAudition();
        // Always name the file explicitly. readagain can follow a manually
        // loaded instrument rather than the preview tracked by the builder.
        panic();outlet(0,'read',path);auditionPath=path;loadedPath=path;
        auditionSignature=signature;mapperLoadedSource=source;auditionIsPreview=true;
        settext('loaded_label','Preview load requested. Enable Audio and play a mapped key.');
    }catch(e){
        stopAudition();auditionSignature='';auditionIssue=e.message;
        settext('loaded_label','Preview: '+auditionIssue);
        report('Automatic preview: '+auditionIssue+'\nUse Save and load for testing if the preview folder is unavailable.');
    }
}
function auditionHint(p,v){
    if(!loadedPath){status(auditionIssue||'Load a sound folder and Add samples, then enable Audio.');return;}
    if(doc.blocked.length)return;
    var regs=C.regions(doc),mapped=false,i,o;
    for(i=0;i<regs.length;i++){
        o=C.effective(doc,regs[i].id);
        if(p>=C.midi(o.lokey===undefined?'0':o.lokey)&&p<=C.midi(o.hikey===undefined?'127':o.hikey)&&v>=Number(o.lovel||1)&&v<=Number(o.hivel||127)){mapped=true;break;}
    }
    if(!mapped)status('No region at MIDI '+p+' / velocity '+v+'. Play a mapped key, or adjust its key/velocity range.');
}
function chooseTestNote(){
    var regs=C.regions(doc);if(!regs.length)return;
    var n=regs[0],o=C.effective(doc,n.id),lo=C.midi(o.lokey===undefined?'0':o.lokey),hi=C.midi(o.hikey===undefined?'127':o.hikey),root=C.midi(o.pitch_keycenter===undefined?'60':o.pitch_keycenter);
    if(!isFinite(lo)||lo<0||lo>127)return;
    testPitch=isFinite(root)&&root>=lo&&root<=hi?root:lo;
    testVelocity=clamp(testVelocity,Number(o.lovel||1),Number(o.hivel||127));
    setvalue('pitch_num',testPitch);setvalue('velocity_num',testVelocity);
}
function midiports(event){
    var name=textvalue(arr(arguments).slice(1));
    if(event==='clear'){
        if(!midiListTask)midiRefreshChoice=midiDevice;
        // Refresh the list without interrupting the selected port or resetting the toggle.
        midiDevices=[];msg('midi_device_menu','clear');msg('midi_device_menu','append','Choose MIDI device…');setvalue('midi_device_menu',0);
    }else if(event==='append'&&name&&name!=='all'&&name!=='none'){
        if(midiDevices.indexOf(name)<0){midiDevices.push(name);msg('midi_device_menu','append',name);}
    }
    if(midiListTask)midiListTask.cancel();midiListTask=new Task(finishMidiPorts,this);midiListTask.schedule(1);
}
function finishMidiPorts(){
    midiListTask=null;
    var index=midiDevices.indexOf(midiRefreshChoice);
    if(index>=0){midiDevice=midiRefreshChoice;setvalue('midi_device_menu',index+1);msg('midi_notein','port',midiDevice);}
    else{
        midiDevice='';msg('midi_notein','port','none');
        if(midiRefreshChoice){msg('midi_toggle','int',0);panic();status('MIDI device disconnected. Choose a device and enable MIDI input.');}
    }
    midiRefreshChoice=midiDevice;
}
function midiportname(){
    panic();midiDevice=textvalue(arguments);
    if(midiDevice==='Choose MIDI device…')midiDevice='';
    // Use the actual menu name, not a second index-to-name lookup.
    // The native branch already selected the notein port.
    midiRefreshChoice=midiDevice;
    status(midiDevice?'MIDI device: '+midiDevice+'. '+(midiEnabled?'Input enabled.':'Enable MIDI input to play.'):'Choose a MIDI input device.');
}
function mididevice(index){msg('midi_device_menu','int',Number(index));}
function midienable(n){
    // Notification only: native patch cords own the gate and note-off/clear sequence.
    midiEnabled=Number(n)?1:0;
    if(!midiEnabled)panic();
    status(midiEnabled?(midiDevice?'MIDI input on: '+midiDevice+'.':'MIDI input on. Choose a device in the menu.'):'MIDI input off.');
}
function midi(n){msg('midi_toggle','int',Number(n)?1:0);}
function external(p,v){
    // Compatibility entry point; physical notein now bypasses JavaScript entirely.
    if(!midiEnabled||!midiDevice)return;
    msg('midi_keyboard','list',clamp(p,0,127),clamp(v,0,127));
}
