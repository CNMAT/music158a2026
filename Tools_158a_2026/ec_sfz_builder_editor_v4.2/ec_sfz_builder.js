/* EC SFZ Builder v4.1 — Max controller. Keep this file with core and catalog.
   Inlets: commands, literal program, region table, opcode table, literal filename.
   One outlet: read / MIDI messages for sfizz~.
   Tutorial folder: Demo/single-sample-demo/; shared sample: human-gliss.wav.
   go demo2 / go tutorial 1 opens single-sample-demo.sfz.
   go tutorial N opens numbered lessons; go tutorial_next / tutorial_prev
   follows the files present. go tutorial_scan refreshes the lesson menu.
   go duplicate_group copies the scope's entire group; go import_newgroup
   adds the current folder catalog to a new group without rescanning. */
autowatch=1;inlets=5;outlets=1;
include('ec_sfz_core.js');include('ec_sfz_catalog.js');include('ec_sfz_panes.js');include('ec_sfz_mapper.js');include('ec_sfz_audition.js');
var C=SfzCore,doc=null,baseDir='',catalogDir='',fileName='My_Instrument.sfz';
var scopeId=0,selectedRegion=0,scopeIds=[],regionIds=[],regionBaseline={},opcodeRows=[],opcodeBaseline={};
var selectedOpcode='',selectedOpcodeScope=0,selectedOpcodeDoc=null;
var files=[],selectedSample=0,scanBusy=false,scanQueue=[],scanFolder=null,scanRel='',scanDepth=0,scanTask=null,scanSeen={};
var recursive=1,importMode=1,rootMode=0,startRoot=0,rootStep=1,lowVelocity=1,highVelocity=127;
var selectedRef=0,referenceItems=[],categoryIndex=0,initialized=false,pending=null,collecting='',capture={},rendering=false;
var lastEditor='',lastSaved='',undoStack=[],loadedPath='',testPitch=60,testVelocity=100,testDuration=500,midiEnabled=0,noteJobs=[];
var MAX_TEXT_BYTES=2*1024*1024;
var saveDialogOpen=false,saveDialogLoad=false;
var tutorialLessons=[],tutorialStep=0;
var tableRedrawTask=null,tableRedrawNames={},tableRepainting=false;
var COLS=['ID','Group','sample','pitch_keycenter','lokey','hikey','lovel','hivel','tune','volume','pan','loop_mode'];
var WIDTHS=[38,48,230,116,52,52,50,50,48,53,45,112];
function ui(n){return this.patcher.getnamed(n);}
function msg(n){var o=ui(n);if(o)o.message.apply(o,arrayfromargs(arguments).slice(1));}
function settext(n,v){if(isPane(n))paneSet(n,v);else msg(n,'set',String(v));}
function setvalue(n,v){msg(n,'set',v);}
function status(s){settext('status',s);mapperStatus(s);}
function report(s){settext('report',s);}
function arr(a){return arrayfromargs(a);}
function clamp(v,a,b){return Math.max(a,Math.min(b,Math.round(Number(v)||0)));}
function textvalue(a){return arr(a).join(' ');}
function patchDir(){var p=C.norm(this.patcher.filepath||'');return p.substring(0,p.lastIndexOf('/'));}
function dirname(p){p=C.norm(p);return p.substring(0,p.lastIndexOf('/'));}
function basename(p){p=C.norm(p);return p.substring(p.lastIndexOf('/')+1);}
function receive(v){
    if(inlet===4){fileName=C.trim(v);return;}
    if(inlet===1 && pending){var p=pending;pending=null;dispatch(p.action,p.args,String(v).replace(/\r\n?/g,'\n'));}
}
function text(){receive(textvalue(arguments));}
function bang(){if(inlet===1||inlet===4)receive('');}
function list(){
    var a=arr(arguments);
    if(inlet===2||inlet===3){tableInput(a);return;}
    if(inlet===1||inlet===4)receive(a.join(' '));
}
function anything(){
    var a=arr(arguments);
    if(inlet===1||inlet===4)receive(messagename==='symbol'?a.join(' '):[messagename].concat(a).join(' '));
    else if(inlet===2||inlet===3){if(/^\d+$/.test(messagename))tableInput([Number(messagename)].concat(a));}
}
function go(action){
    if(!initialized||pending)return;
    pending={action:String(action),args:arr(arguments).slice(1)};
    // Capture the row identity before the asynchronous Program-pane reply.
    if(action==='copy_opcode_regions'||action==='delete_opcode')pending.args=[selectedOpcodeDoc===doc?selectedOpcodeScope:0,selectedOpcode];
    msg('filename_input','bang');requestProgram();
}
function tutorialDir(){return C.norm(patchDir()+'/Demo/single-sample-demo');}
function tutorialMsg(name){
    var window=ui('tutorial_window');if(!window||!window.subpatcher)return;
    var object=window.subpatcher().getnamed(name);if(object)object.message.apply(object,arr(arguments).slice(1));
}
function tutorialLabel(entry){var n=String(entry.number);return (n.length<2?'0':'')+n+' — '+entry.file;}
function tutorialUI(note){
    tutorialMsg('tutorial_menu','clear');tutorialMsg('tutorial_menu','append','Choose a tutorial lesson…');
    var selected=0,current=null;
    for(var i=0;i<tutorialLessons.length;i++){
        tutorialMsg('tutorial_menu','append',tutorialLabel(tutorialLessons[i]));
        if(tutorialLessons[i].number===tutorialStep){selected=i+1;current=tutorialLessons[i];}
    }
    tutorialMsg('tutorial_menu','set',selected);
    tutorialMsg('tutorial_current','set',current?'Last tutorial loaded: '+tutorialLabel(current):'Choose a lesson to begin.');
    tutorialMsg('tutorial_folder','set','Folder: '+tutorialDir());
    tutorialMsg('tutorial_status','set',note||tutorialLessons.length+' tutorial lessons found. Shared sample: human-gliss.wav.');
}
function tutorialIndexOf(number){for(var i=0;i<tutorialLessons.length;i++)if(tutorialLessons[i].number===number)return i;return -1;}
function tutorialScan(){
    var folder=new Folder(tutorialDir()),found=[],seen={},match,name,number;
    try{
        folder.typelist=[];
        while(!folder.end){
            name=String(folder.filename||'');var type=String(folder.filetype||'').toLowerCase();folder.next();
            if(type==='fold')continue;
            // Accept the doubled "sample" spelling as well as the normal prefix.
            match=/^single-sample-(?:sample-)?demo(\d*)\.sfz$/i.exec(name);if(!match)continue;
            number=match[1]?Number(match[1]):1;
            if(!isFinite(number)||number<1||number>9999)continue;
            if(seen[number])throw new Error('Two tutorial files have lesson number '+number+': '+seen[number]+' and '+name+'. Keep one file per lesson number.');
            seen[number]=name;found.push({number:number,file:name,path:tutorialDir()+'/'+name});
        }
    }finally{folder.close();}
    found.sort(function(a,b){return a.number-b.number;});tutorialLessons=found;
    tutorialUI();
    if(!found.length)throw new Error('No tutorial SFZ files found in '+tutorialDir()+'. Start with single-sample-demo.sfz, then single-sample-demo02.sfz, etc.');
    return found;
}
function tutorialindex(n){
    n=Number(n)-1;if(!isFinite(n)||Math.floor(n)!==n||n<0||n>=tutorialLessons.length)return;
    go('tutorial',tutorialLessons[n].number);
}
function loadTutorial(number){
    number=Number(number);if(!isFinite(number)||number<1||number>9999||Math.floor(number)!==number)throw new Error('Use a tutorial lesson number from 1 to 9999.');
    var index=tutorialIndexOf(number);
    if(index<0)throw new Error('Tutorial lesson '+number+' was not found in '+tutorialDir()+'.');
    var entry=tutorialLessons[index],incoming=C.parse(readUTF8(entry.path));
    if(!exists(tutorialDir()+'/human-gliss.wav'))throw new Error('Tutorial sample is missing: '+tutorialDir()+'/human-gliss.wav');
    snapshot();doc=incoming;baseDir=tutorialDir();catalogDir=baseDir;fileName=entry.file;
    // Load the authored SFZ unchanged and list exactly the one shared sample.
    cancelscan();files=['human-gliss.wav'];selectedSample=0;renderSampleMenu();
    scopeId=doc.nodes.length?doc.nodes[0].id:0;selectedRegion=C.regions(doc).length?C.regions(doc)[0].id:0;
    lastSaved=C.source(doc);chooseTestNote();loadOpenedInstrument(entry.path);tutorialStep=number;
    renderAll();checkProject();
    var note='Tutorial '+number+' requested: '+entry.file+'. Enable Audio, then play MIDI '+testPitch+'.';
    status(note);tutorialUI(note);
}
function tutorialAction(action,args){
    tutorialScan();
    if(action==='tutorial_scan'){status('Found '+tutorialLessons.length+' tutorial lessons. Choose one in the tutorial window.');return;}
    var number=args.length?Number(args[0]):1,index;
    if(action==='tutorial_reload')number=tutorialStep||tutorialLessons[0].number;
    else if(action==='tutorial_next'||action==='tutorial_prev'||action==='tutorial_previous'){
        if(!tutorialStep)number=tutorialLessons[0].number;
        else{
            index=tutorialIndexOf(tutorialStep);
            if(index<0){
                // A lesson can be removed while the patch is open: continue by number.
                if(action==='tutorial_next'){index=0;while(index<tutorialLessons.length&&tutorialLessons[index].number<=tutorialStep)index++;}
                else{index=tutorialLessons.length-1;while(index>=0&&tutorialLessons[index].number>=tutorialStep)index--;}
            }else index+=action==='tutorial_next'?1:-1;
            if(index<0||index>=tutorialLessons.length){
                var edge=action==='tutorial_next'?'last':'first';
                var note='Already at the '+edge+' available tutorial lesson.';status(note);tutorialUI(note);return;
            }
            number=tutorialLessons[index].number;
        }
    }
    loadTutorial(number);
}
function opened(){go('open_path',textvalue(arguments));}
function folder(){go('folder_path',textvalue(arguments));}
function saveaspath(){var load=saveDialogLoad;saveDialogOpen=false;saveDialogLoad=false;go('saveas_path',textvalue(arguments),load?1:0);}
function savecancelled(){saveDialogOpen=false;saveDialogLoad=false;status('Save cancelled. Your edits are still in the builder.');}
function beginSaveDialog(load){
    var name=safeName(C.trim(fileName)||'My_Instrument.sfz');
    fileName=name;settext('filename_input',name);saveDialogOpen=true;saveDialogLoad=!!load;
    msg('save_dialog','name',name);
    if(baseDir)msg('save_dialog','setpath',baseDir);else msg('save_dialog','setpath');
    msg('save_dialog','bang');
}
function scopeindex(n){if(!rendering)go('scope',Number(n));}
function tableInput(a){
    if(rendering||tableRepainting||a.length<2)return;
    var col=Number(a[0]),row=Number(a[1]),v=a.slice(2).join(' ');
    if(collecting){capture[col+','+row]=v;return;}
    if(inlet===2||inlet===3)queueTableRedraw(inlet===2?'regions':'opcodes');
    if(inlet===2 && row>0 && regionIds[row-1]){
        selectedRegion=regionIds[row-1];settext('selected_label','Selected region '+C.displayId(doc,selectedRegion)+' — use Edit selected for its opcodes.');mapperSync();
    }
    if(inlet===3)selectOpcodeCell(col,row);
}
function clearOpcodeSelection(){selectedOpcode='';selectedOpcodeScope=0;selectedOpcodeDoc=null;}
function renderOpcodeSelection(){settext('selected_opcode_label',selectedOpcode?'Selected opcode: '+selectedOpcode:'Select an opcode row to copy/delete.');}
function selectOpcodeCell(col,row){
    if(rendering||collecting||tableRepainting)return;
    col=Number(col);row=Number(row);
    if(doc&&scopeId&&col>=0&&col<4&&Math.floor(col)===col&&row>0&&Math.floor(row)===row&&opcodeRows[row-1]){
        selectedOpcode=opcodeRows[row-1];selectedOpcodeScope=scopeId;selectedOpcodeDoc=doc;
    }else clearOpcodeSelection();
    renderOpcodeSelection();
}
function opcode_selection(){
    // jit.cellblock's third outlet emits "sync select column row".
    var a=arr(arguments);if(a[0]==='sync')a.shift();
    if(a[0]==='select')selectOpcodeCell(a[1],a[2]);
    queueTableRedraw('opcodes');
}
function table_view(name){queueTableRedraw(String(name));}
function queueTableRedraw(name){
    if(rendering||collecting||tableRepainting||(name!=='regions'&&name!=='opcodes'))return;
    tableRedrawNames[name]=true;
    if(!tableRedrawTask)tableRedrawTask=new Task(redrawTableViews,this);
    // Leave the native click/Return/scroll callback before repainting.
    tableRedrawTask.cancel();tableRedrawTask.schedule(30);
}
function redrawTableViews(){
    if(rendering||collecting){if(tableRedrawTask)tableRedrawTask.schedule(30);return;}
    var names=tableRedrawNames;tableRedrawNames={};tableRepainting=true;
    try{for(var name in names)if(names.hasOwnProperty(name))msg(name,'refresh');}
    finally{tableRepainting=false;}
}
function cancelTableRedraw(){if(tableRedrawTask)tableRedrawTask.cancel();tableRedrawTask=null;tableRedrawNames={};}
function tableDump(name){collecting=name;capture={};msg(name,'dump');collecting='';return capture;}
function diffTables(){
    var reg=tableDump('regions'),ops=tableDump('opcodes'),changes=[],i,j,k,v,b,enabled;
    for(i=0;i<regionIds.length;i++)for(j=2;j<COLS.length;j++){
        k=j+','+(i+1);v=reg.hasOwnProperty(k)?C.trim(reg[k]):'';b=regionBaseline[k]||'';
        if(v!==b)changes.push({id:regionIds[i],key:COLS[j],value:v,map:true});
    }
    for(i=0;i<opcodeRows.length;i++){
        k='0,'+(i+1);enabled=ops.hasOwnProperty(k)?C.trim(ops[k]):'0';
        if(enabled!=='0'&&enabled!=='1')throw new Error('Use column accepts 0 or 1.');
        k='2,'+(i+1);v=enabled==='1'?(ops.hasOwnProperty(k)?C.trim(ops[k]):''):'';
        b=opcodeBaseline[k]||'';
        if(v!==b)changes.push({id:scopeId,key:opcodeRows[i],value:v,map:false});
    }
    return changes;
}
function snapshot(){undoStack.push({doc:C.clone(doc),base:baseDir,catalog:catalogDir,files:files.slice(),name:fileName,scope:scopeId,selected:selectedRegion,lesson:tutorialStep});if(undoStack.length>40)undoStack.shift();}
function applyTableChangesTo(next,changes){
    var seen={},i,ch,key;
    for(i=0;i<changes.length;i++){
        ch=changes[i];key=ch.id+':'+ch.key;
        if(seen.hasOwnProperty(key)&&seen[key]!==ch.value)throw new Error('Conflicting table edits for '+ch.key+'. Revert tables and edit one view at a time.');
        seen[key]=ch.value;
        if(ch.map)C.mapset(C.node(next,ch.id),ch.key,ch.value);else C.set(C.node(next,ch.id),ch.key,ch.value);
    }
}
function applyChanges(changes){
    if(!changes.length)return false;
    if(doc.blocked.length)throw new Error(doc.blocked.join(' '));
    var next=C.clone(doc);applyTableChangesTo(next,changes);
    var result=C.check(next);if(result.errors.length)throw new Error(result.errors.join('\n'));
    snapshot();if(selectedOpcodeDoc===doc)selectedOpcodeDoc=next;doc=next;return true;
}
function copyRegionOpcode(region,key,value){
    var ref=referenceFor(key);
    if(/^(lokey|hikey|pitch_keycenter)$/.test(key))C.mapset(region,key,value);
    else{
        // key is shorthand for all three mapping fields. Later local fields
        // must not silently defeat the requested key assignment.
        if(key==='key'){
            var own=C.own(region);
            if(own.key===value&&!own.hasOwnProperty('lokey')&&!own.hasOwnProperty('hikey')&&!own.hasOwnProperty('pitch_keycenter'))return;
            C.set(region,'key','');C.set(region,'lokey','');C.set(region,'hikey','');C.set(region,'pitch_keycenter','');
        }
        C.set(region,key,value,ref?ref.comment:'');
    }
}
function opcodeRowAction(action,changes,args){
    assertModel();
    var id=args.length>=2?Number(args[0]):selectedOpcodeScope;
    var key=args.length>=2?String(args[1]):selectedOpcode;
    if((args.length<2&&selectedOpcodeDoc!==doc)||!id||id!==scopeId||!key||!C.own(C.node(doc,id)).hasOwnProperty(key))
        throw new Error('Click an opcode row in section 3 first.');
    var source=C.node(doc,id),copying=action==='copy_opcode_regions',next=C.clone(doc),i,n,count=0,value;
    if(copying&&source.type!=='group')throw new Error('For Copy opcode to regions, choose a <group> scope and select its opcode row.');
    // Deleting a row also discards any draft for that row, even an invalid
    // value; other drafts join this single undoable operation.
    var drafts=[];
    for(i=0;i<changes.length;i++)if(copying||changes[i].id!==id||changes[i].key!==key)drafts.push(changes[i]);
    applyTableChangesTo(next,drafts);
    if(copying){
        var own=C.own(C.node(next,id));
        if(!own.hasOwnProperty(key)||C.trim(own[key])==='')throw new Error('The selected opcode is disabled or empty. Set Use to 1 and enter its Value before copying.');
        value=own[key];var rel=C.relations(next),regs=C.regions(next);
        for(i=0;i<regs.length;i++)if(rel[regs[i].id].group===id){copyRegionOpcode(regs[i],key,value);count++;}
        if(!count)throw new Error('This group has no regions to receive the opcode.');
        var valid=C.check(next);if(valid.errors.length)throw new Error(valid.errors.join('\n'));
    }else C.set(C.node(next,id),key,'');
    if(C.source(next)===C.source(doc)){status('All regions in this group already contain '+key+'='+value+'.');return;}
    snapshot();doc=next;
    if(copying){selectedOpcode=key;selectedOpcodeScope=id;selectedOpcodeDoc=doc;}else clearOpcodeSelection();
    renderAll();checkProject();
    status(copying?'Copied '+key+'='+value+' to all '+count+' regions in group '+C.displayId(doc,id)+'. Local values replaced; Undo restores them.':
        'Deleted '+key+' from '+scopeLabel(id)+'. Inherited/default settings now apply; Undo restores it.');
}
function dispatch(action,args,text){
    if(action==='mapper'){mapperDispatch(args,text);return;}
    try{
        var changes=diffTables(),textChanged=text!==lastEditor,changed=false;
        if(action==='revert_text'){settext('editor',lastEditor);status('Program text restored from the model. Table drafts are retained.');return;}
        if(action==='revert_tables'){renderTables();status('Table drafts restored from the model. Program text is retained.');return;}
        if(action==='undo'){
            if(textChanged||changes.length)throw new Error('Apply or revert the current drafts before Undo.');
            if(!undoStack.length)throw new Error('No applied change to undo.');
            var old=undoStack.pop();doc=old.doc;baseDir=old.base;catalogDir=old.catalog;fileName=old.name;scopeId=old.scope;selectedRegion=old.selected;tutorialStep=old.lesson||0;tutorialUI();
            cancelscan();files=old.files.slice();selectedSample=0;renderSampleMenu();renderAll();status('Restored previous applied state. Disk files are unchanged.');return;
        }
        if(action==='apply_text'){
            if(changes.length)throw new Error('Table drafts are pending. Apply them first, or Revert tables before applying text.');
            if(!textChanged){status('Program text already matches the model.');return;}
            var parsed=C.parse(text);snapshot();doc=parsed;scopeId=doc.nodes.length?doc.nodes[0].id:0;selectedRegion=C.regions(doc).length?C.regions(doc)[0].id:0;
            renderAll();checkProject();status(doc.blocked.length?'Text applied in TEXT MODE: '+doc.blocked.join(' '):'Text applied. Tables now reflect the program.');return;
        }
        if(textChanged)throw new Error('Program text has unapplied edits. Click Apply text or Revert text before using tables or saving.');
        if(action==='copy_opcode_regions'||action==='delete_opcode'){opcodeRowAction(action,changes,args);return;}
        if(action==='import_selected'){
            var selectedFiles=validateSampleSelection(args[0],JSON.parse(String(args[1])));
            importSamples(selectedFiles,false,Number(args[2]),changes);return;
        }
        changed=applyChanges(changes);
        if(changed)renderAll();
        if(action==='demo2'||action==='tutorial'||action==='tutorial_next'||action==='tutorial_prev'||action==='tutorial_previous'||action==='tutorial_reload'||action==='tutorial_scan'){
            tutorialAction(action,args);return;
        }
        if(action==='compile'){if(!doc.blocked.length){if(!changed)snapshot();C.pretty(doc);}renderAll();checkProject();status('Compiled '+C.regions(doc).length+' regions. Program window updated; use Save to write the file.');return;}
        if(action==='check'){checkProject();return;}
        if(action==='choosefolder'){msg('folder_dialog','bang');return;}
        if(action==='open_dialog'){msg('open_dialog','bang');return;}
        if(action==='save'||action==='saveas_dialog'||action==='save_dialog_load'){beginSaveDialog(action==='save_dialog_load');return;}
        if(action==='folder_path'){
            catalogDir=C.norm(args[0]);if(!C.regions(doc).length){snapshot();baseDir=catalogDir;}
            renderPaths();startScan();return;
        }
        if(action==='new'){
            snapshot();doc=blankDocument();
            fileName='My_Instrument.sfz';if(catalogDir)baseDir=catalogDir;scopeId=doc.nodes[0].id;selectedRegion=0;clearSampleMemory();renderAll();checkProject();status('New blank instrument. Load a sound folder to begin.');return;
        }
        if(action==='clear_samples'){
            assertModel();snapshot();
            doc.nodes=doc.nodes.filter(function(n){return n.type!=='region';});
            for(var si=0;si<doc.nodes.length;si++)C.set(doc.nodes[si],'sample','');
            selectedRegion=0;
            if(scopeId&&!doc.nodes.some(function(n){return n.id===scopeId;}))scopeId=doc.nodes.length?doc.nodes[doc.nodes.length-1].id:0;
            clearSampleMemory();renderAll();checkProject();status('All samples cleared. Disk files are unchanged. Undo restores the previous samples.');return;
        }
        if(action==='demo'){
            snapshot();baseDir=patchDir()+'/Demo';catalogDir=baseDir;fileName='My_Demo.sfz';doc=C.parse(readUTF8(baseDir+'/Table_Compiler_Demo.sfz'));C.pretty(doc);
            selectedRegion=C.regions(doc)[0].id;scopeId=selectedRegion;chooseTestNote();loadOpenedInstrument(baseDir+'/Table_Compiler_Demo.sfz');renderAll();startScan();status('Demo load requested. Enable Audio, then click Note (MIDI '+testPitch+').');return;
        }
        if(action==='open_path'){
            var path=C.norm(args[0]),incoming=C.parse(readUTF8(path));snapshot();doc=incoming;baseDir=dirname(path);catalogDir=baseDir;fileName=basename(path);
            scopeId=doc.nodes.length?doc.nodes[0].id:0;selectedRegion=C.regions(doc).length?C.regions(doc)[0].id:0;lastSaved=C.source(doc);chooseTestNote();loadOpenedInstrument(path);renderAll();startScan();checkProject();status('Instrument load requested. Enable Audio, then click Note (MIDI '+testPitch+').');return;
        }
        if(action==='scope'){
            scopeId=scopeIds[Number(args[0])]||scopeId;renderTables();renderScopeMenu();status('Opcode table: '+scopeLabel(scopeId));return;
        }
        if(action==='edit_selected'){
            if(!selectedRegion)throw new Error('Select a region row first.');scopeId=selectedRegion;renderTables();renderScopeMenu();return;
        }
        if(action==='newgroup'){
            assertModel();snapshot();scopeId=C.create(doc,'group',' // New group\n').id;renderAll();status('New group selected. Imports will go into this group.');return;
        }
        if(action==='duplicate_group'){
            duplicateScopeGroup();return;
        }
        if(action==='import_newgroup'){
            importSamples(files.slice(),true);return;
        }
        if(action==='addglobal'||action==='addcontrol'){
            assertModel();var type=action==='addglobal'?'global':'control',found=null;
            for(var f=0;f<doc.nodes.length;f++)if(doc.nodes[f].type===type){found=doc.nodes[f];break;}
            if(!found){snapshot();found=C.create(doc,type,'\n',type==='control'?0:(doc.nodes.length&&doc.nodes[0].type==='control'?1:0));}
            scopeId=found.id;renderAll();return;
        }
        if(action==='duplicate'){
            assertModel();if(!selectedRegion)throw new Error('Select a region row.');var next=C.clone(doc),copy=C.duplicateRegion(next,selectedRegion);snapshot();doc=next;selectedRegion=copy.id;scopeId=copy.id;renderAll();status('Region duplicated into the lowest available range in its group.');return;
        }
        if(action==='delete'){
            assertModel();if(!selectedRegion)throw new Error('Select a region row.');snapshot();doc.nodes.splice(doc.nodes.indexOf(C.node(doc,selectedRegion)),1);selectedRegion=C.regions(doc).length?C.regions(doc)[0].id:0;scopeId=selectedRegion||(doc.nodes.length?doc.nodes[0].id:0);renderAll();status('Region removed. Undo restores it.');return;
        }
        if(action==='import_one'||action==='import_all'){importSamples(action==='import_one'?[files[selectedSample]]:files.slice());return;}
        if(action==='add_opcode'){
            assertModel();if(!scopeId)throw new Error('Select or create a scope first.');var ref=referenceItems[selectedRef];if(!ref)throw new Error('Choose an opcode.');
            var target=C.node(doc,scopeId);if(ref.name==='default_path'&&target.type!=='control')throw new Error('default_path belongs under <control>. Use Control first.');
            if(target.type==='control'&&ref.name!=='default_path')throw new Error('Select global, group or region for performance opcodes.');
            if(C.own(target).hasOwnProperty(ref.name)){status('Opcode already present. Edit its Value cell.');return;}
            snapshot();C.set(target,ref.name,ref.example.substring(ref.example.indexOf('=')+1),ref.comment);renderAll();
            var where=target.type!=='region'?'Region Table shows local values; blank cells inherit this scope.':(COLS.indexOf(ref.name)>=2||ref.name==='key')?'Region Table updated.':'Shown in section 3 and SFZ text; Region Table has fixed common columns.';
            status('Added '+ref.name+'. '+where+' Edit its Value, then Compile tables.');return;
        }
        if(action==='copy_samples'){msg('sample_text','select');status('Sample lines selected. Press Cmd-C / Ctrl-C.');return;}
        if(action==='copy_program'){msg('editor','select');return;}
        if(action==='save_load'||action==='saveas_path'){
            if(action==='save_load'&&!baseDir){beginSaveDialog(true);return;}
            var targetPath=action==='saveas_path'?C.norm(args[0]):baseDir+'/'+safeName(fileName);
            if(!/\.sfz$/i.test(targetPath))targetPath+='.sfz';
            saveProject(targetPath);if(action==='save_load'||Number(args[1])===1)loadInstrument(targetPath);return;
        }
        if(action==='load_saved'){if(!baseDir)throw new Error('Choose an SFZ folder or Open SFZ first.');var saved=baseDir+'/'+safeName(fileName);if(!exists(saved))throw new Error('Save the SFZ first.');loadInstrument(saved);return;}
        throw new Error('Unknown action: '+action);
    }catch(e){status('Action stopped: '+e.message);report(String(e.message));if(action==='demo2'||action.indexOf('tutorial')===0)tutorialMsg('tutorial_status','set',String(e.message));}
    finally{if(action==='import_selected')msg('sample_text','ec_samples_done');}
}
function assertModel(){if(doc.blocked.length)throw new Error(doc.blocked.join(' '));}
function scopeLabel(id,numbers){
    if(!id)return 'No scope';var n=C.node(doc,id),o=C.own(n);return '<'+n.type+'> #'+(numbers||C.displayIds(doc))[id]+(n.type==='region'?'  '+(o.sample||'(inherited sample)'):'');
}
function renderPaths(){settext('project_path','SFZ folder: '+baseDir);settext('folder_path',catalogDir||'Choose a sound folder');settext('filename_input',fileName);if(!scanBusy)showSampleLines();}
function renderScopeMenu(){
    rendering=true;scopeIds=[];msg('scope_menu','clear');var numbers=C.displayIds(doc);
    for(var i=0;i<doc.nodes.length;i++){scopeIds.push(doc.nodes[i].id);msg('scope_menu','append',scopeLabel(doc.nodes[i].id,numbers));}
    if(scopeIds.indexOf(scopeId)<0)scopeId=scopeIds.length?scopeIds[0]:0;
    setvalue('scope_menu',Math.max(0,scopeIds.indexOf(scopeId)));rendering=false;
}
function cell(name,col,row,value){msg(name,'set',col,row,String(value));}
function referenceFor(key){for(var i=0;i<REFERENCE.length;i++)if(REFERENCE[i].name===key)return REFERENCE[i];return null;}
function opcodeWidths(){
    var width=900,o=ui('opcodes');
    try{var rect=o.getboxattr('presentation_rect');if(rect&&Number(rect[2])>0)width=Number(rect[2]);}catch(e){}
    // Reserve room for the vertical scrollbar and border, even before overflow.
    return [42,150,170,Math.max(60,Math.floor(width)-20-362)];
}
function renderTables(){
    if(selectedOpcodeDoc!==doc||selectedOpcodeScope!==scopeId)clearOpcodeSelection();
    rendering=true;msg('regions','hscroll',1);msg('regions','vscroll',1);msg('opcodes','hscroll',1);msg('opcodes','vscroll',1);var regs=C.regions(doc),rels=C.relations(doc),numbers=C.displayIds(doc),i,j,n,o,key,value;
    regionIds=[];regionBaseline={};msg('regions','clear','all');msg('regions','rows',Math.max(2,regs.length+1));msg('regions','cols',COLS.length);
    msg('regions','readonly',doc.blocked.length?1:0);
    for(j=0;j<COLS.length;j++){cell('regions',j,0,COLS[j]);msg('regions','col',j,'width',WIDTHS[j]);msg('regions','col',j,'readonly',j<2||doc.blocked.length?1:0);}
    for(i=0;i<regs.length;i++){
        n=regs[i];o=C.local(n);regionIds.push(n.id);cell('regions',0,i+1,numbers[n.id]);cell('regions',1,i+1,numbers[rels[n.id].group]||'—');
        for(j=2;j<COLS.length;j++){value=o.hasOwnProperty(COLS[j])?o[COLS[j]]:'';cell('regions',j,i+1,value);regionBaseline[j+','+(i+1)]=value;}
    }
    opcodeRows=[];opcodeBaseline={};msg('opcodes','clear','all');msg('opcodes','cols',4);msg('opcodes','readonly',doc.blocked.length?1:0);
    var heads=['Use','Opcode','Value','Comment / units'];var widths=opcodeWidths();
    for(j=0;j<4;j++){cell('opcodes',j,0,heads[j]);msg('opcodes','col',j,'width',widths[j]);msg('opcodes','col',j,'readonly',j===1||j===3||doc.blocked.length?1:0);}
    if(scopeId){
        n=C.node(doc,scopeId);o=C.own(n);var seen={},ts=C.tokens(n.body);
        for(i=0;i<ts.length;i++)if(!seen[ts[i].key]){opcodeRows.push(ts[i].key);seen[ts[i].key]=true;}
        msg('opcodes','rows',Math.max(2,opcodeRows.length+1));
        for(i=0;i<opcodeRows.length;i++){
            key=opcodeRows[i];var ref=referenceFor(key);cell('opcodes',0,i+1,1);cell('opcodes',1,i+1,key);cell('opcodes',2,i+1,o[key]);cell('opcodes',3,i+1,ref?ref.comment:'Custom opcode: retained exactly; consult sfizz documentation.');opcodeBaseline['2,'+(i+1)]=o[key];
        }
        var eff=C.effective(doc,scopeId);settext('scope_details',scopeLabel(scopeId)+' | Blank cells inherit. Click an opcode row for Copy/Delete.');
    }else{msg('opcodes','rows',2);settext('scope_details','Create a group or import a sample.');}
    settext('selected_label',selectedRegion?'Selected region '+numbers[selectedRegion]:'Select a region row, then Edit selected.');
    var selectedRow=opcodeRows.indexOf(selectedOpcode);
    // Preserve the logical row selection without moving the native inline
    // editor onto the read-only Opcode label during a table rebuild.
    if(selectedRow<0)clearOpcodeSelection();
    renderOpcodeSelection();
    msg('regions','refresh');msg('opcodes','refresh');rendering=false;
    queueTableRedraw('regions');queueTableRedraw('opcodes');mapperSync();
}
function renderAll(){C.labelBlocks(doc,false);auditionSync();renderPaths();renderScopeMenu();renderTables();lastEditor=C.source(doc);settext('editor',lastEditor);settext('model_count',C.regions(doc).length+' regions  |  '+(doc.blocked.length?'TEXT MODE':'TABLE MODE'));}
function category(n){
    categoryIndex=clamp(n,0,CATEGORIES.length-1);var lines=[];referenceItems=[];
    for(var i=0;i<REFERENCE.length;i++)if(!categoryIndex||REFERENCE[i].category===CATEGORIES[categoryIndex]){
        var r=REFERENCE[i];lines.push(r.example+'\n// '+r.comment+(r.detail?'\n// '+r.detail:'')+'\n');if(r.name.charAt(0)!=='<')referenceItems.push(r);
    }
    settext('reference_text',lines.join('\n'));msg('opcode_menu','clear');for(i=0;i<referenceItems.length;i++)msg('opcode_menu','append',referenceItems[i].name);selectedRef=0;setvalue('opcode_menu',0);
}
function refindex(n){selectedRef=clamp(n,0,Math.max(0,referenceItems.length-1));}
function sampleindex(n){selectedSample=clamp(n,0,Math.max(0,files.length-1));}
function importmode(n){importMode=clamp(n,0,2);}
function rootmode(n){rootMode=clamp(n,0,2);}
function rootstart(n){startRoot=clamp(n,0,127);}
function rootstep(n){rootStep=clamp(n,1,127);}
function lovel(n){lowVelocity=clamp(n,1,127);mapperSync();}
function hivel(n){highVelocity=clamp(n,1,127);mapperSync();}
function recursive_scan(n){recursive=Number(n)?1:0;startScan();}
function rescan(){startScan();}
function cancelscan(){if(scanTask)scanTask.cancel();scanTask=null;if(scanFolder)scanFolder.close();scanFolder=null;scanBusy=false;scanQueue=[];scanSeen={};scanRel='';scanDepth=0;}
function renderSampleMenu(){msg('sample_menu','clear');for(var i=0;i<files.length;i++)msg('sample_menu','append',files[i]);setvalue('sample_menu',0);settext('sample_count',files.length+' sounds');}
function clearSampleMemory(skipReset){
    cancelscan();files=[];selectedSample=0;catalogDir='';renderSampleMenu();
    stopAudition(skipReset);auditionSignature='';auditionIssue='';lastSaved='';mapperResetSerial++;
    settext('loaded_label','No instrument loaded for playback.');
}

