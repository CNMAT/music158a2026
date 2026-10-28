SAMPLE SORTER v1.8
Created 28 October 2026

START HERE
1. Unzip the entire ec_sample_sorter folder. Keep its .maxpat and all three .js
   files together. Open _ec_sample_sorter.maxpat in Max.
2. Wait until the status line says Ready. The bundled Node for Max engine
   starts automatically. No npm install or third-party Max externals are needed.
3. Click Choose folder, or drop a folder on the drop zone. Every real subfolder
   is scanned recursively. On every folder load or rescan, the first sound is selected
   and opened silently. Try Demo_Sounds first.
4. Click the Audio speaker icon to enable DSP. Output starts at -12 dB.
   Turning Audio on does not start the cued sample. Click Next Sample or
   press Right Arrow to play that cued first sound; the next press advances.
5. Select a sound in AVAILABLE: it plays automatically. Click Next Sample
   beside AVAILABLE to advance from its last auditioned item and play the next
   sound. The menu selection follows playback. With no selection it starts at
   the first sound; at the end it wraps to the first sound. Previous/Next below
   the menu also work. Replay or Down Arrow restarts the current sound from the
   beginning, in either menu. Stop also closes it.
6. Click Keep or press Up Arrow to move the current sound into PREFERRED.
   This does not advance, restart, or start another sound. The current sound
   continues if already playing. Use Next/Right Arrow when ready to continue.
7. Selecting a sound in PREFERRED also plays it. Click the Return button to move that
   selected sound back into AVAILABLE.
8. Export whenever you want, using either method below.

KEYBOARD SHORTCUTS
Click the background of this locked, frontmost patch window, then use:
  Right Arrow  Next Available sound, selected and played
  Left Arrow   Previous Available sound, selected and played
  Up Arrow     Keep the current Available sound
  Down Arrow   Replay the current sound from the beginning (either menu)
  Return/Enter No shortcut assigned
The first Right Arrow after any folder load or rescan plays the cued first item.
Afterward, arrow navigation wraps at the ends. Keeping a sound never advances
or triggers playback. Holding Up Arrow keeps only one file until you release
and press it again. An already-preferred sound cannot be added a second time.
After Keep, manual Next/Previous continues from that sound's source position.
Down Arrow keeps the selection and Preferred membership unchanged. It also
plays the silently cued first sample or restarts a stopped sample. Holding
Down triggers once; release and press again to replay again.
Shortcuts are ignored while scanning/exporting or editing an unlocked patch.
Click outside menus and number fields before using these shortcuts.

PREFERRED UNIQUENESS
The same source file can appear in Preferred only once. Repeated Keep requests
are ignored; rescans remove duplicate entries and exports use a unique list.
Different source files can have the same name. Export compares their verified
file bytes: byte-identical copies are saved only once, even with different names.
It does not compare decoded audio: different encodings or metadata produce
different file bytes and remain separate files.

SAVE PREFERRED TO A NEW FOLDER
Click Save Preferred to new folder. In the native folder Save dialog, navigate
to any writable location (including another mounted disk), create/name your
folder, and save/select it. The selected path is the output folder itself, not
its parent. The patch uses your exact folder name; it does not create an extra
timestamped folder inside it. A newly named path or a newly created empty
folder is accepted. Canceling the dialog writes no samples.

The new folder contains ONLY unique Preferred soundfiles, directly inside it:
no subfolders, manifest, or session files. An empty Preferred list cannot export.
Original filenames are kept when possible. Different files with the same name
are retained with suffixes, for example Hit.wav and Hit (2).wav. Matching is
case-insensitive and Unicode-normalized for portable, collision-free names.
Byte-identical copies are omitted. The result reports the number saved and
any duplicates skipped. No audio is converted or re-encoded.

CHOOSE / CREATE FOLDER (FORMERLY CHOOSE FOLDER TO REPLACE)
This button also opens the native folder Save dialog. You can navigate freely,
create/name a new folder, or choose an existing destination. Read the full path
in the review area, then click CONFIRM EXPORT. New/empty folders receive the
flat selection. For an existing nonempty folder, the review says REPLACE and
its entire previous contents are retained as a timestamped sibling backup.
Cancel abandons the review. Opening either export dialog clears any previous
review. Changing Preferred also invalidates a pending review.

The direct Save Preferred command accepts new or empty folders; use Choose /
create folder and CONFIRM EXPORT to replace a nonempty folder deliberately.
Both commands produce the same flat, duplicate-free audio collection.

Replacement first makes and verifies a complete staged copy. Then the entire
old target folder is moved to a sibling backup and the new selection takes its
place at the exact chosen path. Backups are outside the exported folder and
are not deleted automatically. The result and Max Console show the backup path.
If the loaded source itself is replaced, AVAILABLE becomes empty and PREFERRED
is updated to the actual flattened filenames so auditioning and Return work.

Existing nonempty disk roots, the home folder, folders containing this patch,
and source ancestors/descendants cannot be replaced. The exact loaded source
can be replaced. New/empty destinations can be anywhere writable, including
inside the source; a later source rescan will include those exported copies.

WHAT IS COPIED
Audio files are copied byte-for-byte, then checked with SHA-256. There is no
resampling, normalization, conversion, or re-encoding. Channel counts and audio
headers are retained. Filesystem ownership, timestamps, Finder tags, resource
forks, and sidecar files are not promised or copied with the audio selection.

