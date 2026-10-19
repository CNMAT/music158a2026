var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids_";
/*
    ec_cnmat_sinusoids_model.js
    Stage 15 helper for CNMAT sinusoids~.

    Inlets
    0: signed detune list, -1.0..1.0 = -100..100 cents
    1: amplitude multislider list, 0.0-1.0
    2: exact-harmonic anchor amplitudes, 0.0-1.0
    3: requested component count, 2-256
    4: base frequency in Hz
    5: Drift Amount 0..1 (legacy Max_Drift address)
    6: audio sample rate in Hz
    7: beginupdate/endupdate transaction for atomic three-layer removal
    8: seed, micro, microdepth (step Hz), microtime (ms), microofftime (ms),
       firstpartial N (1..23000): slider slot i represents harmonic N+i

    Outlets
    0: interleaved frequency/amplitude model for sinusoids~
    1: requested-count output-pairs harmonic-anchors merged filtered limit
    2: filtered partial-index / attempted-frequency pairs, or "none"
    3: alias-filter flag (0 or 1)
    4: full unfiltered source pairs for the Stage 15 post-transform pipeline
    5: current maximum micro-drift displacement readback
    6: stable tagged source records: ID, frequency, amplitude. Primary and
       harmonic-anchor IDs are permanent odd/even partners for slider slots 1..256.
       Partial Offset changes their frequencies, never their IDs or stored levels.
*/

autowatch = 1;
inlets = 9;
outlets = 7;

var componentCount = 32;
var baseFrequency = 110.0;
var firstPartial = 1;
var microAmount = 0.0;
var sampleRate = 48000.0;
var requestedLimit = 23000.0;
var duplicateToleranceHz = 0.0001;
var driftValues = [];
var amplitudeValues = [];
var harmonicAmplitudeValues = [];
var holdModel = false;

