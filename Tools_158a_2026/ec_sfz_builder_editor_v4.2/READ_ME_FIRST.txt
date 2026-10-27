EC SFZ BUILDER v4.1 — VOLUME DEFAULTS AND MAPPER GROUP DESTINATION
October 23, 2026

Based on your uploaded v4 folder, including its layout, output gain control,
audio wiring and edited demo. Keep this complete folder together.

- New blank instruments start with <global> volume=0.0.
- Both current demos, Table_Compiler_Demo.sfz and My_Demo.sfz, use volume=0.0.
- In the Graphic Mapper, View selects the destination for Add sample.
  Choose Group N: new samples go into that group.
  Choose All groups: new samples go into the first <group> in file order.
  If no group exists, the first addition creates one.
  No group retains ungrouped regions when that view is available.
- View stays selected after adding a sample. The new region remains visible.
- Placement still starts at the first unused MIDI key from 0 upward, checking
  all groups. Your sample files and existing mappings are not changed.
- The demo/blank volume is an SFZ opcode. Your separate output-gain controls
  and their startup values remain exactly as supplied.

Automated controller and browser tests cover group destinations, repeated
additions, inherited settings/sample paths, Undo and stale selections. Native
Max audio and hardware tests are not available here.

----- EARLIER RELEASE NOTES -----

EC SFZ BUILDER v4 — AUTOMATIC PREVIEW REPAIR
October 23, 2026

Open _ec_sfz_builder_editor.maxpat from this complete extracted folder.
Close the older builder first. Keep all companion .js/.html files and the
Demo and Tutorial_Examples folders together. Layout and colors are preserved.

TEST THE AUTOMATIC PREVIEW (do not save first)
1. New blank SFZ file -> Load sound folder -> Add all samples.
2. Enable Audio. Click Note: the first sample is mapped to MIDI 0.
3. Play MIDI 0, 1, 2, ... on the front keyboard or the graphical mapper.
4. Change a region in the mapper and play its updated key. For table edits,
   click Compile tables. For handwritten SFZ edits, click Apply text.
The changed instrument is requested automatically in the shared sfizz~.
Save and load for testing remains available but is not needed for these edits.
Loading a folder alone fills the catalog; Add samples creates playable regions.

WHAT CHANGED
The previous preview depended on absolute sample paths inside a temporary SFZ,
a Tempfolder: alias, and a return message from conformpath. Saving to the sample
folder used a different, successful path. V4 resolves the actual preview and
sample folders using Max's File.foldername, writes relative sample references,
closes and verifies the file, then sends an explicit read with its full path.
Each update names the preview file; it does not rely on readagain.

Sample paths, inherited sample assignments and default_path are resolved in a
private copy. The tables, editable SFZ and your saved instrument are unchanged.
Normal previews live in Max's temporary folder. If samples are on a different
volume, or the temporary folder is unavailable, a private .ec_sfz_preview_*.sfz
file is used beside the instrument instead. It contains only generated text,
never audio, and never replaces your named SFZ. Such sidecar files may remain
when Max closes; they are disposable and are not the instrument to save/share.
Preview on a different volume therefore needs that instrument folder writable.
No machine-specific folder is stored in the patch or scripts.

The status says "Preview load requested" because sfizz~ has no load-completion
outlet. Missing samples or a preview write failure are shown in the load status.
The L/R meters show actual audio; Test output checks the shared output path.
Includes, macros and unsupported headers still require Save and load for testing.

DEMOS INCLUDED
- Demo/Table_Compiler_Demo.sfz: the corrected demo from v3.9, unchanged.
  Load demo example opens this instrument. Note selects MIDI 60 / velocity 63.
- Demo/My_Demo.sfz: the earlier edited demo, including its bass drum at MIDI 48.
  Both resonance regions now also have cutoff=20000, matching the filter fix.
- Demo/My_Demo.sfz.bak: the older backup, retained unchanged for reference.
  Open the .sfz instrument for testing; .bak is not the current instrument.
All original sample files are included unchanged.

SAVING YOUR OWN INSTRUMENT
Use Save SFZ inst as... to choose its name and folder, e.g. My_Sample_Set.sfz.
Save and load for testing writes the current filename and loads that disk file.
A .sfz.bak contains the previous contents when an existing SFZ is overwritten.
SFZ files contain sample paths and settings, not the audio itself.

