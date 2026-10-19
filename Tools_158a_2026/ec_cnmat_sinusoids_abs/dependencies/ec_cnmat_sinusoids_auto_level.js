var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids_";
/* Model-power compensation for the v20 synth.
 * Inlet 0: FINAL filtered/merged tagged model: ID Hz amplitude ...
 * Inlet 1: on 0|1, strength 0..100, smooth ms, maxboost dB, capture,
 *          startup, applieddb dB (feedback from the actual gain signal), bang.
 * Outlet 0: target-dB / ramp-ms list, or stop, for line~ -> dbtoa~.
 * Outlet 1: settings/model_db/reference_db/target_db/status readbacks.
 * One common signal gain is applied after the automixer and before all sends,
 * DAC feeds and mono summing. ADSRs/automixer/faders never enter the detector.
 * P = 0.5 * sum(a*a); gain dB = strength * 10*log10(Pref/P).
 * This is average model power, not measured loudness or a peak limiter.
 */
autowatch = 1;
inlets = 2;
outlets = 2;

var enabled = true, strengthPercent = 100, smoothingMs = 300, maximumBoostDb = 6;
var power = 0, referencePower = 0, referenceReady = false;
var appliedDb = 0, targetDb = 0, holding = false;
var autoArmed = false, autoPending = false, pendingPower = 0;
var POWER_FLOOR = 1e-8; // -80 dB RMS: no normalization/capture below this point.
var autoTask = new Task(autoCapture, this);