// Independent seeded streams: steady direction assignments and slow random walks.
var driftSeed = 12345, directionState = 1, walkState = 1;
var driftDirections = [], microStart = [], microTarget = [], microTimes = [], microDurations = [];
var microEnabled = false, microDepthHz = 1.0, microTimeMs = 2000.0;
// OFF freezes each current walk offset and returns it to zero over this time.
// Amount remains a separate multiplier; amount 0 still resets immediately.
var microOffMs = 2000.0, microReturning = false;
var microReturnStart = 0, microReturnDuration = 0;
var microTask = new Task(microTick, this);
microTask.interval = 40;
function microNow(){return (new Date()).getTime();}
function seededRandom(walk){
    var x=walk?walkState:directionState;
    x^=x<<13;x^=x>>>17;x^=x<<5;x=x>>>0;
    if(walk)walkState=x;else directionState=x;
    return x/4294967296.0;
}
function resetWalk(){
    microReturning=false;
    walkState=(driftSeed^0x9e3779b9)>>>0;if(!walkState)walkState=1;
    var t=microNow();
    for(var i=0;i<256;i++){microStart[i]=0;microTarget[i]=0;microTimes[i]=t;microDurations[i]=1;}
    if(microEnabled && microAmount>0)for(i=(firstPartial===1?1:0);i<256;i++)nextMicro(i,0,t);
}
function seed(x){
    if(inlet!==8)return;
    x=Number(x);if(!isFinite(x))return;
    driftSeed=Math.round(x)>>>0;directionState=driftSeed||1;
    for(var i=0;i<256;i++)driftDirections[i]=seededRandom(false)<0.5?-1:1;
    resetWalk();buildModel();
}
function microValue(i){
    if((!microEnabled && !microReturning) || microAmount<=0)return 0;
    var t=clip((microNow()-microTimes[i])/microDurations[i],0,1);
    return microStart[i]+(microTarget[i]-microStart[i])*t;
}
function nextMicro(i,value,t){
    microStart[i]=value;
    microTarget[i]=value+(seededRandom(true)<0.5 ? -1 : 1)*microDepthHz;
    microTimes[i]=t;microDurations[i]=microTimeMs*(0.75+seededRandom(true)*0.5);
}
// Slot zero is protected only when it represents the actual fundamental.
// Start/stop its walk separately so changing N does not reset other slots.
function firstpartial(x){
    if(inlet!==8)return;x=Number(x);if(!isFinite(x))return;
    var next=clip(Math.round(x),1,23000);
    if(next===firstPartial)return;
    var wasFundamental=firstPartial===1;
    firstPartial=next;
    if(firstPartial===1){
        microStart[0]=0;microTarget[0]=0;microTimes[0]=microNow();microDurations[0]=1;
    }else if(wasFundamental && microEnabled && microAmount>0){
        nextMicro(0,0,microNow());
    }
    buildModel();
}
function micro(x){
    if(inlet!==8||!isFinite(Number(x)))return;
    var enabled=Number(x)!==0;
    // Repeated OFF messages must not restart an in-progress return.
    if(!enabled && !microEnabled){buildModel();return;}
    var t=microNow(), values=[], i, hasOffset=false;
    if(microAmount>0)for(i=(firstPartial===1?1:0);i<256;i++){
        values[i]=microValue(i);
        if(values[i]!==0)hasOffset=true;
    }
    microTask.cancel();
    if(!enabled){
        microEnabled=false;
        if(microAmount>0 && microOffMs>0 && hasOffset){
            microReturning=true;microReturnStart=t;microReturnDuration=microOffMs;
            for(i=(firstPartial===1?1:0);i<256;i++){
                microStart[i]=values[i];microTarget[i]=0;
                microTimes[i]=t;microDurations[i]=microReturnDuration;
            }
            microTask.repeat();
        }else resetWalk();
    }else{
        var resumeReturn=microReturning;
        microEnabled=true;microReturning=false;
        if(resumeReturn && microAmount>0){
            // ON during the return continues from its elapsed position.
            for(i=(firstPartial===1?1:0);i<256;i++)nextMicro(i,values[i],t);
        }else resetWalk();
        if(microAmount>0)microTask.repeat();
    }
    buildModel();
}
function microofftime(x){
    if(inlet!==8)return;x=Number(x);if(!isFinite(x))return;
    // Changes affect the next OFF request, not an already running return.
    microOffMs=clip(x,0,600000);
}
function microdepth(x){
    if(inlet!==8)return;x=Number(x);if(!isFinite(x))return;
    microDepthHz=clip(x,0,5);buildModel();
}
function microtime(x){
    if(inlet!==8)return;x=Number(x);if(!isFinite(x))return;
    microTimeMs=clip(x,100,600000);
    // Materialize each line before changing its next segment duration.
    var t=microNow();if(microEnabled)for(var i=(firstPartial===1?1:0);i<256;i++)nextMicro(i,microValue(i),t);
}
// Zero amount stops computation and discards the accumulated walk.
function setMicroAmount(value){
    if(!isFinite(value))return;
    var wasActive=microAmount>0;
    microAmount=clip(value,0,1);
    if(microAmount<=0){microTask.cancel();resetWalk();}
    else if(!wasActive){resetWalk();if(microEnabled)microTask.repeat();}
}
function microTick(){
    if((!microEnabled && !microReturning) || microAmount<=0){microTask.cancel();return;}
    var t=microNow();
    if(microReturning){
        if(t>=microReturnStart+microReturnDuration){microTask.cancel();resetWalk();}
        buildModel();return;
    }
    for(var i=(firstPartial===1?1:0);i<256;i++)if(t>=microTimes[i]+microDurations[i])nextMicro(i,microTarget[i],t);
    buildModel();
}
function notifydeleted(){microTask.cancel();}
// Initialize stable assignments before the first model is generated.
directionState=driftSeed;
for(var directionIndex=0;directionIndex<256;directionIndex++)driftDirections[directionIndex]=seededRandom(false)<0.5?-1:1;
resetWalk();

function beginupdate() { if (inlet === 7) holdModel = true; }
function endupdate() { if (inlet === 7) { holdModel = false; buildModel(); } }

function clip(value, low, high) {
    return Math.max(low, Math.min(high, value));
}

function erbBandwidth(frequency) {
    return 24.7 * (1.0 + 0.00437 * frequency);
}

function copyClipped(source, low) {
    var result = [];
    var i;
    for (i = 0; i < source.length; i++) {
        result[i] = isFinite(Number(source[i])) ? clip(Number(source[i]), low || 0.0, 1.0) : 0.0;
    }
    return result;
}

