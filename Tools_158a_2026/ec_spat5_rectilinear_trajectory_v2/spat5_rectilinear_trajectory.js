/* spat5_rectilinear_trajectory.js — version 2.3 (named attributes)
   Max 9 legacy [js] / ECMAScript 5. No Node or v8 required.
   [js spat5_rectilinear_trajectory.js @sources 1 @cycle 10 @distance 2 @sourcepres 2]
   Attributes may appear in any order; omitted attributes use defaults.
   Legacy positional arguments remain supported: sources cycle distance sourcepres.
   If mixed, put positional arguments first; named attributes override them.
   Outlet 0 -> spat5.oper -> its LEFT outlet -> spat5.spat~.
   Outlet 1 -> optional print (status only).
   Defaults: 1 source, 10 seconds, 2X distance, sourcepres 2.0.
   Distance and sourcepres use the radius-1 reference circle.
   sourcepres: integer 2..10; direct amplitude reaches zero at this distance.
   The whole original curve scales proportionally with sourcepres P:
     0..P/8 : 100%; P/2 : 50%; 3P/4 : 5%; P and beyond : muted.
   Smooth interpolation and reverb feed continue as before.
   sourcepres controls the direct-amplitude curve independently of MAX_DISTANCE_X;
   it does not change the Spat Presence dial (/source/N/pres).
   Left-inlet messages:
     sources <int 1..150>  : queue the source count.
     cycle <positive int> : queue the round-trip duration in seconds.
     distance <int 1..10> : queue the maximum distance in radius-1 multiples.
     sourcepres <int 2..10> : queue the direct-amplitude cutoff distance.
     go                   : apply all queued values, then restart the launch sequence.
     bang                 : restart using active values; keep queued changes pending.
     init / hold          : use active values; keep queued changes pending.
   Example Max message box: sources 12, cycle 20, distance 6, sourcepres 6, go
   Unspecified values retain their last setting. Invalid messages are rejected.
   Outlet 1 reports "pending <sources> <cycle> <distance> <sourcepres>" after a valid setting.
   Declared attributes expose the queued settings to Max attribute access / pattr.
   Runtime attribute edits also wait for go. These edits do not rewrite the box.
   Only the typed creation settings are restored on reopening (embed = 0).
*/
autowatch = 1;
inlets = 1;
outlets = 2;
setinletassist(0, "sources / cycle / distance / sourcepres: queue settings; go: apply + launch; bang: relaunch active; init / hold");
setoutletassist(0, "OSC-addressed Max messages to spat5.oper");
setoutletassist(1, "Status only; optional print");

// Fixed prototype choices, not additional creation arguments.
var UPDATE_MS = 20;
var DB_FLOOR = -120;
var ROOM = { reverberance:80, heaviness:25, liveness:35 };
var SOURCE = { pres:90, warm:30, bril:30, prer:65, revp:45, env:24 };
var N = 1, T = 10, D = 2, P = 2;
var launchOrder = [], launchRank = [];
// Active values drive the running trajectory; only go commits pending values.
var pending = { sources:N, cycle:T, distance:D, sourcepres:P };
var creationSyntaxValid = true;
var acceptingCreationAttributes = true;
readCreationArguments();
copyPendingToActive();
var valid = creationSyntaxValid && parametersValid(N, T, D, P);
var ready = false, running = false, epoch = 0;
var tickTask = new Task(tick, this);
var initTask = new Task(init, this);
var creationTask = new Task(finishCreation, this);
tickTask.interval = UPDATE_MS;

// Use the legacy-js signature, not the v8-only AttributeOptions overload.
// Explicit getters avoid a collision with the existing message functions.
declareattribute("sources", "getsources", "setsources", 0);
declareattribute("cycle", "getcycle", "setcycle", 0);
declareattribute("distance", "getdistance", "setdistance", 0);
declareattribute("sourcepres", "getsourcepres", "setsourcepres", 0);
// Also close construction for a newly typed object, which gets no loadbang.
creationTask.schedule(0);

