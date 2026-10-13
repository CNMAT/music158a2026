/* Max js (ES5). Control only: all audio runs in Gen. */
autowatch = 1;
inlets = 1;
outlets = 4; // Gen params; mono compensation ramp; status; private buffer management
var CAP = 64, MAXMS = 10000;
var times = [0,250,500,750], levels = [], fade = 50;
var norm = 1, masterGain = 1, revision = 0;
// 0/no argument: tap N reads input N. Positive argument: round robin.
var inputCount = jsarguments.length > 1 ? Number(jsarguments[1]) : 0;
var badArgument = !isFinite(inputCount) || Math.floor(inputCount)!==inputCount || inputCount<0 || inputCount>CAP;
if (badArgument) inputCount=0;
var memoryName = jsarguments.length > 2 ? String(jsarguments[2]) : '';
var connectedChannels=0, audioRate=0, allocatedChannels=0, allocatedFrames=0;
var bankEpoch=0, initialized=0;
var actualTimes=times.slice(), driftAmount=0, driftInterval=250, urn=[];
var running=1, dspOn=0, vectorSize=64, busyUntil=0;
var driftTask=new Task(driftTick, this);
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
    cancelDrift();running=0;urn=[];actualTimes=times.slice();
    outlet(0,'running',0);
    outlet(3,'clear');outlet(0,'bankepoch',++bankEpoch);
    busyUntil=0;outlet(2,'stopped',1);
}
function startPattern(){
    cancelDrift();urn=[];actualTimes=times.slice();running=1;
    send();outlet(0,'running',1);outlet(2,'stopped',0);
}
function notifydeleted(){cancelDrift();}

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
    connectedChannels=Math.min(CAP,Math.floor(v));configureMemory();
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
    reportInputs();
    holdDrift();
}
function list() {
    var a=arrayfromargs(arguments);
    if(a.length===2) {
        var step=a[0],n=a[1];
        if(!numeric(step)||step<=0||Math.floor(step)!==step||!numeric(n)||Math.floor(n)!==n||n<1||n>CAP||step>MAXMS) {
            warn('Use two integers: spacing_ms (1..10000), tap_count (1..64).');return;
        }
        var count=Math.min(n,Math.floor(MAXMS/step)+1);
        var next=[];for(var i=0;i<count;i++)next.push(i*step);
        times=next;startPattern();
        if(count<n)warn('10000 ms limit: '+count+' of '+n+' requested taps are active.');
    } else setdelays(a);
}
function setdelays(a) {
    if(a.length<1||a.length>CAP){warn('Supply 1..64 delay times.');return;}
    for(var i=0;i<a.length;i++)if(!numeric(a[i])||a[i]<0||a[i]>MAXMS){warn('Delay times must be 0..10000 ms.');return;}
    times=a.slice();times[0]=0;startPattern();
    if(a[0]!==0)warn("First tap is always 0 ms; first explicit time was reset to 0.");
}
function delays(){setdelays(arrayfromargs(arguments));}
function msg_int(v){warn('Supply spacing_ms and tap_count, e.g. 250 8; for one undelayed tap use 250 1.');}
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
    outlet(2,['base_times'].concat(times));outlet(2,['target_times'].concat(actualTimes));
    outlet(2,'delaydrift',driftAmount,driftInterval);outlet(2,'stopped',running?0:1);outlet(2,['gains'].concat(levels.slice(0,times.length)));
    outlet(2,'smooth',fade);outlet(2,'master',masterGain);outlet(2,'normalize',norm);
    outlet(2,'capacity',CAP);outlet(2,'maximum_ms',MAXMS);reportInputs();
}
function initialize(){
    initialized=1;
    if(badArgument)warn('Input argument must be 1..64 or 0 (automatic); using automatic.');
    outlet(0,'memory',memoryName);configureMemory();send();
}
function defaults(){times=[0,250,500,750];for(var i=0;i<CAP;i++)levels[i]=1;fade=50;norm=1;masterGain=1;driftAmount=0;driftInterval=250;startPattern();dump();}
function anything(){warn('Unknown message: '+messagename);}
// Internal functions are not exposed as Max messages.
numeric.local=1;warn.local=1;send.local=1;setdelays.local=1;

sourceForTap.local=1;configureMemory.local=1;reportInputs.local=1;

nowMs.local=1;guardMs.local=1;cancelDrift.local=1;canDrift.local=1;
scheduleDrift.local=1;holdDrift.local=1;refillUrn.local=1;driftTick.local=1;startPattern.local=1;
