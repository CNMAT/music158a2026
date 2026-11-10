/* ec_tapdelay64_v4 -- Max js / ES5. Audio engine retained from v3.
   Creation settings arrive from patcherargs, then initialize commits once.
   Only the private buffer name is a JS object argument. */
autowatch = 0;
inlets = 1;
outlets = 5; // params, mono gain, status, buffer management, cycle-done bang
var CAP = 64, MAXMS = 10000;
var times = [0], levels = [], fade = 50;
var norm = 1, masterGain = 1, revision = 0;
var inputCount = 0, tapSetting = 'auto', baseSpacing = 250, curveName = 'linear';
var patternMode = 'generated', autoPending = 0;
var memoryName = jsarguments.length > 1 ? String(jsarguments[1]) : '';
var creation = {sources:0, taps:'auto', spacing:250, curve:'linear', delaydrift:0};
var opening = null, creationBad = 0, queued = [], host = this;
var connectedChannels=0, audioRate=0, allocatedChannels=0, allocatedFrames=0;
var bankEpoch=0, initialized=0;
var actualTimes=times.slice(), driftAmount=0, driftInterval=250, urn=[];
var running=1, dspOn=0, vectorSize=64, busyUntil=0;
var driftTask=new Task(driftTick, this);
var cycleTask=null, cyclePending=0, cycleSerial=0, cycleWaitMs=0;
var curveNames=['linear','expand','contract','exponential','logarithmic','s_curve','reverse_s','stretch','compress'];