VALIDATION
Controller, file/path, MIDI-routing and Chromium mapper checks passed. Actual
sfizz 1.2.3 engine rendering passed 20 cases: both demos, all six chromatic
imports, previews after edits/saving, Unicode paths, inherited/absolute source
paths, a generator and silent reset. This does not run Max's own sfizz~ wrapper,
Max Presentation/CEF, your audio driver or hardware MIDI. Please use the short
unsaved-preview test above to confirm v4 on your computer.

----- EARLIER RELEASE NOTES (historical; v4 behavior above takes precedence) -----

V3.9 — startup, instrument loading and playback repair (October 23, 2026)

Fixed a confirmed startup error: sfizz rejects an SFZ containing no regions.
Startup now leaves the sampler unloaded. New/Clear uses a valid internal
sample=*silence region. The editable builder still starts with only <global>.

Fixed the bundled demo's two filter regions. resonance creates a filter, but
those regions had no cutoff and were almost inaudible in the sfizz engine.
Both now include cutoff=20000; their resonance settings are preserved. Check
also warns when a user region inherits resonance without a cutoff.

Open SFZ and Load demo now load the original SFZ file directly into sfizz~.
Open chooses a mapped Note/velocity. Applied edits still update a temporary
preview automatically. That preview now resolves each region's sample path
individually, avoiding doubled default_path prefixes with absolute samples.
The user's SFZ is written only with the existing Save controls.

Playback checks on the front page:
1. Enable Audio, then click Test output (next to the visible sfizz~).
   A quiet 300 ms tone should move BOTH L/R meters and be audible. This tests
   the same meters/DAC without changing the loaded instrument or editor.
2. Click Load demo example, then Note. The selected note is MIDI 60 with a
   velocity that matches its layer. Try the front keyboard and mapper too.
3. Note sent flashes for note-on/off messages arriving at sfizz~ from either
   keyboard or Note. MIDI received flashes for external input before its gate.
   Neither light confirms audio; the L/R meters show the actual output.
If Test output moves the meters but notes do not, check the sfizz~ loaded text
and Max Console. If no tone reaches the meters, check this patch's DSP state.
If the meters move but nothing is heard, check Max Audio Status/output routing.

Use the complete extracted folder; the patch, scripts and demo SFZ changed.
No original audio samples were changed. Your existing layout/colors are kept.

V3.8 — visible sampler (October 23, 2026)
The actual sfizz~ object is now visible at the lower-left of Presentation view,
below the Annotated Opcode Index. Double-click it to inspect the SFZ text loaded
by the sampler. This is the same object used by both keyboards and the L/R
meters; no second sampler is created.

This update exposes the sampler for diagnosis. The cause of the reported silence
has not been established. Existing MIDI, file loading and audio wiring are
unchanged. Native Max playback must be tested on the user's machine.

EC SFZ BUILDER v3.7 — TABLES + GRAPHIC MAPPER
Open _ec_sfz_builder_editor.maxpat -- Designed for Max 9 with sfizz~; older Max 8 hosts are not validated

Keep _ec_sfz_builder_editor.maxpat with all .js files, both .html files, ec_sfz_empty.sfz, Demo, and Tutorial_Examples in the same folder.



OCTOBER 23 UPDATE — v3.7
MIDI input now has a direct Max signal route. The toggle directly controls
the gate; it no longer resets itself when no device has been selected. You
can turn it on, then choose the device. Choosing a device uses its actual menu
name, including spaces, without a second index-to-name lookup.
Enabled notes pass through the front-page keyboard into sfizz~. Note follows
the incoming pitch. Off closes the gate, stops held voices and clears keys.
Refreshing the device list preserves the toggle; losing a selected device
turns input off. The onscreen keyboards remain usable with MIDI input off.

Two new indicators on the front page:
- MIDI received flashes beside AUDITION for notes from the selected device,
  before the enable gate. It therefore also flashes when MIDI input is off.
- L/R meters below Audio show the actual stereo signal coming from sfizz~.
  Moving bars confirm sampler output. Red means clipping. Audio must be on.

QUICK AUDIO/MIDI CHECK
Close older builders and use this entire extracted folder.
1. Load sound folder, Add a sample, enable Audio and click its mapped key.
   The first automatically placed sample uses MIDI 0. L/R meters should move.
