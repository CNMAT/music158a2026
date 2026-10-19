var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids-opt_";
/* Stage 20: immutable source records -> tuning -> frequency window -> merge.
 * Inlet 0 stores legacy frequency/amplitude pairs or tagged
 * ID/frequency/amplitude records. Inlet 1 accepts transform commands.
 * Outlets: 0 safe pairs; 1 input/output/merged/rejected/invalid/limit status;
 * 2 rejected ID/frequency pairs; 3 rejection flag; 4 source pairs;
 * 5 stable tagged output records for Partial_Group_Manager_v20.js.
 */
autowatch = 1;
inlets = 2;
outlets = 6;
var sourceModel = [], sourceTagged = [];
var tuneRatio = 1.0, tuneShift = 0.0;
var transposeSemitones = 0.0, transposeCents = 0.0, offsetHz = 0.0;
var amplitudeGain = 1.0, minimumHz = 20.0, maximumHz = 12000.0;
var sampleRateHz = 48000.0, clusterHz = 0.0, bypassTransforms = false;
var duplicateHz = 0.0001;

function finiteNumber(x) { return typeof x === "number" && isFinite(x); }
function clip(x, lo, hi) { return Math.max(lo, Math.min(hi, x)); }
function list() {
    if (inlet !== 0) return;
    var incoming = arrayfromargs(arguments);
    if (incoming.length % 2) { error("Stage 20: model requires frequency/amplitude pairs\n"); return; }
    sourceModel = incoming.slice(0); sourceTagged = [];
    outlet(4, sourceModel.slice(0)); rebuild();
}
function tagged() {
    if (inlet !== 0) return;
    var incoming = arrayfromargs(arguments), pairs = [], seen = {}, i;
    if (!incoming.length || incoming.length % 3) {
        error("Stage 20: tagged model requires ID/frequency/amplitude records\n"); return;
    }
    for (i = 0; i < incoming.length; i += 3) {
        var id = Number(incoming[i]), f = Number(incoming[i+1]), a = Number(incoming[i+2]);
        if (!finiteNumber(id) || id !== Math.floor(id) || id < 1 || id > 512 || seen[id] ||
            !finiteNumber(f) || !finiteNumber(a)) {
            error("Stage 20: invalid or duplicate tagged source record\n"); return;
        }
        seen[id] = true; pairs.push(f, a);
    }
    sourceTagged = incoming.slice(0); sourceModel = pairs;
    outlet(4, sourceModel.slice(0)); rebuild();
}
function tuning(ratio, shift, deferOutput) {
    ratio=Number(ratio);shift=Number(shift);
    if(!finiteNumber(ratio)||ratio<=0||!finiteNumber(shift))return;
    if(ratio===tuneRatio&&shift===tuneShift)return;
    tuneRatio=ratio;tuneShift=shift;if(!Number(deferOutput))rebuild();
}
function semitones(x){x=Number(x);if(finiteNumber(x)){transposeSemitones=clip(x,-120,120);rebuild();}}
function cents(x){x=Number(x);if(finiteNumber(x)){transposeCents=clip(x,-12000,12000);rebuild();}}
function offset(x){x=Number(x);if(finiteNumber(x)){offsetHz=clip(x,-23000,23000);rebuild();}}
function gain(x){x=Number(x);if(finiteNumber(x)){amplitudeGain=clip(x,0,2);rebuild();}}
function low(x){x=Number(x);if(finiteNumber(x)){minimumHz=clip(x,0,23000);rebuild();}}
function high(x){x=Number(x);if(finiteNumber(x)){maximumHz=clip(x,0,23000);rebuild();}}
function samplerate(x){x=Number(x);if(finiteNumber(x)&&x>0){sampleRateHz=x;rebuild();}}
function cluster(x){x=Number(x);if(finiteNumber(x)){clusterHz=clip(x,0,23000);rebuild();}}
function bypass(x){bypassTransforms=Number(x)!==0;rebuild();}
function bang(){rebuild();}
function clear(){}
function append(){}
function set(){}
function anything(){}