function copyConfig(c){return {sources:c.sources,taps:c.taps,spacing:c.spacing,curve:c.curve,delaydrift:c.delaydrift};}
function currentConfig(){return {sources:inputCount,taps:tapSetting,spacing:baseSpacing,curve:curveName,delaydrift:driftAmount};}
function countFor(c){return c.taps==='auto' ? (c.sources>0?c.sources:Math.max(1,connectedChannels)) : c.taps;}
function hasCurve(s){for(var i=0;i<curveNames.length;i++)if(curveNames[i]===s)return true;return false;}
function curvePosition(x,name){
    if(x===0)return 0;
    if(name==='stretch')return 1.25*x;
    if(name==='compress')return 0.75*x;
    if(x===1)return 1;
    if(name==='expand')return x+0.25*x*(x-1);
    if(name==='contract')return x-0.25*x*(x-1);
    if(name==='exponential')return Math.pow(2,x)-1;
    if(name==='logarithmic')return Math.log(1+x)/Math.LN2;
    if(name==='s_curve')return x-0.5*Math.sin(2*Math.PI*x)/(2*Math.PI);
    if(name==='reverse_s')return x+0.5*Math.sin(2*Math.PI*x)/(2*Math.PI);
    return x;
}
function validateConfig(c){
    if(!numeric(c.sources)||Math.floor(c.sources)!==c.sources||c.sources<0||c.sources>CAP)
        return 'sources: integer 0..64; 0 follows connected input channels (one-to-one).';
    if(c.taps!=='auto'&&(!numeric(c.taps)||Math.floor(c.taps)!==c.taps||c.taps<1||c.taps>CAP))
        return 'taps: integer 1..64 or auto.';
    if(!numeric(c.spacing)||c.spacing<=0||c.spacing>MAXMS)return 'spacing: positive ms, at most 10000; decimals allowed.';
    if(!hasCurve(c.curve))return 'curve: '+curveNames.join(', ')+'.';
    if(!numeric(c.delaydrift)||Math.floor(c.delaydrift)!==c.delaydrift||c.delaydrift<0||c.delaydrift>MAXMS)
        return 'delaydrift: integer 0..10000 ms for the +/- range; 0 disables drift.';
    return '';
}
function makeTimes(c){
    var n=countFor(c), span=(n-1)*c.spacing, last=span*curvePosition(1,c.curve), a=[];
    if(last>MAXMS+0.00000001){
        warn('Pattern rejected: last tap '+last+' ms exceeds 10000 ms. Reduce spacing or taps. Settings unchanged.');return null;
    }
    for(var i=0;i<n;i++)a.push(i===0?0:roundMs(Math.min(MAXMS,span*curvePosition(i/(n-1),c.curve))));
    return a;
}
function clearHistory(){
    outlet(0,'bankready',0);outlet(3,'clear');outlet(0,'bankepoch',++bankEpoch);
    outlet(0,'bankready',allocatedFrames>0?1:0);
}
function applyConfig(c,resume){
    var error=validateConfig(c);if(error){warn(error);return false;}
    var next=makeTimes(c);if(!next)return false;
    cancelCycle('pattern');
    var reroute=c.sources!==inputCount, oldEpoch=bankEpoch;
    inputCount=c.sources;tapSetting=c.taps;baseSpacing=c.spacing;curveName=c.curve;
    driftAmount=c.delaydrift;
    times=next;patternMode='generated';autoPending=0;
    configureMemory();
    if(reroute&&bankEpoch===oldEpoch)clearHistory();
    if(resume)startPattern();
    else {cancelDrift();urn=[];actualTimes=times.slice();send();}
    return true;
}
function creationargs(){
    if(initialized)return;
    var a=arrayfromargs(arguments);
    if(a.length===1&&(a[0]==='bang'||a[0]==='done'))return;
    if(a.length>3){warn('Arguments: sources spacing_ms curve; use @taps for an independent tap count.');creationBad=1;return;}
    if(a.length>0)creation.sources=a[0];
    if(a.length>1)creation.spacing=a[1];
    if(a.length>2)creation.curve=a[2];
}
function creationattr(){
    if(initialized)return;
    var a=arrayfromargs(arguments), key=String(a.shift()).replace(/^@/,'');
    if(key==='done'||key==='bang')return;
    if(key!=='sources'&&key!=='taps'&&key!=='spacing'&&key!=='curve'&&key!=='delaydrift'){
        warn('Unknown creation setting: @'+key);return;
    }
    if(a.length!==1){warn('@'+key+' requires one value.');creationBad=1;return;}
    creation[key]=a[0];
}
function sources(v){
    if(arguments.length!==1){warn('sources: one count, 0..64.');return;}
    var c=currentConfig();c.sources=v;
    if(patternMode==='custom'){
        var e=validateConfig(c);if(e){warn(e);return;}
        cancelCycle('sources');
        var changed=inputCount!==v, epoch=bankEpoch;inputCount=v;configureMemory();
        if(changed&&epoch===bankEpoch)clearHistory();send();return;
    }
    applyConfig(c,true);
}
function taps(v){
    if(arguments.length!==1){warn('taps: one count, 1..64, or auto.');return;}
    var c=currentConfig();c.taps=v;applyConfig(c,true);
}
function spacing(v){
    if(arguments.length!==1){warn('spacing: one positive millisecond value.');return;}
    var c=currentConfig();c.spacing=v;applyConfig(c,true);
}
function curve(v){
    if(arguments.length!==1){warn('curve: one curve name.');return;}
    var c=currentConfig();c.curve=v;if(!applyConfig(c,true))reportPattern();
}
function tap(step,n,name){
    if(arguments.length<2||arguments.length>3){warn('tap spacing_ms tap_count [curve].');return;}
    var c=currentConfig();c.spacing=step;c.taps=n;
    if(arguments.length===3)c.curve=name;
    applyConfig(c,true);
}
function start(){startPattern();}
function curves(){outlet(2,['curves'].concat(curveNames));}
function nowMs(){return new Date().getTime();}
function guardMs(){return Math.max(10, 2000*vectorSize/Math.max(1,audioRate));}
function cancelDrift(){driftTask.cancel();}
function canDrift(){return initialized && running && dspOn && allocatedFrames>0 && driftAmount>0 && times.length>1;}
function scheduleDrift(){
    cancelDrift();
    if(canDrift())driftTask.schedule(Math.max(driftInterval,busyUntil-nowMs(),1));
}
// Allow the existing fade plus the latest queued fade to settle after edits.
function holdDrift(){busyUntil=Math.max(busyUntil,nowMs()+2*fade+guardMs());scheduleDrift();}
function refillUrn(){
    urn=[];
    for(var i=1;i<times.length;i++)urn.push(i);
    for(var j=urn.length-1;j>0;j--){var k=Math.floor(Math.random()*(j+1)),v=urn[j];urn[j]=urn[k];urn[k]=v;}
}
function driftTick(){
    if(!canDrift())return;
    if(nowMs()<busyUntil){scheduleDrift();return;}
    if(!urn.length)refillUrn();
    var i=urn.pop();
    var offset=Math.floor(Math.random()*(2*driftAmount+1))-driftAmount;
    actualTimes[i]=Math.max(0,Math.min(MAXMS,times[i]+offset));
    outlet(0,'driftonly',1);
    outlet(0,'time'+(i+1),actualTimes[i]);
    outlet(0,'revision',++revision);
    outlet(2,'drift',i+1,actualTimes[i]-times[i],actualTimes[i]);
    busyUntil=nowMs()+fade+guardMs();
    scheduleDrift();
}
function delaydrift(amount,interval){
    if(arguments.length<1||arguments.length>2||!numeric(amount)||Math.floor(amount)!==amount||amount<0||amount>MAXMS||
       (arguments.length===2&&(!numeric(interval)||Math.floor(interval)!==interval||interval<1||interval>2147483647))){
        warn('delaydrift: amount 0..10000 ms, optional interval 1..2147483647 ms (default 250).');return;
    }
    driftAmount=amount;driftInterval=arguments.length===2?interval:250;
    cancelDrift();
    if(driftAmount===0){actualTimes=times.slice();urn=[];send();}
    else scheduleDrift();
    outlet(2,'delaydrift',driftAmount,driftInterval);
}
function dspactive(v){
    dspOn=v?1:0;cancelDrift();
    if(dspOn){busyUntil=nowMs()+2*fade+guardMs();scheduleDrift();}
}
function audiovector(v){if(numeric(v)&&v>=1)vectorSize=v;}
function stop(){
    cancelCycle('stop');
    cancelDrift();running=0;urn=[];actualTimes=times.slice();
    outlet(0,'running',0);
    outlet(3,'clear');outlet(0,'bankepoch',++bankEpoch);
    busyUntil=0;outlet(2,'stopped',1);
}
function startPattern(){
    cancelDrift();urn=[];actualTimes=times.slice();running=1;
    send();outlet(0,'running',1);outlet(2,'stopped',0);
}
function notifydeleted(){cancelDrift();cancelCycle('deleted');}

