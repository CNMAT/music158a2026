ec_cnmat_sinusoids_lowcpu_abs~
Autonomous Max abstraction — per-lane start delay 1.8 — 2026-10-16

START HERE
Build 1.8 adds a separate DEL control to each ADSR lane. The upper row is now
PTS [value]  DUR [value] ms  DEL [value] ms. Every DEL defaults to 0 ms.
Close existing instances, replace the complete folder, and open
_ec_cnmat_sinusoids_lowcpu_abs~.maxhelp. Startup reports ready gain 0.1 build 1.8.
Your supplied help patch, current saved preset, keyboard and audio routing
are unchanged. Its older preset remains usable and restores all delays to 0.

DEL delays every lane start, including loop restarts. With DEL 0, starts pass
through immediately. Stop and preset recall cancel waiting starts. New dumps
include all twelve delays; the controller was updated along with the lanes.

Keep dependencies/ beside the main abstraction and help file. Runtime files use
Max's Patcher:/dependencies/ prefix in both the instrument and nested ADSR lanes.
Opening the supplied help file requires no added dependency search path.
For use by name from other folders, including diagnostics/, add the instrument's
TOP-LEVEL folder in Options > File Preferences. Subfolders need not be enabled:
the dependencies are addressed explicitly. Avoid duplicate old copies of the
abstraction in your search path.
Open
  _ec_cnmat_sinusoids_lowcpu_abs~.maxhelp
or create the object
  ec_cnmat_sinusoids_lowcpu_abs~
in your own patch. Double-click it to open the preserved presentation.

Targets your supplied Max 9.2 patch format. Requires the CNMAT sinusoids~ external
installed for your platform.
The native external is not included in the supplied source and is not bundled
here. All custom JavaScript and patcher dependencies are included. No original
synth folder or earlier patch is needed. Node.js is used only for optional tests;
the instrument runs in Max's classic js engine, without Node for Max.

INTERFACE
Inlet 1: note/control/preset messages.
Inlet 2: global output gain, linear 0.0–1.0. Default: 0.1 (-20 dB).

Outlets 1–12: individual routed group signals, after ADSR, Auto Level and gain.
Outlet 13: mono SUM of those same twelve post-gain signals (not an average).
Outlet 14: preset message-box content, beginning with 'set preset ...'.
Outlet 15: status, errors and diagnostic output.

The abstraction contains no dac~, ezdac~, hardware notein, MIDI port menu,
automixer or live.gain~. It does not switch DSP or set the host sample rate.
The help file has its own parent-level audio output solely to demonstrate use.
The synth follows the current host sample rate, including DSP reconfiguration.

COMMON MESSAGES TO INLET 1
  note-in 60 100                 MIDI pitch, optional velocity (default 100)
  gain 0.1                      linear output gain; also available on inlet 2
  gaindb -20                    dB convenience message, limited to unity gain
  trigger                       trigger all twelve ADSR lanes
  stop                          stop lane playback and turn loops off
  control Partial_Count 64
  control Source_Base_Hz 110
  control ADSR_12_Lanes_Shape 6
  control ADSR_12_Lanes_Duration_ms 2000
  control ADSR_Lane_01_Points 0. 0.8 0.25 0.
  control ADSR_Lane_01_Loop 1
  control ADSR_Lane_01_Delay_ms 250
  control Auto_Level capture
  control Micro_On 1
  sweep                         capture all preset data, report completion
  bang                          same as sweep
  dump                          fresh capture; fill the connected message box
  dumpvalues                    diagnostic UI values and engine JSON on out 15
  check                         ping, export and validate all 25 preset engines

check now reports every failed endpoint before a preset_bridge_failed summary.
An instance-ID mismatch produces a specific namespace error; a missing or old
script produces a no-acknowledgement error. A healthy check still reports
preset_bridge_ok 25 engines.
The startup status includes build 1.8 so you can confirm the current controller
is loaded. Preset transfers use short checked dictionary chunks; replace all
included scripts together when upgrading. New dumps use preset format version 2; version 1 presets load with DEL = 0.

CONTROL_NAMES.txt lists every available local receiver name. Use
  control NAME value(s)
or
  control NAME bang
for an action. Existing names such as Source_Base_Hz can also be used directly
as selectors, without 'control'. Do not prepend an instance ID to these names.

