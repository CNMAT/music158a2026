# v20 control reference

## Interactive Automixer message space
Open `_ec_sinusoids_synth_automixer_v20.maxpat` → `p Send_Message_Space_v20` → `p "AUTOMIXER_CONTROL_v20-message space"` (lower right). All command examples are wired, and the standalone gallery contains the same panel. See `AUTOMIXER_MESSAGE_SPACE_v20.md` for the full implementation notes. The new panel does not change the existing command protocol.

## Automixer command bus
This section applies to `_ec_sinusoids_synth_automixer_v20.maxpat`.

Send the following messages to **`send Automixer_v20`**. These are direct commands, not the existing continuous CUE model's `VALUE [RAMP_MS]` protocol. The engine and main-page controls share the same command/readback path.

| Message | Effect |
|---|---|
| `mode 0` or `bypass` | Stop v5; close its gates; interpolate all new mixer gains to unity in 20 ms. |
| `mode 1` or `start` | Open the gates and start v5. Repeated start does not reset active cycles. |
| `mode 2` or `stop` | Close the gates first; stop v5; interpolate all new mixer gains to zero in 20 ms. |
| `restart` or `bang` | Engage Auto and restart every generator cycle. |
| `range 2000 10000` | Set one-leg ramp-time bounds. Values are clamped to at least 1 ms and sorted ascending. |
| `waittime 5000` | Set nonnegative hold duration, consulted at the end of a falling leg. |
| `fixedpeak 1` | Use 1.0 as every new cycle's peak target. `fixedpeak 0` restores random peaks. |
| `grain 20` | Set the integer update interval and Auto interpolation time, clamped to 1–1000 ms. |

No command above starts DSP or triggers the existing synthesis ADSRs. The automixer multiplies their outputs **after spatial routing**, so all relevant envelopes still need to be nonzero. A 20 ms interpolation follows a target update at the default grain; exact signal peaks and audible behavior require native DSP testing.

Defaults: Bypass, range 2000–10000 ms, wait 5000 ms, random peaks, grain 20 ms. The existing `ADSR_12_Lanes_Stop_v20` / All Off path stops active Auto; it does not change an already-bypassed mixer into mute. Future external score commands may restart it, so cancel the driving score when needed.

Readback buses:

| Bus | Payload |
|---|---|
| `Automixer_Mode_state_v20` | Integer 0 / 1 / 2. |
| `Automixer_Range_state_v20` | Sorted minimum and maximum milliseconds, two floats. |
| `Automixer_Wait_ms_state_v20` | Nonnegative hold milliseconds. |
| `Automixer_Fixed_Peak_state_v20` | Integer 0 / 1. |
| `Automixer_Grain_ms_state_v20` | Integer 1–1000 ms. |
| `Automixer_Levels_state_v20` | Twelve applied target gains. Unity list in Bypass, zero list in Stop, per-voice targets during Auto. Not audio-meter data. |

Remote range readback also silently updates the main-page `pak` cache. Consequently, editing only one field after a remote range command does not restore a stale value in the other field.


## Global twelve-lane authority
Send the following payload directly to a Max `send` with the named address. The corresponding copyable `p Cue_...` model forwards its messages internally; do not forward its reported outlet message a second time unintentionally.

| Address | Direct payload | Effect |
|---|---|---|
| `ADSR_12_Lanes_Global_Trigger_v20` | `bang` | Trigger every lane. |
| `ADSR_12_Lanes_Stop_v20` | `bang` | Turn loops off, cancel each current envelope and release to zero in 5 ms. |
| `ADSR_12_Lanes_Duration_ms_v20` | Float, 1-3600000 | Set the total duration of every lane, including fractional milliseconds. |
| `ADSR_12_Lanes_Shape_v20` | Integer, 0-24 | Set the shape for every lane. 0 = Flat Zero; 1 = All on full. |
| `ADSR_12_Lanes_Loop_v20` | 0 or 1 | Disable/enable looping. Trigger separately to start idle lanes. |
| `ADSR_12_Lanes_Smoothing_ms_v20` | Float, 0-600000 | Set shape-transition smoothing; startup setting is 200 ms. |