function sourceForTap(i) { return inputCount>0 ? i%inputCount : i; }
function configureMemory() {
    if (!initialized || audioRate<=0 || connectedChannels<=0) return;
    var channels=Math.min(CAP,connectedChannels,inputCount>0?inputCount:CAP);
    var frames=Math.ceil(audioRate*MAXMS*0.001)+2;
    if(channels===allocatedChannels && frames===allocatedFrames)return;
    outlet(0,'bankready',0);
    outlet(3,'sizeinsamps',frames,channels);
    outlet(3,'clear');
    outlet(0,'memory',memoryName);
    allocatedChannels=channels;allocatedFrames=frames;
    outlet(0,'bankepoch',++bankEpoch);
    outlet(0,'bankready',1);
    outlet(2,'history_channels',channels);
    outlet(2,'history_samples',frames);
    holdDrift();
}
function audiochannels(v) {
    if(!numeric(v)||v<1)return;
    var n=Math.min(CAP,Math.floor(v)), changed=n!==connectedChannels;
    connectedChannels=n;
    if(!initialized)return;
    configureMemory();
    if(changed&&inputCount===0&&tapSetting==='auto'&&patternMode==='generated'){
        if(!applyConfig(currentConfig(),false)){autoPending=1;reportPattern();}
    }
}
function audiorate(v) {
    if(!numeric(v)||v<=0)return;
    audioRate=v;configureMemory();
}
function reportInputs() {
    var mapping=[];
    for(var i=0;i<times.length;i++)mapping.push(sourceForTap(i)+1);
    outlet(2,'input_mode',inputCount>0?'round_robin':'one_to_one');
    outlet(2,'expected_inputs',inputCount>0?inputCount:times.length);
    outlet(2,'connected_inputs',connectedChannels);
    outlet(2,['input_map'].concat(mapping));
}
for (var k=0;k<CAP;k++) levels[k]=1;
function numeric(v) { return typeof v === 'number' && isFinite(v); }
function warn(s) { outlet(2,'warning',s); }
function send() {
    outlet(0,'driftonly',0);
    var total=0;
    for(var i=0;i<CAP;i++) {
        var g=i<times.length?levels[i]:0;
        outlet(0,'time'+(i+1),i<actualTimes.length?actualTimes[i]:1);
        outlet(0,'gain'+(i+1),g);
        outlet(0,'source'+(i+1),sourceForTap(i));
        total+=g;
    }
    outlet(0,'smoothms',fade);
    outlet(0,'master',masterGain);
    // Commit comes after all time/gain parameters.
    outlet(0,'revision',++revision);
    outlet(1,[norm?1/Math.max(1,total):1,fade]);
    outlet(2,'active',times.length);
    reportPattern();
    reportInputs();
    holdDrift();
}
function reportPattern(){
    outlet(2,'sources',inputCount);
    outlet(2,'taps_mode',tapSetting==='auto'?'auto':'explicit');
    outlet(2,'taps',times.length);outlet(2,'spacing',baseSpacing);outlet(2,'curve',curveName);
    outlet(2,'pattern_mode',patternMode);outlet(2,'auto_pending',autoPending);
    outlet(2,['base_times'].concat(times));
}
function list(){
    var a=arrayfromargs(arguments);
    if(a.length===2)tap(a[0],a[1]);else setdelays(a);
}
function setdelays(a){
    if(a.length<1||a.length>CAP){warn('Supply 1..64 delay times.');return;}
    for(var i=0;i<a.length;i++)if(!numeric(a[i])||a[i]<0||a[i]>MAXMS){warn('Delay times must be 0..10000 ms.');return;}
    cancelCycle('delays');
    times=[];for(var j=0;j<a.length;j++)times.push(Math.round(a[j]));times[0]=0;tapSetting=a.length;patternMode='custom';autoPending=0;startPattern();
    if(a[0]!==0)warn('First tap is always 0 ms; first explicit time was reset to 0.');
}
function delays(){setdelays(arrayfromargs(arguments));}
function msg_int(v){warn('Use spacing_ms tap_count, e.g. 250 8; or sources / taps / spacing / curve messages.');}
function msg_float(v){msg_int(v);}
function gains(){
    var a=arrayfromargs(arguments);
    if(a.length<1||a.length>CAP){warn('Supply 1..64 gains (0..1).');return;}
    for(var i=0;i<a.length;i++)if(!numeric(a[i])||a[i]<0||a[i]>1){warn('Every gain must be 0..1.');return;}
    for(var j=0;j<CAP;j++)levels[j]=j<a.length?a[j]:1;
    send();
}
function smooth(v){if(arguments.length!==1||!numeric(v)||v<1||v>5000){warn('smooth: 1..5000 ms.');return;}busyUntil=Math.max(nowMs(),busyUntil)+fade+guardMs();fade=v;send();}
function master(v){if(arguments.length!==1||!numeric(v)||v<0||v>1){warn('master: 0..1.');return;}masterGain=v;send();}
function normalize(v){if(arguments.length!==1||(v!==0&&v!==1)){warn('normalize: 0 or 1.');return;}norm=v;send();}
function dump(){
    reportPattern();outlet(2,['target_times'].concat(actualTimes));
    outlet(2,'cycle_pending',cyclePending);outlet(2,'cycle_wait_ms',cycleWaitMs);
    outlet(2,'delaydrift',driftAmount,driftInterval);outlet(2,'stopped',running?0:1);
    outlet(2,['gains'].concat(levels.slice(0,times.length)));
    outlet(2,'smooth',fade);outlet(2,'master',masterGain);outlet(2,'normalize',norm);
    outlet(2,'capacity',CAP);outlet(2,'maximum_ms',MAXMS);reportInputs();
}
function initialize(){
    if(initialized)return;
    initialized=1;outlet(0,'memory',memoryName);
    if(creationBad||!applyConfig(creation,false)){
        warn('Invalid opening settings; using automatic sources, 250 ms, linear, taps auto, drift off.');
        creation={sources:0,taps:'auto',spacing:250,curve:'linear',delaydrift:0};
        if(!applyConfig(creation,false)){
            // An already-connected bus can exceed the time limit even at factory settings.
            // Retain auto configuration but use the one-tap startup pattern until corrected.
            inputCount=0;tapSetting='auto';baseSpacing=250;curveName='linear';driftAmount=0;
            times=[0];actualTimes=[0];autoPending=1;configureMemory();send();
        }
    }
    opening=copyConfig(currentConfig());
    outlet(2,'delaydrift',driftAmount,driftInterval);
    var q=queued;queued=[];
    for(var i=0;i<q.length;i++)host[q[i].name].apply(host,q[i].args);
}
function defaults(){
    var c=copyConfig(opening), error=validateConfig(c);
    if(error){warn(error);return;}
    if(!makeTimes(c))return;
    for(var i=0;i<CAP;i++)levels[i]=1;
    fade=50;norm=1;masterGain=1;driftInterval=250;
    applyConfig(c,true);dump();
}
function anything(){warn('Unknown message: '+messagename);}


