EC SFZ BUILDER v3.7 — SFZ GRAPHIC KEYBOARD SAMPLE MAPPER

OPEN AND INSTALL
Use the supplied _ec_sfz_builder_editor.maxpat with all companion files from
this v3.7 folder. Close any older builder using the same script filenames first.
Click Graphic Keyboard Sample Mapper near the top of the locked main patch. A separate,
embedded mapper window opens. Your supplied layout, colors, teaching reference,
and keyboard-to-Note wiring are retained. The mapper uses local files only;
no browser login, network connection, additional Max external, or Node install
is needed. sfizz~ is required for audio, as in the existing builder.

GRID
Black-key background bands are 40% darker for alignment with the piano below.
Hover over buttons, menus, fields and sample rows for explanations.
Horizontal axis: MIDI key numbers 0–127. Vertical: velocity 1–127, high at top.
Each rectangle is one region; colors identify groups. Region IDs match the
Region Table and the generated comments in the SFZ Program. The grid includes
inherited/default key and velocity values; the Region Table displays LOCAL
values. A blank table cell can therefore correspond to an active visible range.
The grid shows key/velocity eligibility only. Other opcodes (round robin,
random selection, keyswitches, CC conditions, release triggers, etc.) remain in
the program and may further determine whether a sample actually sounds.

EDITING
- Click a region, or select its row in the Regions sidebar. The selected region
  comes to the front and becomes the scope in Opcodes for Scope.
- Drag the rectangle interior: move key/velocity ranges, keeping their widths.
- Drag left/right square handles: resize low/high key.
- Drag top/bottom square handles: resize high/low velocity.
- Drag the orange triangle above the piano: set the root / pitch_keycenter.
  The root can be outside the trigger range; this is valid SFZ.
- Move root with region is initially checked. Uncheck to keep the root fixed
  while moving the region's key range.
- Numeric fields apply automatically on Return or when you leave a field.
  Keys/root accept 0–127; velocities accept 1–127. If a low value exceeds its
  high value, correct either field; the pair applies once valid. Escape restores
  uncommitted numeric entries. Finish numeric edits before saving on the front page.
- A drag is committed on mouse release as one Undo step. Escape cancels an
  unfinished drag and sends Panic. Only changed fields become local overrides.
  Editing a local key= shorthand expands its three implied key fields.
- Duplicate retains ALL region opcodes/comments. Delete region removes the
  mapping only; it does not delete or rewrite a soundfile. Undo restores it.
- Fit regions zooms to the visible group(s). All keys resets the view. Zoom and
  the horizontal scrollbar help target narrow, single-key regions.
- Overlapping layers are allowed. Use View to isolate a group, or the Regions
  sidebar to select a rectangle that is covered by another. Exact duplicate
  regions remain separate entries. A filter only changes the view.

ADDING SOUNDS
Start a new instrument with New blank SFZ file, THEN Load sound folder.
New and Clear all samples empty both mapper tabs and the keyboard grid.
Clear keeps other group/global settings; neither button deletes disk files.
Undo restores the catalog, mappings and audition playback automatically.
Add all samples in the builder maps MIDI 0 upward, one sample per half-step.
The mapper's Folder samples tab mirrors this catalog, including subfolders.
Search filters names; long lists scroll. Rows are about half their previous
height; names stay on one line. Hover for full paths, IDs and mapping details. Up to 500 matches are displayed at
once; refine Search for the rest of a larger catalog.
Load the sound folder on the home page. The Add sample menu above the grid
contains the same sound names as 1 SOUND FILES. Choosing a sound immediately
adds a one-key, one-shot region at the first unused MIDI key from 0 upward,
using the home-page velocity range. All existing regions reserve their key
ranges, including inherited ranges and regions in other/hidden groups. If no
key is free, nothing is added. Deleting a region makes its keys available again.
New regions join the selected scope's group, or a new group if none is selected.
The new region is selected and brought into view; tables, program and audition
update automatically. Undo reverses an addition. You may select the same sound
again to create another region. Pending table/text drafts must be applied first.
Add all samples / Add selected remain on the home page. Folder samples in the
mapper remains a read-only reference list.
The mapper does not import files or folders by drag-and-drop. Region moving,
resizing and root dragging remain available for editing existing mappings.
Samples are referenced in place. Save As uses the relative-path rebasing system.

