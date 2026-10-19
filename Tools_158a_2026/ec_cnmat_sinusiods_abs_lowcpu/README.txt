ec_cnmat_sinusoids_lowcpu_abs~ — build 2.4 lowcpu
Package folder: ec_cnmat_sinusiods_abs_lowcpu

OPEN
Open _ec_cnmat_sinusoids_lowcpu_abs~.maxhelp. The instrument requires the CNMAT
sinusoids~ external. The supplied patch also retains its odot o.display
readout. All custom JavaScript and ADSR patchers are included in
dependencies/. Keep that folder beside the abstraction. No other version of
the instrument is needed. Custom filenames and instance buses are distinct
from the previous package, so both instruments can coexist.

The clean help patch uses the mono output and requires no SPAT or ml.star
objects. The supplied keyboard and both saved preset messages are preserved.
The supplied performance patch is also retained verbatim as a reference at
diagnostics/reference/USER_ORIGINAL_PERFORMANCE_DEMO.maxhelp.txt. It is not a
runtime dependency; it still describes the user's original SPAT/Markov rig.

FULL SUPPORT IN MAX
In the help file, double-click p FULL_SUPPORT_AND_REFERENCE. Its 11 topic
patchers explain setup, count/memory, oscillator budgets, partial sequences,
offset, spectral layers, ADSR/DEL/loops, retuning, gain, presets, routing,
multiple instances, CPU statistics, troubleshooting and control addresses.
The message examples are connected to the help instrument. The same guide is
also supplied as _ec_cnmat_sinusoids_lowcpu_support.maxpat for independent
reading; it creates no extra synthesizer. Scroll within long topic windows.

BUILD 2.4 — ADSR STARTUP REPAIR
The uploaded master had no embedded factory ADSR records: its saved coll
embed flag was 0. This left the lanes and Master editor without factory shapes.
The 25 factory profiles at every point count 3..48 now live in the read-only
dependency ec_cnmat_sinusoids_opt_adsr_shapes.js, with all 1,150 original
records preserved exactly. No runtime shared factory coll or embed flag is used.
Each reader is ready when its script loads, including after saving/reopening.

Each lane initializes synchronously with morph disabled: DUR 1000 ms, PTS 48,
shape 6 (triangle); normal smoothing 200 ms is restored last. DEL remains 0.
The Master editor uses the same ordered initialization and retains the uploaded
45-point default. Initialization fills the functions/playback messages without
starting audio. Loop defaults remain OFF. Preset recall restores saved loop,
delay, duration, shape and edited function values, then waits for trigger/note-in.
Opening the abstraction does not automatically recall a message-box preset;
click/send the saved preset after loading, as before. No preset migration needed.

All twelve lane references use explicit package paths. Presentation layout,
control reference patchers, both supplied preset messages, all 14 user stores,
and the 25 mutable preset engines are retained. See diagnostics/REPAIR_REPORT.txt
and run diagnostics/run-all.cjs for the full offline regression suite.

BUILD 2.3 CHANGE
Partial Offset now moves slider 1 along with the rest of the sequence.
One-to-one, offset 5: 5x, 6x, 7x... the reference BASE FREQ. Offset 1: f0 again.
The BASE FREQ display remains the reference fundamental, not the first sounding
partial. The latest supplied presentation is retained. The relocated Auto Level
controls keep their existing preset keys, with updated internal lookup paths.
Existing saved offsets now use the new whole-sequence behavior.
The shared factory ADSR shape data missing from the supplied patch is restored
from the prior full package; all user collection data is retained.

BUILD 2.2 CHANGE
Keyboard note-ons and note-in messages now update f0 and trigger all twelve
ADSR lanes once. Repeated notes retrigger. Each lane's DEL is still applied;
with all DEL values at zero, the lanes start together. Triggering begins when
the pitch target is received, not after a base-frequency glide has completed.
Velocity-zero note-in messages and silent keyboard set/clear do not trigger.
Source_Base_Hz edits remain pitch-only. Preset recall still waits for trigger
or a new keyboard note. The help keyboard no longer adds a second trigger.
If your parent patch adds trigger after note-in, remove that extra trigger.

