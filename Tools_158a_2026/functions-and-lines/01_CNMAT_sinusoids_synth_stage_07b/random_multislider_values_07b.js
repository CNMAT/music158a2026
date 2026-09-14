/*
    random_multislider_values_07b.js
    Creates independent uniform 0.0-1.0 random lists for three multisliders.

    inlet 0: component count (2-255)
    inlet 1: bang randomizes inharmonicity values
    inlet 2: bang randomizes primary amplitudes
    inlet 3: bang randomizes harmonic-anchor amplitudes

    outlets 0-2 correspond to inlets 1-3.
*/

autowatch = 1;
inlets = 4;
outlets = 3;

var componentCount = 32;

function clipInteger(value, low, high) {
    return Math.max(low, Math.min(high, Math.round(Number(value))));
}

function randomList() {
    var result = [];
    var i;
    for (i = 0; i < componentCount; i++) {
        result[i] = Math.round(Math.random() * 1000000.0) / 1000000.0;
    }
    return result;
}

function msg_int(value) {
    if (inlet === 0) {
        componentCount = clipInteger(value, 2, 255);
    }
}

function msg_float(value) {
    msg_int(value);
}

function bang() {
    if (inlet === 1) {
        outlet(0, randomList());
    } else if (inlet === 2) {
        outlet(1, randomList());
    } else if (inlet === 3) {
        outlet(2, randomList());
    }
}

// Ignore non-data selectors used by Max UI objects during restoration.
function clear() {
}

function append() {
}

function set() {
}

function anything() {
}
