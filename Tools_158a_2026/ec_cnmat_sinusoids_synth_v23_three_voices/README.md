# CNMAT sinusoids v23 — three independent synths

Adds MORPHBANK 3 VOICES to the working shared-DAC revision. It contains 24 numbered slots, each holding three independent full-state snapshots. The shared `adstatus` switching and corrected twelve-channel output paths are preserved.

## Open

Extract the entire folder and open **`_ec_sinusoids_synth_v23_three_voices.maxpat`** at its top level. This starter registers the `patchers/` and `javascript/` folders, opens the complete instrument, then closes itself.

The editable instrument is **`patchers/_ec_sinusoids_synth_v23_three_voices_main.maxpat`**. Save that window to preserve edits and captured sounds. Keep the package folders together. A compatible installed CNMAT `sinusoids~` external is required, as in the supplied v23 package.

There are three full copies of the original instrument on one canvas: **Voice 1 at left, Voice 2 to its right, Voice 3 farther right**. Scroll horizontally to reach them and vertically for the full MorphBank. The original presentation layout is preserved within each voice, with a voice/address/MIDI header above it. Patching view also contains three complete editable copies, arranged horizontally.

## Independent controls and addressing

| Voice | Main control bus | Command bus | Default MIDI channel |
|---|---|---|---|
| 1 | `V1_Synth_Control_v23` | `V1_Synth_Command_v23` | 1 |
| 2 | `V2_Synth_Control_v23` | `V2_Synth_Command_v23` | 2 |
| 3 | `V3_Synth_Control_v23` | `V3_Synth_Command_v23` | 3 |

Every original named send, receive, forward, audio bus and named coll has the corresponding `V1_`, `V2_` or `V3_` prefix. The scripting names, JS dependencies, abstraction dependencies and temporary preset-transfer dictionaries are separate as well. The unprefixed single-synth v23 buses do not control these voices.

Examples for **Voice 2**:

```text
[220.]                 -> [send V2_Source_Base_Hz_v23]
[bang]                 -> [send V2_ADSR_12_Lanes_Global_Trigger_v23]
[control Micro_On 1]   -> [send V2_Synth_Control_v23]
[morphto B 5]          -> [send V2_Synth_Command_v23]
[morphcue A B A C]     -> [send V2_Synth_Command_v23]
[gain 0.5]             -> [send V2_Synth_Command_v23]
```

Replace `V2_` with `V1_` or `V3_` for the other instruments. Full bus names and counts are recorded in `diagnostics/three_voice_manifest.json`.

Each voice retains its own 12 ADSR lanes, spectral controls, partial distribution, retuning, drift, automixer, gains, preset state, A–X MorphBank, morph transport and current/target readouts. Each bank preserves the saved slot contents and times in the supplied package. Existing v23 sound and MorphBank formats remain compatible; canonical preset keys have been preserved.

Each voice proposes a different bank filename when saving: `V1_CNMAT_Sinusoids_MorphBank_v23.json`, `V2_CNMAT_Sinusoids_MorphBank_v23.json`, and `V3_CNMAT_Sinusoids_MorphBank_v23.json`.

## MORPHBANK 3 VOICES

Scroll down **below the three synths** to the new **MORPHBANK 3 VOICES** panel, beneath Voice 1. The 24 buttons are `morphto3voices 1` through `morphto3voices 24`. The new bank starts empty; the saved individual A–X banks are preserved.

1. Set up the three sounds independently.
2. Select a slot from 1–24, set **Capture seconds**, and click `morphcapture3voices N`.
3. Change any or all of the sounds, then click that slot's `morphto3voices N` button. All three voices morph to their respective captured states using the same clock and easing curve.

Each numbered slot stores **three full preset messages**, one for each voice, plus a common duration. These are snapshots of the current sounds, not references to the voices' letter slots and not copies of the entire A–X banks. Recapturing or clearing an individual letter slot does not alter a stored three-voice slot. Global capture, recall, clear, and file loading leave all three A–X banks intact.

