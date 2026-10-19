var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids-opt_";
/* Partial Offset: crossfade two permanent 512-ID banks over 150 ms.
 * Inlet 0: final filtered/merged ID Hz amplitude records (IDs 1..512).
 * Inlet 1: firstpartial N, sent BEFORE the generator receives firstpartial N.
 * Outlet 0: renderer records, IDs 1..512 in bank A and 513..1024 in bank B.
 * Old frequencies remain unchanged; incoming oscillators start at exactly zero.
 * Rapid offset edits queue the latest model until the current fade completes,
 * so neither audible bank is overwritten. Ordinary model updates pass through.
 * Auto Level continues to read the ordinary target model, before this stage.
 */
autowatch=1;
inlets=2;
outlets=1;
var BANK_SIZE=512, OFFSET_FADE_MS=150;
var banks=[[],[]],activeBank=0,fromBank=0,toBank=1;
var requestedOffset=1,activeOffset=1,destinationOffset=1;
var initialized=false,fading=false,startTime=0;
var queuedModel=null,queuedOffset=1;
var fadeTask=new Task(tick,this);
fadeTask.interval=5;
function nowMs(){return (new Date()).getTime();}
function clip(x,a,b){return Math.max(a,Math.min(b,x));}
function valid(values){
    if(values.length%3)return false;
    var seen={},i,id,f,a;
    for(i=0;i<values.length;i+=3){
        id=Number(values[i]);f=Number(values[i+1]);a=Number(values[i+2]);
        if(!isFinite(id)||id!==Math.floor(id)||id<1||id>BANK_SIZE||seen[id]||
           !isFinite(f)||f<=0||!isFinite(a)||a<0)return false;
        seen[id]=true;
    }
    return true;
}
function firstpartial(value){
    if(inlet!==1)return;
    value=Number(value);if(!isFinite(value))return;
    requestedOffset=clip(Math.round(value),1,23000);
}
// Distribution changes share the existing two-bank crossfade.
function layout(mode,offset){
    if(inlet!==1)return;
    mode=Number(mode);offset=Number(offset);
    if(mode!==Math.floor(mode)||mode<0||mode>3||!isFinite(offset))return;
    requestedOffset=mode*23001+clip(Math.round(offset),1,23000);
}
function appendBank(output,bank,gain){
    var records=banks[bank];
    for(var i=0;i<records.length;i+=3)
        output.push(Number(records[i])+bank*BANK_SIZE,Number(records[i+1]),Number(records[i+2])*gain);
}
function emit(time){
    var output=[];
    if(fading){
        var amount=clip((time-startTime)/OFFSET_FADE_MS,0,1);
        appendBank(output,fromBank,1-amount);
        appendBank(output,toBank,amount);
    }else appendBank(output,activeBank,1);
    outlet(0,output);
}
function startFade(model,offset,time){
    fromBank=activeBank;toBank=1-activeBank;
    banks[toBank]=model.slice(0);destinationOffset=offset;
    fading=true;startTime=time;
    // Publish both banks at 1/0 before the first increment: no extra renderer fade.
    emit(time);fadeTask.repeat();
}
function finishIfDue(time){
    if(!fading||time<startTime+OFFSET_FADE_MS)return;
    emit(time); // Explicit zero for all outgoing IDs before they are discarded.
    fadeTask.cancel();fading=false;activeBank=toBank;activeOffset=destinationOffset;
    banks[fromBank]=[];
    var next=queuedModel,nextOffset=queuedOffset;
    queuedModel=null;
    if(next!==null&&nextOffset!==activeOffset)startFade(next,nextOffset,time);
    else{
        if(next!==null)banks[activeBank]=next;
        emit(time);
    }
}
function list(){
    if(inlet!==0)return;
    var model=arrayfromargs(arguments);
    if(!valid(model)){error("partial_offset_crossfade_v20_6: valid unique ID Hz amplitude records required\n");return;}
    var time=nowMs();
    // At a completion boundary, use THIS latest model rather than starting an
    // obsolete queued target just before receiving its replacement.
    if(fading&&time>=startTime+OFFSET_FADE_MS){
        if(requestedOffset===destinationOffset){banks[toBank]=model;queuedModel=null;}
        else{queuedModel=model;queuedOffset=requestedOffset;}
        finishIfDue(time);return;
    }
    if(!initialized){
        initialized=true;activeOffset=requestedOffset;banks[activeBank]=model;emit(time);return;
    }
    if(fading){
        if(requestedOffset===destinationOffset){
            banks[toBank]=model;queuedModel=null;emit(time);
        }else{queuedModel=model;queuedOffset=requestedOffset;}
    }else if(requestedOffset!==activeOffset)startFade(model,requestedOffset,time);
    else{banks[activeBank]=model;emit(time);}
}
function bang(){if(inlet===0)list();}
function tick(){
    if(!fading){fadeTask.cancel();return;}
    var time=nowMs();
    if(time>=startTime+OFFSET_FADE_MS)finishIfDue(time);
    else emit(time);
}
function notifydeleted(){fadeTask.cancel();}
function clear(){}
function set(){}
function anything(){}

