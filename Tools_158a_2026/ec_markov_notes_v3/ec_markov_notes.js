/* ec_markov_notes.js v3.0 -- 2026-10-18
   A programmable FIRST-ORDER Markov model of pitch classes 0..11.
   Standard Max [js], ES5. No Node or external packages.

   js ec_markov_notes.js [pitch classes...]    default: 0 7
   1 inlet; 5 outlets, LEFT TO RIGHT:
     1 generated pitch class (0..11)
     2 generated MIDI note, using octave (default 4, C4 = MIDI 60)
     3 next-choice percentages, in ascending active-PC order
     4 history of generated PCs (the silent start is not included)
     5 tagged UI messages (table, weights, menus, currentpc, etc.)

   pcs <PCs...>         set active set, preserving ALL stored weights
   add <PC> / remove <PC> / enable <PC> <0|1>
   weight <fromPC> <toPC> <nonnegative weight>
   row <fromPC> <weights for active PCs in ascending order...>
   editpc <PC>          select bag for row editor, without moving playback
   weights <list>       edit that bag from a continuous multislider
   cell <col> <row> <value>  jit.cellblock callback, header at row/col 0
   start <PC> / reset   silent start; reset selects lowest active PC
   octave <-1..8>       audition register, separate from pitch-class model
   mode markov|random|cycle; seed <0..2147483646>; dump; status
   exportjs <path.js>  write a self-contained player with fixed transitions
   fill <weight>       set active matrix to one weight (0 permits drafting)
   defaults            restore all 144 weights to 1; active PCs 0 and 7
   model 3|6           optional teaching examples from v1

   Membership is a view onto a persistent 12x12 matrix. Turning a PC off
   retains its row/column; turning it back on restores those exact values.
   Previously untouched connections have weight 1. Raw weights are never
   normalized in storage. A zero-sum active bag outputs NO NOTE on bang;
   current PC stays put and metro can continue while the user edits it.

   The table always displays editable RAW Markov weights, in every mode.
   It is never rewritten on a playback bang. UI table writes are bracketed
   by tablegate 0/1 and protected by _syncing to prevent feedback.
   save()/embedmessage preserve the full matrix when the patch is saved;
   getvalueof()/setvalueof() support pattr. See README.txt for migration and frozen-player export.
*/
autowatch = 1;
inlets = 1;
outlets = 5;
setinletassist(0, 'bang; pcs; add/remove/enable; weight; row; editpc; weights; cell; start; octave; mode; status');
setoutletassist(0, 'Generated pitch class 0..11 (only successful bang)');
setoutletassist(1, 'Generated MIDI pitch (only successful bang)');
setoutletassist(2, 'Next-choice percentages in ascending active-PC order');
setoutletassist(3, 'Generated-PC history, most recent 16');
setoutletassist(4, 'Tagged UI messages, table commands and dump');

var _names = ['C','C#','D','D#','E','F','F#','G','G#','A','A#','B'];
var _active = [0,7], _w = [], _current = 0, _edit = 0;
var _octave = 4, _mode = 'markov', _rng = 0, _history = [], _steps = 0;
var _last = 'No generated note yet. The starting pitch class is silent.';
var _status = 'Ready. Edit a bag, then click NEXT or turn on AUTO.';
var _syncing = 0, _busy = false, _ready = false, _maxWeight = 1000000000;
_initialize();
if (typeof jsarguments !== 'undefined' && jsarguments.length > 1) {
    var _args = jsarguments.slice(1);
    var _initial = _validatedSet(_args);
    if (_initial) { _active = _initial; _current = _edit = _active[0]; }
}