function startScan(){
    cancelscan();files=[];selectedSample=0;renderSampleMenu();paneSampleList([],[],catalogDir,catalogDir?'Scanning…':'Load a sound folder to choose samples.');
    if(!catalogDir){mapperSync();return;}scanQueue=[{rel:'',depth:0}];scanSeen={};scanBusy=true;scanTask=new Task(scanStep,this);scanTask.schedule(1);mapperSync();
}
function scanStep(){
    if(!scanBusy)return;
    try{
        var budget=120;
        while(budget--){
            if(!scanFolder){if(!scanQueue.length){finishScan();return;}var next=scanQueue.shift();scanRel=next.rel;scanDepth=next.depth;if(scanSeen[scanRel])continue;scanSeen[scanRel]=1;scanFolder=new Folder(catalogDir+'/'+scanRel);scanFolder.typelist=[];}
            if(scanFolder.end){scanFolder.close();scanFolder=null;continue;}
            var name=String(scanFolder.filename||''),type=String(scanFolder.filetype||'').toLowerCase();scanFolder.next();if(!name||name.charAt(0)==='.')continue;
            if(type==='fold'){if(recursive&&scanDepth<20)scanQueue.push({rel:scanRel+name+'/',depth:scanDepth+1});}
            else if(/\.(wav|wave|aif|aiff|flac|ogg)$/i.test(name))files.push(scanRel+name);
            if(files.length>10000)throw new Error('Folder exceeds 10,000 samples. Choose a smaller folder.');
        }
        scanTask.schedule(2);
    }catch(e){cancelscan();status('Folder scan: '+e.message);mapperSync();}
}
function finishScan(){
    scanBusy=false;scanTask=null;files.sort(function(a,b){var aa=a.toLowerCase(),bb=b.toLowerCase();return aa<bb?-1:aa>bb?1:a<b?-1:a>b?1:0;});
    renderSampleMenu();showSampleLines();settext('sample_count',files.length+' sounds — paths relative to the SFZ folder');status(files.length?'Folder ready. Add selected and Add all use the lowest free MIDI keys in the destination group.':'No supported sounds found in this folder.');mapperSync();
}
function showSampleLines(){var lines=[];for(var i=0;i<files.length;i++){var p=C.resolve(catalogDir,files[i]);try{p=C.relative(baseDir,p);}catch(e){}lines.push('sample='+p);}paneSampleList(files,lines,catalogDir,'');}
function validateSampleSelection(version,indices){
    if(scanBusy)throw new Error('Wait for the folder scan.');
    if(Number(version)!==samplePaneVersion||samplePaneSignature!==JSON.stringify([catalogDir,files]))throw new Error('The sound folder changed. Select samples from the current list.');
    if(Object.prototype.toString.call(indices)!=='[object Array]'||!indices.length||indices.length>10000)throw new Error('Select one or more samples from the soundfile list.');
    var seen={},ordered=[],i,index;
    for(i=0;i<indices.length;i++){
        index=indices[i];
        if(typeof index!=='number'||!isFinite(index)||Math.floor(index)!==index||index<0||index>=files.length)throw new Error('Invalid sample selection. Select samples again.');
        if(!seen.hasOwnProperty(index)){seen[index]=1;ordered.push(index);}
    }
    ordered.sort(function(a,b){return a-b;});
    return ordered.map(function(n){return files[n];});
}
function addSelectedSamples(version,indices){
    try{
        if(!initialized)throw new Error('The builder is still loading.');
        if(pending)throw new Error('Wait for the current action, then add the selected samples.');
        validateSampleSelection(version,indices);
        go('import_selected',Number(version),JSON.stringify(indices),scopeId);
        if(!pending)msg('sample_text','ec_samples_done');
    }catch(e){msg('sample_text','ec_samples_done');status('Action stopped: '+e.message);}
}
// Both home-page add buttons use the same allocation policy as the mapper.
function importSamples(list,newGroup,destinationScope,draftChanges){
    assertModel();if(scanBusy)throw new Error('Wait for the folder scan.');if(!list.length||!list[0])throw new Error('Choose a sound folder with samples.');
    if(!baseDir||!catalogDir)throw new Error('Load the sound folder on the home page first.');
    if(lowVelocity>highVelocity)throw new Error('Low velocity exceeds high velocity.');
    var next=C.clone(doc),destination=typeof destinationScope==='number'?destinationScope:scopeId;
    if(draftChanges&&draftChanges.length){applyTableChangesTo(next,draftChanges);var checked=C.check(next);if(checked.errors.length)throw new Error(checked.errors.join('\n'));}
    var rel=C.relations(next),target=destination?C.node(next,destination):null,groupId=0,anchor=null,i;
    if(newGroup)groupId=C.create(next,'group',' // Imported samples\n').id;
    else if(target&&target.type==='group')groupId=target.id;
    else if(target&&target.type==='region'){
        groupId=rel[target.id].group||0;
        if(!groupId){i=next.nodes.indexOf(target);anchor=target;while(i+1<next.nodes.length&&next.nodes[i+1].type==='region')anchor=next.nodes[++i];}
    }else for(i=0;i<next.nodes.length;i++)if(next.nodes[i].type==='group'){groupId=next.nodes[i].id;break;}
    if(!groupId&&!anchor)groupId=C.create(next,'group',' // Imported samples\n').id;
    // Reserve the entire batch before committing anything. Repeated Add all
    // fills holes/continues upward rather than restarting on occupied keys.
    var keys=C.freeKeys(next,groupId,list.length);
    var controlId=C.relations(next)[groupId||(anchor&&anchor.id)].control,prefix=controlId?C.own(C.node(next,controlId)).default_path||'':'';
    if(prefix && !/[\\/]$/.test(prefix))throw new Error('End default_path with / before using folder import.');
    var sampleBase=prefix?C.resolve(baseDir,prefix):baseDir,last;
    for(i=0;i<list.length;i++){
        last=C.insertRegion(next,groupId,{sample:C.relative(sampleBase,C.resolve(catalogDir,list[i])),
            key:String(keys[i]),lovel:String(lowVelocity),hivel:String(highVelocity),loop_mode:'one_shot'});
        if(anchor){next.nodes.pop();next.nodes.splice(next.nodes.indexOf(anchor)+1,0,last);anchor=last;}
    }
    snapshot();doc=next;scopeId=newGroup?groupId:last.id;selectedRegion=last.id;
    testPitch=keys[0];setvalue('pitch_num',testPitch);
    renderAll();checkProject();
    status('Added '+list.length+' '+(list.length===1?'sample':'samples')+' to '+(groupId?'group '+C.displayId(doc,groupId):'No group')+
        ' at the lowest free MIDI '+(list.length===1?'key '+keys[0]:'keys (first '+keys[0]+', last '+keys[keys.length-1]+')')+'. One sample per key.');
}
function duplicateScopeGroup(){
    assertModel();
    var target=scopeId?C.node(doc,scopeId):null,groupId=0;
    if(target&&target.type==='group')groupId=target.id;
    else if(target&&target.type==='region')groupId=C.relations(doc)[target.id].group||0;
    if(!groupId)throw new Error('Choose a <group> in Opcodes for Scope, or use Edit selected on a region in that group.');
    var sourceNumber=C.displayId(doc,groupId),next=C.clone(doc),copy=C.duplicateGroup(next,groupId);
    var result=C.check(next);if(result.errors.length)throw new Error(result.errors.join('\n'));
    snapshot();doc=next;scopeId=copy.group.id;selectedRegion=copy.regions.length?copy.regions[0].id:0;
    renderAll();checkProject();
    status('Copied group '+sourceNumber+' to new group '+C.displayId(doc,copy.group.id)+' ('+copy.regions.length+' regions). Mappings and settings retained; both groups can play together.');
}
function wavRoot(path){
    if(!/\.wav(e)?$/i.test(path))throw new Error('WAV root mode requires a WAV file: '+basename(path));
    var f=new File(path,'read');if(!f.isopen)throw new Error('Cannot read '+path);
    function u32(b,p){return (b[p]&255)+(b[p+1]&255)*256+(b[p+2]&255)*65536+(b[p+3]&255)*16777216;}
    function tag(b,p){return String.fromCharCode(b[p],b[p+1],b[p+2],b[p+3]);}
    try{
        var h=f.readbytes(12);if(h.length!==12||tag(h,0)!=='RIFF'||tag(h,8)!=='WAVE')throw new Error('Expected RIFF/WAVE: '+basename(path));
        while(f.position+8<=f.eof){h=f.readbytes(8);var size=u32(h,4),next=f.position+size+(size%2);if(next>f.eof+1)break;
            if(tag(h,0)==='smpl'&&size>=36){var data=f.readbytes(36);return u32(data,12);}f.position=next;
        }
        throw new Error('No WAV smpl root metadata in '+basename(path)+'. Use filename or start/step mode.');
    }finally{f.close();}
}
function safeName(name){name=C.trim(name);if(!name||/[\\/:*?"<>|\r\n]/.test(name)||name==='.'||name==='..')throw new Error('Use a simple SFZ filename without folders.');return /\.sfz$/i.test(name)?name:name+'.sfz';}
function projectCheck(d,base){
    var r=C.check(d),regs=C.regions(d),numbers=C.displayIds(d);for(var i=0;i<regs.length;i++){var p=C.samplePath(d,regs[i].id,base);if(p&&p.charAt(0)!=='*'&&p.indexOf('$')<0&&!exists(p))r.warnings.push('Missing sample, region '+numbers[regs[i].id]+': '+p);}
    r.summary=regs.length+' regions; '+r.errors.length+' errors; '+r.warnings.length+' warnings.';
    return r;
}
function checkProject(){var r=projectCheck(doc,baseDir);report(r.summary+'\n'+r.errors.map(function(s){return 'ERROR: '+s;}).concat(r.warnings.map(function(s){return 'NOTE: '+s;})).join('\n')+(doc.blocked.length?'\nText mode: table edits disabled. Includes/macros are not expanded by this checker.':''));return r;}
function saveProject(path){
    if(!C.trim(C.source(doc)))throw new Error('Cannot save an empty program.');
    var next=C.clone(doc),newBase=dirname(path);if(C.norm(newBase)!==C.norm(baseDir))C.rebase(next,baseDir,newBase);
    var result=projectCheck(next,newBase);if(!next.blocked.length&&result.errors.length)throw new Error(result.errors.join('\n'));
    var bytes=encodeUTF8(C.source(next));if(bytes.length>MAX_TEXT_BYTES)throw new Error('The SFZ exceeds the 2 MB editor limit.');
    if(exists(path)){var prior=readBytes(path);if(prior.join(',')!==bytes.join(','))writeBytes(path+'.bak',prior);}
    writeBytes(path,bytes);if(readBytes(path).join(',')!==bytes.join(','))throw new Error('Save verification failed. Keep the editor open and use the .bak if needed.');
    if(newBase!==baseDir)snapshot();doc=next;baseDir=newBase;fileName=basename(path);lastSaved=C.source(doc);renderAll();checkProject();
    status('Saved '+path+(result.warnings.length?' — review warnings.':'')+' Previous contents retained in .bak when replaced.');
}
function loadInstrument(path){
    var source=readUTF8(path),parsed=C.parse(source);
    if(!C.regions(parsed).length&&!parsed.blocked.length){
        stopAudition();auditionSignature=baseDir+'\u0000'+C.source(doc);
        settext('loaded_label','Blank SFZ: no sample regions to play.');mapperSync();return;
    }
    panic();outlet(0,'read',path);loadedPath=path;mapperLoadedSource=source;
    auditionIsPreview=false;auditionIssue='';auditionSignature=baseDir+'\u0000'+C.source(doc);
    mapperSync();settext('loaded_label','Load requested: '+basename(path)+' — check Max Console for sfizz messages.');
}
function loadOpenedInstrument(path){
    // Open/Demo already parsed this exact file. Labels/formatting in the editor
    // do not require replacing the original file with a temporary audition copy.
    C.labelBlocks(doc,false);loadInstrument(path);mapperLoadedSource=C.source(doc);
}
function note(p,v){outlet(0,'midievent',144,clamp(p,0,127),clamp(v,0,127));}
function pitch(n){testPitch=clamp(n,0,127);}
function velocity(n){testVelocity=clamp(n,1,127);}
function duration(n){testDuration=clamp(n,20,30000);}
function keyboard_input(p,v){
    testPitch=clamp(p,0,127);
    if(Number(v)>0){testVelocity=clamp(v,1,127);setvalue('velocity_num',testVelocity);auditionHint(testPitch,testVelocity);}
    // The native keyboard route has already sent this note to sfizz~.
}
function incoming(p,v){if(Number(v)>0)auditionHint(Number(p),Number(v));if(loadedPath)note(p,v);}
function timed(){panic();if(!loadedPath){status(auditionIssue||'Load a sound folder and Add samples before auditioning.');return;}var p=testPitch;note(p,testVelocity);var t=new Task(function(){note(p,0);},this);noteJobs.push(t);t.schedule(testDuration);}
function panic(){mapperNotesOff();msg('main_keyboard','clear');var kw=ui('keyboard_window');if(kw&&kw.subpatcher){var kb=kw.subpatcher().getnamed('popup_keyboard');if(kb)kb.message('clear');}for(var i=0;i<noteJobs.length;i++)noteJobs[i].cancel();noteJobs=[];outlet(0,'midievent',176,64,0);outlet(0,'midievent',176,123,0);outlet(0,'midievent',176,120,0);}
function initialize(){
    if(initialized)return;initialized=true;loadPanes();loadMapper();
    doc=blankDocument();baseDir='';catalogDir='';fileName='My_Instrument.sfz';scopeId=doc.nodes[0].id;selectedRegion=0;
    category(0);setvalue('import_mode',1);setvalue('root_mode',0);setvalue('start_root',0);setvalue('root_step',1);setvalue('low_velocity',1);setvalue('high_velocity',127);setvalue('recursive',1);setvalue('pitch_num',0);testPitch=0;setvalue('velocity_num',100);setvalue('duration_num',500);setvalue('midi_toggle',0);
    clearSampleMemory(true);renderAll();undoStack=[];
    midiDevices=[];midiDevice='';midiEnabled=0;msg('midi_gate','int',0);msg('midi_notein','port','none');msg('midi_refresh','bang');
    status('Blank instrument. Load a sound folder, Add samples, enable Audio, then play.');
    report('Add all samples maps MIDI 0 upward. Audition updates automatically.\nCompile table edits; Apply text for handwritten edits. Save keeps your SFZ.');
}
function close(){cancelTableRedraw();if(midiListTask)midiListTask.cancel();panic();cancelscan();if(paneTimer)paneTimer.cancel();}
function notifydeleted(){cancelTableRedraw();if(midiListTask)midiListTask.cancel();if(mapperWatchdog)mapperWatchdog.cancel();if(paneTimer)paneTimer.cancel();for(var i=0;i<noteJobs.length;i++)noteJobs[i].cancel();cancelscan();}

// UTF-8 file transport: literal bytes, independent of Max message punctuation.
function encodeUTF8(s) {
    var out=[],i,c,d;
    for(i=0;i<s.length;i++) {
        c=s.charCodeAt(i);
        if(c>=0xD800 && c<=0xDBFF && i+1<s.length) { d=s.charCodeAt(i+1); if(d>=0xDC00&&d<=0xDFFF){c=0x10000+((c-0xD800)<<10)+(d-0xDC00);i++;} }
        if(c<128) out.push(c);
        else if(c<2048) out.push(192|(c>>6),128|(c&63));
        else if(c<65536) out.push(224|(c>>12),128|((c>>6)&63),128|(c&63));
        else out.push(240|(c>>18),128|((c>>12)&63),128|((c>>6)&63),128|(c&63));
    }
    return out;
}
function decodeUTF8(bytes) {
    var out=[],i=0,c,n,x,j;
    while(i<bytes.length) {
        c=bytes[i++]&255;
        if(c<128) {out.push(String.fromCharCode(c));continue;}
        if(c>=194&&c<224){n=1;x=c&31;}else if(c>=224&&c<240){n=2;x=c&15;}else if(c>=240&&c<245){n=3;x=c&7;}else throw new Error('File is not valid UTF-8. Save it as UTF-8 plain text.');
        if(i+n>bytes.length) throw new Error('Incomplete UTF-8 sequence.');
        for(j=0;j<n;j++){c=bytes[i++]&255;if((c&192)!==128)throw new Error('Invalid UTF-8 text.');x=(x<<6)|(c&63);}
        if(x<=65535)out.push(String.fromCharCode(x));else {x-=65536;out.push(String.fromCharCode(0xD800+(x>>10),0xDC00+(x&1023)));}
    }
    return out.join('').replace(/^\uFEFF/,'');
}
function readBytes(path) {
    var f=new File(path,'read'), bytes=[];
    if(!f.isopen) throw new Error('Cannot read '+path);
    try {
        if(f.eof>MAX_TEXT_BYTES) throw new Error('Text file exceeds the 2 MB editor limit.');
        while(f.position<f.eof) { var b=f.readbytes(Math.min(4096,f.eof-f.position)); bytes=bytes.concat(b); }
    } finally { f.close(); }
    return bytes;
}
function readUTF8(path) { return decodeUTF8(readBytes(path)).replace(/\r\n?/g,'\n'); }
function writeBytes(path,bytes) {
    var f=new File(path,'write',['TEXT']); if(!f.isopen) throw new Error('Cannot write '+path);
    try { f.position=0; f.eof=0; for(var i=0;i<bytes.length;i+=4096) f.writebytes(bytes.slice(i,i+4096)); f.eof=f.position; } finally { f.close(); }
}
function exists(path) { var f=new File(path,'read'); var yes=!!f.isopen; if(yes)f.close(); return yes; }
