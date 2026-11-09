# CNMAT Sinusoids v23 — MorphBank A–X

## Open and capture

Open the top-level `_ec_sinusoids_synth_v23.maxpat` with its complete folder. Keep one v23 master open at a time. The editable instrument is `patchers/_ec_sinusoids_synth_v23_main.maxpat`; CNMAT `sinusoids~` must be installed.

The bank has 24 full sound slots, A–X, in four rows of six. This package starts with all saved slots empty, as requested. Set the **seconds** field before capturing. Choose a letter and click `morphcapture LETTER`: it stores the current full sound and the seconds shown at that moment. Changing the capture menu alone does nothing to the sound or bank.

Each capture contains the existing 227 controls, 25 engine states, 14 user stores, hidden spectral memories and function-curve state. Its time is separate bank metadata. `morphcapture A 8` can supply the time directly. `morphslottime A 8` changes only the stored time, without capturing again.

## Transitions and timing

`morphto A` moves from the current live state to A using **A’s stored seconds**, and posts that time in the front-page seconds box. `morphto A 3` uses three seconds for that transition only. It leaves A’s captured duration unchanged. Times can be 0–3600 seconds. `morphseconds 8` changes the front-page value for the next capture; it does not rewrite existing slots.

Transition progress eases over the specified total time:

| Portion of total duration | Motion |
|---|---|
| First 25% | Start at zero speed and accelerate exponentially. |
| Middle 50% | Continue at a constant rate. |
| Last 25% | Decelerate symmetrically to zero speed at arrival. |

For an eight-second transition, the phases last two, four and two seconds. The middle rate is normalized so the entire change still finishes in eight seconds. Pause freezes progress; Resume uses the exact remaining time. The controller requests frames every 20 ms and measures elapsed time, so this is control-rate automation rather than sample-accurate timing.

A timed morph waits for an existing partial-count or offset crossfade to settle before starting its clock. Setup/validation time is separate from the specified transition. Native scheduler load can delay updates. Existing signal smoothing remains in place.

## Current and target displays

Two passive message boxes sit below Stop/Finish. The left shows the **last successfully reached named destination**, for example `current morph = A`. The right shows `target = B` while moving to B, including preparation and pause. Upon arrival the left becomes B. With no cue, the right becomes completely blank. In a cue, it updates immediately to the next letter, including the interval before the next transition starts.

Stop clears the target and retains the last reached letter; stopping halfway does not claim that the target was reached. Jump updates the current letter immediately. Capture only stores a destination; it does not mark that letter as reached. An unnamed direct-preset morph has no letter, and its completion clears the current-letter display. Clearing the bank clears the current letter; a transition already running retains its copied target as before. Ordinary preset recall clears the current letter on successful recall.

## Jump immediately

Choose A–X in **Jump**, then click the adjacent `morphjump LETTER` message. This applies the selected endpoint with zero MorphBank transition duration, bypasses the count/offset settling wait, and stops an active cue loop. It posts the letter’s stored duration without replacing it with zero. Existing downstream signal smoothing still applies.

Morphs and jumps do not trigger notes, start ADSRs or enable DSP. Keep an envelope sounding to hear the changes. An already-running ADSR segment is not restarted by a jump.

## Repeat a list of destinations

Edit and click:

```max
morphcue A B A D C F
```

The first transition goes from the current sound to A. It then transitions to B, A, D, C, F, returns to A, and repeats. Every step uses its destination’s stored time. Repeated letters are intentional. All letters must be populated before the cue starts; an invalid list leaves the current performance unchanged.

`morphcue stop` stops the loop and holds the current sound. `morphpause` / `morphresume` pause and resume it; `morphcue pause` / `morphcue resume` are aliases. `morphfinish` completes the current step and allows the cue to continue. A manual `morphto`, `morphjump`, ordinary preset recall, or existing abort action cancels the loop. Clearing an upcoming cue slot causes the cue to stop with an error when it reaches that slot.

Zero-second steps apply immediately, with a 20 ms scheduler yield between them so a zero-time loop remains controllable. Cues have no separate hold time at destinations. The Cue status line shows the current step, letter and duration.

## Colors

The **Colors** menu switches between Classic blue and Pastel. Pastel colors distinguish the six columns, with slight row variations. Empty slots are muted; the last selected destination is darker. Color changes are display-only. `morphcolor 0` selects Classic; `morphcolor 1` selects Pastel. The variant is included in a saved bank.

## Hidden editors and startup

Open `p MorphBank_v23`, then `p A_dump` through `p X_dump`. Each contains its full dump message, stored-seconds message, and capture/morph/jump/clear controls. Incoming updates use silent `set` messages. Clicking a full dump stages that slot without recalling it. Editing the stored-seconds message and clicking it changes that slot’s time.

For an existing full dump, paste the complete `preset VERSION CHECKSUM CHUNKS…` message into its editor and click it once to stage it. Do not alter encoded chunks by hand. A single full sound dump does not carry bank metadata; set the slot’s seconds separately.

