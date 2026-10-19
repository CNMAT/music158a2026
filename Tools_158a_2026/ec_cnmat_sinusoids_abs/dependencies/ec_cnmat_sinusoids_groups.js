var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids_";
/*
    ec_cnmat_sinusoids_groups.js

    Persistent identity router for twelve CNMAT sinusoids~ render lanes.

    Inlets
      0: tagged records ID FREQUENCY AMPLITUDE ... (IDs 1..1024)
      1: distribution plan 0..4 or interleaved/spectral/random/octave/fifth
      2: spatial output group count 2..12
      3: deterministic seed
      4: matrix~ routing ramp time in milliseconds

    Outlet 0 (single-outlet protocol)
      model LANE_INDEX frequency amplitude ...
      matrix input output gain ramp-ms
      status ...

    Primary and exact-harmonic anchor records for a partial are always assigned
    to the same render lane. Two 512-ID banks support Partial Offset crossfades.
    The banks share slot-based distribution rules and keep independent phases;
    resizing only changes amplitudes in plans 0..3. In plan 4, frequency
    changes can move a partial and its anchor together to another lane.
    Count changes are faded in ec_cnmat_sinusoids_partial_memory.js,
    which sends initial zero-amplitude records and a final zero before removal.
    Those records pass through without a second audio fade. Other record births
    at nonzero levels and nonzero departures retain a 150 ms fallback fade.
    Rapid reversals continue from the current amplitude without a hard reset.
*/

autowatch = 1;
inlets = 5;
outlets = 1;

var BANK_SIZE = 512;
var CAPACITY = 1024;
var LANES = 12;
var planIndex = 0;
var spatialGroups = 12;
var seedValue = 12345;
var rampMs = 100.0;
var lastFrequency = [];
var currentAmplitude = [];
var currentSeen = [];
var laneForId = [];
var slotForId = [];
var idsByLane = [];
var currentRecordCount = 0;
var PARTIAL_FADE_MS = 150;
var FADE_GRAIN_MS = 5;
var targetAmplitude = [], fadeStartAmplitude = [], fadeStartTime = [], fadeEndTime = [];
var fadeActive = [], fadeTaskRunning = false;
var fadeTask = new Task(fadeTick, this);
fadeTask.interval = FADE_GRAIN_MS;

function nowMs() { return (new Date()).getTime(); }
function materializeFades(time) {
    var id, fraction, active = false;
    for (id = 1; id <= CAPACITY; id++) if (fadeActive[id]) {
        fraction = clip((time - fadeStartTime[id]) /
            Math.max(1, fadeEndTime[id] - fadeStartTime[id]), 0, 1);
        currentAmplitude[id] = fadeStartAmplitude[id] +
            (targetAmplitude[id] - fadeStartAmplitude[id]) * fraction;
        if (time >= fadeEndTime[id]) {
            currentAmplitude[id] = targetAmplitude[id];
            fadeActive[id] = false;
        } else active = true;
    }
    return active;
}
function beginFade(id, target, time) {
    fadeStartAmplitude[id] = currentAmplitude[id];
    fadeStartTime[id] = time;
    fadeEndTime[id] = time + PARTIAL_FADE_MS;
    targetAmplitude[id] = target;
    fadeActive[id] = true;
}
function updateFadeTask() {
    var active = false, id;
    for (id = 1; id <= CAPACITY; id++) if (fadeActive[id]) { active = true; break; }
    if (active && !fadeTaskRunning) { fadeTaskRunning = true; fadeTask.repeat(); }
    else if (!active && fadeTaskRunning) { fadeTask.cancel(); fadeTaskRunning = false; }
}
function fadeTick() {
    materializeFades(nowMs());
    emitModels();
    updateFadeTask();
}
function notifydeleted() { fadeTask.cancel(); }