BUILD 2.1 CHANGES
Render Limit now caps Slider Count in the UI, external count messages and
preset recall. Raising the limit never increases the count automatically.
Count edits preserve custom spectra rather than reapplying selected shapes.
Choose a shape again to apply it across the new count. Preset format remains 3.

NEW CONTROLS
Double-click the abstraction. The new control row is below PRESETS; scroll
down if needed. Existing presentation controls retain their positions.

RENDER LIMIT: 64 / 128 / 256. Default 128.
This caps SLIDER COUNT across the whole instrument, not per lane. Count ranges
from 2 to the chosen limit. Lowering the limit clamps a larger count; it leaves
an already smaller count alone. Raising the limit leaves the count unchanged.
Examples: 256 count -> limit 128 yields count 128; count 48 -> limit 128 stays
48; raising limit 128 -> 256 does not add sliders. External requests above the
ceiling are clipped. The count number and drag range follow the same ceiling.

All three 256-position memories remain stored. To restore hidden positions,
raise Render Limit first, then explicitly raise Slider Count. These count
changes no longer regenerate the selected shapes; select a shape again to
redistribute it across the new count. Newly exposed, never-set positions can
be zero. Explicit full-bank edits (All Off, layer copy/mirror, registrations)
can still intentionally change hidden data. Count changes themselves do not.
Departing positions fade over 150 ms and can remain visible briefly during
that fade. Rapid reversals continue from their current levels.

PARTIAL TO SLIDER DISTRIBUTIONS: zero-based menu, default 0.
  0  one-to-one         1, 2, 3, 4, 5, 6, 7, 8...
  1  even num partials  1, 2, 4, 6, 8, 10, 12, 14...
  2  odd num partials   1, 3, 5, 7, 9, 11, 13, 15...
  3  prime multiples   1, 2, 3, 5, 7, 11, 13, 17...
Each entry is a multiplier of the source fundamental f0. The leading 1 is
included deliberately in prime mode, even though 1 is not mathematically prime.
The prime sequence continues as far as needed for the selected slider count.

At offset 1, slider 1 is f0 and is protected from detune/micro-drift.
At higher offsets, slider 1 follows the sequence and can detune/drift. Only
actual multiplier 1 is protected; BASE FREQ itself does not change.
Each anchor uses the same selected multiplier at its exact harmonic frequency.
Primary detune is applied AFTER choosing that multiplier. The existing global
retuning, frequency-window, clustering and amplitude controls still apply.
Assigning f0 does not override its amplitude or force it through a filter.
High prime multiples may fall outside the frequency window and be filtered.
Ruler labels in patching view now show multipliers; ERB detune shapes use their
actual frequencies. The existing organ-stop and shape recipes remain patterns
over slider positions, so choosing a distribution changes their resulting timbre.

PARTIAL OFFSET INTERACTION
N is the starting position in the selected sequence for slider 1. All sliders
move together; the BASE FREQ display remains the reference fundamental f0.
At offset 5:
  one-to-one:  5, 6, 7, 8...
  even:       8, 10, 12, 14...
  odd:        9, 11, 13, 15...
  prime:      7, 11, 13, 17...
For example, one-to-one with BASE FREQ 100 Hz and offset 5 starts at 500 Hz,
then 600 and 700 Hz. BASE FREQ still shows 100. Offset 1 restores 100,200,300 Hz.
Offset OFF uses N=1. Switching ON resets N to 1; enable it before setting N.
Primary and anchor layers shift together; stored slider values and count stay.
Sequence and offset changes retain the 150 ms crossfade and latest-edit queue.
Existing presets with N>1 now use this revised mapping. Format remains 3.


