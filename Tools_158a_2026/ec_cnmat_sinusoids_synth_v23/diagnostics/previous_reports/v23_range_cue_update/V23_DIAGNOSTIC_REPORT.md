# v23 update — current diagnostic report

## Source and scope

Built from the current user-uploaded `ec_cnmat_sinusoids_synth_v23.zip`. The supplied A–F captures are retained. This update keeps v23 filenames, dependency paths and buses.

Four existing runtime scripts changed: the full-state controller, random generator, partial-memory interpolation engine and partial-view helper. Four existing Max documents changed: the main patch and the three existing Morph/Cue/message-space help patches. One display-only helper was added: `morphbank_display_v23.js`.

The changes implement displayed-range randomization for Detune/Anchor, eased timed morphs, immediate jumps, repeating cues, independent captured seconds, bank-format compatibility, and a Classic/Pastel color option. The existing descriptive range-button label is also recognized as a command.

## Preservation

The audit compares against the uploaded archive. 59 unrelated runtime/tutorial files are byte-identical, including the starter. Four edited Max documents are compared by canonical projections that allow only declared UI additions, text/style changes and necessary new/rerouted wires. All other existing objects, wires and their order fields remain unchanged.

All 24 hidden full-dump messages are preserved, including the populated A–F messages. All 8 embedded collection datasets in the main patch are unchanged; other collection-bearing files are preserved by their full-file hashes. The preset manifest and sound-preset schema are unchanged. New slot times are separate bank metadata.

Bank files now use version 2 for independent times and colors. Version-1 banks are migrated using their stored default time. New banks require this updated controller; legacy controllers cannot read the new metadata format.

## Executed results

| Check | Result |
|---|---:|
| Regression suites | 31 / 31 passed |
| New MorphBank timing/jump/cue/color assertions | 2,112 passed |
| New displayed-range randomization assertions | 1,897 passed |
| Existing bank/disk assertions, extended for stored times | 3,228 passed |
| Saved graph and dependency assertions | 38,323 passed |
| Saved patchcords inspected | 12,503; all endpoints within declared ports |
| Runtime JavaScript syntax checks | 23 passed |
| Max documents inspected | 40 |
| Bundled dependencies found | 33 |

The tests execute actual controller and engine JavaScript with modeled Max UI/Task/Dict boundaries. Bank tests use actual temporary disk files behind a modeled Max File adapter. They verify 24 independent times survive saving/reloading, exact sound roundtrips, malformed-file rejection and legacy migration. New tests cover the eased curve, exact remaining time after pause, immediate jumps during count fades and pending waits, repeated cue letters, looping, interruption, empty-slot/fault handling, zero-time yielding, passive color changes and range/hidden-memory preservation.

Two inherited tests assumed an older patch layout. Their models now follow the supplied keyboard path through the existing note-number box and the supplied longer range-button label. No keyboard runtime wiring was changed. The range helper gained the descriptive-label alias; affected view/audio-zoom tests were rerun after that fix.

New front-page controls were reviewed in a schematic render from saved presentation rectangles, and checked for overlap. This was not a native Max screenshot.

## Reports and rerun

- `V23_TEST_RESULTS.json` and `v23_regression_logs/`: current suite results.
- `MORPHBANK_REV2_TEST_RESULTS_v23.json`: timing, jump, cue, color and persistence tests.
- `RANDOM_VIEW_RANGE_RESULTS_v23.json`: scoped randomization tests.
- `MORPHBANK_TEST_RESULTS_v23.json`: original bank suite plus independent-time disk roundtrips.
- `MORPHBANK_REV2_PRESERVATION_RESULTS_v23.json` and `MORPHBANK_REV2_BASELINE_v23.json`: uploaded-source checks.
- `V23_STRUCTURE_RESULTS.json`: current graph/dependency checks.
- `previous_reports/v23_morphbank_initial/`: the preceding bank-upgrade evidence.

The older `audit_preservation_v23.py` and `audit_morphbank_v23.py` describe historical versions and intentionally require the old transition core. The current runner uses `audit_morphbank_rev2_v23.py` instead. Earlier named audit-result JSON files are historical; use the REV2 reports for this update.

```sh
python3 -B diagnostics/run_diagnostics_v23.py
```

Python and Node.js are only test tools. Operating the synth requires Max and the installed CNMAT external.

## Native boundary

Native Max loading, GUI interaction, OS dialogs, actual Task scheduling and audio auditioning were not performed here. Automated success does not establish audible quality or native compatibility. Follow `NATIVE_MAX_MORPHBANK_v23_CHECKLIST.md` to test the changes in Max.
