/*
    V2_cnmat_sinusoid_model_generator_v23.js
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
outlets = 8;

var partialMultipliersOverride=null, fundamentalWeightsOverride=null, frozenMicroOffsets=null;
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
    frozenMicroOffsets=null;
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
    if(frozenMicroOffsets)return frozenMicroOffsets[i];
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
    if(next===firstPartial&&!partialMultipliersOverride)return;
    partialMultipliersOverride=null;fundamentalWeightsOverride=null;
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

var distributionIndex=0, primeCache=[2], lastMultiplierKey="";
function primeMultiple(n) {
    // Unshifted sequence ordinal 1 is f0; ordinal 2 is prime 2.
    if(n===1)return 1;
    var need=n-1,candidate=primeCache[primeCache.length-1]+1,j,prime;
    while(primeCache.length<need) {
        prime=true;
        for(j=0;j<primeCache.length&&primeCache[j]*primeCache[j]<=candidate;j++)
            if(candidate%primeCache[j]===0){prime=false;break;}
        if(prime)primeCache.push(candidate);
        candidate++;
    }
    return primeCache[need-1];
}
function partialMultiple(index) {
    if(partialMultipliersOverride)return partialMultipliersOverride[index];
    var ordinal=index+firstPartial;
    if(ordinal===1)return 1;
    if(distributionIndex===1)return 2*(ordinal-1);
    if(distributionIndex===2)return 2*ordinal-1;
    if(distributionIndex===3)return primeMultiple(ordinal);
    return ordinal;
}
function distribution(value) {
    value=Number(value);
    if(value!==Math.floor(value)||value<0||value>3)return;
    if(value===distributionIndex&&!partialMultipliersOverride)return;
    partialMultipliersOverride=null;fundamentalWeightsOverride=null;
    distributionIndex=value;buildModel();
}

primeMultiple.local=1;partialMultiple.local=1;

function buildModel() {
    if (holdModel) return;
    var candidates = [];
    var rawModel = [];
    var taggedRawModel = [];
    var multipliers = [];
    var model = [];
    var filtered = [];
    var effectiveLimit = Math.min(requestedLimit, 0.499 * sampleRate);
    var requested = componentCount;
    var harmonicAnchors = 0;
    var maximumMicroShift = 0.0;
    var merged = 0;
    var i;

    for (i = 0; i < requested; i++) {
        var partialNumber = partialMultiple(i);
        var idealFrequency = baseFrequency * partialNumber;
        multipliers.push(partialNumber);
        var drift = i < driftValues.length ? driftValues[i] : 0.0;
        var amplitude = i < amplitudeValues.length ? amplitudeValues[i] : 0.0;
        var harmonicAmplitude = i < harmonicAmplitudeValues.length ? harmonicAmplitudeValues[i] : 0.0;
        var frequency;

        var detuneWeight=fundamentalWeightsOverride?fundamentalWeightsOverride[i]:(partialNumber===1?0:1);
        if (detuneWeight === 0) {
            frequency = idealFrequency;
        } else {
            var detuned = idealFrequency * Math.pow(2.0, drift * detuneWeight / 12.0);
            var microShift = microValue(i) * microAmount * detuneWeight;
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

    // Announce the complete sequence/offset layout BEFORE any target model.
    // Full v20 model construction, filtering, sorting and all diagnostic outlets remain.
    messnamed("V2_Partial_Offset_Crossfade_v23","layout",distributionIndex,firstPartial);
    var multiplierKey=distributionIndex+":"+firstPartial+":"+componentCount;
    if(multiplierKey!==lastMultiplierKey){
        outlet(7,["multipliers"].concat(multipliers));lastMultiplierKey=multiplierKey;
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

var EC_NS="V2_ec-cnmat-sinusoids-v23_";
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
var ec_fields = ["frozenMicroOffsets", "fundamentalWeightsOverride", "partialMultipliersOverride", "distributionIndex", "componentCount", "baseFrequency", "firstPartial", "microAmount", "requestedLimit", "driftValues", "amplitudeValues", "harmonicAmplitudeValues", "driftSeed", "directionState", "walkState", "driftDirections", "microStart", "microTarget", "microTimes", "microDurations", "microEnabled", "microDepthHz", "microTimeMs", "microOffMs", "microReturning", "microReturnStart", "microReturnDuration"];
var ec_clocks = ["microTimes", "microReturnStart"];
function ec_export(){var d=ec_copy({"frozenMicroOffsets":frozenMicroOffsets,"fundamentalWeightsOverride":fundamentalWeightsOverride,"partialMultipliersOverride":partialMultipliersOverride,"distributionIndex":distributionIndex,"componentCount":componentCount,"baseFrequency":baseFrequency,"firstPartial":firstPartial,"microAmount":microAmount,"requestedLimit":requestedLimit,"driftValues":driftValues,"amplitudeValues":amplitudeValues,"harmonicAmplitudeValues":harmonicAmplitudeValues,"driftSeed":driftSeed,"directionState":directionState,"walkState":walkState,"driftDirections":driftDirections,"microStart":microStart,"microTarget":microTarget,"microTimes":microTimes,"microDurations":microDurations,"microEnabled":microEnabled,"microDepthHz":microDepthHz,"microTimeMs":microTimeMs,"microOffMs":microOffMs,"microReturning":microReturning,"microReturnStart":microReturnStart,"microReturnDuration":microReturnDuration});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"frozenMicroOffsets":frozenMicroOffsets,"fundamentalWeightsOverride":fundamentalWeightsOverride,"partialMultipliersOverride":partialMultipliersOverride,"distributionIndex":distributionIndex,"componentCount":componentCount,"baseFrequency":baseFrequency,"firstPartial":firstPartial,"microAmount":microAmount,"requestedLimit":requestedLimit,"driftValues":driftValues,"amplitudeValues":amplitudeValues,"harmonicAmplitudeValues":harmonicAmplitudeValues,"driftSeed":driftSeed,"directionState":directionState,"walkState":walkState,"driftDirections":driftDirections,"microStart":microStart,"microTarget":microTarget,"microTimes":microTimes,"microDurations":microDurations,"microEnabled":microEnabled,"microDepthHz":microDepthHz,"microTimeMs":microTimeMs,"microOffMs":microOffMs,"microReturning":microReturning,"microReturnStart":microReturnStart,"microReturnDuration":microReturnDuration};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(k==="partialMultipliersOverride"||k==="fundamentalWeightsOverride"||k==="frozenMicroOffsets"){continue;}if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.componentCount<2||d.componentCount>256)return false;if(d.baseFrequency<1||d.baseFrequency>23000)return false;if(d.firstPartial<1||d.firstPartial>23000)return false;if(d.microAmount<0||d.microAmount>1)return false;if(d.microTimeMs<1||d.microTimeMs>600000)return false;
 if(d.distributionIndex!==Math.floor(d.distributionIndex)||d.distributionIndex<0||d.distributionIndex>3)return false;
 var extra=["partialMultipliersOverride","fundamentalWeightsOverride","frozenMicroOffsets"];
 for(var q=0;q<extra.length;q++){var v=d[extra[q]];if(v!==null){if(!ec_array(v)||v.length!==256)return false;for(var z=0;z<256;z++){if(typeof v[z]!=="number"||!isFinite(v[z]))return false;if(q===0&&(v[z]<=0||v[z]>1e9))return false;if(q===1&&(v[z]<0||v[z]>1))return false;}}}return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid model preset state");microTask.cancel();d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);componentCount=d.componentCount;baseFrequency=d.baseFrequency;firstPartial=d.firstPartial;microAmount=d.microAmount;requestedLimit=d.requestedLimit;driftValues=d.driftValues;amplitudeValues=d.amplitudeValues;harmonicAmplitudeValues=d.harmonicAmplitudeValues;driftSeed=d.driftSeed;directionState=d.directionState;walkState=d.walkState;driftDirections=d.driftDirections;microStart=d.microStart;microTarget=d.microTarget;microTimes=d.microTimes;microDurations=d.microDurations;microEnabled=d.microEnabled;microDepthHz=d.microDepthHz;microTimeMs=d.microTimeMs;microOffMs=d.microOffMs;microReturning=d.microReturning;microReturnStart=d.microReturnStart;microReturnDuration=d.microReturnDuration;holdModel=false;distributionIndex=ec_copy(d.distributionIndex);partialMultipliersOverride=ec_copy(d.partialMultipliersOverride);fundamentalWeightsOverride=ec_copy(d.fundamentalWeightsOverride);frozenMicroOffsets=ec_copy(d.frozenMicroOffsets);}
function ec_emit(){if(frozenMicroOffsets&&!(ecM&&ecM.started))ec_morph_release(false);buildModel();if((microEnabled||microReturning)&&microAmount>0)microTask.repeat();}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "model";

// Public Max message endpoint for this engine's private preset helpers.
function ecpreset(dictionaryName){
 var name=String(dictionaryName),prefix=EC_NS+"preset-transfer-";
 // A foreign instance receives a negative acknowledgement, never preset data.
 if(!/^V2_ec-cnmat-sinusoids-v23_preset-transfer-[0-9]+$/.test(name))return;
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
  else if(request.action==="morph_prepare"){ec_morph_prepare(request.data);result=true;}
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

// v23 full-state interpolation. The controller stages validated endpoints once,
// then sends only a normalized frame fraction. No per-frame Dict serialization.
var ecM = null;
function ec_morph_prepare(d) {
    if (!d || !ec_validate(d.from) || !ec_validate(d.to)) throw new Error("Invalid morph endpoints for " + EC_PRESET_KIND);
    ecM = {a:ec_copy(d.from), b:ec_copy(d.to), extra:d.extra || {}, started:false};
    ec_morph_setup();
}
function ec_mix(a,b,t){return t<=0?a:t>=1?b:a+(b-a)*t;}
function ec_geo(a,b,t){return a>0&&b>0?(t<=0?a:t>=1?b:a*Math.pow(b/a,t)):ec_mix(a,b,t);}
function ec_sample(a,x){if(!a.length)return 0;if(a.length===1)return Number(a[0])||0;var p=Math.max(0,Math.min(1,x))*(a.length-1),i=Math.floor(p);return ec_mix(Number(a[i])||0,Number(a[Math.min(a.length-1,i+1)])||0,p-i);}
function ecmorphbegin(){if(!ecM)return;try{ec_morph_begin();ecM.started=true;}catch(e){messnamed("V2_Synth_Control_v23","_morphfault",EC_PRESET_KIND,String(e.message||e));}}
function ecmorphframe(t){if(!ecM||!ecM.started)return;t=Number(t);if(!isFinite(t))return;t=Math.max(0,Math.min(1,t));try{ec_morph_frame(t);}catch(e){messnamed("V2_Synth_Control_v23","_morphfault",EC_PRESET_KIND,String(e.message||e));}}
function ecmorphrelease(done){if(!ecM)return;try{ec_morph_release(Number(done)!==0);}finally{ecM=null;}}
ec_morph_prepare.local=1;ec_mix.local=1;ec_geo.local=1;ec_sample.local=1;

function ec_morph_multiple(d,mode,i){
    if(d.partialMultipliersOverride)return d.partialMultipliersOverride[i];
    var n=d.firstPartial+i;
    return mode===1?(n===1?1:2*(n-1)):mode===2?2*n-1:mode===3?(n===1?1:primeMultiple(n)):n;
}
function ec_morph_offset(d,i){
    if(d.frozenMicroOffsets)return d.frozenMicroOffsets[i];
    if((!d.microEnabled&&!d.microReturning)||d.microAmount<=0)return 0;
    var t=Math.max(0,Math.min(1,-Number(d.microTimes[i]||0)/Math.max(1,Number(d.microDurations[i]||1))));
    return ec_mix(Number(d.microStart[i]||0),Number(d.microTarget[i]||0),t);
}
function ec_morph_setup(){
    ecM.ma=[];ecM.mb=[];ecM.wa=[];ecM.wb=[];ecM.da=[];ecM.db=[];
    for(var i=0;i<256;i++){
        var a=ec_morph_multiple(ecM.a,ecM.a.distributionIndex,i),b=ec_morph_multiple(ecM.b,ecM.b.distributionIndex,i);
        ecM.ma[i]=a;ecM.mb[i]=b;
        ecM.wa[i]=ecM.a.fundamentalWeightsOverride?ecM.a.fundamentalWeightsOverride[i]:(a===1?0:1);
        ecM.wb[i]=ecM.b.fundamentalWeightsOverride?ecM.b.fundamentalWeightsOverride[i]:(b===1?0:1);
        ecM.da[i]=ec_morph_offset(ecM.a,i);ecM.db[i]=ec_morph_offset(ecM.b,i);
    }
}
function ec_morph_begin(){microTask.cancel();}
function ec_morph_frame(t){
    var a=ecM.a,b=ecM.b,i;
    if(t===1){var held=holdModel;ec_import(b);holdModel=held;return;}
    baseFrequency=ec_geo(a.baseFrequency,b.baseFrequency,t);
    firstPartial=a.firstPartial;distributionIndex=a.distributionIndex;
    microAmount=ec_mix(a.microAmount,b.microAmount,t);requestedLimit=ec_mix(a.requestedLimit,b.requestedLimit,t);
    microDepthHz=ec_mix(a.microDepthHz,b.microDepthHz,t);microTimeMs=ec_mix(a.microTimeMs,b.microTimeMs,t);microOffMs=ec_mix(a.microOffMs,b.microOffMs,t);
    partialMultipliersOverride=[];fundamentalWeightsOverride=[];frozenMicroOffsets=[];
    for(i=0;i<256;i++){
        partialMultipliersOverride[i]=ec_geo(ecM.ma[i],ecM.mb[i],t);
        fundamentalWeightsOverride[i]=ec_mix(ecM.wa[i],ecM.wb[i],t);
        frozenMicroOffsets[i]=ec_mix(ecM.da[i],ecM.db[i],t);
    }
    microTask.cancel();
}
function ec_morph_release(done){
    if(!done&&frozenMicroOffsets){
        var time=microNow(),frozen=frozenMicroOffsets.slice(0);frozenMicroOffsets=null;
        for(var i=0;i<256;i++){microStart[i]=frozen[i];microTarget[i]=frozen[i];microTimes[i]=time;microDurations[i]=1;}
        if(microEnabled&&microAmount>0)for(i=0;i<256;i++)if(partialMultiple(i)!==1)nextMicro(i,frozen[i],time);
    }
    if((microEnabled||microReturning)&&microAmount>0&&!frozenMicroOffsets)microTask.repeat();
}
function ecmorphhold(on){holdModel=Number(on)!==0;if(!holdModel)buildModel();}
ec_morph_multiple.local=1;ec_morph_offset.local=1;ec_morph_setup.local=1;ec_morph_begin.local=1;ec_morph_frame.local=1;ec_morph_release.local=1;
