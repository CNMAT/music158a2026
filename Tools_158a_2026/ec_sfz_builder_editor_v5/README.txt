EC SFZ Builder / Editor v5 — no patch save on close

GET STARTED
Close any open older builder. Extract this entire folder into a fresh location.
Open _ec_sfz_builder_editor.maxpat from this folder
in Max, with sfizz~ installed. Keep ec_sfz_builder_v5.js and the Support folder
beside the patch. The Opcode Browser is also available at the top level.

The builder opens with a blank instrument. Load a sound folder, choose a group,
and add samples. Enable Audio to audition. Automatic preview uses the current
instrument; use the main page's save controls to save your authored SFZ file.

GRAPHIC MAPPER: ARROW SELECTION
With the mapper focused, Left / Right selects the previous / next mapped sample
by its position on the keyboard. The View menu limits navigation to that group;
All groups includes all displayed regions. With no visible sample selected,
either arrow first selects the leftmost sample. Navigation stops at each end.
Overlapping regions remain individually reachable. The view scrolls to keep the
selection visible when zoomed. Arrow selection does not play or move samples.

Arrow keys keep their normal function inside text fields, numeric fields,
menus, and sliders. Finish editing a field or click a region before navigating.
Valid mapping edits are applied before changing selection; invalid drafts stay
in place for correction. Click the piano keyboard to audition notes.

AUTOMATIC SAMPLE PLACEMENT
  Group 1: MIDI 0, 1, 2 ... 127
  Group 2: MIDI 127, 126, 125 ... 0
  Group 3: MIDI 84, 83, 82 ... 0
  Group 4 and later: MIDI 0, 1, 2 ... 127

These are the group numbers displayed in the editor, in document order.
New additions skip every occupied key range within the destination group,
regardless of velocity. Group 3 stops at 0; it does not wrap to keys above 84.
If there is insufficient room for a batch, none of that batch is added.

This order applies to Add sample, Add all samples, Add selected samples,
adding the loaded folder to a new group, and the mapper's Add sample menu.
In the mapper, View chooses the destination; All groups uses the first group.
Duplicate region finds a free range in that group's direction and preserves
the region's width and root offset. Existing mappings are unchanged.
Duplicate to new group preserves the copied group's mappings exactly.

FOLDER CONTENTS
  Support/        JavaScript, HTML views, and the empty preview instrument.
  Examples/       Demo instruments, tutorial examples, and their samples.
  Reference/      Scala scale-name reference.
  Documentation/  v5 release notes and clearly labeled development history.
  Tests/          Optional controller/model checks; not needed to use Max.

The built-in single-sample tutorial is now in:
Examples/Demo/single-sample-demo/
The builder resolves support, demo, tutorial, and reference paths from its own
folder. The Examples subfolders retain their original sample relationships.

This second v5 repair makes the controller self-contained. All table, HTML,
mapper, and audition helpers are present before Max restores UI state. Early
table events are ignored until the blank instrument has been initialized.
The table and filename inputs use named messages through the controller's left
inlet, avoiding dependence on extra JavaScript inlets while Max loads the patch.

The patch now explicitly uses ec_sfz_builder_v5.js, so it does not select an
older ec_sfz_builder.js elsewhere in Max's search path. Keep the whole extracted
folder together. HTML panels continue to load from Support using local paths.

SAVE / OPEN REPAIR
The filename now starts at My-Instrument.sfz and stays unchanged as commands
are used. Max's text message label is no longer added to the filename.
Save and Save SFZ inst as... prefill the current name and write to the folder
chosen in the dialog. Save + load writes before loading the saved instrument.
Open SFZ file from disk can be used repeatedly in the same session. Cancelling
Open or Save keeps the current instrument and leaves the controls available.
The editor capture is completed before a dialog can begin a new file request.
Write/read failures appear in the status display, report, and Max Console.
The main patch's saved HTML URLs are neutral; local Support files load on open.

Validation for this repair: 52 controller, allocation, startup, and file I/O
checks passed, plus seven local HTML panel checks. File I/O tests use actual
temporary disk files with simulated Max dialogs, including immediate and
asynchronous replies. All patchcord endpoints were checked. Native Max dialogs
and sfizz~ audio were not available here and still need testing in Max.

CLOSING THE BUILDER
Closing the main window runs the existing note/task cleanup, then clears the
main patch's modified flag. It does not save the .maxpat or ask to save it.
Use Save / Save SFZ inst as... / Save and load for testing before closing to
keep your SFZ instrument edits. Those explicit SFZ save controls are unchanged.
This affects closing the builder; an intentional File > Save command in Max
can still save manual edits to the patch itself.
