/* spat5_rectilinear_trajectory.js — version 2.2
   Max 9 legacy [js] / ECMAScript 5. No Node or v8 required.
   [js spat5_rectilinear_trajectory.js NUMBER_OF_SOURCES ROUND_TRIP_SECONDS MAX_DISTANCE_X SOURCEPRES]
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
   These messages change runtime settings, not the creation text in the js box.
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
var N = jsarguments.length > 1 ? Number(jsarguments[1]) : 1;
var T = jsarguments.length > 2 ? Number(jsarguments[2]) : 10;
var D = jsarguments.length > 3 ? Number(jsarguments[3]) : 2;
var P = jsarguments.length > 4 ? Number(jsarguments[4]) : 2.0;
var launchOrder = [], launchRank = [];
// Active values drive the running trajectory; only go commits pending values.
var pending = { sources:N, cycle:T, distance:D, sourcepres:P };
var valid = parametersValid(N, T, D, P) && jsarguments.length <= 5;
var ready = false, running = false, epoch = 0;
var tickTask = new Task(tick, this);
var initTask = new Task(init, this);
tickTask.interval = UPDATE_MS;

function send(address, values) { outlet(0, [address].concat(values)); }
function status(name) { outlet(1, [name, N, T, D, P]); }
function parametersValid(n, t, d, p) {
    return isFinite(n) && n === Math.floor(n) && n >= 1 && n <= 150 &&
           isFinite(t) && t > 0 && isFinite(d) && d >= 1 && d <= 10 &&
           isFinite(p) && p === Math.floor(p) && p >= 2 && p <= 10;
}
function check(usePending) {
    var ok = usePending ? parametersValid(pending.sources, pending.cycle, pending.distance, pending.sourcepres) &&
                          jsarguments.length <= 5 : valid;
    if (ok) return true;
    error("spat5_rectilinear_trajectory: use 1..150 sources, positive cycle seconds, distance 1..10X, and integer sourcepres 2..10 (four arguments maximum).\n");
    outlet(1, "error", "invalid_arguments");
    return false;
}
function stageSetting(name, args, min, max) {
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
    outlet(1, ["pending", pending.sources, pending.cycle, pending.distance, pending.sourcepres]);
}
function sources() { stageSetting("sources", arguments, 1, 150); }
function cycle() { stageSetting("cycle", arguments, 1, Infinity); }
function distance() { stageSetting("distance", arguments, 1, 10); }
function sourcepres() { stageSetting("sourcepres", arguments, 2, 10); }
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
    initTask.cancel(); tickTask.cancel(); running = false;
    if (!check()) return;
    if (!ready) { init(); return; }
    holdPositions(); status("hold");
}
function launch(commitPending) {
    initTask.cancel();
    if (!check(commitPending)) return;
    tickTask.cancel(); running = false;
    var previousN = N, sourceCountChanged = false;
    if (commitPending) {
        N = pending.sources; T = pending.cycle; D = pending.distance; P = pending.sourcepres;
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
    // Give downstream objects a scheduler turn to finish construction/load messages.
    initTask.cancel(); initTask.schedule(0);
}
function anything() {
    error("spat5_rectilinear_trajectory: supported messages are sources <int 1..150>, cycle <positive int seconds>, distance <int 1..10>, sourcepres <int 2..10>, go, bang, init, hold.\n");
}
function notifydeleted() {
    tickTask.cancel(); initTask.cancel(); tickTask.freepeer(); initTask.freepeer();
}
send.local = status.local = check.local = now.local = azimuth.local = 1;
ease.local = amplitude.local = trajectoryDistance.local = position.local = holdPositions.local = tick.local = 1;

makeLaunchOrder.local = parametersValid.local = stageSetting.local = initSource.local = launch.local = 1;