On startup, saved seconds are staged **before** the corresponding saved dump. All 24 saved sound messages in this package have been cleared. Empty slot time editors start at ten seconds; capturing saves the current seconds field. Save the full Max patch or use Save Bank to retain later timing changes. Opening help patches does not start cues or change the bank.

## Bank files

`morphbank write` opens Save and proposes `CNMAT_Sinusoids_MorphBank_v23.json`. `morphbank read` opens Load. Optional quoted paths bypass the dialogs:

```max
morphbank write "/Users/yourname/Documents/My MorphBank.json"
morphbank read "/Users/yourname/Documents/My MorphBank.json"
```

The new **bank format version 2** saves all 24 slots, every independent duration, the current seconds setting and the color variant. The whole payload and each encoded sound retain checksums. This is separate from the existing version-2 *sound preset* format, which is unchanged.

Version-1 bank files remain readable. Their old default duration is assigned to every populated slot, and Pastel is selected. New files containing per-slot times require this updated controller; older v23 controllers do not support the new bank format.

Loading replaces the entire bank and clears slots that are empty in the file. It validates all content before committing. Invalid files leave the current bank intact. Loading fills hidden editors and makes targets available immediately, without recalling a sound. The front-page time shows the loaded current setting until a destination is selected. A running morph keeps its private target; a cue uses the newly loaded slots for subsequent steps.

Save/load large banks between transitions: serialization and validation are synchronous. Native Max handles file operations; no Python or Node installation is needed. Files have a 256 MiB size guard and verified writes. Overwrites are not OS-atomic, so keep backups of important banks.

## Clear

`clear all` clears the bank’s sounds, independent times and hidden messages. It does not erase the current live model or delete files. A running transition retains its copied target. `morphclear A` clears only A. A delayed capture cannot repopulate a cleared or replaced slot.

## Command reference

Send these to `Synth_Control_v23`, either directly or through `command` / `control`. `Synth_Command_v23` accepts unprefixed commands. Slot letters are case-insensitive.

| Command | Action |
|---|---|
| `morphcapture A [SECONDS]` | Capture sound and time into A; omitted time uses the front-page value. |
| `morphslottime A 8` | Set A’s time without recapture. |
| `morphslot A preset …` | Stage a full sound; retain A’s existing time if set. |
| `morphseconds 8` | Set seconds for the next capture. |
| `morphto A [SECONDS]` | Transition to A using its stored time, or a one-time override. |
| `morphjump A` | Immediate A destination; retain stored seconds. |
| `morphcue A B A D C F` | Loop through the destinations and their own times. |
| `morphcue stop` | Cancel the loop and hold the sound. |
| `morphpause` / `morphresume` | Pause / continue transition or cue. |
| `morphstop` | Cancel cue/transition and hold the current state. |
| `morphfinish` | Complete this transition; a cue continues. |
| `morphcolor 0` / `morphcolor 1` | Classic / Pastel. |
| `morph 8 preset …` | Direct timed transition to a complete dump. |
| `morphdump A` | Copy A to the ordinary full-dump output. |
| `morphbank write [PATH]` / `read [PATH]` | Save / replace the complete bank. |
| `morphbank status` | Publish bank occupancy, current time and color. |
| `clear all` / `morphclear A` | Clear all slots / one slot. |
| `dump` | Capture the current sound, excluding the destination bank. |

`p Cue_Morph_v23` accepts `G`, `G 10`, `stop`, `morphjump G`, or `morphcue A B A D C F`. It sends commands internally. Its outlet is a monitor; sending that outlet back to the controller would execute the command twice.

## Readbacks

- `Synth_Status_v23`: operation and error messages.
- `Synth_Morph_progress_v23`: eased 0–1 progress; `Synth_Morph_done_v23`: completion bang.
- `Synth_Morph_seconds_state_v23`: front-page seconds, including selected destination time.
- `Synth_Morph_target_state_v23`: last selected destination letter, seconds and `seconds` label (existing time/color selection bus).
- `Synth_Morph_current_state_v23`: silent `set current morph = LETTER` for the last reached slot, or the prefix without a letter.
- `Synth_Morph_destination_state_v23`: silent `set target = LETTER` for the active/queued target, or an empty `set` when idle.
- `Synth_MorphCue_state_v23`: cue step, paused/running/stopped status.
- `Synth_Morph_color_state_v23`: 0 Classic / 1 Pastel.
- `Synth_MorphBank_state_v23`, `Synth_MorphBank_occupancy_v23`, `Synth_MorphBank_slot_state_v23`: existing bank status and occupancy.
- `Synth_MorphSlot_A_v23` … `X_v23`: passive full-dump updates.
- `Synth_MorphSlotTime_A_v23` … `X_v23`: passive `set SECONDS` editor updates.

## Verification

The current runner tests the actual JavaScript with modeled Max UI, Task, Dict and File boundaries, plus real disk roundtrips and saved patch structures. It also checks your uploaded source for the requested empty bank, preserved collections and unrelated files. Native Max GUI, scheduling, audio and dialogs still require testing in Max; follow `diagnostics/NATIVE_MAX_MORPHBANK_v23_CHECKLIST.md`.
