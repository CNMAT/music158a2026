# v20 automixer message-space update — diagnostics

**PASS: source, saved-graph, dependency, preservation and selectively emulated message checks.**

Entry point: `_ec_sinusoids_synth_automixer_v20.maxpat`.
Input: existing `ec_sinusoids_synth_automixer_v20.zip` (left unchanged).

## Current results
| Check | Result |
|---|---:|
| Max patch files checked | 19 |
| JavaScript syntax checks | 15 / 15 passed |
| Regression suites | 17 / 17 passed |
| Patcher contexts | 319 |
| Objects / patch cords | 11,499 / 9,081 |
| Structural / control assertions | 40,748 passed |
| Referenced bundled dependencies | 27, all resolve |
| Original collection datasets | All 31 preserved |
| Clickable message examples | 19 |
| Accepted selectors represented | All 10 |
| Passive readback buses | All 6 |
| New message-space assertions | 3,291 passed |
| New suite's selectively emulated messages | 19,853 |

The inherited v5-engine suite also passed its 337,124 assertions, and the inherited automixer integration suite passed 3,630 assertions. These are source/message/clock emulations, not native DSP measurements.

## Change scope and preservation
Two runtime files changed: the master and the synchronized standalone `Send_Message_Space_v20.maxpat`. Each gallery gained exactly three top-level boxes (heading, embedded message-space panel and note). The panel contains 76 objects and 32 cords. It has no DSP objects, generator instance, load action or timer.

The complete original master is compared after removal of exactly those three new gallery boxes; its original canonical content hash matches. The standalone gallery is checked the same way. Existing boxes, original gallery cords, audio routing and controller implementation are preserved. All 15 JavaScript files, 17 remaining Max patches and the help file match the input package byte-for-byte. All original collection data remains intact. Embedded/standalone gallery equality remains enforced.

An inherited hash test was adapted only to allow the declared additive gallery content. It still checks every original object and cord; an independent whole-master preservation test was added. No engine algorithm check was removed, and original source baseline hashes remain unchanged.

## New tests
Checks cover every command and alias against the controller's actual route whitelist; each example sends once; recipes send four parameter settings followed by Restart; parameter examples do not implicitly start automation; repeated Start does not reset phases; the fixed example produces a 2 s rise / 2 s fall / 1 s hold control cycle; readback displays have no command-feedback path; opening/adding the panel does not send a command; the copyable inlet forwards once; unknown commands remain rejected by the existing route.

Saved geometry checks cover new-panel bounds and non-overlap and ensure the gallery launcher does not cover existing controls. A non-native layout approximation was also visually inspected; this is not a screenshot or GUI test of Max.

## Evidence and reproduction
Current detailed results: `diagnostics/message_space_release/`.
Preservation/example manifest: `diagnostics/automixer_message_space_manifest_v20.json`.
File changes: `diagnostics/message_space_changes_v20.json`.

Run `python3 run_diagnostics_v20.py` with Python 3.10+ and Node 18+. Tests execute in a temporary copy; new results are written under `diagnostics/latest/`. Historical results for the previous integration remain under `diagnostics/release/`, explicitly not this update's run.

## Verification boundary
**Native Max execution, GUI interaction, external loading, DSP rendering, real scheduler behavior, CPU performance, physical channel mapping and audio auditioning were not performed.** The new native checklist remains to be completed. Keep `automatic_lines_v5_ed.js` and the existing dependencies with the master. This update introduces no new runtime dependencies.
