/* Stage 19: immutable source records -> tuning -> frequency window -> merge.
 * Inlet 0 stores legacy frequency/amplitude pairs or tagged
 * ID/frequency/amplitude records. Inlet 1 accepts transform commands.
 * Outlets: 0 safe pairs; 1 input/output/merged/rejected/invalid/limit status;
 * 2 rejected ID/frequency pairs; 3 rejection flag; 4 source pairs;
 * 5 stable tagged output records for Partial_Group_Manager_v19.js.
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
    if (incoming.length % 2) { error("Stage 19: model requires frequency/amplitude pairs\n"); return; }
    sourceModel = incoming.slice(0); sourceTagged = [];
    outlet(4, sourceModel.slice(0)); rebuild();
}
function tagged() {
    if (inlet !== 0) return;
    var incoming = arrayfromargs(arguments), pairs = [], seen = {}, i;
    if (!incoming.length || incoming.length % 3) {
        error("Stage 19: tagged model requires ID/frequency/amplitude records\n"); return;
    }
    for (i = 0; i < incoming.length; i += 3) {
        var id = Number(incoming[i]), f = Number(incoming[i+1]), a = Number(incoming[i+2]);
        if (!finiteNumber(id) || id !== Math.floor(id) || id < 1 || id > 512 || seen[id] ||
            !finiteNumber(f) || !finiteNumber(a)) {
            error("Stage 19: invalid or duplicate tagged source record\n"); return;
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
