/*
    cnmat_sinusoid_model_generator_09.js
    Stage 09 helper for CNMAT sinusoids~.

    Inlets
    0: frequency-drift multislider list, 0.0-1.0
    1: amplitude multislider list, 0.0-1.0
    2: exact-harmonic anchor amplitudes, 0.0-1.0
    3: requested component count, 2-255
    4: base frequency in Hz
    5: maximum drift in ERB units
    6: audio sample rate in Hz

    Outlets
    0: interleaved frequency/amplitude model for sinusoids~
    1: requested-count output-pairs harmonic-anchors merged filtered limit
    2: filtered partial-index / attempted-frequency pairs, or "none"
    3: alias-filter flag (0 or 1)
    4: full unfiltered source pairs for the Stage 09 post-transform pipeline
*/

autowatch = 1;
inlets = 7;
outlets = 5;

var componentCount = 32;
var baseFrequency = 110.0;
var maxDriftERB = 0.5;
var sampleRate = 48000.0;
var requestedLimit = 23000.0;
var duplicateToleranceHz = 0.0001;
var driftValues = [];
var amplitudeValues = [];
var harmonicAmplitudeValues = [];

function clip(value, low, high) {
    return Math.max(low, Math.min(high, value));
}

function erbBandwidth(frequency) {
    return 24.7 * (1.0 + 0.00437 * frequency);
}

function copyClipped(source) {
    var result = [];
    var i;
    for (i = 0; i < source.length; i++) {
        result[i] = clip(Number(source[i]), 0.0, 1.0);
    }
    return result;
}

function list() {
    var values = arrayfromargs(arguments);
    if (inlet === 0) {
        driftValues = copyClipped(values);
    } else if (inlet === 1) {
        amplitudeValues = copyClipped(values);
    } else if (inlet === 2) {
        harmonicAmplitudeValues = copyClipped(values);
    } else if (inlet === 3 && values.length) {
        componentCount = clip(Math.round(Number(values[0])), 2, 255);
    } else if (inlet === 4 && values.length) {
        baseFrequency = clip(Number(values[0]), 1.0, 23000.0);
    } else if (inlet === 5 && values.length) {
        maxDriftERB = clip(Number(values[0]), 0.0, 1.0);
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
        componentCount = clip(Math.round(value), 2, 255);
    } else if (inlet === 4) {
        baseFrequency = clip(value, 1.0, 23000.0);
    } else if (inlet === 5) {
        maxDriftERB = clip(value, 0.0, 1.0);
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
    var candidates = [];
    var rawModel = [];
    var model = [];
    var filtered = [];
    var effectiveLimit = Math.min(requestedLimit, 0.499 * sampleRate);
    var requested = componentCount;
    var harmonicAnchors = 0;
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
            var direction = (partialNumber % 2 === 0) ? 1.0 : -1.0;
            var offset = direction * drift * maxDriftERB * erbBandwidth(idealFrequency);
            frequency = Math.max(1.0, idealFrequency + offset);
        }

        rawModel.push(frequency, amplitude);
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
}