2. Select your MIDI device. Play it: MIDI received should flash.
3. Enable MIDI input: the front keyboard and Note should follow the controller.
4. Play a mapped key. If MIDI received flashes and Note follows but the meters
   stay dark, check the key/velocity range and Max Console for sample-load errors.
   Samples placed at 0/1/2 require those MIDI notes from the controller.
5. If the meters move but nothing is heard, check Audio Status/output device.
6. Hold a note and turn MIDI input off: sound/highlights should stop. The toggle
   should stay where you set it, and mouse-playing the keyboard should work.

Native Max audio and hardware MIDI still require this local test. The included
automated tests simulate patchline execution and do not establish audio output.

PREVIOUS UPDATE — v3.6
External MIDI now passes through the front-page keyboard. Select a device,
then enable MIDI input: held keys light up, Note follows the pitch, and notes
play through the normal keyboard route. Turn the toggle off to stop held notes
and block further external notes. Both onscreen keyboards remain available.

The mapper has an Add sample menu containing the same sounds as 1 SOUND FILES.
Load a sound folder on the home page first. Choose a sound in the mapper menu
to create one region at the first unused MIDI key, checking 0 through 127.
Existing ranges in ALL groups reserve their keys, regardless of velocity.
Deleting a region frees its keys; the next selection fills the earliest gap.
Each new sample uses that key as its root, one-shot playback and the home-page
velocity range. It joins the selected scope's group, or a new group if needed.
The selected region, tables, SFZ Program and audition update automatically.
Choose the same sound again to add another mapping. If all keys are occupied,
the instrument stays unchanged and the status reports that no key is free.

The mapper subtitle now reads:
<name> : Before using this editor, make sure the samples are loaded from the home page.
The previous Add samples using... prompts have been removed.
Saving remains on the home page; sample/folder drag-and-drop stays disabled.

PREVIOUS UPDATE — v3.5
The mapper edits and auditions existing regions. Its Save SFZ button and
sample/folder importing by drag-and-drop have been removed. Use the front-page
Save SFZ inst as… button to name and save your instrument. Load and add sounds
using 1 Sound Files. Folder samples remains a read-only catalog in the mapper.
The obsolete New samples go to / New group controls are removed from the mapper.
Region moving/resizing, root editing, Duplicate, Delete region and Undo remain.

PREVIOUS UPDATE — v3.4
The patch now opens with a blank instrument: the explanatory comment and a
basic <global> block (volume=-12 and ampeg_release=0.2). No demo or samples are
loaded at startup. Load demo example remains available explicitly.

PLAY WITHOUT A SAVE STEP
Load sound folder -> Add samples -> Enable Audio -> play a mapped key.
Add all samples starts at MIDI 0. The main keyboard now shows MIDI 0–127;
its far-left key is 0. The Note test pitch is set to the first region's key.
Both onscreen keyboards use the same sfizz~. The status explains when a played
key/velocity falls outside every region's mapping.
Applied imports, mapper changes, Compile tables, Apply text and Undo update
an audition copy automatically. Unapplied text/table drafts remain protected.
Save keeps your named SFZ instrument; auditioning does not overwrite it.
The audition copy lives in Max's temporary folder and points to the real
sample folder. Max removes temporary files when it quits. This copy is not
shown in your SFZ Program window and is not part of your saved instrument.
Includes/macros/unsupported headers still use explicit Save and load testing.

EXTERNAL MIDI
On the front page, below the keyboard, choose your MIDI device in the menu,
then enable MIDI input. Refresh updates the available input devices. Startup
selects no device. Device changes stop held notes; disconnection disables
input until a device is selected again. MIDI input plays the same mapping:
if your samples use notes 0–5, your controller must transmit those notes.
The front-page keyboard highlights held notes and the Note/velocity boxes
follow incoming notes. Turn MIDI input off to stop
receiving them. This note input does not add sustain/CC/pitch-bend routing.

All original uploaded layout and colors are retained except the moved MIDI
controls and added device menu/Refresh row. Keep every companion file with
the patch, including ec_sfz_audition.js and ec_sfz_empty.sfz.

