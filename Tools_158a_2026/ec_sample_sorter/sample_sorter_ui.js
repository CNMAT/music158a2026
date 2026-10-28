// Classic Max js (ES5). Menus use numeric IDs; labels never become disk paths.
autowatch = 1;
inlets = 1;
outlets = 2;
var cached = {available: null, preferred: null};
var keyboardState = null;
var keyboardFocused = 0;
var upHeld = false;
var downHeld = false;
function named(n) { return this.patcher.getnamed(n); }
function label(n, value) { var o = named(n); if (o) o.message('set', String(value)); }
function enabled(n, active) { var o = named(n); if (o) o.message('active', active ? 1 : 0); }
function state(json) {
    var s;
    try { s = JSON.parse(json); } catch (e) { post('Sample Sorter UI: invalid state: ' + e + '\n'); return; }
    keyboardState = s;
    var kinds = ['available', 'preferred'];
    for (var k = 0; k < kinds.length; k++) {
        var name = kinds[k], list = s[name], menu = named(name), key = JSON.stringify(list);
        if (key !== cached[name]) {
            menu.message('clear');
            if (!list.length) menu.message('append', name === 'available' ? '(no available files)' : '(no preferred files)');
            for (var i = 0; i < list.length; i++) {
                // Prefix prevents umenu's leading '-' separator convention.
                // Replace punctuation only in the displayed label; original paths remain intact.
                menu.message('append', (i + 1) + ' | ' + list[i].replace(/,/g, '，').replace(/[\r\n\t]/g, ' '));
            }
            cached[name] = key;
        }
        menu.message('set', s.selected[name] >= 0 ? s.selected[name] : -1);
        menu.message('ignoreclick', s.busy || !list.length ? 1 : 0);
    }
    label('source_path', s.root || 'No source folder selected');
    label('available_count', s.available.length + ' available');
    label('preferred_count', s.preferred.length + ' preferred');
    label('current_file', s.current ? s.current.rel : 'Select a sound from either menu');
    enabled('keep_button', !s.busy && s.current && s.current.which === 'available');
    enabled('remove_button', !s.busy && s.current && s.current.which === 'preferred');
    enabled('confirm_button', !s.busy && s.pending);
    enabled('cancel_button', !s.busy && s.pending);
    var controls = ['load_button', 'rescan_button', 'new_button', 'replace_button', 'replay_button',
        'previous_available_button', 'next_available_button', 'next_sample_button', 'previous_preferred_button', 'next_preferred_button'];
    for (var j = 0; j < controls.length; j++) enabled(controls[j], !s.busy);
}
function status(s) { label('status_text', s); }
function review(s) { label('review_text', s); }
function result(s) { label('result_text', s); }
function play(p) { outlet(0, 'play', p); }
function cue(p) { outlet(0, 'cue', p); }
function stop() { outlet(0, 'stop'); }

// Fourth outlets of key/keyup use platform-independent codes.
// Outlet 1 sends existing sorter commands; outlet 0 remains the audio transport.
function keyboardfocus(value) {
    keyboardFocused = Number(value) !== 0;
    upHeld = false;
    downHeld = false;
}
function keyrelease(code) {
    if (Number(code) === -9) upHeld = false;
    if (Number(code) === -10) downHeld = false;
}
function keydown(code) {
    code = Number(code);
    // Latch Up Arrow even when a command is unavailable. Auto-repeat must not
    // keep subsequent files if the engine becomes ready while Up Arrow is held.
    if (code === -9) {
        if (upHeld) return;
        upHeld = true;
    }
    // Replay once per press; holding Down must not repeatedly restart the sound.
    if (code === -10) {
        if (downHeld) return;
        downHeld = true;
    }
    if (!keyboardFocused || !this.patcher.locked || !keyboardState || keyboardState.busy) return;
    if (code === -12 && keyboardState.available.length) outlet(1, 'next_available');
    else if (code === -11 && keyboardState.available.length) outlet(1, 'previous_available');
    else if (code === -9 && keyboardState.current && keyboardState.current.which === 'available') outlet(1, 'keep');
    else if (code === -10 && keyboardState.current) outlet(1, 'replay');
}