function list() {
    var values = arrayfromargs(arguments);
    if (inlet === 0) {
        driftValues = copyClipped(values, -1.0);
    } else if (inlet === 1) {
        amplitudeValues = copyClipped(values);
    } else if (inlet === 2) {
        harmonicAmplitudeValues = copyClipped(values);
    } else if (inlet === 3 && values.length) {
        componentCount = clip(Math.round(Number(values[0])), 2, 256);
    } else if (inlet === 4 && values.length) {
        baseFrequency = clip(Number(values[0]), 1.0, 23000.0);
    } else if (inlet === 5 && values.length) {
        setMicroAmount(Number(values[0]));
    } else if (inlet === 6 && values.length) {
        sampleRate = Math.max(1.0, Number(values[0]));
    }
    buildModel();
}

function msg_int(value) {
    setScalar(Number(value));
}

function msg_float(value) {
    setScalar(Number(value));
}

function setScalar(value) {
    if (inlet === 3) {
        componentCount = clip(Math.round(value), 2, 256);
    } else if (inlet === 4) {
        baseFrequency = clip(value, 1.0, 23000.0);
    } else if (inlet === 5) {
        setMicroAmount(value);
    } else if (inlet === 6) {
        sampleRate = Math.max(1.0, value);
    }
    buildModel();
}

function bang() {
    buildModel();
}

// Max UI/message-box maintenance selectors are not synthesis data.
// Accept and ignore them so they cannot alter or retrigger the stored model.
function clear() {
}

function append() {
}

function set() {
}

function anything() {
}