function _integer(v) { return typeof v === 'number' && isFinite(v) && Math.floor(v) === v; }
function _pc(v) { return _integer(v) && v >= 0 && v < 12; }
function _validWeight(v) { return typeof v === 'number' && isFinite(v) && v >= 0 && v <= _maxWeight; }
function _label(pc) { return pc + ' ' + _names[pc]; }
function _midi(pc) { return 12 * (_octave + 1) + pc; }
function _tag(name, value) {
    var a = [name];
    if (Object.prototype.toString.call(value) === '[object Array]') a = a.concat(value);
    else a.push(value);
    outlet(4, a);
}
function _dirty() {
    if (typeof notifyclients === 'function') notifyclients();
    _tag('dirty', 'bang');
}
function _error(s) { _status = 'Not changed: ' + s; _tag('status', _status); }
function _initialize() {
    var i,j; _w = [];
    for (i=0;i<12;i++) { _w[i]=[]; for (j=0;j<12;j++) _w[i][j]=1; }
}
function _validatedSet(a) {
    var seen={}, result=[], i;
    if (!a.length || a.length>12) return null;
    for (i=0;i<a.length;i++) { if (!_pc(a[i]) || seen[a[i]]) return null; seen[a[i]]=true; result.push(a[i]); }
    result.sort(function(a,b){ return a-b; }); return result;
}
function _row(pc) { var a=[],i; for(i=0;i<_active.length;i++) a.push(_w[pc][_active[i]]); return a; }
function _sum(a) { var n=0,i; for(i=0;i<a.length;i++) n+=a[i]; return n; }
function _chances(pc) {
    var a=_row(pc), total=_sum(a), i, index=_active.indexOf(pc);
    for(i=0;i<a.length;i++) a[i]=_mode==='random' ? 1/a.length : (_mode==='cycle' ? (i===(index+1)%a.length?1:0) : (total>0?a[i]/total:0));
    return a;
}
function _random() { if(!_rng) return Math.random(); _rng=(_rng*16807)%2147483647; return (_rng-1)/2147483646; }
function _choose(a,r) {
    var total=0,last=-1,i;
    for(i=0;i<a.length;i++) { if(a[i]>0)last=i; total+=a[i]; if(r<total)return i; }
    return last;
}
function _restart(pc) { _current=pc; _history=[]; _steps=0; _last='Silent start: PC '+_label(pc)+'. NEXT chooses its successor.'; }
function _emitState() {
    var p=_chances(_current), percentages=[], labels=[],i, empty=_sum(p)===0;
    _tag('current', 'PC '+_label(_current)+'  |  MIDI '+_midi(_current));
    _tag('currentpc', _current); _tag('midi', _midi(_current));
    _tag('startmenu', ['set', _active.indexOf(_current)]);
    _tag('transition', _last); _tag('stepcount', _steps);
    _tag('rowstate', empty ? 'EMPTY BAG: next bang produces no note. Add a positive weight.' : 'Next-choice chances (%) | '+_mode);
    for(i=0;i<p.length;i++) { percentages.push(p[i]*100); labels.push(_active[i]+': '+(p[i]*100).toFixed(1)+'%'); }
    _tag('nexttext',labels.join('   '));
    _tag('historytext', _history.length ? _history.join('  ') : '(no generated notes yet)');
    if(_history.length)outlet(3,_history.slice(0));else outlet(3,'clear');
    outlet(2,percentages);
}
function _emitEditor(sendWeights) {
    var a=_row(_edit), max=10, labels=[], i;
    for(i=0;i<a.length;i++) { max=Math.max(max,a[i]); labels.push(_active[i]+': '+Math.round(a[i]*1000)/1000); }
    _tag('editmenu',['set',_active.indexOf(_edit)]);
    _tag('editor','Bag for PC '+_label(_edit)+'  |  total '+Math.round(_sum(a)*1000)/1000);
    if(sendWeights!==false)_tag('editrange',max);
    if(sendWeights!==false) _tag('weights',a);
    _tag('editorlabels',labels.join('   '));
}
function _tableBegin() { _syncing++; _tag('tablegate',0); }
function _tableEnd() { _syncing--; if(!_syncing)_tag('tablegate',1); }
function _tableFull() {
    var i,j;
    _tableBegin();
    try {
        _tag('table',['clear','all']);
        _tag('table',['cols',_active.length+1]); _tag('table',['rows',_active.length+1]);
        _tag('table',['set',0,0,'PC']);
        for(i=0;i<_active.length;i++) {
            _tag('table',['set',i+1,0,_label(_active[i])]); _tag('table',['set',0,i+1,_label(_active[i])]);
            for(j=0;j<_active.length;j++) _tag('table',['set',j+1,i+1,_w[_active[i]][_active[j]]]);
        }
    } finally { _tableEnd(); }
}
function _tableRow(pc) {
    var r=_active.indexOf(pc),i; if(r<0)return;
    _tableBegin();
    try { for(i=0;i<_active.length;i++)_tag('table',['set',i+1,r+1,_w[pc][_active[i]]]); }
    finally { _tableEnd(); }
}
function _tableCell(from,to) {
    var r=_active.indexOf(from),c=_active.indexOf(to); if(r<0||c<0)return;
    _tableBegin();
    try { _tag('table',['set',c+1,r+1,_w[from][to]]); }
    finally { _tableEnd(); }
}
function _emitMembership() {
    var i;
    _tag('count',_active.length);
    for(i=0;i<12;i++)_tag('member',[i,_active.indexOf(i)>=0?1:0]);
    _tag('membership','Active PCs: '+_active.join('  ')+'  |  rows and columns always ascend by pitch class');
    _tag('editmenu',['clear']); _tag('startmenu',['clear']);
    for(i=0;i<_active.length;i++) { _tag('editmenu',['append',_label(_active[i])]); _tag('startmenu',['append',_label(_active[i])]); }
}
function _emitAll() {
    _emitMembership();
    _tag('octave',_octave); _tag('keyboardoffset',12*(_octave+1));
    _tag('modeindex',_mode==='markov'?0:(_mode==='random'?1:2));
    _tableFull(); _emitEditor(); _emitState(); _tag('status',_status);
}
function _setMembership(a) {
    if(a.join(',')===_active.join(',')) { _emitMembership(); _emitEditor(); _emitState(); return; }
    var added=[], i;
    for(i=0;i<a.length;i++)if(_active.indexOf(a[i])<0)added.push(a[i]);
    _active=a;
    if(_active.indexOf(_current)<0) _current=_active[0];
    if(added.length===1)_edit=added[0];
    else if(_active.indexOf(_edit)<0) _edit=_active[0];
    _last='Active set changed. Current PC '+_label(_current)+'; stored weights retained.';
    _status='Membership updated. Existing weights retained; untouched connections have weight 1.';
    _emitAll(); _dirty();
}
function bang() {
    if(_busy || _syncing)return;
    _busy=true;
    try {
        var from=_current, p=_chances(from), random=_mode==='cycle'?0:_random(), index=_choose(p,random);
        if(index<0) { _last='No note: PC '+_label(from)+' has no positive weight to an active destination.'; _emitState(); return; }
        _current=_active[index]; _steps++; _history.push(_current); if(_history.length>16)_history.shift();
        _last='Last: '+from+' -> '+_current+'  |  '+(p[index]*100).toFixed(1)+'%'+(_mode==='cycle'?'  |  fixed cycle':'  |  draw '+random.toFixed(3));
        _emitState();
        // Companion MIDI event precedes the primary pitch-class event.
        outlet(1,_midi(_current)); outlet(0,_current);
    } finally { _busy=false; }
}
function pcs() {
    var a=_validatedSet(arrayfromargs(arguments));
    if(!a) { _error('supply 1-12 unique pitch classes, integers 0..11.'); return; }
    _setMembership(a);
}
function enable(pc,on) {
    if(arguments.length!==2 || !_pc(pc) || (on!==0&&on!==1)) { _error('enable needs PC 0..11 and 0 or 1.'); return; }
    var a=_active.slice(0),index=a.indexOf(pc);
    if(on && index<0)a.push(pc);
    if(!on && index>=0)a.splice(index,1);
    if(!a.length) { _tag('member',[pc,1]); _error('keep at least one pitch class active.'); return; }
    a.sort(function(a,b){return a-b;}); _setMembership(a);
}
function add(pc) { if(arguments.length!==1){_error('add needs one PC.');return;} enable(pc,1); }
function remove(pc) { if(arguments.length!==1){_error('remove needs one PC.');return;} enable(pc,0); }
function start(pc) {
    if(arguments.length!==1 || !_pc(pc) || _active.indexOf(pc)<0) { _error('start needs an active pitch class, not a row index.'); return; }
    _restart(pc); _emitState(); _dirty();
}
function startindex(i) { if(_integer(i)&&i>=0&&i<_active.length)start(_active[i]); }
function reset() { start(_active[0]); }
function editpc(pc) {
    if(arguments.length!==1 || !_pc(pc) || _active.indexOf(pc)<0) { _error('editpc needs an active pitch class.'); return; }
    _edit=pc; _emitEditor();
}
function editindex(i) { if(_integer(i)&&i>=0&&i<_active.length)editpc(_active[i]); }
function _commitRow(pc,a,slider) {
    var i,changed=false;
    if(!_pc(pc)||_active.indexOf(pc)<0||a.length!==_active.length) { _error('row needs an active source PC and '+_active.length+' weights.'); _emitEditor(); return; }
    for(i=0;i<a.length;i++)if(!_validWeight(a[i])) { _error('weights must be finite numbers from 0 to 1e9.'); _emitEditor(); return; }
    for(i=0;i<a.length;i++)if(_w[pc][_active[i]]!==a[i]){_w[pc][_active[i]]=a[i];changed=true;}
    if(!changed)return;
    _tableRow(pc); _emitEditor(!slider); _emitState();
    _status='Updated bag for PC '+_label(pc)+'. Changes affect the next bang.';
    if(_mode!=='markov')_status+=' Choose Markov to hear these weights.';
    _tag('status',_status); _dirty();
}
function row() { var a=arrayfromargs(arguments),pc=a.shift(); _commitRow(pc,a,false); }
function weights() { _commitRow(_edit,arrayfromargs(arguments),true); }
function weight(from,to,value) {
    if(arguments.length!==3 || !_pc(from)||!_pc(to)||!_validWeight(value)) { _error('weight needs from-PC, to-PC and a weight from 0 to 1e9.'); return; }
    if(_w[from][to]===value)return;
    _w[from][to]=value; _tableCell(from,to); _emitEditor(); _emitState();
    _status='Weight '+from+' -> '+to+' = '+value+'.'; _tag('status',_status); _dirty();
}
function cell(col,r,value) {
    if(_syncing)return;
    if(!_integer(col)||!_integer(r)||r<1||r>_active.length||col<1||col>_active.length)return;
    var from=_active[r-1],to=_active[col-1];
    _edit=from;
    // The cell may be selected without an edit; this still selects its bag.
    if(arguments.length!==3 || !_validWeight(value)) {
        _error('enter one nonnegative numeric weight (0..1e9).'); _tableCell(from,to); _emitEditor(); return;
    }
    if(_w[from][to]===value) { _emitEditor(); return; }
    _w[from][to]=value;
    // Do not rewrite the user's just-committed cell or the whole table.
    _emitEditor(); _emitState();
    _status='Cell '+from+' -> '+to+' = '+value+'. Changes affect the next bang.';
    _tag('status',_status); _dirty();
}
function fill(value) {
    if(arguments.length!==1||!_validWeight(value)){_error('fill needs one weight from 0 to 1e9.');return;}
    var i,j;for(i=0;i<_active.length;i++)for(j=0;j<_active.length;j++)_w[_active[i]][_active[j]]=value;
    _status='All active weights set to '+value+'. Inactive weights retained.';
    _tableFull();_emitEditor();_emitState();_tag('status',_status);_dirty();
}
function octave(n) {
    if(arguments.length!==1||!_integer(n)||n<-1||n>8){_error('octave must be an integer from -1 to 8.');return;}
    _octave=n;_tag('octave',n);_tag('keyboardoffset',12*(n+1));_emitState();_dirty();
}
function mode(m) {
    if(arguments.length!==1||(m!=='markov'&&m!=='random'&&m!=='cycle')){_error('mode is markov, random or cycle.');return;}
    _mode=m;_tag('modeindex',m==='markov'?0:(m==='random'?1:2));
    _status='Mode: '+m+'. Table and sliders continue to edit stored Markov weights.';
    _emitState();_tag('status',_status);_dirty();
}
function seed(n) {
    if(arguments.length!==1||!_integer(n)||n<0||n>=2147483647){_error('seed must be 0..2147483646.');return;}
    _rng=n;_status=n?'Repeatable random generator seeded.':'Random source: Math.random.';_tag('status',_status);_dirty();
}
function defaults() {
    _initialize();_active=[0,7];_edit=0;_octave=4;_mode='markov';_rng=0;_restart(0);
    _status='Defaults restored: PCs 0 and 7; all 144 stored weights = 1.';_emitAll();_dirty();
}
function model(n) {
    if(n!==3&&n!==6){_error('teaching models: model 3 or model 6. Use pcs for your own set.');return;}
    _initialize();_active=n===3?[0,2,4]:[0,2,4,5,7,9];
    var rows=n===3?[[1,7,2],[4,0,6],[8,2,0]]:[[1,7,2,0,0,0],[4,0,6,0,0,0],[2,2,0,6,0,0],[0,0,3,0,7,0],[3,0,0,2,0,5],[7,0,0,0,3,0]],i,j;
    for(i=0;i<_active.length;i++)for(j=0;j<_active.length;j++)_w[_active[i]][_active[j]]=rows[i][j];
    _mode='markov';_edit=0;_restart(0);_status='Teaching model loaded; matrix restored.';_emitAll();_dirty();
}
function dump() {
    var i,j;_tag('dump',['pcs'].concat(_active));_tag('dump',['octave',_octave]);
    for(i=0;i<_active.length;i++)_tag('dump',['row',_active[i]].concat(_row(_active[i])));
    _tag('dump',['mode',_mode]);
}
function getvalueof() {
    var a=[2,_octave,_current,_edit,_mode==='markov'?0:(_mode==='random'?1:2),_rng],i,j;
    for(i=0;i<12;i++)a.push(_active.indexOf(i)>=0?1:0);
    for(i=0;i<12;i++)for(j=0;j<12;j++)a.push(_w[i][j]);
    return a;
}
function _restore(a,markDirty) {
    var active=[],w=[],i,j,k=18;
    if(a.length!==162||a[0]!==2||!_integer(a[1])||a[1]<-1||a[1]>8||!_pc(a[2])||!_pc(a[3])||!_integer(a[4])||a[4]<0||a[4]>2||!_integer(a[5])||a[5]<0||a[5]>=2147483647){_error('invalid saved model header.');return;}
    for(i=0;i<12;i++){if(a[6+i]!==0&&a[6+i]!==1){_error('invalid saved membership.');return;}if(a[6+i])active.push(i);}
    if(!active.length||active.indexOf(a[2])<0||active.indexOf(a[3])<0){_error('saved current/editor PC must be active.');return;}
    for(i=0;i<12;i++){w[i]=[];for(j=0;j<12;j++){if(!_validWeight(a[k])){_error('invalid saved weight.');return;}w[i][j]=a[k++];}}
    _active=active;_w=w;_octave=a[1];_edit=a[3];_mode=['markov','random','cycle'][a[4]];_rng=a[5];_restart(a[2]);
    _status='Saved model restored. All 144 weights, active PCs and octave retained.';
    if(_ready)_emitAll();if(markDirty)_dirty();
}
function restorestate(){_restore(arrayfromargs(arguments),false);}
function setvalueof(){_restore(arrayfromargs(arguments),true);}
function save(){embedmessage('restorestate',getvalueof());}
function status(){_ready=true;_emitAll();}
function loadbang(){_ready=true;_emitAll();}
function anything(){_error('unknown message: '+messagename+'. See message_reference.');}

