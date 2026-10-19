EC MARKOV NOTES v3.0 - EDIT A MODEL, EXPORT A FROZEN PLAYER
2026-10-18 / standard Max js object / no Node or externals

QUICK START: A NEW EDITOR
1. Keep this package's files together and open _ec_markov_notes.maxpat.
2. Develop your model using the table and sliders as before.
3. Select Markov weights if you want the edited matrix to govern playback.
4. Stop AUTO and choose CURRENT / START PC if you want a specific start.
5. Click EXPORT FROZEN PLAYER (.js), at the bottom of the editor.
6. Save with a unique name, for example my_markov_model.js, beside your
   existing master patch. Export occurs when you confirm the file dialog.
7. In the master patch, create:

      js my_markov_model.js

   Connect your clock's bangs to its inlet. In a clock path, deferlow can
   be placed immediately before js. One bang selects one successor.
   Connect the LEFT outlet to your pitch-class logic, or the MIDDLE outlet
   to the instrument that expects MIDI note numbers. The RIGHT outlet is
   diagnostic information; connect it to print or route if desired.

The exported file alone is needed for playback. It contains the model AND
its selection engine. No table, multislider, editor patch, export panel,
or ec_markov_notes.js is required in the master patch. Keep the exported
.js with the master patch/project, including when moving it to another Mac
or PC. Several js objects can use the same file with independent states.

KEEP THE MODEL YOU ALREADY DEVELOPED IN v2
Your saved .maxpat contains your weights. Keep that saved patch.
1. Save your edited v2 patch and close it BEFORE replacing its .js file.
   The editor uses autowatch: replacing the script while unsaved edits are
   open can reload it and lose those unsaved edits.
2. In that patch's folder, replace only ec_markov_notes.js with the v3
   file from this package. Also copy ec_markov_export.maxpat there.
3. Reopen YOUR saved .maxpat. v3 reads the same saved-state format as v2.
4. Unlock your patch and add the object [ec_markov_export]. Connect its
   only outlet to the inlet of your existing [js ec_markov_notes.js].
5. Lock the patch, double-click ec_markov_export, and click its export
   button. It exports the model in your existing engine.
6. Save your editor patch to keep the new export panel wired in.

Do not replace your saved editor with the fresh _ec_markov_notes.maxpat
from this download: that is a blank/default starting editor, not a copy
of the model you developed on your computer. You can also open the fresh
editor's patching view and copy its export controls and connection.

Alternative export wiring, using only native objects:
  A message "name my_markov_model.js, bang" goes to [savedialog TEXT].
  Its LEFT outlet goes to [prepend exportjs], then into the editor js.
  Canceling the dialog emits no export command.
You can also send exportjs followed by one quoted absolute .js path.

WHAT GETS FROZEN
- Active pitch classes (1 through 12), in ascending order.
- All active transition rows for the selected comparison mode.
- Current PC, octave and current random-generator state as startup values.

In Markov mode, the export captures the edited raw weights and their
normalized probabilities. In Independent random mode, it captures equal
probabilities. In Fixed cycle mode, it captures the ascending cycle.
Choose Markov weights before export to capture your weighted composition.
Inactive rows/columns and the teaching interface are omitted from the
player. The saved editor retains them for future composition work.

Fixed model means the transition rules cannot be edited through the
player's messages. Choices are still probabilistic in Markov mode.
For example, a fixed 1:9 row still draws a new 10%/90% choice each bang.
This is a probabilistic finite-state machine with a fixed transition table.
The exported JavaScript is ordinary source code, not encrypted or locked
against someone deliberately editing the source file.

FROZEN PLAYER MESSAGES
bang
  Select one successor from the current state. Output MIDI then PC.
  A zero-total row produces NO note and leaves the current PC unchanged;
  the status outlet emits empty <PC>. Use start to leave such a state.
reset
  Silently restore the EXPORTED start PC, octave and RNG state.
  A nonzero exported seed therefore repeats the sequence after reset.
  With exported seed 0, Math.random remains nondeterministic.
start <PC>
  Silently select an ACTIVE starting PC and clear the step count.
  The first bang selects this PC's successor, not the starting PC itself.
seed <integer>
  0 = Math.random. 1..2147483646 = repeatable pseudorandom sequence.
  To repeat a new seeded run: send "seed 123, start 0" before each run
  (using an active starting PC). reset restores the export's seed instead.
octave <-1..8>
  Change MIDI register only. MIDI = 12 * (octave + 1) + pitch class.
  Default convention: C4 = MIDI 60. This never changes the fixed matrix.