PREVIOUS UPDATE — v3.3
The latest attached _ec_sfz_builder_editor(1).maxpat is the layout source.
New blank SFZ file now clears the sample catalog, regions, program sample
assignments, mapper views and audition playback. Start with New, THEN load
a sound folder. Clear all samples clears the same sample state while retaining
other group/global opcodes and the current SFZ filename. Files on disk are
unchanged; Undo restores the previous catalog, mappings and audition. Active scans and queued notes are cancelled.
Add all samples maps the sorted catalog to MIDI 0, 1, 2... with one-shot playback,
using the chosen Velocity range. It sets Mapping=Single key, Roots=Start + step,
Start=0 and Step=1. Above 128 sounds, it reports the limit and adds nothing.
Add selected keeps the separate Mapping/Roots choices. Main controls now have
hover help. The mapper list uses compact 26-pixel rows (half the previous
52-pixel sample rows); hover for complete paths and mapping details.
Keep ec_sfz_empty.sfz with the patch: this sample-free companion replaces the
old audition instrument when samples are cleared. It is not written into your
sound folder. Native sfizz~ audio and memory release still need testing in Max.

PREVIOUS UPDATE — v3.2
Your v3.1 layout, teaching reference, colors, added samples and saved SFZ files
are preserved. The soundfile jweb pane now matches the Region Table width in
both patching and presentation views. The redundant Keyboard… button is hidden.
The mapper is titled SFZ Graphic Keyboard Sample Mapper. Its black-key bands
are 40% darker. Mouseover help explains controls, numeric fields and sample rows.
Numeric mapping edits apply on Return or when leaving a field; Apply mapping
and the technical local-assignment message have been removed. Duplicate and
Delete region remain. Main Save / Save As prefill the filename with its .sfz extension.

GRAPHIC MAPPER — QUICK START
1. Close the older builder. Extract this entire v3.7 folder and open its maxpat.
2. Click Graphic mapper… at the top. Your current instrument appears as regions
   on a key-by-velocity grid. View can isolate one group when layers overlap.
3. Select a region, then Fit regions or increase Zoom. Drag its interior to move
   the key and velocity ranges. Drag square handles to resize each boundary.
4. Drag the orange root marker above the piano to set pitch_keycenter. The
   Move root with region checkbox is ON initially; switch it off to keep the
   sample's root fixed when moving its trigger range.
5. Edit numeric fields, then press Return or leave the field. The main tables
   and SFZ Program update immediately; no extra Compile is needed for mapper edits.
6. Enable Audio in the builder and play a mapped piano key. Mapping edits
   update audition automatically. Save using Save SFZ inst as… on the front page.

To start a new instrument, click New blank SFZ file, then Load sound folder.
Use Add all samples or Add selected in 1 Sound Files on the front page.
Open the mapper to adjust the resulting regions. Folder samples shows the
loaded catalog for reference. The Add sample menu above the grid adds one sound
at the first unused MIDI key from 0 upward.
Filename suffix and WAV metadata automatic mapping remain available through
Add selected in the main builder.

See GRAPHIC_MAPPER_README.txt for all controls, inheritance and test steps.

START HERE: A FIVE-MINUTE TEST RUN

1. Patch opens blank. Click Load demo example for the three-region demo. 

2. Top line is File Management. Leave as-is for this test run.

3. In the REGION TABLE first row, enter -6 in the volume column. 
	Press Return,then click Compile tables. The program at right gains volume=-6 in that region.
4. The demo is already prepared for audition. Save + load is optional;
   its default filename is My_Demo.sfz in Demo.

   Turn Audio on. Click Note at pitch 60 / velocity 100: the bright layer sounds.
   Try velocity 40: the soft layer sounds. MIDI 72 tests the upper bright region.
   Use the visible main keyboard or the keyboard inside the graphic mapper.
   The redundant Keyboard… button is hidden in this version.

5. Click a region row, then Edit selected. In the opcode table, change a Value
   cell, press Return, and Compile tables. Set Use to 0 to remove a local opcode.
5. Select <global> in the scope menu. Choose an opcode such as ampeg_release
   from the opcode menu, then Add opcode + comment. If already present, simply
   edit its Value cell. Compile tables to hear the change. Save keeps the updated instrument.
6. Type a comment or opcode directly into the SFZ program. Click Apply text.
   The tables refresh from the text. Saving or using the tables is blocked
   while unapplied text edits remain, so they cannot be overwritten silently.
7. Save, close, then Open SFZ and reopen your saved file. Verify the values.

BRING IN YOUR OWN SOUNDS
1. Click New blank SFZ file to start over. This clears the catalog and mappings.
2. Load sound folder lists sounds. The chosen folder becomes the SFZ folder
   while the instrument has no regions. Undo restores applied instrument edits.
