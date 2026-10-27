/* Local jweb transport. Included by ec_sfz_builder.js; ES5. */
var PANE_CONFIG={"sample_text": {"readonly": 1, "wrap": 0, "font": "Menlo", "fontsize": 10.0, "background": [1, 1, 1, 1], "foreground": [0, 0, 0, 1], "label": "Sample paths \u2014 one sample per line; select and copy"}, "reference_text": {"readonly": 1, "wrap": 1, "font": "Menlo", "fontsize": 10.0, "background": [1, 1, 1, 1], "foreground": [0, 0, 0, 1], "label": "Annotated SFZ opcode index"}, "editor": {"readonly": 0, "wrap": 1, "font": "Menlo", "fontsize": 12.0, "background": [1, 1, 1, 1], "foreground": [0, 0, 0, 1], "label": "SFZ program \u2014 edit, scroll, then Apply text"}, "report": {"readonly": 1, "wrap": 1, "font": "Menlo", "fontsize": 10.0, "background": [1, 1, 1, 1], "foreground": [0, 0, 0, 1], "label": "Validation results"}};
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
    var fromMapper=pending&&pending.action==='mapper';
    if(paneTimer)paneTimer.cancel();paneTimer=null;pending=null;paneReply=null;
    msg('editor','ec_release');status(reason);if(fromMapper){mapperSync();mapperSend('map_done',0);}
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
    }catch(e){paneAbort('Action stopped: '+e.message);}
}
