var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids-opt_";
/* Stage 15 independent global retuning.
 * Inlets: 0 reference base Hz, 1 target base Hz, 2 mode, 3 glide ms.
 * Modes: 0 regenerate ERB-aware partials; 1 preserve ratios; 2 add target-reference Hz.
 * Outlets: 0 generator base; 1 'tuning ratio shift' to transform; 2 current base display;
 * 3 'set target' to the target box when the original base control changes.
 * Task runs at 25ms; parameter ramps do NOT write to any multislider.
 */
autowatch=1;
inlets=4;
outlets=4;
var referenceBase=110.0, targetBase=110.0, actualBase=110.0;
var mode=0, glideMs=1000.0, active=false;
var rampStart=110.0, rampEnd=110.0, startTime=0, rampDuration=1000.0;
var lastGeneratorBase=-1;
var glideTask=new Task(tick,this);
glideTask.interval=25;
function nowMs(){return (new Date()).getTime();}
function baseValue(x){return Math.max(1.0,Math.min(23000.0,Number(x)));}
function emit(){
    var generatorBase=mode===0?actualBase:referenceBase;
    var ratio=mode===1?actualBase/referenceBase:1.0;
    var shift=mode===2?actualBase-referenceBase:0.0;
    outlet(1,"tuning",ratio,shift,generatorBase!==lastGeneratorBase?1:0);
    if(generatorBase!==lastGeneratorBase){lastGeneratorBase=generatorBase;outlet(0,generatorBase);}
    outlet(2,actualBase);
}
function requestTarget(x){
    x=baseValue(x);if(!isFinite(x))return;
    // Materialize the elapsed ramp before re-targeting, avoiding a restart jump.
    if(active) updateActual();
    glideTask.cancel();targetBase=x;
    rampStart=actualBase;rampEnd=x;startTime=nowMs();rampDuration=glideMs;
    if(rampDuration<=0||rampStart===rampEnd){active=false;actualBase=x;emit();return;}
    active=true;emit();glideTask.repeat();
}
function updateActual(){
    var t=Math.max(0,Math.min(1,(nowMs()-startTime)/rampDuration));
    // Ratio/geometric glide for pitch; linear-Hz glide for additive shifting.
    actualBase=mode===2?rampStart+(rampEnd-rampStart)*t:rampStart*Math.pow(rampEnd/rampStart,t);
    if(t>=1){actualBase=rampEnd;active=false;glideTask.cancel();}
}
function tick(){if(!active){glideTask.cancel();return;}updateActual();emit();}
function scalar(x){
    x=Number(x);if(!isFinite(x))return;
    if(inlet===0){referenceBase=baseValue(x);outlet(3,"set",referenceBase);requestTarget(referenceBase);}
    else if(inlet===1)requestTarget(x);
    else if(inlet===2){if(active)updateActual();active=false;glideTask.cancel();mode=Math.max(0,Math.min(2,Math.round(x)));requestTarget(targetBase);}
    else if(inlet===3)glideMs=Math.max(0,Math.min(600000,x));
}
function msg_int(x){scalar(x);}
function msg_float(x){scalar(x);}
function bang(){emit();}
function loadbang(){emit();}
function clear(){}
function append(){}
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
var ec_fields = ["referenceBase", "targetBase", "actualBase", "mode", "glideMs", "active", "rampStart", "rampEnd", "startTime", "rampDuration"];
var ec_clocks = ["startTime"];
function ec_export(){if(active)updateActual();var d=ec_copy({"referenceBase":referenceBase,"targetBase":targetBase,"actualBase":actualBase,"mode":mode,"glideMs":glideMs,"active":active,"rampStart":rampStart,"rampEnd":rampEnd,"startTime":startTime,"rampDuration":rampDuration});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"referenceBase":referenceBase,"targetBase":targetBase,"actualBase":actualBase,"mode":mode,"glideMs":glideMs,"active":active,"rampStart":rampStart,"rampEnd":rampEnd,"startTime":startTime,"rampDuration":rampDuration};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.referenceBase<1||d.referenceBase>23000)return false;if(d.targetBase<1||d.targetBase>23000)return false;if(d.actualBase<1||d.actualBase>23000)return false;if(d.mode<0||d.mode>2)return false;if(d.glideMs<0||d.glideMs>600000)return false;return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid retuning preset state");glideTask.cancel();d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);referenceBase=d.referenceBase;targetBase=d.targetBase;actualBase=d.actualBase;mode=d.mode;glideMs=d.glideMs;active=d.active;rampStart=d.rampStart;rampEnd=d.rampEnd;startTime=d.startTime;rampDuration=d.rampDuration;lastGeneratorBase=-1;}
function ec_emit(){emit();if(active)glideTask.repeat();}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;
function notifydeleted(){glideTask.cancel();}

var EC_PRESET_KIND = "retuning";

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
