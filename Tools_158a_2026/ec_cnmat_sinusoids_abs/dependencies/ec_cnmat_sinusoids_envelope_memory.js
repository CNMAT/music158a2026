var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids_";
/* Stage 15: independent linear shape morphs with 256-slot per-partial memory.
 * 0..2 target lists; 3..5 manual/current slider feedback; 6..8 morph ms; 9 count.
 * 0..2 outputs to the three multisliders (size messages plus value lists).
 * Outlet 3 brackets removal with beginupdate/endupdate; inlet 10 accepts zeroindices.
 * Only active slots are changed by edits/shapes/random lists; hidden slots survive.
 */
autowatch=1;
inlets=11;
outlets=5;
var capacity=256, componentCount=32;
var durations=[1000,1000,1000], activeDuration=[1000,1000,1000];
var memory=[[],[],[]], current=[[],[],[]], starts=[[],[],[]], targets=[[],[],[]];
var initialized=[false,false,false], running=[false,false,false], outputGuard=[false,false,false];
var startTimes=[0,0,0];
var tasks=[new Task(tick,this,0),new Task(tick,this,1),new Task(tick,this,2)];
var c,i;
for(c=0;c<3;c++){
    tasks[c].interval=20;
    for(i=0;i<capacity;i++)memory[c][i]=0.0;
}
// The library applies the startup amplitude profile only to the active slots.
for(c=0;c<3;c++)current[c]=memory[c].slice(0,componentCount);
function nowMs(){return (new Date()).getTime();}
function clipped(x,channel){x=Number(x);return isFinite(x)?Math.round(Math.max(channel===0?-1:0,Math.min(1,x))*1000000)/1000000:0;}
function clean(values,channel){var r=[],i;for(i=0;i<values.length;i++)r[i]=clipped(values[i],channel);return r;}
function store(channel,values){
    // Never update hidden components from a short active list.
    var limit=Math.min(componentCount,values.length),i;
    for(i=0;i<limit;i++)memory[channel][i]=clipped(values[i],channel);
    current[channel]=memory[channel].slice(0,componentCount);
}
function emit(channel,values,resize){
    store(channel,values);
    outputGuard[channel]=true;
    if(resize)outlet(channel,"size",componentCount);
    outlet(channel,current[channel].slice(0));
    outputGuard[channel]=false;
}
function materialize(channel){
    if(!running[channel])return;
    var t=Math.max(0,Math.min(1,(nowMs()-startTimes[channel])/activeDuration[channel]));
    var values=[],i;
    for(i=0;i<componentCount;i++)values[i]=clipped(starts[channel][i]+(targets[channel][i]-starts[channel][i])*t,channel);
    store(channel,values);
    if(t>=1){running[channel]=false;tasks[channel].cancel();}
}
function setCount(value){
    value=Math.max(2,Math.min(capacity,Math.round(Number(value))));
    if(!isFinite(value))return;
    for(var c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;}
    componentCount=value;
    for(c=0;c<3;c++)emit(c,memory[c].slice(0,componentCount),true);
}
function target(channel,values){
    if(values.length!==componentCount)return;
    materialize(channel);tasks[channel].cancel();
    targets[channel]=clean(values,channel);
    starts[channel]=memory[channel].slice(0,componentCount);
    if(!initialized[channel]||durations[channel]<=0){
        initialized[channel]=true;running[channel]=false;emit(channel,targets[channel],false);return;
    }
    initialized[channel]=true;startTimes[channel]=nowMs();activeDuration[channel]=durations[channel];
    running[channel]=true;emit(channel,starts[channel],false);tasks[channel].repeat();
}
function tick(channel){
    if(!running[channel]){tasks[channel].cancel();return;}
    materialize(channel);emit(channel,current[channel],false);
}
function list(){
    var values=arrayfromargs(arguments);
    if(inlet>=0&&inlet<=2)target(inlet,values);
    else if(inlet>=3&&inlet<=5){
        var channel=inlet-3;
        // Ignore echoed output and size-generated lists while restoring memory.
        if(outputGuard[channel]||values.length!==componentCount)return;
        tasks[channel].cancel();running[channel]=false;store(channel,clean(values,channel));initialized[channel]=true;
    }
}
function scalar(x){
    x=Number(x);if(!isFinite(x))return;
    if(inlet===9)setCount(x);
    else if(inlet>=6&&inlet<=8)durations[inlet-6]=Math.max(0,Math.min(600000,x));
}
function msg_int(x){scalar(x);}
function msg_float(x){scalar(x);}
function bang(){}
function clear(){}
function append(){}
function set(){}
function anything(){}

// External removal applies to indexed memory, not a temporary post-model mask.
function zeroindices(){
    if(inlet!==10)return;
    var args=arrayfromargs(arguments),indices=[],seen={},i,c;
    for(i=0;i<args.length;i++){var n=Number(args[i]);if(isFinite(n)&&Math.floor(n)===n&&n>=1&&n<=componentCount&&!seen[n]){seen[n]=true;indices.push(n-1);}}
    if(!indices.length)return;
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    // Update all layer banks before exposing a single final model to the synthesizer.
    outlet(3,"beginupdate");
    for(c=0;c<3;c++)for(i=0;i<indices.length;i++)memory[c][indices[i]]=0.0;
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    outlet(3,"endupdate");
}