function clip(x, lo, hi) { return Math.max(lo, Math.min(hi, x)); }
function finite(x) { return typeof x === "number" && isFinite(x); }
function partialForId(id) { return Math.floor(((id - 1) % BANK_SIZE) / 2) + 1; }
function bankForId(id) { return Math.floor((id - 1) / BANK_SIZE); }
function planName() {
    return ["interleaved", "spectral-bands", "seeded-random", "octave-families", "perfect-fifth-bands"][planIndex];
}
function hash32(x) {
    x = (x ^ seedValue ^ 0x9e3779b9) >>> 0;
    x ^= x << 13; x ^= x >>> 17; x ^= x << 5;
    return x >>> 0;
}
function oddCore(n) { while (n > 0 && n % 2 === 0) n /= 2; return n; }
function laneForPartial(partial, baseFrequency, id) {
    if (planIndex === 0) return (partial - 1) % LANES;
    if (planIndex === 1) {
        // Logarithmic fixed bands spread low partials while remaining independent
        // of the current visible window size.
        return Math.min(LANES - 1, Math.floor(Math.log(partial) / Math.log(256) * LANES));
    }
    if (planIndex === 2) return hash32(partial) % LANES;
    if (planIndex === 4) {
        // Eleven half-open frequency intervals of ratio 3:2, starting at the
        // lowest current primary frequency. Lane 12 takes everything above.
        // The primary decides ownership for both records in its ID pair.
        var primaryId = id ? id - ((id - 1) % 2) : 2 * partial - 1;
        var frequency = lastFrequency[primaryId];
        if (frequency <= baseFrequency) return 0;
        return Math.min(LANES - 1,
            Math.max(0, Math.floor(Math.log(frequency / baseFrequency) / Math.log(1.5) + 1e-12)));
    }
    // All members of an octave family share the same odd-core key and lane.
    return hash32(oddCore(partial)) % LANES;
}
function initializeState() {
    var id, partial;
    for (id = 1; id <= CAPACITY; id++) {
        partial = partialForId(id);
        lastFrequency[id] = Math.max(1.0, partial * 110.0);
        currentAmplitude[id] = 0.0;
        currentSeen[id] = false;
        targetAmplitude[id] = 0.0;
        fadeStartAmplitude[id] = 0.0;
        fadeStartTime[id] = 0;
        fadeEndTime[id] = 0;
        fadeActive[id] = false;
    }
    // Build state silently. Max calls loadbang() only after the js object's
    // inlet/outlet topology exists; emitting here at file scope is too early.
    rebuildAssignments(false, false);
}
function rebuildAssignments(emitNow, emitState) {
    var lane, id, bases = fifthBases();
    idsByLane = [];
    for (lane = 0; lane < LANES; lane++) idsByLane[lane] = [];
    for (id = 1; id <= CAPACITY; id++) {
        lane = laneForPartial(partialForId(id), bases[bankForId(id)], id);
        laneForId[id] = lane;
        slotForId[id] = idsByLane[lane].length;
        idsByLane[lane].push(id);
    }
    if (emitNow) emitModels();
    if (emitState !== false) {
        outputRouting();
        outputStatus("assignment");
    }
}
function fifthBases() {
    // Each bank follows its own fundamental during an offset crossfade.
    // A new lower window must not reassign the still-sounding outgoing bank.
    var bases=[Infinity,Infinity],id,bank;
    for(id=1;id<=CAPACITY;id+=2){
        bank=bankForId(id);
        if(currentSeen[id]&&lastFrequency[id]<bases[bank])bases[bank]=lastFrequency[id];
    }
    for(bank=0;bank<2;bank++)if(!finite(bases[bank]))bases[bank]=lastFrequency[bank*BANK_SIZE+1];
    return bases;
}
function emitModels() {
    var lane, i, id, model;
    for (lane = 0; lane < LANES; lane++) {
        model = [];
        for (i = 0; i < idsByLane[lane].length; i++) {
            id = idsByLane[lane][i];
            // Empty slots stay silent so other oscillators never shift position.
            if (id) model.push(lastFrequency[id], currentAmplitude[id]);
            else model.push(1.0, 0.0);
        }
        outlet(0, ["model", lane].concat(model));
    }
}
function updateFifthAssignments() {
    // Moving an inactive ID must not renumber already sounding oscillator slots.
    // Keep holes rather than compacting a lane, and move primary/anchor pairs
    // together. Departing records keep their ownership for the entire release.
    var id, lane, slot, bases = fifthBases(), moves = [];
    for (id = 1; id <= CAPACITY; id += 2) {
        if (!currentSeen[id] && !currentSeen[id + 1]) continue;
        lane = laneForPartial(partialForId(id), bases[bankForId(id)], id);
        if (lane === laneForId[id]) continue;
        idsByLane[laneForId[id]][slotForId[id]] = 0;
        idsByLane[laneForId[id + 1]][slotForId[id + 1]] = 0;
        moves.push([id, lane]);
    }
    for (var i = 0; i < moves.length; i++) {
        id = moves[i][0]; lane = moves[i][1];
        for (slot = 0; slot < idsByLane[lane].length; slot += 2)
            if (!idsByLane[lane][slot] && !idsByLane[lane][slot + 1]) break;
        idsByLane[lane][slot] = id;
        idsByLane[lane][slot + 1] = id + 1;
        laneForId[id] = laneForId[id + 1] = lane;
        slotForId[id] = slot; slotForId[id + 1] = slot + 1;
    }
}
function outputRouting() {
    var lane, output, target;
    for (lane = 0; lane < LANES; lane++) {
        target = Math.min(spatialGroups - 1, Math.floor(lane * spatialGroups / LANES));
        for (output = 0; output < LANES; output++)
            outlet(0, ["matrix", lane, output, output === target ? 1.0 : 0.0, rampMs]);
    }
}
function outputStatus(reason) {
    outlet(0, ["status", reason, planIndex, planName(), spatialGroups,
        seedValue, rampMs, currentRecordCount]);
}