function finite(x) { return typeof x === "number" && isFinite(x); }
function clip(x, lo, hi) { return Math.max(lo, Math.min(hi, x)); }
function db(p) { return p > 0 ? 10 * Math.log(p) / Math.LN10 : -120; }
function different(a,b) { return Math.abs(a-b) > Math.max(1e-15,Math.max(a,b)*1e-9); }
function status(s) { outlet(1,"status",s); }
function settings() { outlet(1,"settings",enabled?1:0,strengthPercent,smoothingMs,maximumBoostDb); }
function levels() {
    outlet(1,"model_db",Math.max(-120,db(power)));
    outlet(1,"reference_db",referenceReady?Math.max(-120,db(referencePower)):-120);
    outlet(1,"target_db",targetDb);
}
function commandGain(value, force) {
    value=clip(value,-120,maximumBoostDb);
    if(!force && !holding && Math.abs(value-targetDb)<1e-6)return;
    holding=false;targetDb=value;
    outlet(0,[targetDb,smoothingMs]);
}
function evaluate(force) {
    if(!enabled || strengthPercent<=0){
        commandGain(0,force);
        status(enabled?"ON | strength 0%":"OFF | returning to unity");
    }else if(!referenceReady){
        commandGain(0,force);
        status("ON | waiting for reference");
    }else if(power<=POWER_FLOOR){
        // Stop the native ramp at its current position: silence never raises gain.
        if(!holding){outlet(0,"stop");targetDb=appliedDb;holding=true;}
        status("ON | silent model: gain held");
    }else{
        var rawDb=(strengthPercent/100)*(db(referencePower)-db(power));
        commandGain(rawDb,force);
        status(rawDb>maximumBoostDb?"ON | maximum boost reached":"ON | following model");
    }
    levels();
}
function scheduleAuto() {
    if(!autoArmed || referenceReady)return;
    if(power<=POWER_FLOOR){autoTask.cancel();autoPending=false;return;}
    // Wait for amplitude initialization/morphing to settle; frequency-only
    // rebuilds with unchanged model power do not keep restarting the timer.
    if(!autoPending || different(power,pendingPower)){
        autoTask.cancel();pendingPower=power;autoPending=true;autoTask.schedule(300);
    }
}
function autoCapture() {
    autoPending=false;
    if(!autoArmed || referenceReady || power<=POWER_FLOOR)return;
    referencePower=power;referenceReady=true;autoArmed=false;
    evaluate(false);
}
function acceptModel(values) {
    if(values.length%3){error("Auto Level: tagged ID/Hz/amplitude records required\n");return;}
    var total=0, seen={}, i, id, f, a;
    for(i=0;i<values.length;i+=3){
        id=Number(values[i]);f=Number(values[i+1]);a=Number(values[i+2]);
        if(!finite(id)||id!==Math.floor(id)||id<1||id>512||seen[id]||
           !finite(f)||f<=0||!finite(a)||a<0){
            error("Auto Level: invalid tagged model; previous estimate retained\n");return;
        }
        seen[id]=true;total+=0.5*a*a;
    }
    if(!finite(total)){error("Auto Level: non-finite model power\n");return;}
    var changed=different(total,power);power=total;
    scheduleAuto();
    if(changed)evaluate(false);
}
function list() { if(inlet===0)acceptModel(arrayfromargs(arguments)); }
function tagged() { if(inlet===0)acceptModel(arrayfromargs(arguments)); }
function on(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    enabled=x!==0;settings();evaluate(false);
}
function strength(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    strengthPercent=clip(x,0,100);settings();evaluate(false);
}
function smooth(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    smoothingMs=clip(x,0,600000);settings(); // Applies to the next changed target.
}
function maxboost(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    maximumBoostDb=clip(x,0,24);settings();evaluate(false);
}
function applieddb(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    appliedDb=clip(x,-120,24);
}
function capture() {
    if(inlet!==1)return;
    if(power<=POWER_FLOOR){status("CAPTURE ignored: model is silent");return;}
    autoTask.cancel();autoPending=false;autoArmed=false;
    // When enabled, capture the current compensated level without a gain jump.
    // Divide by strength because the correction is interpolated in dB.
    var correction=(enabled && strengthPercent>0)?appliedDb/(strengthPercent/100):0;
    referencePower=Math.pow(10,clip(db(power)+correction,-180,120)/10);
    referenceReady=true;evaluate(false);status("REFERENCE captured");
}
function startup() {
    if(inlet!==1 || referenceReady)return;
    autoArmed=true;scheduleAuto();evaluate(false);
}
function bang() {
    // An empty Max list can arrive as bang; it represents no sounding records.
    if(inlet===0)acceptModel([]);
    else {settings();levels();}
}
function loadbang() {
    outlet(0,[0,0]);settings();levels();
    outlet(1,"applied_db",0);outlet(1,"applied_gain",1);
    status("ON | preparing startup reference");
}
function notifydeleted() { autoTask.cancel(); }
function clear() { if(inlet===0)acceptModel([]); }
function set() {}
function anything() {}

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
var ec_fields = ["enabled", "strengthPercent", "smoothingMs", "maximumBoostDb", "referencePower", "referenceReady", "appliedDb", "targetDb", "holding", "autoArmed"];
var ec_clocks = [];
function ec_export(){var d=ec_copy({"enabled":enabled,"strengthPercent":strengthPercent,"smoothingMs":smoothingMs,"maximumBoostDb":maximumBoostDb,"referencePower":referencePower,"referenceReady":referenceReady,"appliedDb":appliedDb,"targetDb":targetDb,"holding":holding,"autoArmed":autoArmed});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"enabled":enabled,"strengthPercent":strengthPercent,"smoothingMs":smoothingMs,"maximumBoostDb":maximumBoostDb,"referencePower":referencePower,"referenceReady":referenceReady,"appliedDb":appliedDb,"targetDb":targetDb,"holding":holding,"autoArmed":autoArmed};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.strengthPercent<0||d.strengthPercent>100)return false;if(d.smoothingMs<0||d.smoothingMs>600000)return false;if(d.referencePower<0||d.referencePower>1000000000000000.0)return false;return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid auto_level preset state");autoTask.cancel();d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);enabled=d.enabled;strengthPercent=d.strengthPercent;smoothingMs=d.smoothingMs;maximumBoostDb=d.maximumBoostDb;referencePower=d.referencePower;referenceReady=d.referenceReady;appliedDb=d.appliedDb;targetDb=d.targetDb;holding=d.holding;autoArmed=d.autoArmed;autoPending=false;}
function ec_emit(){settings();levels();evaluate(true);}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "auto_level";

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