3. Set Velocity and to. For Add selected, also choose Mapping, Roots and Start.
4. Add all samples places the sorted list at MIDI 0 upward, one half-step apart.
   Add selected imports only the menu's sample using your Mapping/Roots choices.
   Import goes into the group belonging to the current opcode scope. If the
   scope is global/control, a new group is created. New group creates and
   selects another group, useful for additional velocity layers.
5. Enable Audio and play. Compile any table edits. Save keeps the SFZ. The folder is shown
   across the top. Save As can choose another folder and adjusts sample paths.

FOLDER LIST AND PATHS
The scrollable sample= list is copyable: Select sample= lines to copy, then
Cmd-C / Ctrl-C. Listed paths are relative to the displayed SFZ folder.
If your program uses <control> default_path, adapt manually pasted lines to
that prefix. The Add selected / Add all actions account for it automatically.
default_path must end in / when using folder import.
Files are never renamed, copied, trimmed, or rewritten by the builder.
Import supports WAV/WAVE, AIFF/AIF, FLAC, and OGG filenames. Actual decoding
is handled by sfizz~; compatibility of each audio encoding is engine-dependent.
The scan excludes hidden items, stops after 20 nested folder levels, and
limits the catalog to 10,000 sounds. Start with a small folder for testing.

THREE MAPPING CHOICES FOR ADD SELECTED
Single key / one shot (default): one region on each assigned root/key,
with loop_mode=one_shot. This is suitable for drum and unpitched samples.
Pitched splits / full range: each file has a root pitch; adjacent roots meet
at their integer midpoint. The first region begins at MIDI 0 and the last
ends at MIDI 127. Duplicate roots are rejected: import velocity layers into
separate groups. Edit the outer limits if you want a narrower instrument.
Unmapped / edit later: sample and velocity limits only. Key ranges and root
are inherited or left to sampler defaults. Multiple unmapped regions may
all sound together until you assign ranges. Root-source settings are ignored.

ROOT SOURCES
Start + step (default): Start supplies the root for Add selected.
Defaults: Start 0, Step 1. Add all always resets these to 0 and 1 and maps the
alphabetically sorted list. Step means a gap in semitones; it has no effect on
a single Add selected operation.
Filename suffix: a trailing note or MIDI number before the extension, such as
soft_C4.wav, note_D#4.wav, instrument_60.wav. C4 means MIDI 60. A descriptor-
rich name without a final note/number is not automatically interpreted as pitch.
WAV smpl metadata: reads the root from the RIFF/WAVE smpl chunk, read-only.
If the metadata is absent, import stops with an explanation. It does not guess
pitch from the audio. RF64/RIFX and AIFF metadata are not decoded in this edition.

REGION TABLE
One row represents one <region>. IDs remain stable during table operations.
ID and Group are informational, read-only columns. Select a row and press
Edit selected to choose that region in the opcode table. Duplicate and Delete
region act on the selected row; Undo restores an applied operation.
The table shows local values only: blank cells inherit or use engine defaults.
In the demo, velocity fields are blank in region rows because groups set them.
The table expands key=60 to visible root/low/high values of 60. Editing one of
these fields converts the local key shorthand into the three explicit opcodes.
This avoids ambiguous combinations of key with lokey/hikey/pitch_keycenter.
Graphic mapper opens the graphical key/velocity grid. Group reassignment and
reordering remain SFZ text operations; dragging changes ranges, not group membership.

OPCODE TABLE AND REFERENCE
Scope menu: select any control, global, group, or region block.
Global/Control buttons select the first existing block of that type or create
one if absent. New group adds another group. The <group> HEADER is distinct
from the group= OPCODE, which assigns voice groups for choking sounds.
The opcode table contains the selected block's local opcodes. Use=1 keeps an
opcode; Use=0 or an empty value removes its local assignment. Opcode names and
reference comments are read-only. The main table edits the same region data.
If both tables propose different values for the same opcode, compilation stops
and retains the drafts. Revert tables restores the last applied model.
The visible annotated index contains 43 opcodes and four headers, covering every
opcode in SFZ_sfizz_Tutorial_02. Filter by category, then choose an opcode and
Add opcode + comment. Advanced/custom opcodes can be entered in the SFZ text.