function list() {
    if (inlet !== 0) return;
    var values = arrayfromargs(arguments), seen = {}, amplitudes = {}, frequencies = {}, i, id, f, a;
    if (values.length % 3) {
        error("Partial_Group_Manager_v20: ID/frequency/amplitude records required\n"); return;
    }
    // Validate the entire message before changing the live model.
    for (i = 0; i < values.length; i += 3) {
        id = Number(values[i]); f = Number(values[i + 1]); a = Number(values[i + 2]);
        if (!finite(id) || id !== Math.floor(id) || id < 1 || id > CAPACITY || seen[id] ||
            !finite(f) || f <= 0 || !finite(a)) {
            error("Partial_Group_Manager_v20: invalid or duplicate record\n"); return;
        }
        seen[id] = true;
        amplitudes[id] = clip(a, 0.0, 1.0);
        frequencies[id] = f;
    }
    var time = nowMs();
    materializeFades(time);
    for (id = 1; id <= CAPACITY; id++) {
        if (seen[id]) {
            lastFrequency[id] = frequencies[id];
            a = amplitudes[id];
            if (!currentSeen[id]) {
                // A fully absent ID starts at 0. A still-releasing ID reverses
                // continuously from its current level, reaching target in 150 ms.
                if (a === 0.0 && currentAmplitude[id] === 0.0) {
                    targetAmplitude[id] = 0.0;
                    fadeActive[id] = false;
                } else beginFade(id, a, time);
            } else if (fadeActive[id]) {
                // Slider resizing emits several intermediate models, followed
                // by shape morphs/drift. Follow changed targets continuously
                // without restarting the original 150 ms entry deadline.
                if (a !== targetAmplitude[id]) {
                    fadeStartAmplitude[id] = currentAmplitude[id];
                    fadeStartTime[id] = time;
                    targetAmplitude[id] = a;
                }
            } else currentAmplitude[id] = targetAmplitude[id] = a;
        } else if (currentSeen[id]) {
            if (currentAmplitude[id] === 0.0) {
                targetAmplitude[id] = 0.0;
                fadeActive[id] = false;
            } else beginFade(id, 0.0, time);
        }
        currentSeen[id] = !!seen[id];
    }
    currentRecordCount = values.length / 3;
    if (planIndex === 4) updateFifthAssignments();
    emitModels();
    updateFadeTask();
    outputStatus("model");
}
function setPlan(value) {
    value = Math.round(Number(value));
    if (!finite(value)) return;
    value = clip(value, 0, 4);
    if (value !== planIndex) { planIndex = value; rebuildAssignments(true); }
    else outputStatus("plan");
}
function groups(value) {
    value = Math.round(Number(value));
    if (!finite(value)) return;
    spatialGroups = clip(value, 2, 12);
    outputRouting(); outputStatus("groups");
}
function seed(value) {
    value = Math.round(Number(value));
    if (!finite(value)) return;
    seedValue = value >>> 0;
    if (planIndex === 2 || planIndex === 3) rebuildAssignments(true);
    else outputStatus("seed");
}
function ramp(value) {
    value = Number(value); if (!finite(value)) return;
    rampMs = clip(value, 0, 600000);
    outputRouting(); outputStatus("ramp");
}
function interleaved() { if (inlet === 1) setPlan(0); }
function spectral() { if (inlet === 1) setPlan(1); }
function random() { if (inlet === 1) setPlan(2); }
function octave() { if (inlet === 1) setPlan(3); }
function fifth() { if (inlet === 1) setPlan(4); }
function msg_int(value) {
    if (inlet === 1) setPlan(value);
    else if (inlet === 2) groups(value);
    else if (inlet === 3) seed(value);
    else if (inlet === 4) ramp(value);
}
function msg_float(value) { msg_int(value); }
function bang() {
    // Max can deliver an empty tagged list as bang: release every active ID.
    if (inlet === 0) list();
}
function loadbang() {
    outputRouting();
    outputStatus("loadbang");
}
function dump() {
    var id, report = ["assignment"];
    for (id = 1; id <= CAPACITY; id++) report.push(id, laneForId[id] + 1, slotForId[id] + 1);
    outlet(0, ["status"].concat(report));
}
function clear() {}
function append() {}
function set() {}
function anything() {}

