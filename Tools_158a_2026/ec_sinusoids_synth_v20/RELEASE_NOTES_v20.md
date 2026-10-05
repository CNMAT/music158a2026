# v20 automixer — message-space update

## Current baseline and entry point
Baseline: the existing uploaded `ec_sinusoids_synth_automixer_v20.zip`. Entry point remains `_ec_sinusoids_synth_automixer_v20.maxpat`. The input ZIP is untouched.

## Runtime files changed
1. `_ec_sinusoids_synth_automixer_v20.maxpat`: appended one heading, the embedded `p "AUTOMIXER_CONTROL_v20-message space"` and one explanatory comment inside `p Send_Message_Space_v20`.
2. `Send_Message_Space_v20.maxpat`: the same addition, keeping standalone/embedded equality.

The new panel contains 76 objects and 32 patch cords; it is embedded in both copies. It has 19 clickable command examples, complete coverage of ten accepted selectors, three complete mixing setups, v5 implementation notes, six passive readbacks and one forwarding inlet. It contains no running JS, DSP object, timer or load action. No existing gallery objects or cords were edited. All other master content is exactly preserved at the JSON-value level.

All 15 JavaScript files, 17 other Max patches and the existing help file are byte-identical to the input package. No v6 script, new runtime dependency, new audio route or command-protocol change was introduced. All 31 original collection datasets remain unchanged.

## Supporting documentation and diagnostics
README, control reference, current diagnostics, this release note, the native checklist and the checksum manifest were updated. `AUTOMIXER_MESSAGE_SPACE_v20.md`, one new regression suite and a test-only preservation helper were added. Prior release narratives are retained under `docs/history/`.

One inherited integration test was adapted for this declared additive documentation change: it removes exactly the three appended gallery objects before checking original master-object hashes. The synchronized standalone is likewise checked by its original canonical-content hash after removal of the same additions instead of by its now-changed raw file hash. Every original box and cord remains checked; the tests do not exempt the automixer or audio engine. A new independent whole-master hash comparison and source dependency byte comparisons provide additional preservation coverage. Original baseline hashes were not rewritten.

## Results and evidence
All 17 regression suites passed; 15 JavaScript syntax checks passed; 40,748 saved-graph/control assertions passed. The new message-space suite passed 3,291 assertions and exercised 19,853 selectively emulated graph messages. No native Max GUI, scheduler, DSP or audio run was performed.

Fresh evidence: `diagnostics/message_space_release/`. Preservation and example manifest: `diagnostics/automixer_message_space_manifest_v20.json`. The folders `diagnostics/release/` and `diagnostics/base_v20_release/` record prior stages and are historical. `diagnostics/message_space_changes_v20.json` records this package's file changes.

See `AUTOMIXER_MESSAGE_SPACE_v20.md` for the commands, explanations and exact patcher location.