// Private preset state helpers. Called locally by the public ecpreset message.
function ec_array(x){return Object.prototype.toString.call(x)==="[object Array]";}
function ec_copy(x){return ec_dataCopy(x);}
function ec_shift(x,n){if(ec_array(x)){for(var i=0;i<x.length;i++)x[i]=ec_shift(x[i],n);return x;}return typeof x==="number"?x+n:x;}
function ec_validTree(x,depth){
 if(depth>12)return false;
 if(x===null||typeof x==="boolean"||typeof x==="string")return true;
 if(typeof x==="number")return isFinite(x)&&Math.abs(x)<=1e16;
 if(ec_array(x)){if(x.length>4096)return false;for(var i=0;i<x.length;i++)if(!ec_validTree(x[i],depth+1))return false;return true;}
 return false;
}
var ec_fields = ["banks", "activeBank", "fromBank", "toBank", "requestedOffset", "activeOffset", "destinationOffset", "initialized", "fading", "startTime", "queuedModel", "queuedOffset"];
var ec_clocks = ["startTime"];
function ec_export(){var d=ec_copy({"banks":banks,"activeBank":activeBank,"fromBank":fromBank,"toBank":toBank,"requestedOffset":requestedOffset,"activeOffset":activeOffset,"destinationOffset":destinationOffset,"initialized":initialized,"fading":fading,"startTime":startTime,"queuedModel":queuedModel,"queuedOffset":queuedOffset});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"banks":banks,"activeBank":activeBank,"fromBank":fromBank,"toBank":toBank,"requestedOffset":requestedOffset,"activeOffset":activeOffset,"destinationOffset":destinationOffset,"initialized":initialized,"fading":fading,"startTime":startTime,"queuedModel":queuedModel,"queuedOffset":queuedOffset};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.activeBank<0||d.activeBank>1)return false;if(d.fromBank<0||d.fromBank>1)return false;if(d.toBank<0||d.toBank>1)return false;return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid offset preset state");fadeTask.cancel();d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);banks=d.banks;activeBank=d.activeBank;fromBank=d.fromBank;toBank=d.toBank;requestedOffset=d.requestedOffset;activeOffset=d.activeOffset;destinationOffset=d.destinationOffset;initialized=d.initialized;fading=d.fading;startTime=d.startTime;queuedModel=d.queuedModel;queuedOffset=d.queuedOffset;}
function ec_emit(){if(initialized)emit(nowMs());if(fading)fadeTask.repeat();}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "offset";

// Public Max message endpoint for this engine's private preset helpers.
function ecpreset(dictionaryName){
 var name=String(dictionaryName),prefix=EC_NS+"preset-transfer-";
 // A foreign instance receives a negative acknowledgement, never preset data.
 if(!/^.+-ec-cnmat-sinusoids-opt_preset-transfer-[0-9]+$/.test(name))return;
 var transfer=new Dict(name),request=null;
 try{
  request=ec_wireRead(transfer,"request");
  if(request.protocol!==1||request.kind!==EC_PRESET_KIND||typeof request.sequence!=="number")throw new Error("Invalid preset request");
  if(name.indexOf(prefix)!==0)throw new Error("Preset namespace mismatch: engine="+EC_NS+" request="+name);
  var result;
  if(request.action==="ping")result=true;
  else if(request.action==="export")result=ec_export();
  else if(request.action==="validate")result=ec_validate(request.data);
  else if(request.action==="import"){ec_import(request.data);result=true;}
  else if(request.action==="emit"){ec_emit();result=true;}
  else throw new Error("Unknown preset action");
  ec_wireWrite(transfer,"response",{protocol:1,sequence:request.sequence,kind:EC_PRESET_KIND,ok:true,data:result});
 }catch(e){
  ec_wireWrite(transfer,"response",{protocol:1,sequence:request?request.sequence:0,kind:EC_PRESET_KIND,ok:false,error:(request?request.action:"request")+" "+EC_PRESET_KIND+": "+String(e.message||e)});
 }finally{transfer.freepeer();}
}