| Command | Action |
|---|---|
| `morphcapture3voices 1` | Capture all three current sounds into slot 1, with the displayed capture seconds. |
| `morphcapture3voices 1 20.` | Capture slot 1 and store a 20-second duration. |
| `morphto3voices 1` | Morph all three sounds using slot 1's stored duration. |
| `morphto3voices 1 5.` | Morph to slot 1 over five seconds for this transition. |
| `morphjump3voices 1` | Apply all three snapshots with zero morph time. |
| `morphseconds3voices 10.` | Set the duration used for subsequent captures. |
| `morphslottime3voices 1 12.` | Change slot 1's saved duration without changing its snapshots. |
| `morphpause3voices` / `morphresume3voices` | Pause/resume the shared transition or cue. |
| `morphstop3voices` | Stop the shared transition/cue and hold the current sounds. |
| `morphfinish3voices` | Complete the shared transition. |
| `morphcue3voices 1 2 24` | Repeat these slots using each destination's saved duration. |
| `morphclear3voices 1` / `morphclear3voices all` | Clear numbered bank storage; do not mute the instruments. |
| `morphbank3voices write` / `morphbank3voices read` | Save/load the whole numbered bank with native file dialogs. |

Send these messages to **`send G3_Synth_Command_v23`** for external control. A quoted file-path symbol may follow `morphbank3voices write` or `read` to bypass the dialog. The default save filename is `CNMAT_Sinusoids_MorphBank_3voices_v23.json`. This triple-bank file format is separate from the existing single-voice bank format.

**Individual voice commands are explicit:** `morphcaptureV1 A`, `morphcaptureV2 A`, `morphcaptureV3 A`, and `morphtoV1 A`, `morphtoV2 A`, `morphtoV3 A`. Each accepts its own optional duration in seconds. Send them through `G3_Synth_Command_v23`, which routes them to the named voice, or to the matching voice's existing command/control bus. The visible individual capture messages and 24 destination buttons now show these qualified names. Original `morphcapture A` and `morphto A` commands still work on a voice's own addressed bus.

Capture commits a numbered slot only after all three full snapshots arrive. For a shared morph, all three targets are validated first; the shared clock waits until every voice is ready, including any existing partial-count or offset fade. Pause and stop use the three-voice controls above. Starting a separate individual morph during a shared morph ends the group transition and holds the other voices; the selected voice continues its individual action.

Open **`p MORPHBANK_3voices`** to inspect the storage. Each numbered subpatch contains separate VOICE 1, VOICE 2, and VOICE 3 full-preset message boxes. **Save the main instrument patch** after captures to preserve these embedded messages, or write a separate bank JSON file. Reopening restores bank storage without recalling a sound. Presets capture control/engine/envelope settings, not sample-accurate oscillator or envelope playback phase; use the voice triggers as usual.

## MIDI and audio

The **`allvoicesoff`** button beside **VOICE 1 | 12 CHANNELS** switches the shared Max DSP engine off and synchronizes all three DAC toggles to OFF. The same `allvoicesoff` message is accepted by `send G3_Synth_Command_v23`. Turn any DAC toggle ON to resume audio.

The **MIDI INPUT** menu still selects the device. **MIDI CH** in the voice header selects channel 1–16. Defaults are 1, 2 and 3 so one incoming channel does not play all three. Each on-screen keyboard controls only its own voice. The MIDI channel can also be sent directly to `Vn_MIDI_Channel_v23`, or as `control MIDI_Channel N` to that voice's main control bus. MIDI selection is an input setting, not a captured sound-preset parameter.

The three **DAC~ on/off** toggles now control the same Max audio engine. Switching any one ON or OFF updates all three toggles and their status displays. Each voice has an `adstatus switch`; its numeric outlet updates the toggle with a silent `set` message. A `dspstate~` notification and a deferred startup query also refresh the displayed state when audio changes elsewhere in Max. Opening the patch reads the existing DSP state without forcing it off.

