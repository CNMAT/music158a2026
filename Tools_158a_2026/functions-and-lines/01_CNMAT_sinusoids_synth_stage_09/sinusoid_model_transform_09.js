/* Stage 09: immutable source pairs -> tuning -> frequency window -> merge -> sinusoids~.
 * Inlet 0 stores the FULL unfiltered source list. Inlet 1 accepts commands.
 * Outlets: 0 safe pairs; 1 input/output/merged/rejected/invalid/limitHz status;
 * 2 rejected source-index/frequency pairs; 3 rejection flag; 4 source list.
 * Clustering defaults OFF so beating pairs remain distinct.
 */
autowatch = 1;
inlets = 2;
outlets = 5;
var sourceModel = [];
var tuneRatio = 1.0, tuneShift = 0.0;
var transposeSemitones = 0.0, transposeCents = 0.0, offsetHz = 0.0;
var amplitudeGain = 1.0, minimumHz = 0.0, maximumHz = 23000.0;
var sampleRateHz = 48000.0, clusterHz = 0.0, bypassTransforms = false;
var duplicateHz = 0.0001;

function finiteNumber(x) { return typeof x === "number" && isFinite(x); }
function clip(x, lo, hi) { return Math.max(lo, Math.min(hi, x)); }
function list() {
    if (inlet !== 0) return;
    var incoming = arrayfromargs(arguments);
    // Reject malformed lists atomically; retain the previously valid source.
    if (incoming.length % 2) { error("Stage 09: model requires frequency/amplitude pairs\n"); return; }
    sourceModel = incoming.slice(0);
    outlet(4,sourceModel.slice(0));
    rebuild();
}
function tuning(ratio, shift, deferOutput) {
    ratio = Number(ratio); shift = Number(shift);
    if (!finiteNumber(ratio) || ratio <= 0 || !finiteNumber(shift)) return;
    if (ratio === tuneRatio && shift === tuneShift) return;
    tuneRatio = ratio; tuneShift = shift;
    // The controller defers this output if a newly regenerated source follows.
    if (!Number(deferOutput)) rebuild();
}
function semitones(x) { x=Number(x); if(finiteNumber(x)){transposeSemitones=clip(x,-120,120);rebuild();} }
function cents(x) { x=Number(x); if(finiteNumber(x)){transposeCents=clip(x,-12000,12000);rebuild();} }
function offset(x) { x=Number(x); if(finiteNumber(x)){offsetHz=clip(x,-23000,23000);rebuild();} }
function gain(x) { x=Number(x); if(finiteNumber(x)){amplitudeGain=clip(x,0,16);rebuild();} }
function low(x) { x=Number(x); if(finiteNumber(x)){minimumHz=clip(x,0,23000);rebuild();} }
function high(x) { x=Number(x); if(finiteNumber(x)){maximumHz=clip(x,0,23000);rebuild();} }
function samplerate(x) { x=Number(x); if(finiteNumber(x)&&x>0){sampleRateHz=x;rebuild();} }
function cluster(x) { x=Number(x); if(finiteNumber(x)){clusterHz=clip(x,0,23000);rebuild();} }
function bypass(x) { bypassTransforms=Number(x)!==0; rebuild(); }
function bang() { rebuild(); }
function clear() {}
function append() {}
function set() {}
function anything() {}

function rebuild() {
    if (!sourceModel.length) return;
    var ratio = bypassTransforms ? 1.0 : tuneRatio*Math.pow(2,transposeSemitones/12+transposeCents/1200);
    var shift = bypassTransforms ? 0.0 : tuneShift+offsetHz;
    var gainValue = bypassTransforms ? 1.0 : amplitudeGain;
    var limit = Math.min(23000.0, 0.499*sampleRateHz, maximumHz);
    var candidates=[], rejected=[], invalid=0, merged=0, model=[], i;
    for(i=0;i<sourceModel.length;i+=2){
        var f=Number(sourceModel[i]), a=Number(sourceModel[i+1]);
        if(!finiteNumber(f)||!finiteNumber(a)||f<=0){ invalid++; continue; }
        f=f*ratio+shift; a=clip(a*gainValue,0,1);
        if(!finiteNumber(f)||f<=0||f<minimumHz||f>=limit){rejected.push(i/2+1,f);continue;}
        candidates.push({f:f,a:a});
    }
    candidates.sort(function(a,b){return a.f-b.f;});
    // Exact/near duplicates use the existing clipped-amplitude-sum policy.
    var unique=[];
    for(i=0;i<candidates.length;i++){
        var p=candidates[i];
        if(unique.length&&Math.abs(p.f-unique[unique.length-1].f)<=duplicateHz){
            unique[unique.length-1].a=clip(unique[unique.length-1].a+p.a,0,1); merged++;
        } else unique.push({f:p.f,a:p.a});
    }
    // Optional bounded-span Hz clusters: power-weighted centroid, RMS amplitude.
    var tolerance=bypassTransforms?0:clusterHz;
    for(i=0;i<unique.length;){
        var first=unique[i], j=i+1, power=first.a*first.a, weighted=first.f*power, sumF=first.f;
        while(tolerance>0&&j<unique.length&&unique[j].f-first.f<=tolerance){
            var q=unique[j], w=q.a*q.a;power+=w;weighted+=q.f*w;sumF+=q.f;j++;merged++;
        }
        var frequency=j===i+1?first.f:(power>0?weighted/power:sumF/(j-i));
        var amplitude=j===i+1?first.a:clip(Math.sqrt(power),0,1);
        model.push(frequency,amplitude); i=j;
    }
    outlet(1,[sourceModel.length/2,model.length/2,merged,rejected.length/2,invalid,limit]);
    if(rejected.length) outlet(2,rejected); else outlet(2,"none");
    outlet(3,(rejected.length||invalid)?1:0);
    // Explicit silence model clears the bank when every requested partial is rejected.
    outlet(0,model.length?model:[1.0,0.0]);
}