function isAttributeToken(value) {
    return typeof value === "string" && value.charAt(0) === "@";
}
function creationError(message) {
    creationSyntaxValid = false;
    error("spat5_rectilinear_trajectory: " + message + "; correct the js object text.\n");
}
function readCreationArguments() {
    var names = ["sources", "cycle", "distance", "sourcepres"];
    var i = 1, positional = 0, name, start, value;
    // Keep the original positional-number behavior for existing patches.
    while (i < jsarguments.length && !isAttributeToken(jsarguments[i])) {
        if (positional < 4) pending[names[positional]] = Number(jsarguments[i]);
        else creationError("at most four legacy positional arguments are supported");
        positional++; i++;
    }
    // Parse @tokens explicitly for legacy js hosts that leave them in jsarguments.
    // Native attribute setters cover hosts that consume the tokens themselves.
    while (i < jsarguments.length) {
        name = jsarguments[i++].substring(1);
        start = i;
        while (i < jsarguments.length && !isAttributeToken(jsarguments[i])) i++;
        if (!pending.hasOwnProperty(name)) {
            creationError("unknown attribute @" + name);
        } else if (i - start !== 1) {
            creationError("@" + name + " requires exactly one number");
        } else {
            value = jsarguments[start];
            // Named settings use the same integer limits as inlet messages.
            if (typeof value !== "number" || !isFinite(value) || value !== Math.floor(value)) {
                creationError("@" + name + " requires an integer");
            } else pending[name] = value;
        }
    }
}
function copyPendingToActive() {
    N = pending.sources; T = pending.cycle; D = pending.distance; P = pending.sourcepres;
}
function finishCreation() {
    acceptingCreationAttributes = false;
    creationTask.cancel();
}
function getsources() { return pending.sources; }
function getcycle() { return pending.cycle; }
function getdistance() { return pending.distance; }
function getsourcepres() { return pending.sourcepres; }
function setsources() { stageSetting("sources", arguments, 1, 150, true); }
function setcycle() { stageSetting("cycle", arguments, 1, Infinity, true); }
function setdistance() { stageSetting("distance", arguments, 1, 10, true); }
function setsourcepres() { stageSetting("sourcepres", arguments, 2, 10, true); }

