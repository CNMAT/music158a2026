/* Frozen Markov player, exported by ec_markov_notes.js v3.
   Standard Max [js], ES5. No editor or external file dependency.
   The embedded transition model has no message-based editing interface.
   Inlet: bang; reset; start <active PC>; seed <integer>; octave <-1..8>;
          status; dump (read-only).
   Outlets left to right: pitch class; MIDI note; tagged diagnostics.
   The starting PC is silent: the first bang selects its successor.
   reset restores the exported start, octave and random-generator state.
   Empty rows hold their state and emit no note. seed 0 uses Math.random.
*/
autowatch = 0;
inlets = 1;
outlets = 3;
setinletassist(0, 'bang; reset; start PC; seed N; octave N; status; dump');
setoutletassist(0, 'Generated pitch class 0..11');
setoutletassist(1, 'Generated MIDI note');
setoutletassist(2, 'step / empty / status / error / read-only dump');

var _player = (function(model) {
    var current=model.start, register=model.octave, rng=model.seed;
    var steps=0, busy=false;
    function integer(n) { return typeof n==='number' && isFinite(n) && Math.floor(n)===n; }
    function report(a) { outlet(2,a); }
    function fail(s) { report(['error',s]); }
    function random() {
        if(!rng)return Math.random();
        rng=(rng*16807)%2147483647;
        return (rng-1)/2147483646;
    }
    function status() {
        report(['status','current',current,'octave',register,'seed',rng,'steps',steps,'source_mode',model.mode]);
    }
    return {
        bang: function() {
            if(busy)return;
            busy=true;
            try {
                var from=current, p=model.probabilities[model.pcs.indexOf(from)];
                var draw=model.mode==='cycle'?0:random(), sum=0, last=-1, index=-1, i;
                for(i=0;i<p.length;i++) {
                    if(p[i]>0)last=i;
                    sum+=p[i];
                    if(draw<sum){index=i;break;}
                }
                if(index<0)index=last;
                if(index<0){report(['empty',current]);return;}
                current=model.pcs[index];steps++;
                // Capture both companion events before any synchronous output feedback.
                var pc=current, midi=12*(register+1)+pc;
                report(['step',from,pc,p[index]]);
                outlet(1,midi);
                outlet(0,pc);
            } finally { busy=false; }
        },
        reset: function() {
            if(busy){fail('Playback control ignored during output; use deferlow.');return;}
            current=model.start;register=model.octave;rng=model.seed;steps=0;status();
        },
        start: function(pc) {
            if(busy){fail('Playback control ignored during output; use deferlow.');return;}
            if(!integer(pc)||model.pcs.indexOf(pc)<0){fail('start needs an active pitch class.');return;}
            current=pc;steps=0;status();
        },
        seed: function(n) {
            if(busy){fail('Playback control ignored during output; use deferlow.');return;}
            if(!integer(n)||n<0||n>=2147483647){fail('seed needs an integer 0..2147483646.');return;}
            rng=n;status();
        },
        octave: function(n) {
            if(busy){fail('Playback control ignored during output; use deferlow.');return;}
            if(!integer(n)||n<-1||n>8){fail('octave needs an integer -1..8.');return;}
            register=n;status();
        },
        status: status,
        dump: function() {
            report(['pcs'].concat(model.pcs));
            for(var i=0;i<model.pcs.length;i++)report(['row',model.pcs[i]].concat(model.weights[i]));
            report(['snapshot','start',model.start,'octave',model.octave,'seed',model.seed,'source_mode',model.mode]);
        },
        fail: fail
    };
})({"format":1,"pcs":[0,4,7],"weights":[[1,6,3],[2,0,8],[7,2,1]],"probabilities":[[0.1,0.6,0.3],[0.2,0,0.8],[0.7,0.2,0.1]],"start":0,"octave":4,"seed":123,"mode":"markov"});

function bang(){_player.bang();}
function reset(){_player.reset();}
function start(pc){if(arguments.length===1)_player.start(pc);else _player.fail('start needs one pitch class.');}
function seed(n){if(arguments.length===1)_player.seed(n);else _player.fail('seed needs one integer.');}
function octave(n){if(arguments.length===1)_player.octave(n);else _player.fail('octave needs one integer.');}
function status(){_player.status();}
function dump(){_player.dump();}
function loadbang(){_player.status();}
function anything(){_player.fail('Fixed model: unsupported message '+messagename+'.');}
function msg_int(){_player.fail('Send bang to select the next pitch.');}
function msg_float(){_player.fail('Send bang to select the next pitch.');}
function list(){_player.fail('Fixed model: lists do not edit transition weights.');}
