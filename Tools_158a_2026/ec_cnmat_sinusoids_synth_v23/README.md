# CNMAT Sinusoids v23 — range randomization and MorphBank update

Updated from your supplied full v23 package. The MorphBank now opens empty, as requested. The tutorial, starter and unrelated controls are preserved.

## Open

Close other v23 copies, extract this complete folder, then open **`_ec_sinusoids_synth_v23.maxpat`** at the top level. It registers `patchers/` and `javascript/`, opens the instrument and closes itself. Keep these folders together. The installed compatible CNMAT `sinusoids~` external is required. Open only one v23 master at a time because its buses are shared within Max.

## What changed

- **DETUNE / HARMONIC ANCHOR random amps:** a constrained partial view limits randomization to the displayed partial numbers. Outside values, including hidden memory, are preserved. Display all restores the full active range. The primary amplitude random button keeps its existing behavior.
- **Eased transitions:** the first quarter of the duration accelerates exponentially, the middle half runs at a constant rate, and the final quarter slows to arrival. The total duration remains the selected number of seconds.
- **Independent times:** set seconds **before capture**. Every A–X slot retains its own time. Clicking `morphto LETTER` posts that slot’s seconds and uses them for the transition.
- **Immediate jump:** choose a letter in the Jump menu and click `morphjump LETTER`.
- **Repeating cues:** edit and click `morphcue A B A D C F`. The list repeats indefinitely, using each destination’s own time. Click `morphcue stop` to stop the loop and hold the current sound. Pause/Resume also work.
- **Color variant:** choose Classic or Pastel. Empty slots are muted; the selected destination is darker.

## Current and target readouts

Beneath **morphstop** and **morphfinish**, the left message shows `current morph = A` after A is reached. The right shows `target = B` while moving to B. At arrival, the left becomes B and the right clears. During a cue loop, the right immediately shows the next queued letter. Pause retains the target; Stop clears it and leaves the last reached letter on the left.

At startup the left has no letter (`current morph =`) and the right is blank. Capturing/staging a slot does not count as reaching it. These are passive displays. The ordinary progress display is directly below them.

## Capture and save

Make a sound, set its desired arrival time in seconds, choose a capture letter, then click `morphcapture LETTER`. Repeat for other letters. `morphslottime B 6` changes B’s stored arrival time to six seconds without recapturing. `morphto B 2` overrides only that transition, leaving B’s stored time unchanged.

**Save Bank (`morphbank write`)** saves all full sounds, their independent times, and the color variant to JSON. **Load Bank (`morphbank read`)** validates and replaces the bank without recalling a sound. Older bank files remain readable: their previous default duration is assigned to each populated slot. All A–X saved slot messages are empty in this package; new captures use the seconds field. No forced startup clear is added, so captures you subsequently save in the Max patch can still be restored.

The hidden `p MorphBank_v23` editors retain both the full dump and a separate stored-seconds message for each slot. Saving the Max patch preserves those values too. A single sound dump contains the sound; Save Bank retains the complete destination bank.

Morphs and jumps apply settings; they do not enable DSP or trigger envelopes. Keep an envelope sounding to hear the result. A jump has no MorphBank transition delay, while existing audio smoothing remains active. Use Stop before manual editing.

## Commands and guides

Send commands to `Synth_Control_v23` (directly, or prefixed with `command`/`control`), or unprefixed to `Synth_Command_v23`. `p Cue_Morph_v23` accepts a bare letter, `LETTER SECONDS`, `morphjump LETTER`, or a full `morphcue` list.

- `diagnostics/documentation/MORPHBANK_v23.md`: full workflow, commands and bank compatibility.
- `diagnostics/documentation/FULL_STATE_MORPH_v23.md`: interpolation rules and audio limitations.
- `diagnostics/V23_DIAGNOSTIC_REPORT.md`: current validation results.
- `diagnostics/NATIVE_MAX_MORPHBANK_v23_CHECKLIST.md`: focused checks in Max.

Run the automated checks with Python 3 and Node.js; neither is required to operate the instrument:

```sh
python3 -B diagnostics/run_diagnostics_v23.py
```

**All 32 automated regression suites passed**, together with patch structure, dependency and preservation checks. Native Max execution and audio auditioning have not been performed here. Automated reports describe the tested JavaScript and saved patch structure.
