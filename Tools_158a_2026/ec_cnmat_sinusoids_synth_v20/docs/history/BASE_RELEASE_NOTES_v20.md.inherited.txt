# v20 repair release — October 3, 2026

Source: the uploaded `ec_sinusoids_synth_v19.zip`, main `_ec_sinusoids_synth_v19-6.maxpat`.
New entry point: `_ec_sinusoids_synth_v20.maxpat`.

The production changes are detailed in README_v20.md and diagnostics/repair_changes_v20.json. The uploaded source archive is unchanged. The file-rename provenance is in diagnostics/rename_manifest_v20.json. Third-party object names were retained; the project namespace was changed rather than creating aliases back to the old version.

## Files changed beyond the master
Every project `.js` and `.maxpat` filename/reference was migrated. Functional graph repairs also affect all twelve ADSR_Lane_NN abstractions, ADSR_LANE_PANEL, Send_Message_Space, Example_Timed_Score and the active multislider interpolation engine's All Off handler. Envelope-Shaper_01 has corrected library-count metadata. The standalone panel/gallery now mirror the latest embedded versions. Library records, Master user functions and synthesis formulas were not rewritten.

The active memory engine remains `multislider_interpolation_engine_v20_add_restore.js`. Legacy alternative helper sources remain bundled, not substituted for the active engine.

## Expected behavioral differences
Editors and named spatial buses now use their labeled lane numbers. The legacy Master no longer automatically overwrites independent lane shapes/durations or triggers them. Use the canonical twelve-lane CUEs for global envelope control. Output_Gain_dB now has an effective DAC control path; named FX buses intentionally remain pre-fader. All Off now reliably disables lane/Master loops even when invoked through workspace commands.

## Test migration
Some inherited tests referred to missing filenames, older shape indices, obsolete graph IDs, a retired baseline snapshot, or outdated random-walk/retuning assumptions. These tests were migrated to the current source contract and supplemented by independent structural, routing and preset-preservation checks. Their migration rationale is recorded in diagnostics/test_migrations_v20.json. Historical reports were not presented as fresh passes.

## Execution boundary
Automated verification ran in Linux using Python and Node with explicitly modeled Max messages, clocks and selected native objects. No native Max or audio hardware was run. See DIAGNOSTICS_v20.md and NATIVE_MAX_CHECKLIST_v20.md.