status
  Emit current PC, octave, RNG state, step count and captured source mode.
dump
  Emit read-only pcs, row and snapshot records on the RIGHT outlet.
  This inspects the model; it does not change it.

There are no weight, row, pcs, add, remove, fill or mode editing commands.
Unsupported messages produce error on the status outlet and no notes.
Playback controls are silent. The player does not synthesize audio, send
MIDI note-offs, or specify velocity or duration; use your master patch's
instrument path for those. The player restarts from the export on reload;
it does not save its changing playback position into the master patch.

FROZEN PLAYER OUTLETS: LEFT TO RIGHT
1. PC integer, 0..11, on each successful selection.
2. MIDI note integer, emitted just BEFORE the companion PC event.
3. Tagged information, suitable for route:
   step <from-PC> <to-PC> <probability 0..1>
   empty <current-PC>
   status current <PC> octave <N> seed <N> steps <N> source_mode <name>
   error <explanation>
   pcs / row / snapshot records on dump

The step status precedes the MIDI/PC events. Avoid immediate feedback of
playback controls from outputs to the same player's inlet; use deferlow.
The player guards synchronous reentrant bangs against duplicate output.

PACKAGE CONTENTS
_ec_markov_notes.maxpat          Editable studio with export button.
ec_markov_notes.js              v3 editor engine; retains v2 save format.
ec_markov_export.maxpat         Drop-in export panel for saved editors.
_ec_markov_player_example.maxpat Minimal master-patch wiring example.
example_markov_frozen.js         Example exported C/E/G model, seed 123.
README.txt                      This guide and full editor reference.

The supplied frozen example is a demonstration, not your personal model.
Replace its js filename in the example patch with a file you export.
To revise a composition, edit the saved studio model and export again.
The frozen player uses autowatch 0; after re-exporting over an existing
player file, reopen the master patch or send compile to the js object.
Compilation restarts playback from the newly exported starting state.

VALIDATION OF v3
The original 14 editor regression groups pass, including saved-state
compatibility and live table/slider behavior. Another 24 groups exercise
export and frozen playback, including 4,500 exact seeded editor/player
comparisons across 1, 2, 3, 6 and 12 PCs and all three comparison modes.
Checks also cover independent instances, reset/repeatability, zero rows,
rejected editing messages, file write failures, and valid patch wiring.
These are JavaScript tests with simulated Max host APIs and static patch
checks. Max itself is not available in the build environment; the native
Save dialog and loading the exported js should be checked in your Max.