The extra local output gates from the first three-voice version have been removed. Those gates could keep voices 2 and 3 silent after voice 1 started the shared DSP. The original twelve output paths, group sends and mono sends now run whenever DSP is on, subject to each voice's own gain and ADSR. Raise the appropriate master gain and trigger that voice's envelopes to hear it. To silence only one voice, use its own gain or envelope controls.

The voice-addressed `V1_Audio_On_v23`, `V2_Audio_On_v23` and `V3_Audio_On_v23` commands also control this shared DSP switch. Their corresponding state buses report the actual global DSP state. Other synth messages, presets and sound controls remain independent.

Each voice has its own **`dac~ 1 2 3 4 5 6 7 8 9 10 11 12`**, with its original channel faders. Because all three DACs address channels 1–12, their signals sum at those same hardware outputs. The patch has three independent 12-channel signal paths; it does not request 36 different hardware channels.

For separate external routing, use `receive~ V1_sinusoids_group_01_v23` through `receive~ V1_sinusoids_group_12_v23`, and the equivalent `V2_`/`V3_` names. Mono sends are `V1_sinusoids_v23`, `V2_sinusoids_v23`, and `V3_sinusoids_v23`. These sends retain their original pre-DAC-fader placement.

Max's audio device, sample rate and engine are application-wide. The Audio Status window and any of the three DAC toggles can stop the whole engine. Running three copies uses more CPU than one.

Open only one instance of this three-voice master at a time, since the explicit `V1_`/`V2_`/`V3_` addresses identify this set of voices.

## Tutorials

`sinusoids_synth_TUTORIAL/` contains three addressed copies of the original lessons. Open `V1_00_START_TUTORIAL.maxpat`, `V2_00_START_TUTORIAL.maxpat`, or `V3_00_START_TUTORIAL.maxpat` to direct tutorial actions to that voice. Matching prefixed guides are included. The supplied example MorphBank is in `sinusoids_synth_morphbanks/`.

## Validation

The structural audit checks patchcord endpoints and inlet/outlet ranges, scripting-name uniqueness, dependency resolution, all three preset manifests, separate bus sets, original control positions, three DACs, synchronized DSP readback, ungated output routing and distinct MIDI channel defaults. Actual JavaScript regressions test full-state preset recall, morphs, cue loops, current/target displays and simultaneous voice isolation against modeled native Max objects.

The switch/routing regression checks toggling each voice in both directions, external DSP changes, startup with DSP already on or off, silent readback without feedback, and all 36 audio feeds. The three-voice MorphBank integration test runs the actual coordinator, all three controllers, and 75 engine instances. It covers atomic capture, shared timing and transport, individual bank isolation, stored messages, file validation, and numeric cues.

```sh
python3 diagnostics/audit_three_voice_structure.py
python3 diagnostics/test_shared_dac_sync.py
node diagnostics/test_morphbank_3voices.cjs
python3 diagnostics/run_three_voice_tests.py
```

All ten existing JavaScript suites passed for the preceding MORPHBANK 3 VOICES revision; those results are retained. The allvoicesoff addition was checked through its actual JavaScript handler and the saved DAC graph, including repeated OFF commands, all three synchronized readouts, placement, and preservation of the preceding patch. Results and logs are in `diagnostics/`.

Native Max GUI execution and audio audition were not available in this environment. The automated checks validate saved patch structure and actual JavaScript under a simulated Max object/Task/Dict boundary.

For a first check in Max: turn on any DAC toggle and confirm all three show ON. Raise Voice 2's master gain and trigger its ADSR, then repeat for Voice 3. Switch any DAC toggle OFF and confirm all three show OFF. Enable DSP from the Audio Status window and confirm all three update again. Changes to pitch, gain, envelopes and MorphBanks should remain independent.
