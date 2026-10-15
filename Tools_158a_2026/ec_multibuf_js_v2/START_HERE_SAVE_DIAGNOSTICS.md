# Start here — save-prompt and crash isolation

**This is a diagnostic package, not a confirmed crash fix.** The JavaScript and
hosting abstraction are byte-for-byte the same 1.0.1 files in your uploaded
`multibuf_js_v1-quits.zip`. The loader still reports `1.0.1-stability`; that is its
historical build string, not a new stability claim. Do not use this as a trusted
performance build until native Max testing identifies the remaining crash.

## What the returned files show

- The returned `_multibuf_js_v1.maxhelp` was saved by Max 9.2.0 (its JSON header).
  This identifies the save application, not necessarily every environment used.
- Your returned `.js` and loader `.maxpat` match the prior 1.0.1 package exactly.
- The returned `p runtime_buffers` contains only its callback outlet: no generated
  sample buffers were saved into the supplied abstraction. The help does not
  embed another populated copy of that abstraction.
- The help saved 86 menu sample labels and the displayed selected filename.
  Those labels are UI state, not a saved buffer registry or loaded audio.
- `p Developer Files > p COLLECTION_EXAMPLES` has an automatic
  `loadmess store 1 #0-mb-example-files` wired to `coll #0-mb-example-sets 1`, with
  `embed: 1`. Opening the help therefore writes into data configured to be saved.
  This is a credible cause of the unwanted dirty/save state. It is not proof of
  the native crash, and the actual prompt has not been reproduced here.
- No .ips, .crash, .spin, or other crash/hang report is included in the upload.

## Changes made

Only `_multibuf_js_v1.maxhelp` is edited among the executable patch files already
present. All your existing top-level object positions and colors are retained.
The engine and loader abstraction are unchanged.

The automatic collection write is removed. Both /multicoll demonstration buttons
now initialize their temporary, non-embedded set explicitly on click, before
sending the load command. The static two-file path example remains embedded.
Saved sample-menu labels are cleared in the delivered file and the display reads
`No sample selected`. This is a one-time file edit, not a startup clearing script:
if you later save a populated menu, its labels may be saved again. The loader
still does not restore samples or settings automatically.

Added:
- `01_LOADER_ONLY.maxpat`: the same loader, direct messages and print objects.
  No preview, menu, automatic coll setup, or top-level send/receive buses.
- `02_NATIVE_BUFFER_CONTROL.maxpat`: one manually loaded stock buffer~, no JS.
- This document and `tests/save_diagnostic_audit.json`.

No automatic `clean` message is used. Hiding the save prompt would not diagnose
a crash and could conceal real edits that the user needs to save.

## Installation

Save unrelated work and fully quit Max. Keep the previous package as a backup
outside Max's active search paths. Use this folder in its place; do not leave
several active copies of `multibuf_js_v1.js` / `multibuf_js_v1.maxpat` accessible.
Do not recompile the script inside a populated running loader. Do not install
new external packages or change Max preferences for this test.

## First test — use 01_LOADER_ONLY.maxpat

Keep audio OFF; open only one test/help at a time. Stop at the first failure.

A. Open, do not touch any controls, and close. Record whether there is a save
prompt and whether Max exits normally. Nothing in this test intentionally edits
patch data at startup.

B. Reopen and click `/folder ./test_samples`. On the first load, wait for the
status `done 1 4 0 0 0`. Move the marked comment, save the TOP-LEVEL test patch,
then close it without /clear. A save prompt after a deliberate edit is normal;
the test is whether saving and closing succeed.

C. Reopen that saved test and close without loading or editing anything.
The sample buffers are session-only; saving the test does not make a preset.

If A–C pass, try a small selection of your sounds and repeat. Then test the
revised help. Passing a small test does not establish that a large folder is safe.
Do not close the patch while a native file read is unresolved in this first test.

If the minimal loader crashes, `02_NATIVE_BUFFER_CONTROL.maxpat` can provide a
separate comparison using one file. It is optional; the crash report is more
important than repeatedly provoking the crash.

## Evidence to return

Attach the latest Max .ips crash report and identify which test/step failed.
Apple's Console app lists these in **Crash Reports**. Select the Max report and
use **File > Reveal in Finder** (or the equivalent reveal command). A .spin
report is useful for a sustained hang. You may redact your username and personal
path components, while retaining thread stacks and app/system version fields.
The Max Console's last `loading` / `loaded` / `done` lines are helpful, but a last
filename alone does not prove a corrupt sample.

## What is not established

Neither the startup coll write nor the saved menu labels establishes the cause
of Max's native crash. Possible code paths cannot be ranked reliably without a
native report or a narrower runtime reproduction. No new unsafe-operation claim
is made about Buffer.freepeer, Task.freepeer, or native buffer renaming: these are
not removed speculatively in this package. Previous mock-API tests are historical
control-logic tests, not proof that native save/close operations are safe.

## Validation here

JSON parsing, unique IDs, patch-cord endpoint and port bounds, collection-example
trigger ordering, no help startup loadmess, retained send/receive colors, and
byte equality of the engine/host are checked. Max itself is not installed here;
no live save/close, native decoder, DSP, or crash test was performed.

## Primary reference material

The code observations above come from the uploaded archive, not web substitutes.
These references explain the related Max and macOS mechanisms:

- coll embed: https://docs.cycling74.com/reference/coll/
- Native patcher scripting: https://docs.cycling74.com/apiref/js/patcher/
- clean/dirty: https://docs.cycling74.com/reference/thispatcher/
- JS lifetime callback: https://docs.cycling74.com/apiref/js/jsthis/#notifydeleted
- Buffer JS companion: https://docs.cycling74.com/apiref/js/buffer/
- Apple Console reports: https://support.apple.com/guide/console/cnsl664be99a/mac
- Reveal a report: https://support.apple.com/guide/console/cnsl9361/mac