// Private preset transport. Short ASCII-only atoms avoid quote/token conversion
// and unbounded strings at the Max Dict boundary. No runtime include is needed.
function ec_dataCopy(x,depth){
 depth=depth||0;if(depth>32)throw new Error("Preset copy nesting limit");
 if(x===null)return null;
 var t=typeof x,i,k,r;
 if(t==="string"||t==="boolean")return x;
 if(t==="number"){if(!isFinite(x))throw new Error("Non-finite preset value");return x;}
 if(Object.prototype.toString.call(x)==="[object Array]"){
  r=[];for(i=0;i<x.length;i++)r[i]=x[i]===undefined?null:ec_dataCopy(x[i],depth+1);return r;
 }
 if(t==="object"){
  r={};for(k in x)if(Object.prototype.hasOwnProperty.call(x,k)&&x[k]!==undefined){
   if(k==="__proto__"||k==="constructor"||k==="prototype")throw new Error("Unsafe preset key");
   r[k]=ec_dataCopy(x[k],depth+1);
  }return r;
 }
 throw new Error("Unsupported preset value type "+t);
}
function ec_wireEncode(s){
 var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",r="",i,a,b,c;
 for(i=0;i<s.length;i+=3){a=s.charCodeAt(i);b=s.charCodeAt(i+1);c=s.charCodeAt(i+2);r+=alphabet.charAt(a>>2)+alphabet.charAt(((a&3)<<4)|(isNaN(b)?0:b>>4))+(isNaN(b)?"=":alphabet.charAt(((b&15)<<2)|(isNaN(c)?0:c>>6)))+(isNaN(c)?"=":alphabet.charAt(c&63));}return r;
}
function ec_wireDecode(s){
 if(!/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(s))throw new Error("Invalid Base64 chunk");
 var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",r="",i,a,b,c,d;
 for(i=0;i<s.length;i+=4){a=alphabet.indexOf(s.charAt(i));b=alphabet.indexOf(s.charAt(i+1));c=alphabet.indexOf(s.charAt(i+2));d=alphabet.indexOf(s.charAt(i+3));r+=String.fromCharCode((a<<2)|(b>>4));if(c>=0)r+=String.fromCharCode(((b&15)<<4)|(c>>2));if(d>=0)r+=String.fromCharCode(((c&3)<<6)|d);}return r;
}
function ec_wireChecksum(s){var a=1,b=0;for(var i=0;i<s.length;i++){a=(a+s.charCodeAt(i))%65521;b=(b+a)%65521;}return "h"+(((b<<16)|a)>>>0).toString(16);}
function ec_wireAtom(dict,key){
 var x=dict.get(key);
 if(Object.prototype.toString.call(x)==="[object Array]"&&x.length===1)x=x[0];
 return x;
}
function ec_wireWrite(dict,key,value){
 dict.set(key+"_ready",0);
 var raw=JSON.stringify(value);
 if(typeof raw!=="string")throw new Error(key+": JSON serialization returned no string");
 raw=raw.replace(/[\u007f-\uffff]/g,function(c){return "\\u"+("0000"+c.charCodeAt(0).toString(16)).slice(-4);});
 var coded=ec_wireEncode(raw),count=Math.ceil(coded.length/480);
 if(count<1||count>8192)throw new Error(key+": preset transfer too large");
 dict.set(key+"_format","ecb64v1");dict.set(key+"_chars",raw.length);
 dict.set(key+"_encoded",coded.length);dict.set(key+"_sum",ec_wireChecksum(raw));
 dict.set(key+"_count",count);
 for(var i=0;i<count;i++)dict.set(key+"_"+i,"p"+coded.substr(i*480,480));
 dict.set(key+"_ready",1);
}
function ec_wireRead(dict,key){
 if(Number(ec_wireAtom(dict,key+"_ready"))!==1)throw new Error(key+": transfer not complete");
 if(ec_wireAtom(dict,key+"_format")!=="ecb64v1")throw new Error(key+": unsupported transfer format");
 var count=Number(ec_wireAtom(dict,key+"_count")),length=Number(ec_wireAtom(dict,key+"_encoded"));
 var chars=Number(ec_wireAtom(dict,key+"_chars")),sum=ec_wireAtom(dict,key+"_sum");
 if(!isFinite(count)||count!==Math.floor(count)||count<1||count>8192||
    !isFinite(length)||length!==Math.floor(length)||length<4||length%4||Math.ceil(length/480)!==count||
    !isFinite(chars)||chars!==Math.floor(chars)||chars<1||chars>count*360)throw new Error(key+": invalid transfer dimensions");
 var raw="",part,i;
 for(i=0;i<count;i++){
  part=ec_wireAtom(dict,key+"_"+i);
  if(typeof part!=="string"||part.charAt(0)!=="p"||part.length!==1+Math.min(480,length-i*480))throw new Error(key+": missing or truncated chunk "+i);
  try{raw+=ec_wireDecode(part.substr(1));}catch(e){throw new Error(key+": corrupt chunk "+i+": "+String(e.message||e));}
 }
 if(raw.length!==chars||ec_wireChecksum(raw)!==sum)throw new Error(key+": transfer checksum mismatch");
 try{return JSON.parse(raw);}catch(e){throw new Error(key+": JSON decode failed after verified transfer ("+raw.length+" chars): "+String(e.message||e));}
}
ec_dataCopy.local=1;ec_wireEncode.local=1;ec_wireDecode.local=1;ec_wireChecksum.local=1;
ec_wireAtom.local=1;ec_wireWrite.local=1;ec_wireRead.local=1;