_integer.local=_pc.local=_validWeight.local=_label.local=_midi.local=_tag.local=_dirty.local=_error.local=1;
_initialize.local=_validatedSet.local=_row.local=_sum.local=_chances.local=_random.local=_choose.local=1;
_restart.local=_emitState.local=_emitEditor.local=_tableBegin.local=_tableEnd.local=_tableFull.local=1;
_tableRow.local=_tableCell.local=_emitMembership.local=_emitAll.local=_setMembership.local=1;
_commitRow.local=_restore.local=1;

// Embedded template: exported players require no external runtime file.
var _playerTemplate = "/* Frozen Markov player, exported by ec_markov_notes.js v3.\n   Standard Max [js], ES5. No editor or external file dependency.\n   The embedded transition model has no message-based editing interface.\n   Inlet: bang; reset; start <active PC>; seed <integer>; octave <-1..8>;\n          status; dump (read-only).\n   Outlets left to right: pitch class; MIDI note; tagged diagnostics.\n   The starting PC is silent: the first bang selects its successor.\n   reset restores the exported start, octave and random-generator state.\n   Empty rows hold their state and emit no note. seed 0 uses Math.random.\n*/\nautowatch = 0;\ninlets = 1;\noutlets = 3;\nsetinletassist(0, 'bang; reset; start PC; seed N; octave N; status; dump');\nsetoutletassist(0, 'Generated pitch class 0..11');\nsetoutletassist(1, 'Generated MIDI note');\nsetoutletassist(2, 'step / empty / status / error / read-only dump');\n\nvar _player = (function(model) {\n    var current=model.start, register=model.octave, rng=model.seed;\n    var steps=0, busy=false;\n    function integer(n) { return typeof n==='number' && isFinite(n) && Math.floor(n)===n; }\n    function report(a) { outlet(2,a); }\n    function fail(s) { report(['error',s]); }\n    function random() {\n        if(!rng)return Math.random();\n        rng=(rng*16807)%2147483647;\n        return (rng-1)/2147483646;\n    }\n    function status() {\n        report(['status','current',current,'octave',register,'seed',rng,'steps',steps,'source_mode',model.mode]);\n    }\n    return {\n        bang: function() {\n            if(busy)return;\n            busy=true;\n            try {\n                var from=current, p=model.probabilities[model.pcs.indexOf(from)];\n                var draw=model.mode==='cycle'?0:random(), sum=0, last=-1, index=-1, i;\n                for(i=0;i<p.length;i++) {\n                    if(p[i]>0)last=i;\n                    sum+=p[i];\n                    if(draw<sum){index=i;break;}\n                }\n                if(index<0)index=last;\n                if(index<0){report(['empty',current]);return;}\n                current=model.pcs[index];steps++;\n                // Capture both companion events before any synchronous output feedback.\n                var pc=current, midi=12*(register+1)+pc;\n                report(['step',from,pc,p[index]]);\n                outlet(1,midi);\n                outlet(0,pc);\n            } finally { busy=false; }\n        },\n        reset: function() {\n            if(busy){fail('Playback control ignored during output; use deferlow.');return;}\n            current=model.start;register=model.octave;rng=model.seed;steps=0;status();\n        },\n        start: function(pc) {\n            if(busy){fail('Playback control ignored during output; use deferlow.');return;}\n            if(!integer(pc)||model.pcs.indexOf(pc)<0){fail('start needs an active pitch class.');return;}\n            current=pc;steps=0;status();\n        },\n        seed: function(n) {\n            if(busy){fail('Playback control ignored during output; use deferlow.');return;}\n            if(!integer(n)||n<0||n>=2147483647){fail('seed needs an integer 0..2147483646.');return;}\n            rng=n;status();\n        },\n        octave: function(n) {\n            if(busy){fail('Playback control ignored during output; use deferlow.');return;}\n            if(!integer(n)||n<-1||n>8){fail('octave needs an integer -1..8.');return;}\n            register=n;status();\n        },\n        status: status,\n        dump: function() {\n            report(['pcs'].concat(model.pcs));\n            for(var i=0;i<model.pcs.length;i++)report(['row',model.pcs[i]].concat(model.weights[i]));\n            report(['snapshot','start',model.start,'octave',model.octave,'seed',model.seed,'source_mode',model.mode]);\n        },\n        fail: fail\n    };\n})(__MODEL__);\n\nfunction bang(){_player.bang();}\nfunction reset(){_player.reset();}\nfunction start(pc){if(arguments.length===1)_player.start(pc);else _player.fail('start needs one pitch class.');}\nfunction seed(n){if(arguments.length===1)_player.seed(n);else _player.fail('seed needs one integer.');}\nfunction octave(n){if(arguments.length===1)_player.octave(n);else _player.fail('octave needs one integer.');}\nfunction status(){_player.status();}\nfunction dump(){_player.dump();}\nfunction loadbang(){_player.status();}\nfunction anything(){_player.fail('Fixed model: unsupported message '+messagename+'.');}\nfunction msg_int(){_player.fail('Send bang to select the next pitch.');}\nfunction msg_float(){_player.fail('Send bang to select the next pitch.');}\nfunction list(){_player.fail('Fixed model: lists do not edit transition weights.');}\n";

