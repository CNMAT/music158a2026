# ec_sinusoids_synth v20
## Entry point
Open **`_ec_sinusoids_synth_v20.maxpat`** from this extracted folder. Keep the accompanying `.js` and `.maxpat` files together. The original uploaded v19 package was not modified.

This is a structural repair and namespace-isolation release, not a redesign of the synthesis engine. All project JavaScript filenames, JS/JSUI references, abstractions, named collections, control sends/receives, CUE messages and signal buses now use v20. Native Max object names and the third-party `sinusoids~` API remain unchanged.

## Before enabling audio
Use your existing compatible Max installation and installed CNMAT `sinusoids~`. The external binary was not present in the uploaded source and is not bundled here. Open one v20 master patch, inspect the Max Console, confirm your audio interface and channel mapping, and raise levels gradually. The DAC gang master and its twelve channel faders initialize at -70 dB. No new automatic DSP-on action was added.

**Named group buses and the mono FX send remain PRE-DAC-FADER.** `Output_Gain_dB_v20` controls the twelve hardware-output faders, not the level of those named buses. Apply gain explicitly in receiving FX/spatial patches.

Keep only one master/editor instance of this v20 instrument active. v20 buses are distinct from v19, but two copies of v20 share the same named buses and lane stores. The standalone lane panel is a synchronized reference/alternative editor; do not open it alongside the master unless duplicate receivers are intentional. Max's global DSP switch is not made instance-local by renaming project buses.

## Repairs
* Envelope editor N now reaches synthesis lane N for all twelve lanes. The renderer's first inlet is the tagged model; its remaining inlets are envelopes 01-12.
* Spatial matrix output N reaches named group N and hardware-output fader N. Both sides of the routing subpatch were corrected together so the sequential DAC path is retained.
* `Output_Gain_dB_v20` now reaches the existing DAC gang master, all twelve output faders and its state readback.
* The twelve-lane panel is the envelope authority. Legacy Master shape, point and duration broadcasts no longer overwrite independent lanes. The retained Master editor and its stored functions have their own legacy trigger.
* Global trigger, duration, shape, loop and smoothing controls pass through the panel UI/state paths. Global Stop disables loops before cancelling and releasing the twelve envelopes. Deferred loop completions are checked after deferral to prevent a queued completion bypassing a later stop.
* All Off reaches the same Stop authority even when called from a workspace/memory command; it also clears all three 256-slot banks and turns legacy Master looping off.
* Embedded and standalone lane panels/message galleries are synchronized. The latest embedded score material is retained, and standalone-only legacy Master CUEs remain in a separate category.
* Thirteen collection headers now correctly declare 1150 records rather than 1104. All 31 original embedded collection datasets retain exactly the same record content.

## Controls and examples
Open `Send_Message_Space_v20.maxpat` or the embedded message space. The **GLOBAL_ADSR_12_LANES_CUES_v20** entry is at the top. Its six models demonstrate the canonical controls. `Example_Timed_Score_v20.maxpat` now addresses the twelve-lane authority, including feedback and completion messages.

The detailed control reference is `CONTROL_REFERENCE_v20.md`; the generated bus/CUE registry is `controls_v20.json`. The preexisting micro-walk and organ-stop research notes are retained. Older documentation and stale test reports are segregated under `docs/history/` and are not release validation.

## Diagnostics and limits
The release results are in `diagnostics/release/`; a readable summary is `DIAGNOSTICS_v20.md`.

Run the checks again with Python 3.10+ and Node 18+:

```sh
python3 run_diagnostics_v20.py
```

Tests execute in a temporary copy. New results go to `diagnostics/latest/`; the playable patches are not edited. `verify_score_models_v20.py` invokes the same current runner. Python and Node are for diagnostics only; they are not added performance-time dependencies.

**Native Max was not run here.** These checks cover saved patch structure, semantic routing, namespaces, dependencies, preset preservation, JavaScript source behavior and selected Max-message graph emulations. They do not verify native scheduler behavior, GUI interaction, external loading, DSP sound, CPU use or your physical audio channels. Complete `NATIVE_MAX_CHECKLIST_v20.md` in Max before rehearsal/performance.
