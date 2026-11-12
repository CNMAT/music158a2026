/* v23 linked spectral viewports (classic Max js).
   js V1_partial_amplitude_display_v23.js [amplitude|detune|anchor]
   The default/amplitude instance owns the shared range and audition toggle.
   Detune and Anchor instances follow its view FIRST LAST ALL COUNT messages.
   Inlets: 0 full canonical values / range controls; 1 cropped manual edits;
           2 actual sequence/offset multipliers.
   Outlets: 0 silent UI updates; 1 complete edited list; 2 cropped ruler;
            3 status; 4 first-number min/max/set; 5 last-number min/max/set;
            6 linked view command; 7 audition ENABLE FIRST LAST; 8 toggle set.
   All three original full-size sliders remain authoritative for presets and
   synthesis. View changes never write spectral values. Audition is separate,
   temporary renderer state; it never zeros or restores the stored model.
*/
autowatch = 1;
inlets = 3;
outlets = 9;
var viewRole = (typeof jsarguments !== "undefined" && jsarguments.length > 1)
    ? String(jsarguments[1]).toLowerCase() : "amplitude";
var rangeMaster = viewRole !== "detune" && viewRole !== "anchor";
var valueMinimum = viewRole === "detune" ? -1.0 : 0.0;
var hearDisplayed = false, lastLinkedState = "", lastAuditionState = "", lastHearState = -1;
function publishView(force) {
    if (!rangeMaster) return;
    var count = availableCount();
    if (!count) return;
    var linked = viewFirst + ":" + viewLast + ":" + (showAll ? 1 : 0) + ":" + count;
    if (force || linked !== lastLinkedState) {
        lastLinkedState = linked;
        outlet(6, "view", viewFirst, viewLast, showAll ? 1 : 0, count);
    }
    var auditionState = (hearDisplayed ? 1 : 0) + ":" + viewFirst + ":" + viewLast;
    if (force || auditionState !== lastAuditionState) {
        lastAuditionState = auditionState;
        outlet(7, "audition", hearDisplayed ? 1 : 0, viewFirst, viewLast);
    }
    if (force || lastHearState !== (hearDisplayed ? 1 : 0)) {
        lastHearState = hearDisplayed ? 1 : 0;
        outlet(8, "set", lastHearState);
    }
}
function view(firstSlot, lastSlot, all, count) {
    if (inlet !== 0 || drawing || rangeMaster) return;
    var a = integer(firstSlot), b = integer(lastSlot), n = integer(count);
    if (a === null || b === null || n === null) return;
    selectedCount = n;
    requestedFirst = Math.min(a, n);
    requestedLast = Math.max(requestedFirst, Math.min(b, n));
    showAll = Number(all) !== 0;
    redraw(false);
}
function hear(enabled) {
    if (inlet !== 0 || drawing || !rangeMaster) return;
    var n = finiteNumber(enabled);
    if (n === null) return;
    hearDisplayed = n !== 0;
    redraw(true);
}

var fullValues = [], labels = [], shownValues = [];
var showAll = true, requestedFirst = 1, requestedLast = 256;
var viewFirst = 1, viewLast = 0, drawing = false;
// Zero means no explicit synth count has arrived: preserve legacy list-only use.
var selectedCount = 0, lastControlState = "";
function availableCount() {
    return selectedCount ? Math.min(selectedCount, fullValues.length) : fullValues.length;
}
function updateRangeControls(force) {
    var count = availableCount();
    if (!count) return;
    var state = viewFirst + ":" + viewLast + ":" + count;
    if (!force && state === lastControlState) return;
    lastControlState = state;
    // Relax the old lower bounds first, then set valid maxima/minima.
    // redraw's guard also rejects any limit-clipping echoes from the number boxes.
    outlet(4, "min", 1);
    outlet(5, "min", 1);
    outlet(4, "max", viewLast);
    outlet(5, "max", count);
    outlet(5, "min", viewFirst);
    outlet(4, "set", viewFirst);
    outlet(5, "set", viewLast);
}
function activecount(n) {
    if (inlet !== 0 || drawing) return;
    var value = integer(n);
    if (value === null) return;
    selectedCount = value;
    redraw(true);
}
function first(n) {
    if (inlet !== 0 || drawing || !availableCount()) return;
    var value = integer(n);
    if (value === null) { redraw(true); return; }
    viewBounds();
    requestedFirst = Math.min(value, viewLast);
    requestedLast = viewLast;
    showAll = false;
    redraw(true);
}
function last(n) {
    if (inlet !== 0 || drawing || !availableCount()) return;
    var value = integer(n);
    if (value === null) { redraw(true); return; }
    viewBounds();
    requestedFirst = viewFirst;
    requestedLast = Math.max(viewFirst, Math.min(availableCount(), value));
    showAll = false;
    redraw(true);
}