initializeState();

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
var ec_fields = ["planIndex", "spatialGroups", "seedValue", "rampMs", "lastFrequency", "currentAmplitude", "currentSeen", "laneForId", "slotForId", "idsByLane", "currentRecordCount", "targetAmplitude", "fadeStartAmplitude", "fadeStartTime", "fadeEndTime", "fadeActive", "fadeTaskRunning"];
var ec_clocks = ["fadeStartTime", "fadeEndTime"];
function ec_export(){materializeFades(nowMs());var d=ec_copy({"planIndex":planIndex,"spatialGroups":spatialGroups,"seedValue":seedValue,"rampMs":rampMs,"lastFrequency":lastFrequency,"currentAmplitude":currentAmplitude,"currentSeen":currentSeen,"laneForId":laneForId,"slotForId":slotForId,"idsByLane":idsByLane,"currentRecordCount":currentRecordCount,"targetAmplitude":targetAmplitude,"fadeStartAmplitude":fadeStartAmplitude,"fadeStartTime":fadeStartTime,"fadeEndTime":fadeEndTime,"fadeActive":fadeActive,"fadeTaskRunning":fadeTaskRunning});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"planIndex":planIndex,"spatialGroups":spatialGroups,"seedValue":seedValue,"rampMs":rampMs,"lastFrequency":lastFrequency,"currentAmplitude":currentAmplitude,"currentSeen":currentSeen,"laneForId":laneForId,"slotForId":slotForId,"idsByLane":idsByLane,"currentRecordCount":currentRecordCount,"targetAmplitude":targetAmplitude,"fadeStartAmplitude":fadeStartAmplitude,"fadeStartTime":fadeStartTime,"fadeEndTime":fadeEndTime,"fadeActive":fadeActive,"fadeTaskRunning":fadeTaskRunning};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.planIndex<0||d.planIndex>4)return false;if(d.spatialGroups<2||d.spatialGroups>12)return false;if(d.rampMs<0||d.rampMs>600000)return false;return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid groups preset state");fadeTask.cancel();d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);planIndex=d.planIndex;spatialGroups=d.spatialGroups;seedValue=d.seedValue;rampMs=d.rampMs;lastFrequency=d.lastFrequency;currentAmplitude=d.currentAmplitude;currentSeen=d.currentSeen;laneForId=d.laneForId;slotForId=d.slotForId;idsByLane=d.idsByLane;currentRecordCount=d.currentRecordCount;targetAmplitude=d.targetAmplitude;fadeStartAmplitude=d.fadeStartAmplitude;fadeStartTime=d.fadeStartTime;fadeEndTime=d.fadeEndTime;fadeActive=d.fadeActive;fadeTaskRunning=d.fadeTaskRunning;}
function ec_emit(){outputRouting();emitModels();updateFadeTask();if(fadeTaskRunning)fadeTask.repeat();}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "groups";

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