EXPORT API REFERENCES (Cycling '74)
https://docs.cycling74.com/legacy/max8/vignettes/jsfileobject
https://docs.cycling74.com/reference/savedialog/

========================================================================
EDITOR REFERENCE (same model and interaction behavior as v2)
The following outlet and reset descriptions are for ec_markov_notes.js,
not the smaller exported player. Use the player reference above for that.
========================================================================

YOUR TWO-NOTE -> THREE-NOTE WORKFLOW
1. Start with the default active pitch classes 0 (C) and 7 (G).
2. Click AUDIO for the sine preview, then enable AUTO. Default interval:
   650 ms. NEXT advances one note without enabling AUTO.
3. Choose a bag in the menu above the right-hand multislider. Each slider
   is a possible NEXT pitch class, in the same order as the table columns.
4. Drag the sliders. The corresponding table row updates continuously;
   each subsequent metro bang uses the latest committed weights.
5. Click a numeric table cell, type a weight and press Return. The engine
   and row sliders update immediately. Selecting a cell selects its bag.
6. Enable pitch class 4 (E) in the top row. Your C/G weights are retained.
   The table becomes 3x3, with PC order 0, 4, 7. E's bag opens automatically
   so you can begin shaping it immediately. Playback keeps running.
7. Program both E's outgoing row and the incoming column leading to E.
   A new note needs incoming connections if it is to be selected from
   other notes. Untouched connections start at weight 1, so new notes
   can be reached immediately without additional setup.
8. Save the Max patch (Cmd-S on Mac; Ctrl-S on Windows) to retain the model.

WHAT THE TABLE MEANS
Rows = CURRENT pitch class / source bag.
Columns = possible NEXT pitch class / destination.
Every numeric cell contains a RAW WEIGHT, exactly matching the multislider.
The table is not a percentage table. Example: weights 1 and 9 give 10%
and 90%; weights 10 and 90 give those same probabilities.

The LEFT bars separately show the normalized chances for the CURRENT
playback state, ready for its next bang. Their range is always 0-100%.
The RIGHT sliders edit the chosen bag, independently of playback position.
Sliders and table columns are always ordered by ascending pitch class.

The editor's range is at least 0-10 and expands when a cell/message supplies
a larger value. Its range remains stable during a drag. Numeric labels
identify each slider as PC: weight. The table displays three decimal places;
underlying values are not rounded. Weights may range from 0 to 1e9.

GROWING AND SHRINKING THE MODEL
There is one stored 12x12 matrix, addressed by actual pitch classes 0..11.
The visible table is the submatrix for the currently active pitch classes.
Adding a note does not reinitialize existing rows. Removing a note does not
delete its weights. Re-enabling it restores its prior row and column.
Previously untouched connections have weight 1.

Raw weights among retained notes never change just because the active set
changes. Probabilities may change, because each row is normalized over its
ACTIVE destinations. Inactive destinations are never selected.

Adding one new PC automatically selects its bag in the editor. Playback
stays on its existing current PC if that PC is still active. Removing the
current PC moves the current state to the lowest remaining active PC,
silently. At least one PC must remain active. One through twelve are allowed.

EMPTY BAGS AND INVALID DATA
Zero is a valid weight and prevents that transition in Markov mode.
You may temporarily make every active weight in a row zero while drafting.
If that row is current, a bang generates NO NOTE and the current PC stays
put. AUTO continues; adding a positive weight lets the next bang resume.
The left display explicitly reports EMPTY BAG. No hidden fallback weight
or self-transition is introduced.

Negative, nonnumeric, non-finite, or excessively large weights are rejected.
The affected table cell/editor is restored to its valid stored value. Empty
bags are permitted; an empty active note set is not.

PITCH CLASSES, OCTAVE AND OUTPUT
0=C, 1=C#, 2=D, 3=D#, 4=E, 5=F, 6=F#, 7=G, 8=G#, 9=A, 10=A#, 11=B.
Octave changes only the MIDI audition register, never the selection matrix.
Default octave 4 gives MIDI = 60 + PC. Allowed octaves: -1 through 8.
Note naming uses the convention C4 = MIDI 60.

CURRENT / START PC follows the running state. Choose an active PC there
to begin from it silently. The starting note is not sounded or included in
the generated-note history. NEXT chooses the successor of that state.

FIRST-ORDER MEMORY
Only the current pitch class selects the next probability row. Adding
pitch classes changes the available collection, not the memory order.

COMPARISON MODES
Markov weights: sample the edited row for the current pitch class.
Independent random: equal chance for each active PC, regardless of row.
Fixed cycle: advance through active PCs in ascending order, wrapping around.
The table and right sliders ALWAYS edit stored Markov weights. Select
Markov weights to hear those edits. Switching modes preserves your matrix,
active set, current PC and history. Zero-row silence applies to Markov mode.

SAVING YOUR WORK
The JavaScript implements save()/embedmessage plus getvalueof()/setvalueof().
Saving the containing Max patch embeds all 144 weights, the active set,
octave, mode, current/editor PCs and random-generator state in the patch.
Inactive PC weights are included. Changes mark this demo patch as modified.
Reopening restores the model silently. The generated history is cleared.
AUTO starts off; the preview interval and level return to demo defaults.

In your own patch, the engine's save() still embeds the model when you save
the patch. Route its 'dirty' tag to a dirty message into thispatcher if you
also want a modified-document indicator. Explicitly save after edits.
Do not rely on saving only the .js source file; model data live in the
containing .maxpat. Model changes are not automatically written to disk.

CREATE THE ENGINE
  js ec_markov_notes.js
  js ec_markov_notes.js 0 4 7
Optional arguments are individual pitch classes, not a note count.
Without arguments, active PCs are 0 and 7, all stored weights are 1,
octave is 4, mode is Markov, and the current/editor PC is 0.

OUTLETS, LEFT TO RIGHT
1. Generated PC, 0..11. One integer per successful bang.
2. Generated MIDI pitch. One integer per successful bang; emitted before PC.
3. Next-choice percentages in ascending active-PC order, including silent
   configuration refreshes. All zeros indicates an empty Markov bag.
4. Generated-PC history list, maximum 16 entries; clear when history is empty.
5. Tagged UI data and dump messages. The demo shows the complete routing.

Configuration messages produce no PC/MIDI note event. Current-state display
changes are available at outlet 5 as currentpc and midi tags, even when silent.

PROGRAMMING MESSAGES
bang
  Generate one successor; skip if the active Markov bag is empty.
pcs <PCs...>
  Select 1-12 unique integers from 0..11. Sort ascending; preserve all weights.
  Example: pcs 0 4 7 10
add <PC> / remove <PC>
  Enable/disable one pitch class, retaining its weights.
enable <PC> <0|1>
  Explicit membership toggle. Example: enable 4 1
weight <from-PC> <to-PC> <weight>
  Edit one matrix entry by pitch class. May also address inactive PCs.
  Example: weight 0 7 9
row <from-PC> <weights...>
  Replace one active bag; give one weight per active destination in
  ascending PC order. Example with PCs 0,4,7: row 4 2 0 8
editpc <PC>
  Select an active source bag for the row editor; do not change playback.
weights <weights...>
  Edit the selected bag, in active-PC order. Used by the multislider.
fill <weight>
  Set the entire ACTIVE submatrix to a value. Inactive entries are retained.
start <PC>
  Silently set current PC and clear generated history. PC must be active.
reset
  Silent start at the lowest active PC; keep weights, mode and membership.
octave <-1..8>
  Set the separate MIDI audition octave. No note is generated by this edit.
mode markov / mode random / mode cycle
  Select the comparison behavior, preserving your edited matrix.
seed <integer>
  0 uses Math.random (default). 1..2147483646 selects repeatable randomness.
  Reset both seed and current PC, with the same model, to repeat a sequence.
dump
  Emit active pcs, octave, row and mode commands at outlet 5, tagged dump.
  The demo prints them in Max Console. This dump describes the ACTIVE model;
  the embedded save/pattr state also includes inactive weights.
status
  Refresh all UI, silently.
defaults
  Reset all 144 weights to 1, active PCs to 0/7, octave to 4, mode to Markov.
model 3 / model 6
  Restore the v1 teaching example as pitch classes. These commands reset
  the whole matrix. Use pcs/add/remove when developing your own model.

UI ADAPTER MESSAGES
cell <column> <row> <value>
  jit.cellblock output adapter. Coordinates include a header row/column at 0.
  These are grid coordinates, NOT PCs. Use weight for direct PC addressing.
editindex <0-based menu index> / startindex <0-based menu index>
  Adapters for the two active-PC menus.
restorestate <162 numbers>
  Versioned internal state from save()/embedmessage. For programmatic preset
  integration use getvalueof()/setvalueof(), rather than hand-building it.

IMPORTANT UI SYNCHRONIZATION
- The main table uses selmode 5, readonly 0, and protected row/column headers.
- Its first outlet (column, row, value) passes through gate 1 1, then
  prepend cell into the JS object.
- Outgoing tablegate 0 closes that gate BEFORE any programmatic table write;
  tablegate 1 reopens it afterwards. The JS also guards synchronous echoes.
- A playback bang does not rewrite the table, the row editor, or its menu.
  Therefore metro playback does not replace data while you type in a cell.
- Slider drags update only the affected table row. They do not reset the
  slider range/value under the cursor. The sliders use contdata 1.
- Programmatic multislider updates use setlist, not set, to prevent feedback.
- Menu/toggle updates use silent set messages. Membership changes explicitly
  resize both multisliders and rebuild the table headers.

V1 MIGRATION
This is an updated engine AND demo, not a drop-in replacement for old wiring.
The left outlet now outputs PC; use the SECOND outlet for MIDI audition.
start and row now address actual PCs (0..11), not 1-based state indices.
notes <MIDI...> is replaced by pcs <PCs...> and the separate octave setting.
The editable table holds raw weights. The left probability display remains
percentages. Empty rows are now permitted drafts and produce no note.

VALIDATION
Automated checks cover the two/three-note workflow, pitch-class identity
preservation, table/slider feedback guards, live edit interleaving, zero
weights and empty rows, exact weighted sampling, all twelve PCs, comparison
modes, octave/MIDI mapping, and a full saved-state round trip. Patch JSON,
connections and presentation geometry are checked statically.
The build environment cannot launch Max or audition audio; native table
editing and patch-file save/reopen should be confirmed on your Max machine.

CYCLING '74 REFERENCES
https://docs.cycling74.com/reference/jit.cellblock/
https://docs.cycling74.com/learn/articles/datachapter04/
https://docs.cycling74.com/reference/multislider/
https://docs.cycling74.com/apiref/js/jsthis/
https://docs.cycling74.com/reference/thispatcher/