function finiteNumber(x) {
    if (typeof x === "string" && !x.replace(/\s/g, "").length) return null;
    var n = Number(x);
    return isFinite(n) ? n : null;
}
function amplitude(x) {
    var n = finiteNumber(x);
    return n === null ? 0 : Math.max(valueMinimum, Math.min(1, n));
}
function integer(x) {
    var n = finiteNumber(x);
    return n === null ? null : Math.max(1, Math.min(256, Math.round(n)));
}
function viewBounds() {
    var count = availableCount();
    if (!count) { viewFirst = 1; viewLast = 0; return; }
    viewFirst = showAll ? 1 : Math.min(count, requestedFirst);
    viewLast = showAll ? count : Math.max(viewFirst, Math.min(count, requestedLast));
}
function drawLabels() {
    if (viewLast < viewFirst) return;
    var out = [];
    for (var i = viewFirst - 1; i < viewLast; i++) {
        out.push(labels[i] === undefined ? i + 1 : labels[i]);
    }
    outlet(2, ["multipliers"].concat(out));
}
function redraw(forceControls) {
    viewBounds();
    if (viewLast < viewFirst) return;
    drawing = true;
    try {
        updateRangeControls(forceControls);
        shownValues = fullValues.slice(viewFirst - 1, viewLast);
        outlet(0, "size", shownValues.length);
        // setlist suppresses echo; the drawing guard also rejects size echoes.
        outlet(0, ["setlist"].concat(shownValues));
        drawLabels();
        publishView(forceControls);
        outlet(3, ["set", "View:", showAll ? "all" : "slots",
            showAll ? availableCount() : String(viewFirst) + "-" + String(viewLast),
            "of", availableCount()]);
    } finally { drawing = false; }
}
function display() {
    if (inlet !== 0 || drawing) return;
    var args = arrayfromargs(arguments);
    // Accept the descriptive label already present in the supplied main patch.
    if (args.length === 3 && String(args[0]).toLowerCase() === "selected" &&
        String(args[1]).toLowerCase() === "partials" && String(args[2]).toLowerCase() === "range") args = ["partials"];
    if (args.length === 1 && String(args[0]).toLowerCase() === "partials") {
        if (!availableCount()) return;
        viewBounds();
        requestedFirst = viewFirst; requestedLast = viewLast;
        showAll = false; redraw(true); return;
    }
    if (args.length === 1 && String(args[0]).toLowerCase() === "all") {
        showAll = true;
        if (rangeMaster) hearDisplayed = false;
        redraw(true); return;
    }
    if (args.length !== 3 || String(args[0]).toLowerCase() !== "partials") return;
    var first = integer(args[1]), last = integer(args[2]);
    if (first === null || last === null) return;
    if (first > last) { var swap = first; first = last; last = swap; }
    requestedFirst = first; requestedLast = last; showAll = false; redraw(true);
}
function list() {
    var a = arrayfromargs(arguments);
    if (inlet === 2) { labels = a.slice(0, 256); drawLabels(); return; }
    if (inlet === 0) {
        if (!a.length || a.length > 256) return;
        fullValues = [];
        for (var i = 0; i < a.length; i++) fullValues.push(amplitude(a[i]));
        redraw(); return;
    }
    if (inlet !== 1 || drawing || !fullValues.length || a.length !== shownValues.length) return;
    var merged = fullValues.slice(0), changed = false;
    for (var j = 0; j < a.length; j++) {
        var v = amplitude(a[j]);
        if (Math.abs(v - shownValues[j]) > 0.000001) {
            merged[viewFirst - 1 + j] = v; changed = true;
        }
    }
    if (!changed) return;
    fullValues = merged;
    shownValues = merged.slice(viewFirst - 1, viewLast);
    // Only a real user edit reaches the original full-size multislider.
    // Its existing feedback into the engine preserves all other synthesis rules.
    outlet(1, merged.slice(0));
}
function multipliers() {
    if (inlet !== 2) return;
    labels = arrayfromargs(arguments).slice(0, 256); drawLabels();
}
function size(n) {
    // The engine immediately follows its size message with an authoritative list.
    // Do not synthesize values or publish temporary edits while resizing.
}
function msg_int(n) { if (inlet === 1 && shownValues.length === 1) list(n); }
function msg_float(n) { msg_int(n); }
function bang() { if (inlet !== 1) redraw(); }
function anything() { /* Unknown messages never become edits or audition commands. */ }