// Virtual cycle: wait the rounded base time assigned to the final tap.
// Audio, drift, sound duration, crossfades and DSP state do not alter this clock.
// Remove sub-nanosecond arithmetic noise at exact half-ms curve positions.
function roundMs(v){return Math.round(v+0.000000001);}
function cancelCycle(reason){
    if(cycleTask){cycleTask.cancel();cycleTask=null;}
    if(cyclePending){cyclePending=0;if(reason!=='deleted'){outlet(2,'cycle_cancelled',reason);outlet(2,'cycle_pending',0);}}
}
function cyclecancel(){cancelCycle('message');}
function completionDelay(){return times.length ? times[times.length-1] : 0;}
function bang(){cycle();}
function cycle(){
    if(arguments.length!==0){
        warn('cycle takes no arguments: the wait is the final base_times value.');return;
    }
    cancelCycle('retrigger');
    var serial=++cycleSerial;
    cycleWaitMs=completionDelay();cyclePending=1;
    // One scheduled callback per cycle; no polling and no additional signal processing.
    cycleTask=new Task(function(){
        if(!cyclePending||serial!==cycleSerial)return;
        cyclePending=0;cycleTask=null;
        outlet(2,'cycle_pending',0);outlet(2,'cycle_complete',serial);
        outlet(4,'bang');
    },this);
    cycleTask.schedule(cycleWaitMs);
    outlet(2,'cycle_pending',1);outlet(2,'cycle_wait_ms',cycleWaitMs);
}
roundMs.local=1;
cancelCycle.local=1;completionDelay.local=1;