The global duration, shape, loop and smoothing readbacks insert `_state` before `_v20`, for example `ADSR_12_Lanes_Duration_ms_state_v20`. They report the last global setting; individual lane edits can subsequently differ. They are not an average or an assertion that all lane values remain equal.

The shared internal smoothing bus `ADSR_Lane_Smoothing_ms_v20` is retained as an alias and is monitored by the global smoothing display. Prefer the canonical `ADSR_12_Lanes_Smoothing_ms_v20` for new scores.

### Setting a duration is different from ramping the duration parameter
A direct `2400.5` into `send ADSR_12_Lanes_Duration_ms_v20` sets every envelope's total duration to 2400.5 ms. The CUE version accepts `VALUE [RAMP_MS]`: `2400.5 500.` interpolates the *duration setting* over 500 ms. It does not create a 500 ms envelope. `2400.5 0.` changes the setting immediately. A bare continuous CUE value uses 20 ms parameter interpolation and a 5 ms message grain.

Continuous CUE `stop` cancels that CUE copy's pending parameter ramp. The `_done_v20` completion message is emitted only when the requested parameter-ramp time is at least 150 ms; shorter ramps still execute. A trigger/stop action CUE accepts `bang`; its literal `stop` token is ignored so a score cancellation cannot inadvertently execute the action.

## Individual lane addresses
Replace `NN` below with `01` through `12` (two digits). These target only that lane; the Master editor no longer supplies implicit updates.

| Address | Payload |
|---|---|
| `ADSR_Lane_NN_Trigger_v20` | `bang` |
| `ADSR_Lane_NN_Stop_v20` | `bang` |
| `ADSR_Lane_NN_Duration_ms_v20` | Total duration, 1-3600000 ms |
| `ADSR_Lane_NN_Shape_v20` | Shape index 0-24 |
| `ADSR_Lane_NN_Loop_v20` | 0 or 1 |
| `ADSR_Lane_NN_Smoothing_ms_v20` | Shape-transition smoothing, 0-600000 ms |
| `ADSR_Lane_NN_Points_v20` | List of normalized point amplitudes |
| `ADSR_Lane_NN_Breakpoints_v20` | Breakpoint count, 3-48 |
| `ADSR_Lane_NN_Store_Index_v20` | Collection slot, 1-9999 |
| `ADSR_Lane_NN_Store_v20` | `bang` stores at the selected slot |
| `ADSR_Lane_NN_Recall_v20` | Integer slot, 1-9999, recalls that slot directly |

Each lane's stored functions use its own `ADSR_Lane_NN_User_Functions_v20` collection. Store/recall slots therefore do not share one collection across lanes. Library presets share the count-aware `ADSR_Shapes_v20` collection.

## Gain and audio buses
`Output_Gain_dB_v20` takes a direct dB value in -70 to +6 and sets the DAC gang master and all twelve DAC faders. Its readback is `Output_Gain_dB_state_v20`. Changing an individual fader is a channel trim and does not redefine the gang master's reported setting.

`sinusoids_group_01_v20` through `sinusoids_group_12_v20` are the twelve spatial-matrix outputs after the automixer and before DAC faders. `sinusoids_v20` is their post-automixer mono sum before DAC faders. A synthesis lane passes through the spatial matrix, so it is not necessarily confined to its same-numbered output group under every routing configuration.

## Legacy Master editor
`Envelope_Trigger_v20`, `Envelope_Loop_v20`, and the `ADSR_Duration_ms_v20` / `ADSR_Shape_v20` family address the retained legacy Master editor, not the twelve-lane global authority. New scores should use the global twelve-lane names above. Legacy CUEs are retained in `LEGACY_MASTER_EDITOR_CUES_v20`.

## Other retained controls
The current corpus includes signed per-partial detune, primary amplitude, harmonic-anchor amplitude, 2-256 partial count, retuning, micro-walk, weighted removal/restoration, organ stops, twelve rendering lanes and all five distribution plans. Complete literal addresses, receiving locations and copyable CUE protocols are generated from the saved patches in `controls_v20.json` and `score_models_manifest_v20.json`.

All Off clears synth memory and stops current envelopes/loops; it does not cancel arbitrary external score timers or future automation messages. Stop the driving score as well when its future messages must be cancelled.