function send(address, values) { outlet(0, [address].concat(values)); }
function status(name) { outlet(1, [name, N, T, D, P]); }
function parametersValid(n, t, d, p) {
    return isFinite(n) && n === Math.floor(n) && n >= 1 && n <= 150 &&
           isFinite(t) && t > 0 && isFinite(d) && d >= 1 && d <= 10 &&
           isFinite(p) && p === Math.floor(p) && p >= 2 && p <= 10;
}
function check(usePending) {
    var ok = usePending ? parametersValid(pending.sources, pending.cycle, pending.distance, pending.sourcepres) &&
                          creationSyntaxValid : valid;
    if (ok) return true;
    error("spat5_rectilinear_trajectory: use @sources 1..150, @cycle positive integer seconds, @distance 1..10, @sourcepres 2..10. Legacy positional arguments remain supported.\n");
    outlet(1, "error", "invalid_arguments");
    return false;
}
function stageSetting(name, args, min, max, fromAttribute) {
    var value = args[0];
    if (args.length !== 1 || typeof value !== "number" || !isFinite(value) ||
        value !== Math.floor(value) || value < min || value > max) {
        var range = max === Infinity ? "a positive integer in seconds" :
                    "one integer from " + min + " to " + max;
        error("spat5_rectilinear_trajectory: " + name + " expects " + range +
              "; queued value unchanged.\n");
        outlet(1, "error", "invalid_" + name);
        return;
    }
    pending[name] = value;
    if (fromAttribute && acceptingCreationAttributes) {
        // A native @attribute delivered during construction defines the initial HOLD.
        copyPendingToActive();
        valid = creationSyntaxValid && parametersValid(N, T, D, P);
    } else {
        outlet(1, ["pending", pending.sources, pending.cycle, pending.distance, pending.sourcepres]);
    }
}
function sources() { finishCreation(); stageSetting("sources", arguments, 1, 150); }
function cycle() { finishCreation(); stageSetting("cycle", arguments, 1, Infinity); }
function distance() { finishCreation(); stageSetting("distance", arguments, 1, 10); }
function sourcepres() { finishCreation(); stageSetting("sourcepres", arguments, 2, 10); }
function now() { return new Date().getTime(); }
function azimuth(i) {
    var a = 360 * i / N;
    return a > 180 ? a - 360 : a;
}
function ease(x) { return x * x * (3 - 2 * x); }
// Direct amplitude, not a multiplier applied to the perceptual Presence dial.
function amplitude(d) {
    // Normalize to the original 2-unit curve. P=2 preserves the original output.
    d = d * (2 / P);
    if (d <= 0.25) return 1;
    if (d < 1) return 1 - 0.5 * ease((d - 0.25) / 0.75);
    if (d < 1.5) return 0.5 - 0.45 * ease((d - 1) / 0.5);
    if (d < 2) return 0.05 * (1 - ease((d - 1.5) / 0.5));
    return 0;
}
// Draw each source once, favoring angular separation from the previous draw.
// Source IDs keep their fixed rays; only their launch-time ranks are shuffled.
function makeLaunchOrder() {
    var pool = [], weights = [], i, j, delta, total, pick, chosen;
    launchOrder = []; launchRank = [];
    for (i = 0; i < N; i++) pool.push(i);
    while (pool.length) {
        if (!launchOrder.length) chosen = Math.floor(Math.random() * pool.length);
        else {
            total = 0;
            for (j = 0; j < pool.length; j++) {
                delta = Math.abs(pool[j] - launchOrder[launchOrder.length - 1]);
                delta = Math.min(delta, N - delta) * 2 / N;
                weights[j] = 0.05 + delta * delta;
                total += weights[j];
            }
            pick = Math.random() * total;
            chosen = pool.length - 1;
            for (j = 0; j < pool.length; j++) {
                pick -= weights[j];
                if (pick < 0) { chosen = j; break; }
            }
        }
        i = pool.splice(chosen, 1)[0];
        launchRank[i] = launchOrder.length;
        launchOrder.push(i);
    }
    var ids = [];
    for (i = 0; i < N; i++) ids.push(launchOrder[i] + 1);
    outlet(1, ["launch_order"].concat(ids));
}
// One fixed ray, D -> 0 -> D. Quadratic radial law slows at the head.
function trajectoryDistance(elapsed, i) {
    var local = elapsed - launchRank[i] * T / N;
    if (local <= 0) return D;
    var p = (local % T) / T;
    var q = 1 - 2 * p;
    return D * q * q;
}
function position(i, d) {
    var prefix = "/source/" + (i + 1), gain = amplitude(d);
    // Update level before position. Built-in distance drop is disabled in init.
    if (gain <= 0) {
        send(prefix + "/axis/G0", DB_FLOOR);
        send(prefix + "/direct/mute", 1);
    } else {
        send(prefix + "/axis/G0", Math.max(DB_FLOOR, 20 * Math.log(gain) / Math.LN10));
        send(prefix + "/direct/mute", 0);
    }
    send(prefix + "/aed", [azimuth(i), 0, d]);
}
function holdPositions() {
    for (var i = 0; i < N; i++) position(i, D);
}
function initSource(i) {
    var s = "/source/" + (i + 1), key;
    send(s + "/visible", 1);
    send(s + "/constraint/circular", 0);
    send(s + "/mute", 0);
    send(s + "/solo", 0);
    send(s + "/room/destination", 1);
    send(s + "/drop/mode", "log2");
    send(s + "/drop", 0);
    send(s + "/radius", 1);
    send(s + "/aed", [azimuth(i), 0, D]);
    send(s + "/orientation/mode", "default");
    send(s + "/aperture", 180);
    send(s + "/doppler", 0);
    send(s + "/air", 0);
    for (key in SOURCE) if (SOURCE.hasOwnProperty(key)) send(s + "/" + key, SOURCE[key]);
    send(s + "/axis/params", [DB_FLOOR, 0, 0, 0, 177, 5657]);
    send(s + "/axis/bypass", 0);
    send(s + "/axis/mute", 0);
    send(s + "/omni/params", [0, 0, 0, 0, 177, 5657]);
    send(s + "/omni/bypass", 0);
    send(s + "/omni/mute", 0);
    send(s + "/early/mute", 0);
    send(s + "/cluster/mute", 0);
    send(s + "/reverb/mute", 0);
    send(s + "/early/width", 30);
    send(s + "/early/shape", 50);
    send(s + "/spread", 0);
    send(s + "/panrev", 0);
}
function init() {
    finishCreation();
    initTask.cancel(); tickTask.cancel(); running = false; ready = false;
    if (!check()) return;
    // Silence direct paths before setting perceptual parameters. Reverb is never cleared.
    send("/source/number", N);
    send("/room/number", 1);
    send("/source/*/direct/mute", 1);
    send("/source/*/axis/G0", DB_FLOOR);
    send("/format", "aed");
    send("/grid/unitcircle/radius", 1);
    send("/grid/unitcircle/visible", 1);
    send("/listener/xyz", [0, 0, 0]);
    send("/listener/orientation", [0, 0, 0, 1]);
    send("/room/1/mute", 0);
    send("/room/1/reverberance", ROOM.reverberance);
    send("/room/1/heaviness", ROOM.heaviness);
    send("/room/1/liveness", ROOM.liveness);
    send("/room/1/reverb/infinite", 0);
    send("/room/1/reverb/fl", 250);
    send("/room/1/reverb/fh", 8000);
    send("/room/1/reverb/air", 1);
    send("/room/1/reverb/air/freq", 10000);
    // Explicit reflection timing / room size so an earlier preset cannot supply these.
    send("/room/1/reverb/roomsize", 6000);
    send("/room/1/early/min", 15);
    send("/room/1/early/max", 80);
    send("/room/1/early/distr", 0.5);
    send("/room/1/cluster/min", 80);
    send("/room/1/cluster/max", 300);
    send("/room/1/cluster/distr", 0.5);
    send("/room/1/reverb/roomoffset", 0);
    send("/room/1/reverb/panrev", 0);
    for (var i = 0; i < N; i++) initSource(i);
    holdPositions();
    // This outgoing bang dumps Oper state to the DSP. It does NOT call our bang().
    outlet(0, "bang");
    ready = true; status("hold");
}
function hold() {
    finishCreation();
    initTask.cancel(); tickTask.cancel(); running = false;
    if (!check()) return;
    if (!ready) { init(); return; }
    holdPositions(); status("hold");
}
function launch(commitPending) {
    finishCreation();
    initTask.cancel();
    if (!check(commitPending)) return;
    tickTask.cancel(); running = false;
    var previousN = N, sourceCountChanged = false;
    if (commitPending) {
        copyPendingToActive();
        valid = true;
        sourceCountChanged = ready && N !== previousN;
    }
    if (!ready) init();
    else if (sourceCountChanged) {
        send("/source/number", N);
        // Initialize newly added sources using the same preset as init.
        // Existing sources and room parameters retain their current settings.
        for (var i = previousN; i < N; i++) {
            send("/source/" + (i + 1) + "/direct/mute", 1);
            send("/source/" + (i + 1) + "/axis/G0", DB_FLOOR);
            initSource(i);
        }
    }
    makeLaunchOrder();
    holdPositions();
    if (sourceCountChanged) outlet(0, "bang");
    epoch = now(); running = true;
    tickTask.repeat(-1, UPDATE_MS);
    status("running");
}
function go() { launch(true); }
function bang() { launch(false); }
function tick() {
    if (!running) return;
    var elapsed = Math.max(0, (now() - epoch) / 1000);
    for (var i = 0; i < N; i++) position(i, trajectoryDistance(elapsed, i));
}
function loadbang() {
    finishCreation();
    // Give downstream objects a scheduler turn to finish construction/load messages.
    initTask.cancel(); initTask.schedule(0);
}
function anything() {
    error("spat5_rectilinear_trajectory: supported messages are sources <int 1..150>, cycle <positive int seconds>, distance <int 1..10>, sourcepres <int 2..10>, go, bang, init, hold.\n");
}
function notifydeleted() {
    creationTask.cancel(); creationTask.freepeer();
    tickTask.cancel(); initTask.cancel(); tickTask.freepeer(); initTask.freepeer();
}
send.local = status.local = check.local = now.local = azimuth.local = 1;
ease.local = amplitude.local = trajectoryDistance.local = position.local = holdPositions.local = tick.local = 1;

makeLaunchOrder.local = parametersValid.local = stageSetting.local = initSource.local = launch.local = 1;
isAttributeToken.local = creationError.local = readCreationArguments.local = 1;
copyPendingToActive.local = finishCreation.local = 1;