NOTES AND GAIN
note-in accepts integer MIDI pitches 0–127 and velocities 0–127. Velocity zero
is ignored, matching the source's note-on-only base-frequency behavior. Pitch
and velocity pass through the existing visible kslider; pitch then reaches the
existing mtof / base-retuning path. Last note wins. Velocity does not scale
amplitude, and note input does not automatically trigger the independent ADSR
lanes. Click the keyboard for the same pitch path, or send trigger separately.
The source-frequency control remains available for non-MIDI frequencies.

The gain slider, numeric display, message input and second inlet stay in sync.
Gain changes ramp over 50 ms. This is a final shared gain, separate from the
retained MODEL AMP GAIN and Auto Level spectrum compensation. It is not a
limiter: the summed signal can exceed unity depending on the synthesis model.

PER-LANE START DELAY
DEL is an integer number of milliseconds, from 0 to 3600000, default 0.
Each lane has its own DEL in the upper row, after DUR. The existing 240-pixel
lane panels retain their dimensions. DUR retains its existing numeric type.
Example for lane 1:
  control ADSR_Lane_01_Delay_ms 250
Use lane numbers 01 through 12. A UI change emits the corresponding internal
ADSR_Lane_01_Delay_ms_state value; all buses remain instance-local.

A manual TRIG, global trigger or loop restart waits for that lane's DEL.
A loop with duration 1000 and DEL 250 starts at 250, 1500, 2750 ms, and so on.
DEL delays the next start; it does not alter the envelope points or duration.
Changing DEL while a start is waiting affects the next trigger only. A new
trigger replaces the waiting start. At DEL 0, it cancels any pending start
and triggers immediately. Stop cancels pending starts and performs the existing
stop/fade behavior. Recall uses that same Stop path before restoring values.
Pending countdowns are not saved as preset state; the DEL setting is saved.

