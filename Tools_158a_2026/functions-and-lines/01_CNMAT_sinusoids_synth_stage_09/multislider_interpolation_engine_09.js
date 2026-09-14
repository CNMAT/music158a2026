/*
    multislider_interpolation_engine_09.js
    Three independent linear A-to-B interpolation engines.

    Inlets
    0-2: new target lists for inharmonicity, amplitude, harmonic-anchor amplitude
    3-5: current multislider lists (feedback; stores state without triggering)
    6-8: interpolation times in milliseconds

    Outlets 0-2: interpolated lists for the three multisliders

    The first target received by a channel becomes A and is output immediately.
    Every later target becomes B and starts an automatic linear interpolation.
    A target received mid-transition begins from the currently displayed state.
*/

autowatch = 1;
inlets = 9;
outlets = 3;

var frameIntervalMs = 20;
var durations = [1000.0, 1000.0, 1000.0];
var current = [[], [], []];
var starts = [[], [], []];
var targets = [[], [], []];
var initialized = [false, false, false];
var running = [false, false, false];
var startTimes = [0, 0, 0];

var tasks = [
    new Task(interpolationTick, this, 0),
    new Task(interpolationTick, this, 1),
    new Task(interpolationTick, this, 2)
];

tasks[0].interval = frameIntervalMs;
tasks[1].interval = frameIntervalMs;
tasks[2].interval = frameIntervalMs;

function clip(value, low, high) {
    return Math.max(low, Math.min(high, value));
}

function rounded(value) {
    return Math.round(value * 1000000.0) / 1000000.0;
}

function copyClipped(values) {
    var result = [];
    var i;
    for (i = 0; i < values.length; i++) {
        result[i] = rounded(clip(Number(values[i]), 0.0, 1.0));
    }
    return result;
}

function resample(values, length) {
    var result = [];
    var sourceLast;
    var i;
    if (length <= 0) {
        return result;
    }
    if (!values.length) {
        for (i = 0; i < length; i++) {
            result[i] = 0.0;
        }
        return result;
    }
    if (values.length === 1 || length === 1) {
        for (i = 0; i < length; i++) {
            result[i] = values[0];
        }
        return result;
    }
    sourceLast = values.length - 1;
    for (i = 0; i < length; i++) {
        var position = (i * sourceLast) / (length - 1);
        var lower = Math.floor(position);
        var upper = Math.min(sourceLast, lower + 1);
        var fraction = position - lower;
        result[i] = rounded(values[lower] + ((values[upper] - values[lower]) * fraction));
    }
    return result;
}

function nowMs() {
    return (new Date()).getTime();
}

function outputChannel(channel, values) {
    current[channel] = values.slice(0);
    outlet(channel, current[channel]);
}

function setTarget(channel, values) {
    var next = copyClipped(values);
    if (!next.length) {
        return;
    }

    if (!initialized[channel]) {
        tasks[channel].cancel();
        initialized[channel] = true;
        running[channel] = false;
        targets[channel] = next.slice(0);
        outputChannel(channel, next);
        return;
    }

    tasks[channel].cancel();
    starts[channel] = resample(current[channel], next.length);
    targets[channel] = next.slice(0);
    startTimes[channel] = nowMs();

    if (durations[channel] <= 0.0) {
        running[channel] = false;
        outputChannel(channel, targets[channel]);
        return;
    }

    running[channel] = true;
    outputChannel(channel, starts[channel]);
    tasks[channel].repeat();
}

function interpolationTick(channel) {
    if (!running[channel]) {
        tasks[channel].cancel();
        return;
    }

    var fraction = clip((nowMs() - startTimes[channel]) / durations[channel], 0.0, 1.0);
    var frame = [];
    var i;
    for (i = 0; i < targets[channel].length; i++) {
        frame[i] = rounded(starts[channel][i] + ((targets[channel][i] - starts[channel][i]) * fraction));
    }
    outputChannel(channel, frame);

    if (fraction >= 1.0) {
        running[channel] = false;
        tasks[channel].cancel();
        outputChannel(channel, targets[channel]);
    }
}

function list() {
    var values = arrayfromargs(arguments);
    if (inlet >= 0 && inlet <= 2) {
        setTarget(inlet, values);
    } else if (inlet >= 3 && inlet <= 5) {
        var channel = inlet - 3;
        current[channel] = copyClipped(values);
        initialized[channel] = true;
    }
}

function setDuration(value) {
    if (inlet >= 6 && inlet <= 8) {
        durations[inlet - 6] = Math.max(0.0, Number(value));
    }
}

function msg_int(value) {
    setDuration(value);
}

function msg_float(value) {
    setDuration(value);
}

function bang() {
}

// Ignore Max UI maintenance selectors; they are not interpolation data.
function clear() {
}

function append() {
}

function set() {
}

function anything() {
}
