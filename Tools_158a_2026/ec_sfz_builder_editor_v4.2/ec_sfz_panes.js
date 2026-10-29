/* Local jweb transport. Included by ec_sfz_builder.js; ES5. */
var PANE_CONFIG={"sample_text":{"readonly":1,"wrap":0,"font":"Menlo","fontsize":10.0,"background":[1,1,1,1],"foreground":[0,0,0,1],"label":"Soundfiles: click to select; Shift-click for a range; Command/Ctrl-click for separate samples.","mode":"samples"},"reference_text":{"readonly":1,"wrap":1,"font":"Menlo","fontsize":10.0,"background":[1,1,1,1],"foreground":[0,0,0,1],"label":"Annotated SFZ opcode index"},"editor":{"readonly":0,"wrap":1,"font":"Menlo","fontsize":12.0,"background":[1,1,1,1],"foreground":[0,0,0,1],"label":"SFZ program \u2014 edit, scroll, then Apply text"},"report":{"readonly":1,"wrap":1,"font":"Menlo","fontsize":10.0,"background":[1,1,1,1],"foreground":[0,0,0,1],"label":"Validation results"}};
var paneReady={},paneText={},paneSerial=0,requestSerial=0,paneReply=null,paneTimer=null;
function isPane(n){return PANE_CONFIG.hasOwnProperty(n);}
function loadPanes(){for(var n in PANE_CONFIG)if(PANE_CONFIG.hasOwnProperty(n))msg(n,'readfile',patchDir()+'/ec_sfz_textpane.html');}
function paneSet(n,v){paneText[n]=String(v);if(paneReady[n])paneFlush(n);}
function paneFlush(n){
    if(!paneText.hasOwnProperty(n))return;
    var s=encodeURIComponent(paneText[n]),id=++paneSerial,count=Math.ceil(s.length/512);
    msg(n,'ec_begin',id,count);for(var i=0;i<count;i++)msg(n,'ec_chunk',id,i,'x'+s.substr(i*512,512));msg(n,'ec_end',id);
}
function paneAbort(reason){
    var fromMapper=pending&&pending.action==='mapper',fromSamples=pending&&pending.action==='import_selected';
    if(paneTimer)paneTimer.cancel();paneTimer=null;pending=null;paneReply=null;
    msg('editor','ec_release');if(fromSamples)msg('sample_text','ec_samples_done');status(reason);if(fromMapper){mapperSync();mapperSend('map_done',0);}
}
function requestProgram(){
    if(!paneReady.editor){pending=null;status('Editor is loading. Keep ec_sfz_textpane.html beside the patch, then try again.');mapperSend('map_done',0);return;}
    pending.request=++requestSerial;paneReply=null;
    paneTimer=new Task(function(){paneAbort('Editor did not respond. Draft retained; try the action again.');},this);paneTimer.schedule(15000);
    msg('editor','ec_get',pending.request);
}
function webpane(name,event){
    var a=arr(arguments).slice(2),i;
    if(!isPane(name))return;
    try{
        if(event==='ready'){
            paneReady[name]=true;msg(name,'ec_config','x'+encodeURIComponent(JSON.stringify(PANE_CONFIG[name])));paneFlush(name);return;
        }
        if(name==='sample_text'&&event.indexOf('samples_')===0){samplePaneEvent(event,a);return;}
        if(event==='error'){paneAbort('Text pane: '+decodeURIComponent(String(a[0]).substring(1)));return;}
        if(name!=='editor'||!pending||Number(a[0])!==pending.request)return;
        if(event==='begin'){
            var count=Number(a[1]);if(count<0||count>30000||Math.floor(count)!==count)throw new Error('Invalid editor transfer size.');
            paneReply={id:Number(a[0]),count:count,parts:[]};return;
        }
        if(event==='chunk'&&paneReply){i=Number(a[1]);if(i<0||i>=paneReply.count)throw new Error('Invalid editor chunk.');paneReply.parts[i]=String(a[2]).substring(1);return;}
        if(event==='end'&&paneReply){
            for(i=0;i<paneReply.count;i++)if(typeof paneReply.parts[i]!=='string')throw new Error('Incomplete editor transfer; draft retained.');
            var value=decodeURIComponent(paneReply.parts.join('')).replace(/\r\n?/g,'\n');
            if(encodeUTF8(value).length>MAX_TEXT_BYTES)throw new Error('Program exceeds the 2 MB limit.');
            var p=pending;pending=null;paneReply=null;if(paneTimer)paneTimer.cancel();paneTimer=null;
            dispatch(p.action,p.args,value);msg('editor','ec_release');
        }
    }catch(e){if(name==='sample_text'){samplePaneIncoming=null;msg(name,'ec_samples_done');status('Sample selection: '+e.message);}else paneAbort('Action stopped: '+e.message);}
}

// Sample catalogs use the same bounded text transport, with explicit row identity.
var samplePaneVersion=0,samplePaneSignature='',samplePaneIncoming=null;
function paneSampleList(names,lines,folder,notice){
    var signature=JSON.stringify([folder,names]);
    if(signature!==samplePaneSignature){samplePaneSignature=signature;samplePaneVersion++;samplePaneIncoming=null;}
    paneSet('sample_text',JSON.stringify({version:samplePaneVersion,lines:lines,notice:notice||''}));
}
function samplePaneEvent(event,a){
    var id=Number(a[0]),i;
    if(event==='samples_begin'){
        var count=Number(a[2]);
        if(!isFinite(id)||Math.floor(id)!==id||count<1||count>256||Math.floor(count)!==count)throw new Error('Invalid selection transfer.');
        samplePaneIncoming={id:id,version:Number(a[1]),count:count,parts:[]};return;
    }
    if(!samplePaneIncoming||samplePaneIncoming.id!==id)return;
    if(event==='samples_chunk'){
        i=Number(a[1]);var part=String(a[2]);
        if(i<0||i>=samplePaneIncoming.count||Math.floor(i)!==i||part.charAt(0)!=='x'||part.length>513)throw new Error('Invalid selection chunk.');
        samplePaneIncoming.parts[i]=part.substring(1);return;
    }
    if(event==='samples_end'){
        var incoming=samplePaneIncoming;samplePaneIncoming=null;
        for(i=0;i<incoming.count;i++)if(typeof incoming.parts[i]!=='string')throw new Error('Incomplete selection. Please try again.');
        var indices=JSON.parse(decodeURIComponent(incoming.parts.join('')));
        addSelectedSamples(incoming.version,indices);
    }
}
