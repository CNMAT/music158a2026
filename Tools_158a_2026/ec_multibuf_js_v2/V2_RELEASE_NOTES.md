# multibuf_js_v2 — 2.0.0

## Scope

Built from the user's supplied `multibuf_js_v1_save_diagnostics(1).zip`. This is the complete software package, not a stripped-down diagnostic loader. No loading algorithm, public command, setting default, public sample-buffer naming rule, outlet convention, or lifecycle behavior was changed.

## Version-specific files

- `multibuf_js_v2.js`: public module identification and build number updated to `2.0.0`; private owner prefix changed to `mbv2_`. Existing cleanup and read-timeout safeguards remain.
- `multibuf_js_v2.maxpat`: points to `js multibuf_js_v2.js #0`. Its inlets, outlets, runtime_buffers host, shutdown connection, patch cords, object positions, and styling remain unchanged.
- `_multibuf_js_v2.maxhelp`: the same help patch from the attachment. Only module/version references and the existing version/documentation notes are updated. No controls, subpatchers, patch cords, sample lists, object positions, window sizes, colors, or example initialization behavior are changed.
- `01_LOADER_ONLY.maxpat`: points to v2 and labels that version. Its diagnostic behavior and layout are unchanged.
- `tests/test_loader.js`: reads the v2 script and expects `version multibuf_js_v2 2.0.0`. All existing control-logic tests are retained.
- `README.md` and `QUICK_START.txt`: identify v2 and direct normal use to the unchanged-layout help patch. The quick start no longer directs every user to diagnostic-only testing.
- Test results, a preservation audit, and current checksums are regenerated for v2.

`02_NATIVE_BUFFER_CONTROL.maxpat`, all audio fixtures, historical test results, and historical diagnostic notes remain byte-for-byte unchanged. Historical v1 filenames in those notes refer to the versions reviewed at the time, not required v2 dependencies. Apple resource-fork metadata (`__MACOSX` / `._*`) is not included in the release ZIP.

## Preserved help structure

The user-oriented `p MESSAGE_REFERENCE`, secondary/tertiary `p Developer Messages`, and `p Developer Files` are retained. `p COLLECTION_EXAMPLES`, `p IN_MAX_SMOKE_TESTS`, and `p STARTUP_AND_CLOSE_CHECKS` remain inside Developer Files. Send/receive backgrounds retain `0.063 0.012 0.871 1.000` and white text. The `#0-mb-command` message names have not been changed.

## Cross-version buffer names

The internal `Global` identifier remains `multibuf_js_v1_name_claims` intentionally. It allows existing v1 and v2 instances to coordinate in-flight buffer-name reservations. It is not a filename and does not require v1 to be installed. Public audio buffer names still match the sample filenames, and requesting an already-claimed public name can still be rejected. Versioning the loader does not create a second independent audio namespace.

## Use

Quit Max before switching installed versions. Keep the supplied v2 folder together; open `_multibuf_js_v2.maxhelp`. To migrate an existing instrument, change the abstraction box from `multibuf_js_v1` to `multibuf_js_v2`; inlet/outlet roles and messages are unchanged. Neither a bare `[js multibuf_js_v2.js]` nor a renamed copy of the old host is the complete loader.

The `/version` command reports:

```text
version multibuf_js_v2 2.0.0
```

A new `/folder` request still appends. A complete replacement still requires `/clear`, waiting for `cleared 0`, then loading the new folder. No automatic sample or setting restoration was added.

## Validation and limits

See `tests/results.json` for the rerun of the 60 supplied control-logic tests, and `tests/v2_preservation_audit.json` for source-to-v2 comparisons. These tests run with simulated Max APIs, not in native Max. JavaScript syntax, patch structure, active dependencies, and preservation of help layout and sample bytes are checked separately.

The v2 package has not been opened in Max here. The reported Max/M5 problems are not independently diagnosed or verified by this release. The version increment is not a claim that native opening, saving, loading, or closing crashes have been fixed.