PROGRAM TEXT AND COMPILATION
Compile tables applies pending edits from BOTH tables as one operation, checks
common value/range errors, and refreshes the program. Most other builder actions also
commit pending table edits first. Mapper actions require those drafts to be
compiled or reverted explicitly before editing. Press Return to finish editing a cell.
Apply text explicitly rebuilds the tables from your handwritten SFZ. Revert
text restores the model's current program. If both text and tables have drafts,
apply/revert one side first. No background regeneration overwrites text drafts.
Comments and unknown opcodes are retained within parsed blocks. Blank optional
fields are omitted. Compile tables places each header and opcode on its own
line, with blank lines between blocks. Handwritten spacing is retained until
you choose Compile tables or apply a mapper edit; includes/macros stay unchanged
in text mode.
Compile tables updates the program and temporary audition copy. Save writes
your named plain UTF-8 .sfz instrument file.
Applied changes have up to 40 Undo states. Unsaved work is not embedded in the
.maxpat: save the SFZ before closing, and reopen it for the next session.

SUPPORTED STRUCTURE AND LIMITS
The table model supports <control>, <global>, <group>, and <region>.
#include, #define, $macros, and other headers remain in explicit TEXT MODE.
The text is preserved and can be saved in its existing folder, but table edits
and Save As path rebasing are blocked for these documents. The checker does
not expand includes or macros. sfizz~ and its console messages are the final
authority on engine support and syntax.
The checker is intentionally not a complete SFZ interpreter. Table value entry
uses conventional ranges from the included reference; specialized extension
values can be retained in text. Unknown opcodes are not executed by the editor.
Quoted sample paths are not generated. Spaces, commas, semicolons and Unicode
are passed literally; avoid SFZ syntax characters such as =, $, #, <, > and
double quotes in sample names. Save As rebasing supports ordinary local POSIX,
Max macOS volume paths and Windows paths on the same drive. Cross-drive moves
are stopped rather than inventing relative paths. Network UNC paths are not a
validated target. Text files are limited to 2 MB.
This version reads only root-note WAV metadata; loop point extraction, waveform
editing, and copying audio into a new package remain future work.

SAVE AND AUDITION
Save and Save As both open a dialog with the current filename, including .sfz,
already filled in. Rename it or choose another folder, then confirm. Cancel
leaves all edits in the builder. All saving controls are on the front page.
The main Save + load remains a quick save/reload in the current
folder (or opens the named dialog if no SFZ folder has been chosen).
Save keeps the previous file as <filename>.sfz.bak when content changes, writes
the new bytes, closes the file, then reads them back to verify the save.
An unchanged save does not replace that backup. Keep the editor open if a
write or verification fails. Save As rebases paths and removes default_path
from the exported model after incorporating it into explicit sample paths.
Save + load requests sfizz~ to read the saved file. Look in the Max Console for
load errors. The UI reports the request, not an acknowledgement from sfizz~.
Audio is off initially. Output starts at -18 dB; adjust the dB control as needed.
Note sends a timed note with the displayed pitch, velocity and duration.
Panic sends sustain off, all notes off and all sounds off, and cancels timers.
External MIDI note input is opt-in. This edition does not forward external CCs.

VALIDATION
Automated source/model/file/controller tests pass, including all 23 tutorial
files and all 24 distinct tutorial opcodes. Native Max rendering, cell-edit
event behavior, folder dialogs and sfizz~ audio must be tested in your Max
installation. They cannot be executed in the Linux build environment used here.
See VALIDATION.txt for the exact checks and test limitations.

IMPLEMENTATION
ec_sfz_core.js: independent source-preserving model, inheritance, mappings, paths.
ec_sfz_builder.js: Max tables, folder/files and compilation actions.
ec_sfz_audition.js: temporary audition copy, path resolution and MIDI devices.
ec_sfz_catalog.js: annotated opcode reference shared by menu and table comments.
ec_sfz_mapper.js: Max-side graphical operations, shared-model updates and MIDI.
ec_sfz_mapper.html / ec_sfz_mapper_ui.js: local key/velocity view and interaction.
The graphical mapper, both tables and the text editor share one region model.


OCTOBER 2026 UPDATE — YOUR REARRANGED PATCH

Your presentation positions, pane sizes, control colors and enlarged tables
are retained. The demo also retains the resonance values in your submitted
program text. The changes below are functional fixes to that version.