// A parent loadmess can precede patcherargs. Replay public controls after creation.
function queueBeforeInit(name){
    var fn=host[name];
    host[name]=function(){
        if(!initialized){queued.push({name:name,args:arrayfromargs(arguments)});return;}
        return fn.apply(host,arguments);
    };
}
var publicControls=['bang','cycle','cyclecancel','sources','taps','spacing','curve','tap','start','curves','list','delays',
    'msg_int','msg_float','gains','smooth','master','normalize','dump','defaults','stop','delaydrift'];
for(var j=0;j<publicControls.length;j++)queueBeforeInit(publicControls[j]);

// Internal DSP plumbing is callable from the abstraction; helper functions are private.
copyConfig.local=1;currentConfig.local=1;countFor.local=1;hasCurve.local=1;curvePosition.local=1;
validateConfig.local=1;makeTimes.local=1;clearHistory.local=1;applyConfig.local=1;
numeric.local=1;warn.local=1;send.local=1;setdelays.local=1;reportPattern.local=1;
sourceForTap.local=1;configureMemory.local=1;reportInputs.local=1;queueBeforeInit.local=1;
nowMs.local=1;guardMs.local=1;cancelDrift.local=1;canDrift.local=1;
scheduleDrift.local=1;holdDrift.local=1;refillUrn.local=1;driftTick.local=1;startPattern.local=1;
