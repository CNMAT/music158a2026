/*
    Partial_Group_Manager_v20_6.js

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
    Count changes are faded in multislider_interpolation_engine_v20_6.js,
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
