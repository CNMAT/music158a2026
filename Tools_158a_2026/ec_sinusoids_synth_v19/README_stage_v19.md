> Current detune behavior, ranges and messages are documented in README_v19.md. The reference below is inherited; detune descriptions are superseded.

# v19 — score-message models

Open `_ec_sinusoids_synth_stage_v19.maxpat` with its sibling dependencies. Double-click `p Send_Message_Space_v19` on the main page. The same gallery is also supplied as `Send_Message_Space_v19.maxpat`.

The gallery now teaches how to build a separate score. It contains simple messaging recipes, 81 self-contained cue modules organized by category, a complete timed-score example, and your existing hands-on interface under `p Live_Controls_v19`.

## Copy a cue into a score

1. Open a category in Send_Message_Space. Use normal patching view so you can see connections.
2. Unlock the patch. Select the whole `p Cue_…_v19` object and copy it. You can also copy its adjacent example message and connecting cord.
3. Paste into a new patcher. The cue contains its line, name formatting, forwarding and necessary readback. It requires no cords or helper objects from the gallery.
4. Connect a timed source to its inlet. For example, a bang through `delay 1000` can trigger the message `110. 500.` into `p Cue_Source_Base_Hz_v19`.
5. Keep the v19 synthesis engine open. The cue's optional outlet reports the named command for logging; its internal forward already sends it to the engine.

Double-click a cue to study its implementation. A display shows the last named message actually emitted. Cue modules have no loadbang: pasting or opening them does not start a score.

## Input protocols

| Cue type | Example input | Meaning |
| --- | --- | --- |
| Continuous scalar | `110. 500.` | Ramp to 110 in 500 ms. |
| Continuous scalar, default ramp | `110.` | Ramp to 110 in 20 ms. |
| Continuous scalar, immediate | `110. 0.` | Set 110 immediately. |
| Integer/menu/toggle/seed | `7` | Send one discrete value; no ramp through intermediate choices. |
| Action | `bang` | Execute once. |
| Individual partial | `3 0.5 250.` | Ramp partial 3's value to 0.5 in 250 ms. |
| Individual partial, default ramp | `3 0.5` | Same target with 20 ms ramp. |
| Octave family | `3 1` | Enable family 3/6/12/24…; `3 0` disables. |
| Values list | `0. 0.5 1. …` | Send the full list; see length and engine-morph rules below. |
| Cancel cue ramp | `stop` | Stop this copied cue's line; discrete cues ignore it. |

The ramp duration belongs to the **cue inlet**, not to the engine's scalar receive object. For example, the cue accepts `110. 500.` but sends `110.` to `receive Source_Base_Hz_v19` as its final numeric payload. Its named monitor/outlet reports `Source_Base_Hz_v19 110.`. The named-message recipe strips the name before forwarding the payload.

## Timing and cancellation

`p Example_Timed_Score_v19` is a self-contained 4.5-second example, also supplied as a standalone patch. Its first inlet starts/restarts; its second inlet cancels. The visible START and STOP buttons do the same. Start cancels the previous run before scheduling fresh offsets. Stop sends `stop` to all delays and cue modules, cancelling pending events and active cue lines.

Stop does not turn off DSP, silence an envelope already playing, or stop the engine's independent retuning/shape morphs. The separate ALL OFF button clears synthesis banks. The example explicitly sets Retune_ms to 0 so the score cue controls the pitch-ramp duration, sets a short amplitude-shape morph, disables envelope looping, selects a triangle envelope, triggers it twice, and clears the banks at 4500 ms. It never enables DSP or changes output gain; use the existing engine controls before auditioning. These score settings remain after the example ends.

Continuous cues use native `line` with 5 ms grain. Engine readback seeds a scalar cue's start when available. Indexed cues synchronously query the current partial value, including hidden slots, and gate replies to that copy's query. This prevents another copy's query from resetting an active line. Normal overlapping writes to the same parameter still compete: use one active writer per variable or explicitly stop the old cue first.

The receive names are shared among open v19 instances; this is not an instance-isolated instrument. Use one v19 engine for a score. No v14 receivers are addressed.

For layer lists, send exactly the current visible partial count. These lists use the engine's existing Drift/Amplitude/Anchor_Morph_ms settings; they are not ramped by a scalar cue. Envelope point lists retain the supplied shaper behavior; use a matching breakpoint count and 0–1 values. Timing values are milliseconds. Float controls are not universally truncated; envelope output retains the supplied hundredths truncation.

## Files and checks

- `CONTROL_REFERENCE_v19.md`: every destination, type, bounds and example, plus shape and registration indices.
- `CHANGES_score_models_v19.md`: exact scope, preservation record, tests and Max checklist.
- `test_results_v19.json`: existing and new automated checks.
- `verify_score_models_v19.py`: portable preservation, dependency, graph and layout checks.

The source is the latest supplied `ec_sinusoids_synth_v19.zip`. Original synthesis dependencies and live views are preserved. Keep CNMAT `sinusoids~` installed as in your existing setup.

## Twelve-lane ADSR layer

The renderer now connects its incoming tagged model to `Partial_Group_Manager_v19.js`, then re-emits the stored transformed model 500 ms after loading as a startup-order safeguard. Each permanent `sinusoids~` lane is multiplied by its own `line~` envelope before the 12×12 spatial matrix.

Use the `ADSR_LANE_PANEL_v19` section below the original controls in the main Presentation canvas. It shows all twelve lane editors together. The Master ADSR's breakpoint values and duration copy to every lane; a later lane edit remains independent until the Master changes again. In patching mode, the lane panel is exterior to `SINUSOIDS_AUDIO_RENDERING`, which keeps editing separate from oscillator and matrix wiring.

Each lane has a separate embedded user-function memory named `ADSR_Lane_NN_User_Functions_v19`. Public lane addresses follow this pattern:

- `ADSR_Lane_NN_Breakpoints_v19`
- `ADSR_Lane_NN_Duration_ms_v19`
- `ADSR_Lane_NN_Shape_v19`
- `ADSR_Lane_NN_Points_v19`
- `ADSR_Lane_NN_Store_Index_v19`
- `ADSR_Lane_NN_Store_v19`
- `ADSR_Lane_NN_Recall_v19`
- `ADSR_Lane_NN_Emit_v19`
- `ADSR_Lane_NN_Trigger_v19`
- `ADSR_Lane_NN_Loop_v19`

Replace `NN` with `01` through `12`. For example, `ADSR_Lane_03_Recall_v19 2` recalls entry 2 only in lane 3. `Envelope_Trigger_v19 bang` triggers all twelve current lane functions together.
