/* Model-power compensation for the v20 synth.
 * Inlet 0: FINAL filtered/merged tagged model: ID Hz amplitude ...
 * Inlet 1: on 0|1, strength 0..100, smooth ms, maxboost dB, capture,
 *          startup, applieddb dB (feedback from the actual gain signal), bang.
 * Outlet 0: target-dB / ramp-ms list, or stop, for line~ -> dbtoa~.
 * Outlet 1: settings/model_db/reference_db/target_db/status readbacks.
 * One common signal gain is applied after the automixer and before all sends,
 * DAC feeds and mono summing. ADSRs/automixer/faders never enter the detector.
 * P = 0.5 * sum(a*a); gain dB = strength * 10*log10(Pref/P).
 * This is average model power, not measured loudness or a peak limiter.
 */
autowatch = 1;
inlets = 2;
outlets = 2;

var enabled = true, strengthPercent = 100, smoothingMs = 300, maximumBoostDb = 6;
var power = 0, referencePower = 0, referenceReady = false;
var appliedDb = 0, targetDb = 0, holding = false;
var autoArmed = false, autoPending = false, pendingPower = 0;
var POWER_FLOOR = 1e-8; // -80 dB RMS: no normalization/capture below this point.
var autoTask = new Task(autoCapture, this);

function finite(x) { return typeof x === "number" && isFinite(x); }
function clip(x, lo, hi) { return Math.max(lo, Math.min(hi, x)); }
function db(p) { return p > 0 ? 10 * Math.log(p) / Math.LN10 : -120; }
function different(a,b) { return Math.abs(a-b) > Math.max(1e-15,Math.max(a,b)*1e-9); }
function status(s) { outlet(1,"status",s); }
function settings() { outlet(1,"settings",enabled?1:0,strengthPercent,smoothingMs,maximumBoostDb); }
function levels() {
    outlet(1,"model_db",Math.max(-120,db(power)));
    outlet(1,"reference_db",referenceReady?Math.max(-120,db(referencePower)):-120);
    outlet(1,"target_db",targetDb);
}
function commandGain(value, force) {
    value=clip(value,-120,maximumBoostDb);
    if(!force && !holding && Math.abs(value-targetDb)<1e-6)return;
    holding=false;targetDb=value;
    outlet(0,[targetDb,smoothingMs]);
}
function evaluate(force) {
    if(!enabled || strengthPercent<=0){
        commandGain(0,force);
        status(enabled?"ON | strength 0%":"OFF | returning to unity");
    }else if(!referenceReady){
        commandGain(0,force);
        status("ON | waiting for reference");
    }else if(power<=POWER_FLOOR){
        // Stop the native ramp at its current position: silence never raises gain.
        if(!holding){outlet(0,"stop");targetDb=appliedDb;holding=true;}
        status("ON | silent model: gain held");
    }else{
        var rawDb=(strengthPercent/100)*(db(referencePower)-db(power));
        commandGain(rawDb,force);
        status(rawDb>maximumBoostDb?"ON | maximum boost reached":"ON | following model");
    }
    levels();
}
function scheduleAuto() {
    if(!autoArmed || referenceReady)return;
    if(power<=POWER_FLOOR){autoTask.cancel();autoPending=false;return;}
    // Wait for amplitude initialization/morphing to settle; frequency-only
    // rebuilds with unchanged model power do not keep restarting the timer.
    if(!autoPending || different(power,pendingPower)){
        autoTask.cancel();pendingPower=power;autoPending=true;autoTask.schedule(300);
    }
}
function autoCapture() {
    autoPending=false;
    if(!autoArmed || referenceReady || power<=POWER_FLOOR)return;
    referencePower=power;referenceReady=true;autoArmed=false;
    evaluate(false);
}
function acceptModel(values) {
    if(values.length%3){error("Auto Level: tagged ID/Hz/amplitude records required\n");return;}
    var total=0, seen={}, i, id, f, a;
    for(i=0;i<values.length;i+=3){
        id=Number(values[i]);f=Number(values[i+1]);a=Number(values[i+2]);
        if(!finite(id)||id!==Math.floor(id)||id<1||id>512||seen[id]||
           !finite(f)||f<=0||!finite(a)||a<0){
            error("Auto Level: invalid tagged model; previous estimate retained\n");return;
        }
        seen[id]=true;total+=0.5*a*a;
    }
    if(!finite(total)){error("Auto Level: non-finite model power\n");return;}
    var changed=different(total,power);power=total;
    scheduleAuto();
    if(changed)evaluate(false);
}
function list() { if(inlet===0)acceptModel(arrayfromargs(arguments)); }
function tagged() { if(inlet===0)acceptModel(arrayfromargs(arguments)); }
function on(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    enabled=x!==0;settings();evaluate(false);
}
function strength(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    strengthPercent=clip(x,0,100);settings();evaluate(false);
}
function smooth(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    smoothingMs=clip(x,0,600000);settings(); // Applies to the next changed target.
}
function maxboost(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    maximumBoostDb=clip(x,0,24);settings();evaluate(false);
}
function applieddb(x) {
    if(inlet!==1)return;x=Number(x);if(!finite(x))return;
    appliedDb=clip(x,-120,24);
}
function capture() {
    if(inlet!==1)return;
    if(power<=POWER_FLOOR){status("CAPTURE ignored: model is silent");return;}
    autoTask.cancel();autoPending=false;autoArmed=false;
    // When enabled, capture the current compensated level without a gain jump.
    // Divide by strength because the correction is interpolated in dB.
    var correction=(enabled && strengthPercent>0)?appliedDb/(strengthPercent/100):0;
    referencePower=Math.pow(10,clip(db(power)+correction,-180,120)/10);
    referenceReady=true;evaluate(false);status("REFERENCE captured");
}
function startup() {
    if(inlet!==1 || referenceReady)return;
    autoArmed=true;scheduleAuto();evaluate(false);
}
function bang() {
    // An empty Max list can arrive as bang; it represents no sounding records.
    if(inlet===0)acceptModel([]);
    else {settings();levels();}
}
function loadbang() {
    outlet(0,[0,0]);settings();levels();
    outlet(1,"applied_db",0);outlet(1,"applied_gain",1);
    status("ON | preparing startup reference");
}
function notifydeleted() { autoTask.cancel(); }
function clear() { if(inlet===0)acceptModel([]); }
function set() {}
function anything() {}
