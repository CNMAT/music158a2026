/*
    cnmat_sinusoid_model_generator_v19.js
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
    8: seed, micro, microdepth (step Hz), microtime (ms) commands

    Outlets
    0: interleaved frequency/amplitude model for sinusoids~
    1: requested-count output-pairs harmonic-anchors merged filtered limit
    2: filtered partial-index / attempted-frequency pairs, or "none"
    3: alias-filter flag (0 or 1)
    4: full unfiltered source pairs for the Stage 15 post-transform pipeline
    5: current maximum micro-drift displacement readback
    6: stable tagged source records: ID, frequency, amplitude. Primary and
       harmonic-anchor IDs are permanent odd/even partners for partials 1..256.
*/

autowatch = 1;
inlets = 9;
outlets = 7;

var componentCount = 32;
var baseFrequency = 110.0;
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
    walkState=(driftSeed^0x9e3779b9)>>>0;if(!walkState)walkState=1;
    var t=microNow();
    for(var i=0;i<256;i++){microStart[i]=0;microTarget[i]=0;microTimes[i]=t;microDurations[i]=1;}
    if(microEnabled && microAmount>0)for(i=1;i<256;i++)nextMicro(i,0,t);
}
function seed(x){
    if(inlet!==8)return;
    x=Number(x);if(!isFinite(x))return;
    driftSeed=Math.round(x)>>>0;directionState=driftSeed||1;
    for(var i=0;i<256;i++)driftDirections[i]=seededRandom(false)<0.5?-1:1;
    resetWalk();buildModel();
}
function microValue(i){
    if(!microEnabled || microAmount<=0)return 0;
    var t=clip((microNow()-microTimes[i])/microDurations[i],0,1);
    return microStart[i]+(microTarget[i]-microStart[i])*t;
}
function nextMicro(i,value,t){
    microStart[i]=value;
    microTarget[i]=value+(seededRandom(true)<0.5 ? -1 : 1)*microDepthHz;
    microTimes[i]=t;microDurations[i]=microTimeMs*(0.75+seededRandom(true)*0.5);
}
function micro(x){
    if(inlet!==8||!isFinite(Number(x)))return;
    microTask.cancel();microEnabled=Number(x)!==0;resetWalk();
    if(microEnabled && microAmount>0)microTask.repeat();buildModel();
}
function microdepth(x){
    if(inlet!==8)return;x=Number(x);if(!isFinite(x))return;
    microDepthHz=clip(x,0,5);buildModel();
}
function microtime(x){
    if(inlet!==8)return;x=Number(x);if(!isFinite(x))return;
    microTimeMs=clip(x,100,600000);
    // Materialize each line before changing its next segment duration.
    var t=microNow();if(microEnabled)for(var i=1;i<256;i++)nextMicro(i,microValue(i),t);
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
    if(!microEnabled || microAmount<=0){microTask.cancel();return;}
    var t=microNow();
    for(var i=1;i<256;i++)if(t>=microTimes[i]+microDurations[i])nextMicro(i,microTarget[i],t);
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
        var partialNumber = i + 1;
        var idealFrequency = baseFrequency * partialNumber;
        var drift = i < driftValues.length ? driftValues[i] : 0.0;
        var amplitude = i < amplitudeValues.length ? amplitudeValues[i] : 0.0;
        var harmonicAmplitude = i < harmonicAmplitudeValues.length ? harmonicAmplitudeValues[i] : 0.0;
        var frequency;

        if (i === 0) {
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