SHARED DATA AND SAVING
The mapper, tables, compiler and SFZ text share one document and Undo history.
Mapper changes immediately update both tables, the formatted SFZ Program
and an audition copy for sfizz~. Enable Audio and play without saving first.
Compile tables is needed for edits made IN the tables. Apply text is needed
for handwritten SFZ edits. Mapper actions stop while either view has an
unapplied draft; apply/compile or revert that draft in the builder first.
Stale drags are rejected if the model changes before the edit arrives.
Use Save SFZ inst as… on the front page to open the save dialog with the
current filename and .sfz extension filled in. Confirm or rename it. Cancel
keeps your edits without writing a file or changing playback.
The mapper has no save control. Main Save, Load saved and Save + load remain
available on the front page.
Saving the .maxpat does not save an instrument: save the .sfz before closing.

PIANO AND AUDIO
Enable Audio in the main patch. Click and hold a piano key; vertical mouse
position sets velocity. Release sends note-off; movement across keys auditions
successive notes. The main Note integer follows the clicked pitch. The mapper
piano plays the LAST LOADED instrument, including all its applicable regions;
it does not solo the selected rectangle. Applied edits automatically update
playback; the front-page save controls keep the instrument on disk. Load saved explicitly auditions
the disk version until the next applied edit. The home-page status identifies audition. The
load indication is a request, not an audio-engine acknowledgement: check Max
Console for sfizz~ errors. Panic stops voices. Focus loss / window close sends
note-offs; a heartbeat timeout also releases mapper-held notes if contact stops.
The main kslider shows MIDI 0–127. Below it, select a MIDI device and then
enable MIDI input for an external keyboard. The home-page MIDI received light
shows notes arriving from that device; L/R meters below Audio show actual
sampler output. The MIDI toggle directly controls a native Max gate. External notes light the main
keyboard and update Note. Turning MIDI input off stops held notes and blocks
external notes; mouse-playing either onscreen keyboard remains available. Add all starts at note 0, so a
hardware keyboard must be transposed to reach those low notes if necessary.

LIMITS
Includes/macros and unsupported headers remain text mode; graphical editing
is disabled. Non-keyboard mappings such as lokey=-1 stay in the list but are
not drawn or automatically converted. A pitch_keycenter=sample metadata root
is preserved and has no numeric root marker until explicitly replaced.
Control note/octave offsets are reported: the grid displays raw SFZ key
numbers, not offset-adjusted positions. MIDI numbers are authoritative; note
labels use C4=60. This version edits one region per gesture; no bulk selection,
waveform/loop editor, audio copying, or crossfade-envelope drawing is included.

FIRST MAX TEST
1. Open the demo and Graphic mapper. Compare group IDs and velocity layers.
2. Drag a region boundary, check the corresponding table value and SFZ line.
3. Move its root marker. Undo, and confirm the prior mapping is restored.
4. New blank SFZ file, then Load sound folder on the home page. In the mapper,
   choose two sounds from Add sample: they should appear at MIDI 0 and 1.
   Delete the MIDI 0 region; choose another sound and confirm it fills MIDI 0.
5. Enable Audio; play immediately, without saving first. Test notes inside/outside the mapped range and
   both low/high velocities. Release a key and close the window while holding
   another key to confirm note-offs; Panic remains available.
6. Use Save SFZ inst as… on the front page, reopen the SFZ, and verify the graphic mapping and sample paths.

VALIDATION
The shared model/controller and real Chromium interface were exercised together
using a simulated Max bridge. Native Max's CEF window/drag handling and sfizz~
audio could not be run here; those are the remaining acceptance checks above.