KEYBOARD
The keyboard in the main patch is connected to sfizz~ through the same MIDI
path as the mapper keyboard. Add samples, turn Audio on, then click
and hold a key. Releasing the mouse sends note-off. Mouse height on the key
sets velocity. The main and mapper keyboards use this momentary behavior. Panic stops the
voices and clears the highlights. The MIDI input toggle controls external
MIDI only; it does not disable either onscreen keyboard.

SCROLLING AND TEXT
The SFZ program, sample list, annotated opcode index and validation report
now use local embedded text panes. They need ec_sfz_textpane.html and the new
ec_sfz_panes.js file beside the patch. No internet connection is needed.
The SFZ program is editable: click inside, type/paste, then Apply text.
Return inserts an actual newline. Lines remain separated after focus leaves
the pane. Long program/comment lines wrap visually without changing the saved
text. Scroll with the wheel/trackpad or drag the visible scrollbar.
The sample list uses exactly one sample= entry per line; long paths use the
horizontal scrollbar. Read-only panes remain selectable and copyable.
Select to copy / Select sample= lines to copy selects the entire pane; use
Cmd-C / Ctrl-C. In the program pane, Cmd-Z / Ctrl-Z undoes typing; the top
Undo button undoes applied model changes.

Both tables explicitly enable horizontal and vertical scrollbars. Their
patching and presentation viewport sizes now agree. Scrollbars activate when
there are more columns/rows than fit; a three-region demo needs no vertical
scrolling. Import more samples or add more opcodes to test vertical overflow.
Double-click a cell, edit, press Return, then Compile tables.

HOVER HELP
Hover over the action buttons in a locked patch / Presentation Mode for popup
hints, including Save, Save As, Save + load, Load saved, Check, Graphic Mapper,
Compile tables, Revert tables, Edit selected, and the remaining action buttons.
The same explanations are available through Max's Clue window.

PORTABLE FOLDERS
No user's absolute sample-folder path is saved in the patch. Startup is always
blank. Load demo example finds Demo relative to the patch only when requested.
For your sounds: New blank SFZ file → Load sound folder → Add selected / Add all → Compile tables
→ Enable Audio → Play. Save keeps the instrument. Open SFZ uses the chosen file's containing folder. Save As
chooses a destination and rebases same-drive sample paths. Keep the SFZ and
its referenced samples together when moving an instrument to another machine.

INSTALL THIS UPDATE
Extract the complete folder and open _ec_sfz_builder_editor.maxpat. If updating
an existing folder, close the old patch first and replace the patch and all
all .js files and both .html files. Do not mix controller versions.
The updated README starts from your uploaded READ_ME_FIRST(1).txt; your
revised test-run wording is retained except for corrected filenames/location.

TEST LIMIT
Automated model, file, transport and patch-graph tests pass. Native Max's
jweb/cellblock rendering, dialogs and sfizz~ audio still require your Max test.
See VALIDATION.txt for the detailed results and the short acceptance test.


OPCODE TABLE WIDTH AND NUMBERED BLOCK COMMENTS
The four Opcodes for Scope columns now fit the current 900-pixel table width,
including space for its vertical scrollbar. The comment column adjusts to the
presentation width whenever the table refreshes. The table's position, size,
colors and row height are preserved.

The Region Table is a fixed overview: sample, pitch_keycenter, lokey, hikey,
lovel, hivel, tune, volume, pan and loop_mode. Adding one of these to a REGION
updates its corresponding cell; editing a scope Value updates it on Compile
tables. Adding key updates the root/low/high columns. Other opcodes, such as
ampeg_attack, cutoff or resonance, appear in Opcodes for Scope and the SFZ
program. They do not create new columns in the Region Table. Group/global
opcodes are inherited; blank region cells remain blank until locally set.

Compile tables adds comments matching the ID and Group columns, for example:

<group> // Group ID 2
<region> // Region ID 3; Group ID 2

These comments do not change SFZ playback. They use the model's displayed IDs,
not the physical row number or a separate region count. Existing generated ID
comments refresh after duplication and text re-parsing so they continue to
match the tables. New unlabelled blocks receive comments on Compile tables.
Your other comments remain. IDs can be reassigned when text is applied or a
file is reopened; the generated comments then follow the current table IDs.
Group ID here is distinct from the SFZ group= opcode used for voice choking.

Install this change with the updated maxpat, ec_sfz_builder.js and
ec_sfz_core.js together; the complete ZIP contains all required files.