PRESET WORKFLOW
1. Connect outlet 14 to the LEFT inlet of an ordinary Max message box.
2. Connect that message box's outlet back to inlet 1 of the abstraction.
3. Set the instrument, then send dump (or click the presentation's dump button).
4. The message box fills silently with 'preset 2 h... p... p...'. Save your
   containing patch or copy that complete message into another message box.
5. Click the filled message to recall, then send trigger to start the envelopes.

The help patch includes this wiring inside p preset and preserves your keyboard.
The supplied saved message is directly recallable after reopening. Saving a
message does not automatically trigger it when the patch loads; click it to
recall, then send trigger. Subsequent dumps replace the message with current state.
First click check: outlet 15 should report preset_bridge_ok 25 engines.
Then try dump and recall. New dumps use preset format version 2. Existing version 1 messages remain usable.

The LEFT inlet consumes 'set' and stores the remaining preset silently.
Connecting to the right inlet stores 'set' literally; clicking that box then
produces Unknown message set. The abstraction should receive 'preset ...'. Do not delete, edit or truncate encoded
chunks. A checksum and schema check reject incomplete or incompatible data
before changing the instrument. Errors appear on outlet 15.

sweep captures a snapshot without sending it to outlet 14. dump always performs
a new sweep, so it includes edits made after a previous sweep. Read-only proxy
coll objects collect user shape memories without sending their contents into
the audible control path. No complete preset is emitted if a capture fails.

Recall briefly fades the output down, stops envelopes, restores settings and
memories, and fades back to the stored gain. Toggle values are restored with
explicit numbers. Global ADSR shape/loop/duration/smoothing controls restore
first; individual lane settings follow, so mixed lane states remain intact.
Edited functions restore last and refresh each lane's cached playback message. The 60 ms settling interval lets
old lane stop/release events finish before loop settings are restored. Trigger
starts a new envelope; recalling a looping preset does not start playback by
itself. Settings for control ramps and their remaining trajectories are saved;
ADSR playback position and oscillator phase are not recorded.

PRESET COVERAGE
- 207 UI values, including hidden editors and twelve individual lane delays.
- All three 256-slot partial banks, including hidden slots and signed detune.
- Anchor mirror, unscaled anchor memory and absolute anchor scale.
- Add/remove saved partial records and removal weights.
- Per-lane points, function curves, domains, durations, loops and smoothing.
- 14 user-editable shape collections, including their index keys.
- Retuning, transforms, partial offset and distribution parameters/state.
- Micro-drift settings, random-walk state and relative control-ramp timing.
- Auto Level configuration and captured reference power.
- Organ stop settings and global output gain.

Static shape definitions, patch wiring, audio-device/DSP settings, current audio
meter readings, oscillator phase and active ADSR line~ playback are not preset
parameters. Derived audio models/readouts are rebuilt as necessary. The current
host sample rate is deliberately never overwritten by a stored preset.
Preset format version 2 is specific to this abstraction's included manifest;
it is not a promise of compatibility with arbitrary future patcher edits.

INSTANCE ISOLATION
All named message, signal and coll connections use
  #0-ec-cnmat-sinusoids-opt_NAME
inside the parent. ADSR lane bpatchers receive the parent's #0 as argument #1
and use
  #1-ec-cnmat-sinusoids-opt_NAME
internally. JavaScript messnamed calls use that same parent namespace. There
are no shared Global objects, unscoped audio sends or dependencies on previous
patch filenames. Two copies have independent controls, shapes, audio and gain.
The individual lane files are private dependencies; open the parent abstraction
to use them, so their namespace argument is supplied.

FILES
Top level:
  ec_cnmat_sinusoids_lowcpu_abs~.maxpat           instrument abstraction
  _ec_cnmat_sinusoids_lowcpu_abs~.maxhelp          parent-patch example, including your keyboard
  README.txt                         setup and message reference
  CONTROL_NAMES.txt                  local message names

dependencies/:
  all required custom JavaScript and twelve private ADSR lane patchers
  (the controller contains its preset manifest; no separate include is needed)

diagnostics/:
  ec_cnmat_sinusoids_opt_isolation.maxpat  two-instance diagnostic patch
  validate.cjs, core.cjs, paths.cjs    repeatable source / regression tests
  validation-results.json            message-based preset / structure test results
  core-results.json                  synthesis algorithm test results
  path-results.json                  dependency path / connected-port audit
  path-change-report.json            exact list of corrected file references
  preset-manifest.json               readable inventory for diagnostics
  PRESET_REPAIR.txt                   error diagnosis and repair details
  PATH_REPAIR.txt                     dependency-loading correction and checks
  METADATA_REPAIR.txt                 hidden saved filename correction (1.4)
  metadata-change-report.json         exact corrected attributes and script edits
  JSON_REPAIR.txt                     serialization repair and native test steps
  json-change-report.json             serialization changes and format details
  MESSAGE_BOX_REPAIR.txt              dump/recall wiring correction (1.6)
  message-box-change-report.json      exact help patch edit and payload audit
  REVIEW_AND_OPTIMIZATIONS.txt        original review with updated compatibility note
  ADSR_RECALL_REPAIR.txt              1.7 diagnosis, changed files and Max test
  adsr-repair-report.json             saved snapshot audit and regression checks
  adsr-effects.cjs                    ADSR fanout / loop / cache simulation
  LANE_DELAY_RELEASE.txt             delay feature, preset compatibility and Max test
  lane-delay.cjs                     actual trigger-path / timer model tests
  lane-delay-results.json            delay timing and layout test results
  lane-delay-change-report.json      changed runtime files and preserved preset audit
  SHA256SUMS.txt                      file integrity list

VALIDATION AND FIRST MAX CHECK
The included source tests passed: core synthesis/control algorithms, preset
encoding/validation/recall through Max-style message/Dict transport with direct .js access blocked, hidden partial
memory, local message names, dependency file existence and patch-cord endpoints.
The path audit traverses the instrument and its nested bpatchers with the parent
path context inferred from your Max error log. It rejects the previously broken
lane reference. It does not execute Max's native file loader.
It also checks saved_object_attributes.filename, which previously retained
fourteen old v20 script references. Those now match the visible js paths.
Run them with Node if desired:
  node diagnostics/validate.cjs
  node diagnostics/core.cjs
  node diagnostics/paths.cjs
  node diagnostics/lane-delay.cjs
Optional: validate a saved preset text file through the simulated help wiring:
  node diagnostics/validate.cjs "/absolute/path/to/preset.txt"

A native Max application was not available during construction. The tests do
not execute actual Max UI methods, the scheduler, sinusoids~ DSP or sound.
Before performance use, open the help patch in Max and check:
- no missing-object or JavaScript errors in the Max Console;
- check reports preset_bridge_ok 25 engines;
- note-in highlights the keyboard and updates base frequency;
- gain slider and both message inputs agree;
- click the saved message inside p preset: verify its stored lane settings;
- set a lane DEL to 500, trigger, and verify that lane starts after 500 ms;
- trigger with DEL 2000, then Stop before it starts: no late restart;
- save different DEL values, reopen, recall, and verify each value;
- dump / edit / recall restores a hidden partial and a hand-edited lane curve;
- the saved message still recalls after closing and reopening the parent;
- both instances in the isolation patch remain independent;
- all twelve outputs, mono sum and loop-stop behavior sound as intended.