function buildModel() {
    if (holdModel) return;
    var candidates = [];
    var rawModel = [];
    var taggedRawModel = [];
    var model = [];
    var filtered = [];
    var effectiveLimit = Math.min(requestedLimit, 0.499 * sampleRate);
    var requested = componentCount;
    var harmonicAnchors = 0;
    var maximumMicroShift = 0.0;
    var merged = 0;
    var i;

    for (i = 0; i < requested; i++) {
        var partialNumber = i + firstPartial;
        var idealFrequency = baseFrequency * partialNumber;
        var drift = i < driftValues.length ? driftValues[i] : 0.0;
        var amplitude = i < amplitudeValues.length ? amplitudeValues[i] : 0.0;
        var harmonicAmplitude = i < harmonicAmplitudeValues.length ? harmonicAmplitudeValues[i] : 0.0;
        var frequency;

        if (partialNumber === 1) {
            frequency = baseFrequency;
        } else {
            var detuned = idealFrequency * Math.pow(2.0, drift / 12.0);
            var microShift = microValue(i) * microAmount;
            frequency = Math.max(1.0, detuned + microShift);
            if(amplitude>0.0)maximumMicroShift=Math.max(maximumMicroShift,Math.abs(frequency-detuned));
        }

        rawModel.push(frequency, amplitude);
        // Stable identities survive sorting, resizing and removal. Primary IDs
        // are odd; their exact-harmonic anchor partners are the following even ID.
        taggedRawModel.push(i * 2 + 1, frequency, amplitude);
        if (frequency < effectiveLimit) {
            candidates.push({ frequency: frequency, amplitude: amplitude });
        } else {
            filtered.push(partialNumber);
            filtered.push(frequency);
        }

        if (harmonicAmplitude > 0.0) {
            rawModel.push(idealFrequency, harmonicAmplitude);
            if (idealFrequency < effectiveLimit) {
                candidates.push({ frequency: idealFrequency, amplitude: harmonicAmplitude });
                harmonicAnchors++;
            } else {
                filtered.push(partialNumber);
                filtered.push(idealFrequency);
            }
        }
        // The tagged stream always includes the anchor record, even at zero,
        // so its identity and renderer slot never depend on its current level.
        taggedRawModel.push(i * 2 + 2, idealFrequency, harmonicAmplitude);
    }

    candidates.sort(function (a, b) {
        return a.frequency - b.frequency;
    });

    var compacted = [];
    for (i = 0; i < candidates.length; i++) {
        var candidate = candidates[i];
        if (compacted.length && Math.abs(candidate.frequency - compacted[compacted.length - 1].frequency) <= duplicateToleranceHz) {
            compacted[compacted.length - 1].amplitude = clip(compacted[compacted.length - 1].amplitude + candidate.amplitude, 0.0, 1.0);
            merged++;
        } else {
            compacted.push({ frequency: candidate.frequency, amplitude: candidate.amplitude });
        }
    }

    for (i = 0; i < compacted.length; i++) {
        model.push(compacted[i].frequency);
        model.push(compacted[i].amplitude);
    }

    outlet(1, [requested, compacted.length, harmonicAnchors, merged, filtered.length / 2, effectiveLimit]);
    if (filtered.length) {
        outlet(2, filtered);
        outlet(3, 1);
    } else {
        outlet(2, "none");
        outlet(3, 0);
    }
    outlet(0, model);
    outlet(4, rawModel);
    outlet(5,"set",maximumMicroShift);
    outlet(6, taggedRawModel);
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
var ec_fields = ["componentCount", "baseFrequency", "firstPartial", "microAmount", "requestedLimit", "driftValues", "amplitudeValues", "harmonicAmplitudeValues", "driftSeed", "directionState", "walkState", "driftDirections", "microStart", "microTarget", "microTimes", "microDurations", "microEnabled", "microDepthHz", "microTimeMs", "microOffMs", "microReturning", "microReturnStart", "microReturnDuration"];
var ec_clocks = ["microTimes", "microReturnStart"];
function ec_export(){var d=ec_copy({"componentCount":componentCount,"baseFrequency":baseFrequency,"firstPartial":firstPartial,"microAmount":microAmount,"requestedLimit":requestedLimit,"driftValues":driftValues,"amplitudeValues":amplitudeValues,"harmonicAmplitudeValues":harmonicAmplitudeValues,"driftSeed":driftSeed,"directionState":directionState,"walkState":walkState,"driftDirections":driftDirections,"microStart":microStart,"microTarget":microTarget,"microTimes":microTimes,"microDurations":microDurations,"microEnabled":microEnabled,"microDepthHz":microDepthHz,"microTimeMs":microTimeMs,"microOffMs":microOffMs,"microReturning":microReturning,"microReturnStart":microReturnStart,"microReturnDuration":microReturnDuration});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"componentCount":componentCount,"baseFrequency":baseFrequency,"firstPartial":firstPartial,"microAmount":microAmount,"requestedLimit":requestedLimit,"driftValues":driftValues,"amplitudeValues":amplitudeValues,"harmonicAmplitudeValues":harmonicAmplitudeValues,"driftSeed":driftSeed,"directionState":directionState,"walkState":walkState,"driftDirections":driftDirections,"microStart":microStart,"microTarget":microTarget,"microTimes":microTimes,"microDurations":microDurations,"microEnabled":microEnabled,"microDepthHz":microDepthHz,"microTimeMs":microTimeMs,"microOffMs":microOffMs,"microReturning":microReturning,"microReturnStart":microReturnStart,"microReturnDuration":microReturnDuration};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.componentCount<2||d.componentCount>256)return false;if(d.baseFrequency<1||d.baseFrequency>23000)return false;if(d.firstPartial<1||d.firstPartial>23000)return false;if(d.microAmount<0||d.microAmount>1)return false;if(d.microTimeMs<1||d.microTimeMs>600000)return false;return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid model preset state");microTask.cancel();d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);componentCount=d.componentCount;baseFrequency=d.baseFrequency;firstPartial=d.firstPartial;microAmount=d.microAmount;requestedLimit=d.requestedLimit;driftValues=d.driftValues;amplitudeValues=d.amplitudeValues;harmonicAmplitudeValues=d.harmonicAmplitudeValues;driftSeed=d.driftSeed;directionState=d.directionState;walkState=d.walkState;driftDirections=d.driftDirections;microStart=d.microStart;microTarget=d.microTarget;microTimes=d.microTimes;microDurations=d.microDurations;microEnabled=d.microEnabled;microDepthHz=d.microDepthHz;microTimeMs=d.microTimeMs;microOffMs=d.microOffMs;microReturning=d.microReturning;microReturnStart=d.microReturnStart;microReturnDuration=d.microReturnDuration;holdModel=false;}
function ec_emit(){buildModel();if((microEnabled||microReturning)&&microAmount>0)microTask.repeat();}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "model";

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