function rebuild(){
    if(!sourceModel.length)return;
    var ratio=bypassTransforms?1.0:tuneRatio*Math.pow(2,transposeSemitones/12+transposeCents/1200);
    var shift=bypassTransforms?0.0:tuneShift+offsetHz;
    var gainValue=bypassTransforms?1.0:amplitudeGain;
    var limit=Math.min(23000.0,0.499*sampleRateHz,maximumHz);
    var candidates=[],rejected=[],invalid=0,merged=0,model=[],taggedModel=[],taggedRecords=[],canonicalIds={},records=[],i;
    if(sourceTagged.length){
        for(i=0;i<sourceTagged.length;i+=3)
            records.push({id:Number(sourceTagged[i]),f:Number(sourceTagged[i+1]),a:Number(sourceTagged[i+2])});
    }else{
        for(i=0;i<sourceModel.length;i+=2)
            records.push({id:i/2+1,f:Number(sourceModel[i]),a:Number(sourceModel[i+1])});
    }
    for(i=0;i<records.length;i++){
        var id=records[i].id,f=records[i].f,a=records[i].a;
        if(!finiteNumber(f)||!finiteNumber(a)||f<=0){invalid++;continue;}
        f=f*ratio+shift;a=clip(a*gainValue,0,1);
        if(!finiteNumber(f)||f<=0||f<minimumHz||f>=limit){rejected.push(id,f);continue;}
        candidates.push({id:id,f:f,a:a});
    }
    candidates.sort(function(a,b){return a.f-b.f;});
    var unique=[];
    for(i=0;i<candidates.length;i++){
        var p=candidates[i];
        if(unique.length&&Math.abs(p.f-unique[unique.length-1].f)<=duplicateHz){
            unique[unique.length-1].a=clip(unique[unique.length-1].a+p.a,0,1);
            unique[unique.length-1].id=Math.min(unique[unique.length-1].id,p.id);merged++;
        }else unique.push({id:p.id,f:p.f,a:p.a});
    }
    var tolerance=bypassTransforms?0:clusterHz;
    for(i=0;i<unique.length;){
        var first=unique[i],j=i+1,power=first.a*first.a,weighted=first.f*power,sumF=first.f,stableId=first.id;
        while(tolerance>0&&j<unique.length&&unique[j].f-first.f<=tolerance){
            var q=unique[j],w=q.a*q.a;power+=w;weighted+=q.f*w;sumF+=q.f;
            stableId=Math.min(stableId,q.id);j++;merged++;
        }
        var frequency=j===i+1?first.f:(power>0?weighted/power:sumF/(j-i));
        var amplitude=j===i+1?first.a:clip(Math.sqrt(power),0,1);
        model.push(frequency,amplitude);
        taggedRecords.push({id:stableId,f:frequency,a:amplitude});canonicalIds[stableId]=true;i=j;
    }
    // Keep every accepted identity in the renderer stream. Records absorbed by
    // duplicate merging or clustering remain in their permanent oscillator slot
    // at zero amplitude, and their phase/frequency state continues to update.
    for(i=0;i<candidates.length;i++)if(!canonicalIds[candidates[i].id])
        taggedRecords.push({id:candidates[i].id,f:candidates[i].f,a:0.0});
    taggedRecords.sort(function(a,b){return a.id-b.id;});
    for(i=0;i<taggedRecords.length;i++)
        taggedModel.push(taggedRecords[i].id,taggedRecords[i].f,taggedRecords[i].a);
    outlet(1,[records.length,model.length/2,merged,rejected.length/2,invalid,limit]);
    if(rejected.length)outlet(2,rejected);else outlet(2,"none");
    outlet(3,(rejected.length||invalid)?1:0);
    outlet(0,model.length?model:[1.0,0.0]);
    outlet(5,taggedModel);
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
var ec_fields = ["tuneRatio", "tuneShift", "transposeSemitones", "transposeCents", "offsetHz", "amplitudeGain", "minimumHz", "maximumHz", "clusterHz", "bypassTransforms"];
var ec_clocks = [];
function ec_export(){var d=ec_copy({"tuneRatio":tuneRatio,"tuneShift":tuneShift,"transposeSemitones":transposeSemitones,"transposeCents":transposeCents,"offsetHz":offsetHz,"amplitudeGain":amplitudeGain,"minimumHz":minimumHz,"maximumHz":maximumHz,"clusterHz":clusterHz,"bypassTransforms":bypassTransforms});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"tuneRatio":tuneRatio,"tuneShift":tuneShift,"transposeSemitones":transposeSemitones,"transposeCents":transposeCents,"offsetHz":offsetHz,"amplitudeGain":amplitudeGain,"minimumHz":minimumHz,"maximumHz":maximumHz,"clusterHz":clusterHz,"bypassTransforms":bypassTransforms};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.amplitudeGain<0||d.amplitudeGain>2)return false;if(d.minimumHz<0||d.minimumHz>23000)return false;if(d.maximumHz<0||d.maximumHz>23000)return false;return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid transform preset state");d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);tuneRatio=d.tuneRatio;tuneShift=d.tuneShift;transposeSemitones=d.transposeSemitones;transposeCents=d.transposeCents;offsetHz=d.offsetHz;amplitudeGain=d.amplitudeGain;minimumHz=d.minimumHz;maximumHz=d.maximumHz;clusterHz=d.clusterHz;bypassTransforms=d.bypassTransforms;}
function ec_emit(){rebuild();}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "transform";

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