The destination is installed only after every selected file has copied and
verified successfully. Copy failures leave an existing target intact. If a
replacement cannot be installed, the engine attempts to restore the old folder.
If restoration also fails, the error identifies the retained backup. A machine
crash can leave the backup and a hidden .sample-sorter-stage-* sibling; recover
from the backup in that case. A folder created by you in the native dialog may
remain empty if the subsequent export is canceled or fails.

AUDITIONING AND SCANNING
- Uses Max's sfplay~ disk streaming, so files are not all loaded into RAM.
- Mono is sent to both speakers. Stereo plays normally. Files with more than
  two channels audition their first two channels; export retains every channel.
- Loop repeats the current sound. Gain affects auditioning only.
- Audio must be enabled manually; the patch does not enable DSP on opening.
- Supported scan extensions: WAV, WAVE, AIF, AIFF, AIFC, FLAC, MP3, OGG, M4A,
  CAF, W64, WF64, regardless of case. Decoding depends on Max and the file's
  actual codec. A corrupt or unsupported file can appear in the menu but fail
  to play; consult the Max Console for sfplay~ errors.
- Hidden real folders/audio are included. AppleDouble resource forks,
  .DS_Store, .AppleDouble and __MACOSX metadata are skipped.
- Symbolic links and Windows junctions are skipped to avoid loops and paths
  outside the chosen tree. Unreadable subfolders are reported in Max Console.
- The menu shows relative paths with numeric prefixes. Commas in labels are
  rendered as fullwidth commas for umenu compatibility; disk names are exact.
- Rescan keeps preferences for files that still exist in the same source.
  Choosing a different source clears both the old menu and its preferences.
- Preferences live in the running session. Saving the .maxpat does not save
  the selection, and closing the patch or restarting its engine clears it.
  Export your preferred audio before closing if you want to retain that set.

DEMO
Demo_Sounds contains three quiet, one-second PCM WAV files: one mono tone and
two files named Hit.wav in different subfolders (one mono, one stereo). Loading
Demo_Sounds should show three files. Its text file should never appear or be
exported. Keep both Hit.wav files and export to a named folder. Check that Hit.wav and
Hit (2).wav are directly inside it, with no Percussion_A/B subfolders.

FILES AND REQUIREMENTS
_ec_sample_sorter.maxpat     Native Max interface and audio routing
sample_sorter_node.js    Max/Node message handlers
sample_sorter_core.js    Recursive scanning, selection and verified export
sample_sorter_ui.js      Native menu/status updates through Max's js object
Demo_Sounds/            Three generated audio fixtures
Validation/             Reproducible engine and wiring checks

Designed for standalone Max 8.6+ / Max 9 with the bundled Node for Max package.
Your edited _ec_sample_sorter.maxpat is the basis of this revision.
Its presentation layout is preserved; export labels describe the new behavior. The implementation has no dependency
on that reference's custom audition-soundfiles_dict~ or m29dspinit abstractions.
macOS is the primary target. Native Windows drive paths are handled as well.
This package is a standalone patch, not an Ableton Max for Live device.

VALIDATION AND LIMITS
Integration checks passed for scanning, selection, exact copying,
replacement, backups, missing files, changed targets, simulated disk errors,
simulated failed installation/rollback, and path protections. Additional checks
verified all patch connections, unique IDs, scripting names, UI state updates,
all Max-to-Node command handlers, and stereo/mono routing configuration.
These are automated engine and structural checks. Max itself was not available
in the build environment: the native GUI, DSP playback, and macOS/Windows
folder-dialog integration have not been runtime-tested. Use Demo_Sounds for a
quick first check in your Max installation.

To run the supplied checks with a separately installed modern Node.js:
  node Validation/test_sorter.js
  node Validation/test_max_wiring.js
  node Validation/test_transport.js
  node Validation/test_keyboard.js
  node Validation/test_flat_export.js
Run them from the ec_sample_sorter folder. Tests use disposable temporary folders.

IMPLEMENTATION REFERENCES (Cycling '74 official documentation)
https://docs.cycling74.com/reference/node.script/
https://docs.cycling74.com/apiref/nodeformax/
https://docs.cycling74.com/reference/sfplay~/
https://docs.cycling74.com/reference/umenu/
https://docs.cycling74.com/reference/conformpath/
https://docs.cycling74.com/reference/savedialog/
https://docs.cycling74.com/legacy/max5/vignettes/core/keyboardcodes.html

REVISION 1.7
Based on the supplied _ec_sample_sorter(2).maxpat. Both export commands use
savedialog fold and the exact chosen folder name. The review/confirm path
accepts new paths as well as existing folders. Every export is flat; repeated
source entries and byte-identical copies are saved once. Different sounds with
colliding filenames receive unique suffixes. Source replacement updates the
menus to those new names. Up Arrow Keep, no automatic next playback, and the
silent first-file cue on every folder load/rescan remain in place.
Replace the patch and all three JavaScript files together.

REVISION 1.8
Based on the newly attached master patch. Down Arrow uses the same replay
command as the Replay button, with one restart per press. It works for the
current Available or Preferred sample and for a silently cued first sample.
A two-line shortcut guide above the menus explains all four arrows and focus.
The previous export behavior, unique Preferred list, and manual navigation
remain in place. Replace the patch and all three JavaScript files together.