MESSAGE INPUT
Use inlet 1 for these messages:
  control Render_Limit 64
  control Render_Limit 128
  control Render_Limit 256
  control Partial_Distribution 0
  control Partial_Distribution 1
  control Partial_Distribution 2
  control Partial_Distribution 3
  control Partial_Count 128
  note-in 60 100
  trigger
  stop
  gain 0.1
  sweep
  dump
  check
The second inlet still accepts linear gain 0..1. Default gain is 0.1.
CONTROL_NAMES.txt lists the existing instance-local control names.

CPU CHANGES
The former renderer sent 1,024 slots at all visible partial counts. This build
uses separate A/B oscillator banks for each of the twelve lanes, allocates only
needed identities within the limit, and sends clear to inactive banks. Both
banks sum BEFORE the original lane envelope, so all twelve ADSR lanes and DEL
controls remain independent and the audio outlet layout is unchanged.

Verified source-level slot counts with all selected slots present:
  Render limit    Steady paired slots    During an offset/sequence crossfade
       64                 128                         256
      128                 256                         512
      256                 512                        1024
These are oscillator-slot counts, not measured CPU percentages. Partner slots
are retained even when an anchor is silent/merged, to preserve stable indices.
Smaller slider counts and filtering can reduce the actual allocation further.

Sounding identities keep their oscillator slots. Holes left by removal or
spatial reassignment are held until safe reuse, and some internal holes remain
until a bank becomes idle. These can raise actual allocated-slot counts above
the simple table after edits. Transition work can also temporarily exceed a
newly selected lower limit while the old contribution fades out. The live
status row reports the actual slots, nonzero model amplitudes and active lane
banks (0..24), rather than promising an unmeasured CPU percentage.

Unchanged bank models are not resent. The generator no longer builds/sorts
unused duplicate model outputs; the downstream transform computes filtering,
merging and status once. Auto Level follows the target subset selected by the
render limit, excluding remembered higher slots. Existing fade timing is kept.
Silencing an ADSR or the final gain still leaves a nonzero spectral model
running. This release does not introduce poly~ voice suspension, parallel DSP,
or change the factory shape values. Voice suspension and parallel DSP remain
separate future changes.

PRESETS
New dumps begin with preset 3. The number identifies the data format, not a
preset slot. Version 3 adds Render Limit and Partial Distribution, bringing the
inventory to 209 controls, 25 engines and 14 user stores. The twelve DEL values
and all 256 slots of internal memory are retained.

Versions 1 and 2 are accepted and migrated. Both default to Render Limit 128
and one-to-one. Version 1 also defaults all DEL values to zero; version 2 keeps
its saved delays. Saved counts are capped to the restored limit. Set Render
Limit 256 AND Slider Count 256 after recalling an older full-size preset if
you want all its stored positions rendered, then dump a new preset.
Older controllers cannot read preset 3. Do not edit the version number by hand.

Outlet 14 sends a set preset ... message. Connect it to the LEFT inlet of a
message box. Clicking that box recalls through inlet 1. Recall stops pending
lane starts, restores controls/loops/curves, and waits for an explicit trigger.
Presets save settings and stored data, not oscillator phase or elapsed playback.

OUTLETS
  1–12  Audio groups
  13    Post-gain mono sum
  14    Preset dump for a message box
  15    Status
Audio hardware routing remains in the parent patch.

VALIDATION
diagnostics/ contains executable Node source/graph regressions and their JSON
results, plus PROFILE_IN_MAX.txt for native checks. Tests include the supplied
saved preset, old-format migration, all four distributions, five spatial plans,
both crossfade banks, render limits, hidden-memory recovery and ADSR delays.
count-ceiling.cjs additionally runs the core preset validation and tests the
actual controller/memory bridge with modeled UI/count wiring, cold recall,
old lowcpu presets with count above the ceiling, and legacy migration.
The checks model Max messages/Tasks/Dict and inspect saved patchcords. Native
Max loading, actual CPU percentages, audio timing and listening were not
available in the build environment and need verification on the target machine.
