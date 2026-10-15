# multibuf_js_v1 — stability revision 1.0.1

## Scope and confidence

This patch responds to the reported spinning cursor during opening/loading and crashes on closing. The attached `multibuf_js_v1(2).zip` was the source of this update. The actual Max application was **not** run here, and no macOS crash report was supplied. The code review identifies concrete unsafe operations; it does not establish the native crash stack or prove that every reported crash has the same cause.

The object name remains `multibuf_js_v1`, with no user arguments. The user's help filename `_multibuf_js_v1.maxhelp`, its primary/developer organization, and existing send/receive blue are retained. New troubleshooting controls are in `p Developer Files` > `p STARTUP_AND_CLOSE_CHECKS`.

## Problems found in the uploaded JavaScript

Line numbers below refer to the uploaded, pre-fix `multibuf_js_v1.js` (625 lines), not the revised file.

### 1. Scripted native deletion during native destruction

At lines 49–56, `notifydeleted()` cancels tasks and then calls `cleanhost()`. Lines 58–65 traverse `host.firstobject` / `nextobject` and call `host.remove()` for every object except the callback outlet.

Cycling '74 documents `notifydeleted()` as being called when the JS object is freed. At that point the containing patcher may already be destroying objects. Entering its graph and deleting additional native objects is an unsafe ownership/lifetime assumption. It is a strong candidate for the close-time crash, not a confirmed native backtrace diagnosis. A JavaScript `try/catch` is not proof of safety against native memory faults.

**Change:** a direct `freebang` -> `_mbshutdown` connection in the hosting abstraction and an idempotent `notifydeleted()` fallback stop the JavaScript tasks and release bookkeeping. Neither shutdown path traverses the graph, removes native objects, renames buffers, or queries their metadata. Max's normal parent-patcher destruction owns native object release. Closing only an embedded editor window does not send a shutdown command.

### 2. Deleting a read target on timeout without native completion

At lines 519–533, a watchdog calls `failpending()`, which removes both the callback router and the pending native buffer. Elapsed time does not establish that a native file read has stopped. In particular, the script has no native decoder-cancellation acknowledgement.

**Change:** a timeout reports an error, cancels remaining/queued loading work, and retains the unpublished target while awaiting its native completion. It does not publish that file or allow a new read to begin. A late completion discards the failed target and finishes the cancelled batch. A failed refresh retains its previous public buffer.

**Important behavioral difference:** if the native decoder never sends completion, the loader remains in `waiting ... native_read`. A pending `/clear` also remains pending, rather than deleting the unresolved target or fabricating `cleared 0`. `/status` and `/version` remain usable while Max's message loop is responsive. The script cannot safely abort a blocked native decoder, and a blocked native call can prevent JS timers from running. Capture the last `loading` line and a crash report when applicable.

### 3. Broad startup/clear traversal and long cleanup loops

Line 75 calls `cleanhost()` during initialization, and line 582 calls it after clear. These sweeps include objects not represented by the loader's current ownership registry. The empty-folder parent search at lines 332–343 can examine up to 100,000 entries in one call.

**Change:** no automatic startup graph sweep or deletion. Explicit clear operates only on owned references, in groups of at most eight buffers per worker turn. Both directory scanning and empty-folder parent validation yield after at most 128 examined entries per turn. A documented `Maxobj.valid` guard is used before native removal/access where applicable. The supplied runtime subpatch is empty except for its callback outlet.

The attached runtime patch contained no saved sample buffers. Consequently, removing the startup sweep is hardening, not proof that saved buffers caused the reported opening crash. Large allocations, disk access, decoder failures, and memory pressure remain outside this fix's guarantees.

## Installation

1. Save unrelated work and fully quit Max before replacing files. Do not recompile this JS inside a running, populated loader.
2. Back up the previous folder somewhere outside Max's active search paths. Install this package in its place; do not keep multiple active copies with the same executable filenames.
3. The required executable replacements are **both** `multibuf_js_v1.js` and `multibuf_js_v1.maxpat`. Keep them together. The hosting abstraction now contains the native shutdown notification.
4. Relaunch Max and open `_multibuf_js_v1.maxhelp`. Send `/version` and verify:

```text
version multibuf_js_v1 1.0.1-stability
```

No existing loading message or default was changed. `/folder` still appends; filename extensions are retained; duplicate-name rules and default all-channel loading are preserved. `/version` and additional status messages are diagnostic additions.

## First tests in Max

Keep audio off for the first pass. Open and close the top-level help with no samples loaded several times. Then reopen it, load `./test_samples`, wait for `done` with 4 loaded and no errors, and close the top-level help **without first clearing**. Repeat. A manual `/clear` should not be required for ordinary close-time cleanup after a completed load.

Next, load the test folder again and open/close only `p runtime_buffers`; the loader should remain usable. Finally repeat with a small folder of the user's own samples before testing the full library. Avoid forced-close stress tests during unresolved native reads until normal idle close behavior is confirmed.

For further diagnosis, enable `/verbose 1` and capture the last `loading` line, the Max version, and the macOS Max crash report. Do not infer that the last printed filename is necessarily corrupt: it identifies the operation in progress, not the cause.

## Validation performed

- JavaScript syntax check.
- 60 Node-based mock-Max control-logic tests, all passing.
- Regression coverage includes native-first and JS-first destruction, direct freebang shutdown, duplicate shutdown, close before initialization, shutdown during scans/reads/clear, ignored late callbacks, unresolved timeout retention, late completion after a timeout, preservation of a previous buffer on failed refresh, no broad startup deletion, bounded cleanup, and 100 repeated mock create/load/close cycles.
- Structural validation of patch JSON, object identifiers, patchcord endpoints/inlet-outlet ranges, direct shutdown wiring, and retained blue send/receive colors.
- The synthesized WAV fixtures are unchanged.

The earlier 36-test harness did not represent native parent destruction or treat deletion of an unresolved read as an error. It therefore missed these lifecycle hazards. The revised tests detect unsafe accesses in the old source under the stronger model. These are **simulated regression checks**, not a reproduction of the user's native crash and not a benchmark of Max's performance.

Native Max execution, real decoder behavior, actual native close/reopen behavior, and DSP playback remain unverified here. `tests/results.json` and `tests/patch_validation.json` document the checks that were actually performed.

## Primary API references

- JS destruction notification: https://docs.cycling74.com/apiref/js/jsthis/#notifydeleted
- Task cancellation/lifetime: https://docs.cycling74.com/apiref/js/task/
- Native patcher destruction notification: https://docs.cycling74.com/reference/freebang/
- Window close notification (not used for loader shutdown): https://docs.cycling74.com/reference/closebang/
- Validity of native object references: https://docs.cycling74.com/apiref/js/maxobj/#valid
- Buffer file-loading messages and completion outlet: https://docs.cycling74.com/reference/buffer~/
