/* Graphical mapper / Max ES5 host. Shares the table model and undo history. */
var mapperReady=false,mapperRevision=0,mapperSignature='',mapperSerial=0;
var mapperLastStatus='',mapperNotes={},mapperWatchdog=null,mapperLoadedSource='',mapperResetSerial=0;
function mapperObject(){var w=ui('mapper_window');return w&&w.subpatcher?w.subpatcher().getnamed('mapper_view'):null;}
function mapperSend(){var o=mapperObject();if(o)o.message.apply(o,arr(arguments));}
function loadMapper(){mapperReady=false;mapperSend('readfile',patchDir()+'/ec_sfz_mapper.html');}
function mapperStatus(s){mapperLastStatus=String(s);if(mapperReady)mapperSend('map_status','x'+encodeURIComponent(mapperLastStatus));}
function mapperNumber(o,k,fallback){return o[k]===undefined?fallback:(/key/.test(k)?C.midi(o[k]):Number(o[k]));}
function mapperState(){
    if(!doc)return null;
    var signature=C.source(doc)+'\u0000'+catalogDir+'\u0000'+files.join('\u0000')+'\u0000'+scanBusy+'\u0000'+mapperResetSerial;
    if(signature!==mapperSignature){mapperSignature=signature;mapperRevision++;}
    var regs=C.regions(doc),relations=C.relations(doc),numbers=C.displayIds(doc),regions=[],groups=[],warnings=[],i,n,o,r;
    for(i=0;i<doc.nodes.length;i++)if(doc.nodes[i].type==='group')groups.push({id:doc.nodes[i].id,displayId:numbers[doc.nodes[i].id]});
    for(i=0;i<regs.length;i++){
        n=regs[i];o=C.effective(doc,n.id);
        r={id:n.id,displayId:numbers[n.id],group:relations[n.id].group||0,groupDisplayId:numbers[relations[n.id].group]||0,sample:o.sample||'(no sample)',
            lokey:mapperNumber(o,'lokey',0),hikey:mapperNumber(o,'hikey',127),
            lovel:mapperNumber(o,'lovel',1),hivel:mapperNumber(o,'hivel',127),
            pitch_keycenter:mapperNumber(o,'pitch_keycenter',60),local:C.local(n)};
        r.editable=isFinite(r.lokey)&&isFinite(r.hikey)&&r.lokey>=0&&r.hikey<=127&&r.lokey<=r.hikey&&
            isFinite(r.lovel)&&isFinite(r.hivel)&&r.lovel>=1&&r.hivel<=127&&r.lovel<=r.hivel;
        r.rootLabel=o.pitch_keycenter===undefined?'60':String(o.pitch_keycenter);
        if(!r.editable)warnings.push('Region '+numbers[n.id]+': key/velocity values cannot be drawn; edit its SFZ text.');
        regions.push(r);
    }
    for(i=0;i<doc.nodes.length;i++)if(doc.nodes[i].type==='control'){
        o=C.own(doc.nodes[i]);if(Number(o.note_offset)||Number(o.octave_offset))warnings.push('Control note/octave offset active: grid shows raw SFZ key numbers.');
    }
    var usage=C.keyUsageAll(doc),allocation={},gid,u;
    for(gid in usage)if(usage.hasOwnProperty(gid)){
        u=usage[gid];allocation[gid]={regions:u.regions,free:u.free.length,next:u.free.length?u.free[0]:null,shared:u.shared,invalid:!!u.invalid.length};
    }
    return {revision:mapperRevision,reset:mapperResetSerial,regions:regions,groups:groups,selected:selectedRegion,allocation:allocation,
        scopeGroup:scopeId&&relations[scopeId]?relations[scopeId].group||0:0,
        files:files,catalog:catalogDir,scanning:scanBusy,blocked:doc.blocked.join(' '),warnings:warnings,
        filename:fileName,preview:auditionIsPreview,auditionIssue:auditionIssue,loaded:loadedPath?(auditionIsPreview?'Current instrument':basename(loadedPath)):'',needsLoad:!!loadedPath&&mapperLoadedSource!==C.source(doc),
        lowVelocity:lowVelocity,highVelocity:highVelocity,status:mapperLastStatus};
}
function mapperSync(){
    if(!mapperReady||!doc)return;
    var state=mapperState(),s=encodeURIComponent(JSON.stringify(state)),id=++mapperSerial,count=Math.ceil(s.length/512);
    mapperSend('map_begin',id,count);for(var i=0;i<count;i++)mapperSend('map_chunk',id,i,'x'+s.substr(i*512,512));mapperSend('map_end',id);
}
function mapperNotesOff(){
    if(mapperWatchdog)mapperWatchdog.cancel();mapperWatchdog=null;
    for(var p in mapperNotes)if(mapperNotes.hasOwnProperty(p))note(Number(p),0);
    mapperNotes={};mapperSend('map_notes_clear');
}
function mapperHeartbeat(){
    if(mapperWatchdog)mapperWatchdog.cancel();
    mapperWatchdog=new Task(mapperNotesOff,this);mapperWatchdog.schedule(2000);
}
function mapper(event){
    var a=arr(arguments).slice(1);
    if(event==='ready'){mapperReady=true;mapperSync();return;}
    if(event==='refresh'){mapperSync();return;}
    if(event==='closed'||event==='release'||(event==='focus'&&!Number(a[0]))){mapperNotesOff();return;}
    if(event==='heartbeat'){mapperHeartbeat();return;}
    if(event==='panic'){panic();return;}
    if(event==='note'){
        var p=clamp(a[0],0,127),v=clamp(a[1],0,127);
        if(v){testPitch=p;setvalue('pitch_num',p);setvalue('velocity_num',v);testVelocity=v;if(loadedPath){mapperNotes[p]=1;mapperHeartbeat();}}
        else delete mapperNotes[p];
        incoming(p,v);return;
    }
    if(event!=='action')return;
    if(!initialized||pending){mapperStatus('Finish the pending action, then try again.');mapperSend('map_done',0);return;}
    go.apply(this,['mapper'].concat(a));
}
function mapperInsertSample(next,index,encodedName,viewGroup){
    if(scanBusy)throw new Error('Wait for the folder scan.');
    if(!baseDir||!catalogDir)throw new Error('Load the sound folder on the home page first.');
    if(index<0||index>=files.length||Math.floor(index)!==index||decodeURIComponent(String(encodedName).substring(1))!==files[index])throw new Error('The sample list changed. Select the sound again.');
    if(lowVelocity>highVelocity)throw new Error('Low velocity exceeds high velocity.');
    var gid=0,anchor=null,i,target;
    // View is the explicit import destination, independent of the selected
    // region or the home-page opcode scope. All groups uses document order.
    viewGroup=viewGroup===undefined?'all':String(viewGroup);
    if(viewGroup==='all'){
        for(i=0;i<next.nodes.length;i++)if(next.nodes[i].type==='group'){gid=next.nodes[i].id;break;}
        if(!gid)gid=C.create(next,'group',' // Imported samples\n').id;
    }else if(viewGroup==='0'){
        // Preserve the existing No group view: append to its first ungrouped
        // region run, before a later <group> can change the inheritance.
        var relations=C.relations(next);
        for(i=0;i<next.nodes.length;i++)if(next.nodes[i].type==='region'&&!relations[next.nodes[i].id].group){
            anchor=next.nodes[i];
            while(i+1<next.nodes.length&&next.nodes[i+1].type==='region')anchor=next.nodes[++i];
            break;
        }
        if(!anchor)throw new Error('No ungrouped regions remain. Choose a group or All groups.');
    }else{
        if(!/^\d+$/.test(viewGroup))throw new Error('Choose a valid group in View.');
        target=C.node(next,Number(viewGroup));
        if(target.type!=='group')throw new Error('Choose a group in View.');
        gid=target.id;
    }
    var key=C.freeKeys(next,gid,1)[0];
    var control=C.relations(next)[gid||anchor.id].control,prefix=control?C.own(C.node(next,control)).default_path||'':'';
    if(prefix&&!/[\\/]$/.test(prefix))throw new Error('End default_path with / before adding samples.');
    var sampleBase=prefix?C.resolve(baseDir,prefix):baseDir;
    var added=C.insertRegion(next,gid,{sample:C.relative(sampleBase,C.resolve(catalogDir,files[index])),
        pitch_keycenter:String(key),lokey:String(key),hikey:String(key),
        lovel:String(lowVelocity),hivel:String(highVelocity),loop_mode:'one_shot'});
    if(anchor){next.nodes.pop();next.nodes.splice(next.nodes.indexOf(anchor)+1,0,added);}
    return added;
}
function mapperDispatch(args,text){
    var succeeded=true;
    try{
        if(text!==lastEditor)throw new Error('SFZ text has unapplied edits. Use Apply text or Revert text in the builder first.');
        if(diffTables().length)throw new Error('Table edits are pending. Press Return, then Compile tables or Revert tables first.');
        mapperState();if(Number(args[0])!==mapperRevision)throw new Error('The instrument changed. Mapper refreshed; try the edit again.');
        var action=String(args[1]),id=Number(args[2]),next,n,values,k,changed=false;
        if(action==='command'){
            var cmd=String(args[2]);if(['undo','compile'].indexOf(cmd)<0)throw new Error('Unknown mapper command.');
            dispatch(cmd,[],text);return;
        }
        assertModel();
        if(action==='select'){
            n=C.node(doc,id);if(n.type!=='region')throw new Error('Select a region.');
            selectedRegion=id;scopeId=id;renderScopeMenu();renderTables();
            msg('regions','select',0,regionIds.indexOf(id)+1);status('Selected region '+C.displayId(doc,id)+'.');return;
        }
        next=C.clone(doc);
        if(action==='map'){
            n=C.node(next,id);if(n.type!=='region')throw new Error('Select a region.');
            values=JSON.parse(decodeURIComponent(String(args[3]).substring(1)));
            for(k in values)if(values.hasOwnProperty(k)){
                if(['lokey','hikey','lovel','hivel','pitch_keycenter'].indexOf(k)<0)throw new Error('Unsupported mapping field.');
                C.mapset(n,k,String(values[k]));changed=true;
            }
        }else if(action==='add_sample'){
            n=mapperInsertSample(next,id,args[3],args[4]);id=n.id;changed=true;
        }else if(action==='duplicate'||action==='delete'){
            n=C.node(next,id);if(n.type!=='region')throw new Error('Select a region.');
            var at=next.nodes.indexOf(n);
            if(action==='duplicate'){n=C.duplicateRegion(next,id);id=n.id;}
            else{next.nodes.splice(at,1);id=C.regions(next).length?C.regions(next)[0].id:0;}
            changed=true;
        }else throw new Error('Unknown mapper action.');
        if(!changed||C.source(next)===C.source(doc))return;
        var check=C.check(next);if(check.errors.length)throw new Error(check.errors.join('\n'));
        snapshot();doc=next;selectedRegion=id;scopeId=id||(doc.nodes.length?doc.nodes[0].id:0);
        C.pretty(doc);renderAll();checkProject();
        if(action==='add_sample'){selectedSample=Number(args[2]);setvalue('sample_menu',selectedSample);testPitch=Number(C.own(n).lokey);setvalue('pitch_num',testPitch);status('Added '+files[selectedSample]+' at MIDI '+testPitch+'.');}
        else status(action==='delete'?'Region removed. Its keys are available again; Undo restores it.':action==='duplicate'?'Region duplicated into the lowest available range in its group.':'Mapping updated for audition.');
    }catch(e){succeeded=false;status('Mapper: '+e.message);report(String(e.message));}
    finally{mapperSync();mapperSend('map_done',succeeded?1:0);}
}
