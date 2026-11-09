# v23 — current/target displays and empty saved bank

## Changes in this follow-up

Based on the last delivered full `ec_cnmat_sinusoids_synth_v23_updated.zip`. Only two runtime files changed in this follow-up: `javascript/synth_controller_v23.js` and `patchers/_ec_sinusoids_synth_v23_main.maxpat`. The starter filename and dependency structure remain unchanged.

Two passive message boxes are below morphstop/morphfinish. The left records the last successfully reached named destination. The right derives its value from the pending/running transition, or the next queued cue step. At arrival the current letter updates; with no cue the target clears, while a cue advances it to the next letter. Pause retains the target; Stop clears it without claiming an incomplete arrival. Jump posts an immediate arrival. Untagged full-preset transitions have no named slot.

All 24 saved MorphBank dump messages are intentionally empty, including the previous A–F captures, as requested. Saved occupancy and current/target displays are reset. The live synth settings, ordinary preset system and sound files are unchanged. No forced startup clear was added: users can save later captures in their Max patch or bank file normally.

## Validation

| Check | Result |
|---|---:|
| Automated JavaScript regression suites | 32 / 32 passed |
| New state/readout assertions | 1,228 passed |
| Structural/dependency assertions | 38,323 passed |
| Saved patchcords inspected | 12,503; declared ports valid |
| Runtime script syntax checks | 23 passed |
| Unrelated runtime/tutorial files against original uploaded baseline | 59 byte-identical |
| Saved MorphBank slots | 24 empty |

The new suite covers startup labels, standalone arrival, jump, zero-time jump, pause/resume, Stop, finish, retargeting, invalid destinations, repeated cue letters, wraparound, the queued interval between steps, zero-time cues, preparation waits, unnamed presets, passive SET wiring and presentation overlap. Existing morph, file persistence, keyboard, range/randomization and audio-path model tests also pass.

Saved presentation rectangles were rendered for layout review. The new readouts and moved progress display have no overlaps. This is a schematic check, not native Max execution.

## Preservation and reports

`audit_morphbank_rev2_v23.py` still checks the original uploaded package with declared differences. Its rules now explicitly permit and require the user-requested empty slot messages; collection data and other undeclared patch contents remain protected. It reports source-captured A–F separately from the now-empty saved bank. This follow-up also compared the last delivered runtime files and confirmed only the main patch and controller changed.

Current results are `V23_TEST_RESULTS.json`, `MORPH_STATUS_RESULTS_v23.json`, `V23_STRUCTURE_RESULTS.json`, `MORPHBANK_REV2_PRESERVATION_RESULTS_v23.json`, and `v23_regression_logs/`. Earlier reports under `previous_reports/` describe earlier versions and may report preserved A–F captures. Earlier preservation scripts remain historical; use the current runner:

```sh
python3 -B diagnostics/run_diagnostics_v23.py
```

Native Max loading, GUI interaction, actual scheduler timing, dialogs and audio have not been tested here. See `NATIVE_MAX_MORPHBANK_v23_CHECKLIST.md`. The JavaScript tests execute the real scripts with modeled native boundaries; file tests use real disk files through a modeled Max File adapter.