// Design workspaces send octavefamily BASE on|off to inlet 10.
// Visible primary amplitudes are replaced; anchor amplitudes are cleared.
function octavefamily(base,state){
    if(inlet!==10)return;
    base=Number(base);state=String(state);
    if(!isFinite(base)||base!==Math.floor(base)||base<2||base>capacity||
       (base!==2&&base%2===0)||(state!=="on"&&state!=="off")||base>componentCount)return;
    var c,n,ordinal=1;
    for(c=1;c<=2;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    outlet(3,"beginupdate");
    for(n=base;n<=componentCount;n*=2){
        memory[1][n-1]=state==="on"?clipped(1/ordinal):0.0;
        memory[2][n-1]=0.0;ordinal++;
    }
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    outlet(3,"endupdate");
}

// Global flat zero clears the full 256-slot bank, including partial 1.
// The current visible component count is preserved.
function alloff(){
    if(inlet!==10)return;
    var c,i;
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    outlet(3,"beginupdate");
    for(c=0;c<3;c++)for(i=0;i<capacity;i++)memory[c][i]=0.0;
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    outlet(3,"endupdate");
    outlet(4,"flatmenus");
}

// Copy the current primary amplitude bank to harmonic anchors, including hidden slots.

function copyAmplitudeLayer(destination){
    if(inlet!==10)return;
    materialize(1);
    tasks[1].cancel();running[1]=false;initialized[1]=true;
    tasks[destination].cancel();running[destination]=false;initialized[destination]=true;
    memory[destination]=memory[1].slice(0);
    outlet(3,"beginupdate");
    emit(1,memory[1].slice(0,componentCount),false);
    emit(destination,memory[destination].slice(0,componentCount),false);
    outlet(3,"endupdate");
}
function PartialAmplitudes_to_HarmonicAnchor(){copyAmplitudeLayer(2);}
function PartialAmplitudes_to_Inharmonicity(){copyAmplitudeLayer(0);}
// Workspace applies complete 256-slot inharmonicity, primary and anchor banks.
function stoplayers(){
    if(inlet!==10)return;
    var v=arrayfromargs(arguments),c,i;
    if(v.length!==capacity*3)return;
    for(i=0;i<v.length;i++)if(!isFinite(Number(v[i])))return;
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    for(c=0;c<3;c++)memory[c]=clean(v.slice(c*capacity,(c+1)*capacity),c);
    outlet(3,"beginupdate");
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    outlet(3,"endupdate");
}

// v20 student-message controls. Indices are one-based, including hidden slots.
function partialvalue(channel,index,value){
    channel=Number(channel);index=Number(index);value=Number(value);
    if(inlet!==10||!isFinite(channel)||channel!==Math.floor(channel)||channel<0||channel>2||
       !isFinite(index)||index!==Math.floor(index)||index<1||index>capacity||!isFinite(value))return;
    materialize(channel);tasks[channel].cancel();running[channel]=false;initialized[channel]=true;
    memory[channel][index-1]=clipped(value,channel);
    outlet(3,"beginupdate");emit(channel,memory[channel].slice(0,componentCount),false);outlet(3,"endupdate");
}
function partialget(channel,index){
    channel=Number(channel);index=Number(index);
    if(inlet!==10||!isFinite(channel)||channel!==Math.floor(channel)||channel<0||channel>2||
       !isFinite(index)||index!==Math.floor(index)||index<1||index>capacity)return;
    materialize(channel);
    var names=[(EC_NS + "Partial_Drift_current"),(EC_NS + "Partial_Amplitude_current"),(EC_NS + "Partial_Anchor_current")];
    messnamed(names[channel],memory[channel][index-1]);
}
function familyvalue(root,state){
    root=Number(root);state=Number(state);
    if(state!==0&&state!==1)return;
    octavefamily(root,state===1?"on":"off");
}

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
var ec_fields = ["componentCount", "durations", "activeDuration", "memory", "current", "starts", "targets", "initialized", "running", "outputGuard", "startTimes"];
var ec_clocks = ["startTimes"];
function ec_export(){for(var c=0;c<3;c++)materialize(c);var d=ec_copy({"componentCount":componentCount,"durations":durations,"activeDuration":activeDuration,"memory":memory,"current":current,"starts":starts,"targets":targets,"initialized":initialized,"running":running,"outputGuard":outputGuard,"startTimes":startTimes});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"componentCount":componentCount,"durations":durations,"activeDuration":activeDuration,"memory":memory,"current":current,"starts":starts,"targets":targets,"initialized":initialized,"running":running,"outputGuard":outputGuard,"startTimes":startTimes};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.componentCount<2||d.componentCount>256)return false;if(d.memory.length!==3)return false;for(var c=0;c<3;c++){if(d.memory[c].length!==256)return false;for(var j=0;j<256;j++)if(typeof d.memory[c][j]!=="number"||d.memory[c][j]<(c===0?-1:0)||d.memory[c][j]>1)return false;}return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid envelope_memory preset state");for(var c=0;c<3;c++)tasks[c].cancel();d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);componentCount=d.componentCount;durations=d.durations;activeDuration=d.activeDuration;memory=d.memory;current=d.current;starts=d.starts;targets=d.targets;initialized=d.initialized;running=d.running;outputGuard=d.outputGuard;startTimes=d.startTimes;outputGuard=[false,false,false];}
function ec_emit(){for(var c=0;c<3;c++)emit(c,current[c],true);for(var c=0;c<3;c++)if(running[c])tasks[c].repeat();}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;
function notifydeleted(){for(var c=0;c<3;c++)tasks[c].cancel();}

var EC_PRESET_KIND = "envelope_memory";

// Public Max message endpoint for this engine's private preset helpers.
function ecpreset(dictionaryName){
 var name=String(dictionaryName),prefix=EC_NS+"preset-transfer-";
 // A foreign instance receives a negative acknowledgement, never preset data.
 if(!/^.+-ec-cnmat-sinusoids_preset-transfer-[0-9]+$/.test(name))return;
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