// Freeze the behavior currently being auditioned, not the editor interface.
function _snapshotPlayer() {
    var rows=[],probabilities=[],i,j,a;
    for(i=0;i<_active.length;i++) {
        a=_row(_active[i]);
        if(_mode!=='markov')for(j=0;j<a.length;j++)a[j]=_mode==='random'?1:(j===(i+1)%a.length?1:0);
        rows.push(a);
        probabilities.push(_chances(_active[i]));
    }
    return {format:1,pcs:_active.slice(0),weights:rows,probabilities:probabilities,
            start:_current,octave:_octave,seed:_rng,mode:_mode};
}
function _playerSource() {
    return _playerTemplate.replace('__MODEL__',JSON.stringify(_snapshotPlayer()));
}
function exportjs(path) {
    if(arguments.length!==1||typeof path!=='string'||!path.length) {
        _error('exportjs needs a .js file path. Use the Export player button or savedialog -> prepend exportjs.');return;
    }
    if(!/\.js$/i.test(path)) {_error('choose a filename ending in .js.');return;}
    var basename=path.replace(/\\/g,'/').split('/').pop().split(':').pop();
    if(basename.toLowerCase()==='ec_markov_notes.js') {_error('choose a new name for the player, such as my_markov_model.js.');return;}
    var source=_playerSource(), file=null, count=0;
    try {
        file=new File(path,'write');
        if(!file.isopen)throw new Error('destination could not be opened');
        file.eof=0;file.position=0;
        // Short chunks avoid depending on large-string limits in older Max versions.
        for(var i=0;i<source.length;i+=1024)file.writestring(source.substring(i,i+1024));
        count=file.position;
        file.close();file=null;
        // Generated source is ASCII, so character and byte counts agree.
        if(count!==source.length)throw new Error('incomplete write; do not use this file');
    } catch(e) {
        if(file&&file.isopen)file.close();
        _status='Export failed: '+String(e.message||e)+'.';_tag('status',_status);return;
    }
    _status='Exported '+basename+' | '+_active.length+' PCs | '+_mode+' | fixed transition model.';
    _tag('status',_status);
    post('Frozen Markov player written: '+path+'\n');
}
_snapshotPlayer.local=_playerSource.local=1;
