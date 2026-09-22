/*
    Partial_Group_Manager_v19.js

    Persistent identity router for twelve CNMAT sinusoids~ render lanes.

    Inlets
      0: tagged records ID FREQUENCY AMPLITUDE ... (IDs 1..512)
      1: distribution plan 0..3 or interleaved/spectral/random/octave
      2: spatial output group count 2..12
      3: deterministic seed
      4: matrix~ routing ramp time in milliseconds

    Outlet 0 (single-outlet protocol)
      model LANE_INDEX frequency amplitude ...
      matrix input output gain ramp-ms
      status ...

    Primary and exact-harmonic anchor records for a partial are always assigned
    to the same render lane. Every plan allocates all 512 IDs before playback;
    resizing only changes amplitudes and never compacts or renumbers lane slots.
*/

autowatch = 1;
inlets = 5;
outlets = 1;

var CAPACITY = 512;
var LANES = 12;
var planIndex = 0;
var spatialGroups = 12;
var seedValue = 12345;
var rampMs = 100.0;
var lastFrequency = [];
var currentAmplitude = [];
var laneForId = [];
var slotForId = [];
var idsByLane = [];
var currentRecordCount = 0;

function clip(x, lo, hi) { return Math.max(lo, Math.min(hi, x)); }
function finite(x) { return typeof x === "number" && isFinite(x); }
function partialForId(id) { return Math.floor((id - 1) / 2) + 1; }
function planName() {
    return ["interleaved", "spectral-bands", "seeded-random", "octave-families"][planIndex];
}
function hash32(x) {
    x = (x ^ seedValue ^ 0x9e3779b9) >>> 0;
    x ^= x << 13; x ^= x >>> 17; x ^= x << 5;
    return x >>> 0;
}
function oddCore(n) { while (n > 0 && n % 2 === 0) n /= 2; return n; }
function laneForPartial(partial) {
    if (planIndex === 0) return (partial - 1) % LANES;
    if (planIndex === 1) {
        // Logarithmic fixed bands spread low partials while remaining independent
        // of the current visible window size.
        return Math.min(LANES - 1, Math.floor(Math.log(partial) / Math.log(256) * LANES));
    }
    if (planIndex === 2) return hash32(partial) % LANES;
    // All members of an octave family share the same odd-core key and lane.
    return hash32(oddCore(partial)) % LANES;
}
function initializeState() {
    var id, partial;
    for (id = 1; id <= CAPACITY; id++) {
        partial = partialForId(id);
        lastFrequency[id] = Math.max(1.0, partial * 110.0);
        currentAmplitude[id] = 0.0;
    }
    // Build state silently. Max calls loadbang() only after the js object's
    // inlet/outlet topology exists; emitting here at file scope is too early.
    rebuildAssignments(false, false);
}
function rebuildAssignments(emitNow, emitState) {
    var lane, id;
    idsByLane = [];
    for (lane = 0; lane < LANES; lane++) idsByLane[lane] = [];
    for (id = 1; id <= CAPACITY; id++) {
        lane = laneForPartial(partialForId(id));
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
function emitModels() {
    var lane, i, id, model;
    for (lane = 0; lane < LANES; lane++) {
        model = [];
        for (i = 0; i < idsByLane[lane].length; i++) {
            id = idsByLane[lane][i];
            model.push(lastFrequency[id], currentAmplitude[id]);
        }
        outlet(0, ["model", lane].concat(model));
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
    var values = arrayfromargs(arguments), seen = {}, i, id, f, a;
    if (values.length % 3) {
        error("Partial_Group_Manager_v19: ID/frequency/amplitude records required\n"); return;
    }
    // Missing IDs become silent but retain their last valid frequency and slot.
    for (id = 1; id <= CAPACITY; id++) currentAmplitude[id] = 0.0;
    for (i = 0; i < values.length; i += 3) {
        id = Number(values[i]); f = Number(values[i + 1]); a = Number(values[i + 2]);
        if (!finite(id) || id !== Math.floor(id) || id < 1 || id > CAPACITY || seen[id] ||
            !finite(f) || f <= 0 || !finite(a)) {
            error("Partial_Group_Manager_v19: invalid or duplicate record\n"); return;
        }
        seen[id] = true;
        lastFrequency[id] = f;
        currentAmplitude[id] = clip(a, 0.0, 1.0);
    }
    currentRecordCount = values.length / 3;
    emitModels();
    outputStatus("model");
}
function setPlan(value) {
    value = Math.round(Number(value));
    if (!finite(value)) return;
    value = clip(value, 0, 3);
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
function msg_int(value) {
    if (inlet === 1) setPlan(value);
    else if (inlet === 2) groups(value);
    else if (inlet === 3) seed(value);
    else if (inlet === 4) ramp(value);
}
function msg_float(value) { msg_int(value); }
function bang() {
    if (inlet === 0) { emitModels(); outputRouting(); outputStatus("bang"); }
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
