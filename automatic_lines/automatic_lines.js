/*
    automatic_lines.js

    Max usage:
        [js automatic_lines.js 8 500 1000 2000]

    Arguments:
        1. number of voices/outlets (1-20)
        2. minimum ramp time in milliseconds
        3. wait time at 0.0 before the next ramp in milliseconds
        4. maximum ramp time in milliseconds

    Each voice outlet sends the interpolated float values directly. The final
    rightmost outlet sends an updating list of all current voice values.
    External [line] objects are not required. Every voice starts at 0.0 and ramps to a random
    destination from 0.0 to 1.0, and returns to 0.0. Both legs use the same
    randomly selected ramp time. After returning to 0.0, the voice holds there
    for the global wait time before choosing a new destination and ramp time.
    A wait time of 0 produces a continuous loop.

    Messages:
        bang                restart all voices
        start               start without restarting active voices
        stop                stop and output 0.0 from every outlet
        restart             stop, reset, and start new cycles
        range <min> <max>   set time boundaries for future cycles
        waittime <ms>       set the global wait for future cycles
        grain <ms>          set float update interval (default 20 ms)
*/

autowatch = 1;
inlets = 1;

var voiceCount = clampInteger(argumentOrDefault(1, 4), 1, 20);
var minimumMs = positiveNumber(argumentOrDefault(2, 500), 500);
var globalWaitTimeMs = 0;
var maximumMs = 2000;

// New syntax: voices, minimum, wait, maximum. For compatibility, the former
// three-argument syntax (voices, minimum, maximum) still means a zero wait.
if (jsarguments.length >= 5) {
    globalWaitTimeMs = nonNegativeNumber(argumentOrDefault(3, 0), 0);
    maximumMs = positiveNumber(argumentOrDefault(4, 2000), 2000);
} else {
    maximumMs = positiveNumber(argumentOrDefault(3, 2000), 2000);
}

if (minimumMs > maximumMs) {
    var initialSwap = minimumMs;
    minimumMs = maximumMs;
    maximumMs = initialSwap;
}

// One dedicated outlet per voice, plus one final list outlet on the right.
outlets = voiceCount + 1;

var updateIntervalMs = 20;
var running = false;
var phases = [];
var legStartTimes = [];
var legDurations = [];
var startValues = [];
var endValues = [];
var voiceTargets = [];
var currentValues = [];
var updateTask = new Task(updateAllVoices, this);

function argumentOrDefault(index, fallback) {
    return (jsarguments.length > index) ? jsarguments[index] : fallback;
}

function clampInteger(value, low, high) {
    var number = Math.floor(Number(value));
    if (!isFinite(number)) {
        number = low;
    }
    return Math.max(low, Math.min(high, number));
}

function positiveNumber(value, fallback) {
    var number = Number(value);
    return (isFinite(number) && number > 0) ? number : fallback;
}

function nonNegativeNumber(value, fallback) {
    var number = Number(value);
    return (isFinite(number) && number >= 0) ? number : fallback;
}

function randomBetween(low, high) {
    return low + Math.random() * (high - low);
}

function randomRampTime() {
    return Math.max(1, Math.round(randomBetween(minimumMs, maximumMs)));
}

function currentTimeMs() {
    return new Date().getTime();
}

function outputVoiceValue(voice, value) {
    var clampedValue = Math.max(0.0, Math.min(1.0, value));
    currentValues[voice] = clampedValue;
    outlet(voice, clampedValue);
}

function outputCurrentList() {
    outlet(voiceCount, currentValues.slice(0));
}

function initializeRisingLeg(voice, startTime) {
    phases[voice] = 0;
    legStartTimes[voice] = startTime;
    legDurations[voice] = randomRampTime();
    startValues[voice] = 0.0;
    voiceTargets[voice] = Math.random();
    endValues[voice] = voiceTargets[voice];
}

function advanceCompletedLeg(voice) {
    legStartTimes[voice] += legDurations[voice];

    if (phases[voice] === 0) {
        // Begin the return leg using the same duration.
        phases[voice] = 1;
        startValues[voice] = voiceTargets[voice];
        endValues[voice] = 0.0;
    } else if (phases[voice] === 1) {
        // The voice has returned to zero. Either hold, or loop continuously.
        if (globalWaitTimeMs > 0) {
            phases[voice] = 2;
            legDurations[voice] = globalWaitTimeMs;
            startValues[voice] = 0.0;
            endValues[voice] = 0.0;
        } else {
            initializeRisingLeg(voice, legStartTimes[voice]);
        }
    } else {
        // The global wait is complete: generate a new complete cycle.
        initializeRisingLeg(voice, legStartTimes[voice]);
    }
}

function updateVoice(voice, now) {
    var transitions = 0;

    // Preserve timing even if a scheduler tick arrives after a leg boundary.
    while (now >= legStartTimes[voice] + legDurations[voice] && transitions < 100) {
        outputVoiceValue(voice, endValues[voice]);
        advanceCompletedLeg(voice);
        transitions++;
    }

    // Protect the scheduler if extremely short durations caused many missed legs.
    if (transitions === 100) {
        initializeRisingLeg(voice, now);
    }

    var progress = (now - legStartTimes[voice]) / legDurations[voice];
    progress = Math.max(0.0, Math.min(1.0, progress));

    var value = startValues[voice]
        + (endValues[voice] - startValues[voice]) * progress;

    outputVoiceValue(voice, value);
}

function updateAllVoices() {
    if (!running) {
        return;
    }

    var now = currentTimeMs();
    for (var voice = 0; voice < voiceCount; voice++) {
        updateVoice(voice, now);
    }

    outputCurrentList();

    updateTask.schedule(updateIntervalMs);
}

function resetOutputs() {
    for (var voice = 0; voice < voiceCount; voice++) {
        outputVoiceValue(voice, 0.0);
    }
    outputCurrentList();
}

function start() {
    if (running) {
        return;
    }

    running = true;
    resetOutputs();

    var now = currentTimeMs();
    for (var voice = 0; voice < voiceCount; voice++) {
        initializeRisingLeg(voice, now);
    }

    updateTask.schedule(0);
}

function stop() {
    running = false;
    updateTask.cancel();
    resetOutputs();
}

function restart() {
    stop();
    start();
}

function bang() {
    restart();
}

function range(low, high) {
    var newMinimum = positiveNumber(low, minimumMs);
    var newMaximum = positiveNumber(high, maximumMs);

    if (newMinimum > newMaximum) {
        var rangeSwap = newMinimum;
        newMinimum = newMaximum;
        newMaximum = rangeSwap;
    }

    minimumMs = newMinimum;
    maximumMs = newMaximum;
}

function waittime(milliseconds) {
    globalWaitTimeMs = nonNegativeNumber(milliseconds, globalWaitTimeMs);
}

function grain(milliseconds) {
    updateIntervalMs = clampInteger(milliseconds, 1, 1000);
}

function loadbang() {
    start();
}

function notifydeleted() {
    running = false;
    updateTask.cancel();
}
