# multibuf_js_v2 — version 2.0.0

Complete v2 package based on the supplied `multibuf_js_v1_save_diagnostics(1).zip`. This is a versioned continuation of that loader, not a new loading algorithm or a confirmed native crash fix. Commands, defaults, buffer behavior, help layout, patch cords, colors, samples, and existing lifecycle safeguards are retained. Active filenames and version references now identify v2.

Open **`_multibuf_js_v2.maxhelp`** for normal use. The optional diagnostic patches and historical review notes remain included. See **V2_RELEASE_NOTES.md** for the exact scope and validation limits. The historical `START_HERE_SAVE_DIAGNOSTICS.md`, `tests/CRASH_FIX_NOTES.md`, and earlier audit files still describe the v1 revisions they reviewed; their old version names are not runtime dependencies.

JavaScript-managed **native `buffer~` objects whose actual audio buffer names match their sample filenames**.

This is a new implementation based on the sample-loading purpose and core command interface of the supplied CNMAT `multibuf.maxpat` / `_multibuf.maxpat`. Neither original file is modified or replaced. It does **not** use `polybuffer~`, `node.script`, npm, odot, or a JavaScript sample-processing loop.

## Start here

Keep this package together. Open **`_multibuf_js_v2.maxhelp`** in Max, then click `/folder ./test_samples`. Four WAV files should load. Select a name from the menu and click `start` to preview it after enabling audio. The preview is attenuated by a factor of 0.1; it never starts playback or turns audio on automatically.

In another patch, create:

```max
multibuf_js_v2
```

**No user arguments.** Keep `multibuf_js_v2.maxpat` and `multibuf_js_v2.js` in the same directory, available in Max's search path. The JS is hosted by the abstraction, whose native callback subpatch it uses. Do **not** instantiate a bare `js multibuf_js_v2.js` box: that omits the required host. The internal `#0` argument is private instance identification, not a sample-name prefix.

Target: the legacy **`js` engine in Max 8/9**, not `v8` or Node for Max. Only stock Max objects are required. Runtime compatibility remains to be checked on your Max installation; see Testing below.

## What names mean

Loading `/Sample Library/Bells/bell.wav` produces the actual audio buffer name **`bell.wav`**. Its complete path—not just `bell.wav`—is passed to the native file reader.

```max
play~ bell.wav 2
```

or:

```max
groove~ bell.wav 2
```

can refer to that buffer. The extension is retained by default. `/extension 0` changes future names to stems such as `bell`. `/prefix A_` changes future names to `A_bell.wav`; `/prefix` with no argument removes the prefix. These settings do not rename already-loaded buffers.

The implementation reads into a privately named staging buffer and assigns the public filename only after a native completion bang and nonempty metadata validation. Its hidden native object may retain the *staging name in its typed constructor text*. The **current audio buffer name is the one emitted in `loaded` and `dumpinfo`**, not that historical constructor text. Max's native `set` message changes the buffer's audio name.

## Inlets and outlets

| Position | Inlet | Outlet |
|---|---|---|
| Left | Loading, settings and query commands | Filename symbols after successful loads; also query results |
| Middle | `dump`, `length`, a 1-based index, or a name query | Exactly one bang per successful file load or refresh |
| Right | Integer `0` or `1` for optional console verbosity | Structured status, errors, batch completion, metadata and menu messages |

The first two outlets preserve the useful roles of the original loader. The **new third outlet** removes the ambiguity between a completed file and a completed folder request.

Use `/get <name>` at the left inlet for a name query. A raw symbol in the middle inlet also performs a name query. The current index is 1-based and can change after removals; it is **not** a permanent ID. `buffer-N` queries are accepted as current-index aliases for migration convenience. The middle inlet is not a fully editable native `coll` and does not implement arbitrary `coll` manipulation messages.

## Loading and management

All examples below are ordinary Max messages. Prefer their leading `/`. Most also work without it. Quote paths containing spaces, or use `opendialog` / `dropfile` followed by `prepend /file` or `prepend /folder`, which preserves a path as one symbol.

| Message | Behavior |
|---|---|
| `/file "<path>"` | Load one file. Existing same-name, same-path samples are skipped. |
| `/folder "<path>"` | Append matching files from a folder, sorted case-insensitively by filename, then full path. |
| `/folder "<path>" WAVE` | Per-request filter. Multiple extensions may also be supplied. |
| `/refresh` | Reload all files owned by this instance, keeping their existing public names. The loaded-file list is taken when this queued request starts. |
| `/refresh "<folder>"` | Rescan a folder: refresh owned same-path files and add new ones. Does not delete files that disappeared from the folder. |
| `/coll <collection-name>` | Load the first symbol of each native `coll` row as a file path. Other row values are ignored, matching the original's first-value behavior. |
| `/multicoll <collection-name>` | First symbol of each row names another native `coll`; first symbol of each child row is a file path. One overall batch is reported. |
| `/stop` | Cancel queued requests, scanning and unstarted files. An already-issued native file read is allowed to finish. It does not stop playback. |
| `/clear` | Cancel queued work. Allow an in-flight native read to finish; discard it, then delete owned buffers in small batches. A timeout does not authorize deletion and cannot finish clear until native completion arrives. Wait for `cleared 0` before loading again. Settings remain unchanged. |
| `/remove <buffer-name>` | Delete one owned buffer; loader must be idle. |
| `/dump` | Emit every loaded name from the left outlet. No success bangs. |
| `/dumpinfo` | Emit cached metadata records from the status outlet. |
| `/menu` | Status outlet emits `menu clear`, then `menu append <name>` per buffer. Connect `[route menu]` to `[umenu]`. |
| `/get <name-or-index>` | Emit a loaded name from the left outlet. |
| `/length` | Emit loaded count from the left outlet and `count <n>` from the status outlet. |
| `/status` | Emit counts and current queue/read state. |
| `/settings` | Emit all current setting values. |

A filename duplicated across folders is **rejected**, not silently renamed or overwritten. The error includes the requested path and, for samples known to this loader family, the existing path. A repeated request for the **same path and name** is skipped. To force reloading, use `/refresh`.

A refresh is staged **per file**, not as an all-or-nothing folder transaction. The old sample survives a missing-file, timeout, decoder, metadata, or commit failure. Successful refreshes temporarily require RAM for both the old sample and its replacement. Changing `/mono`, `/method`, or other options affects subsequent requests; each queued load captures its options at submission. `/refresh` without a path preserves each existing public name even when current naming options differ.

**Stop playback before refresh, clear or remove.** The loader does not perform an audio-rate crossfade and cannot guarantee click-free changes to actively playing buffers.

## Every configurable default

```text
mono 0
extension 1
prefix                 (empty; no prefix)
recursive 0
types wav aif aiff aifc flac mp3 ogg m4a caf au snd
method auto
timeout 30000
maxbuffers 10000
verbose 0
```

| Setting | Meaning and accepted values |
|---|---|
| `/mono 0` | Preserve all file channels; uses an explicit native channel argument of `0`. |
| `/mono 1` | Request the first file channel with an explicit native channel argument of `1`; not a JavaScript mixdown. Existing buffers change only on refresh/reload. |
| `/extension 1` | Retain filename extension. `0` strips the last extension. |
| `/prefix` | Empty by default. `/prefix A_` adds a prefix to future names. No path separators or control characters. |
| `/recursive 0` | No subfolders. `1` scans subfolders. Depth guard: 32. Hidden dot-names are excluded from folder scans. |
| `/types ...` | Case-insensitive folder extension filter. `WAVE` → `wav`, `AIFF` → `aif aiff aifc`, `MPG3` / `MP3` → `mp3`; leading periods are accepted. `all` disables the extension filter. This is **not a decoder guarantee**. |
| `/method auto` | Native `read` for `wav aif aiff aifc au snd`; native `import` for other extensions. `/method read` or `/method import` overrides it for subsequent requests. |
| `/timeout 30000` | 30,000 ms without a processed native completion or coll-dump completion produces an error. Range `0–3600000`; `0` disables this watchdog. It is not a guaranteed interrupt for a blocked native decoder. |
| `/maxbuffers 10000` | Count guard, range `1–100000`. Excess files are rejected, not wrapped to old IDs. This does not limit sample RAM in bytes. Cannot be set below the already-loaded count. |
| `/verbose 0` | No extra progress lines. `1` prints progress/errors. The structured status outlet remains active either way. |

There is also a directory-scan guard of 100,000 entries and a collection-row guard of 100,000. A folder scan hitting its entry guard does not start loading the partial list.

## Status format

```text
ready multibuf_js_v2 <private-owner-id> 2.0.0
queued <batch-id> <kind> <request-path-or-name>
scanning <batch-id> <folder>
begin <batch-id> <kind> <candidate-count> <request-path-or-name>
loading <batch-id> <buffer-name> <full-path>
loaded <buffer-name> <full-path> <channels> <frames> <duration-ms> <sample-rate> <batch-id>
skipped <batch-id> already_loaded <buffer-name> <full-path>
error <batch-id-or-0> <code> <name-or-dash> <path-or-dash> <detail-or-existing-path>
done <batch-id> <loaded-count> <error-count> <skipped-count> <cancelled-0-or-1>
```

For the first four-file test batch, the expected completion is:

```text
done 1 4 0 0 0
```

The first integer identifies the request; it increments for every accepted loading request. The next three integers are **counts for that batch only**, not the lifetime number of buffers. `done` means processing ended; it does **not** necessarily mean success. Check the error count and cancellation flag.

Queued requests removed by stop/clear emit `cancelled <batch-id> <kind> <path>`, not a success-style `done`. An active cancelled batch still emits `done ... 1`. A file discarded due to clear emits `discarded <batch-id> <name> clear_pending` rather than a success bang.

Other status messages:

```text
buffer <current-index> <name> <path> <channels> <frames> <duration-ms> <sample-rate>
dumpdone <count>
menu clear
menu append <name>
menudone <count>
count <count>
status <loaded-count> <active-batch-id-or-0> <queued-request-count> <read-in-flight> <clear-pending>
setting <setting-name> <value...>
emptyfolder <batch-id> <path>
emptycoll <batch-id> <collection-name>
stopping <batch-id> <reason>
removed <name>
cleared 0
```

Files that cannot be opened produce an immediate `file_not_found` error. A native decoder that logs an error but does not send a completion bang is reported by the timeout, after which loading pauses; **`load_timeout` does not identify the decoder's exact error**. Check Max's console. Zero-frame audio is rejected even if the native object sends a bang.

Sample rate is calculated from native frame count and native duration, rounded to the nearest hertz. `dumpinfo` reports metadata cached at successful load; it does not track later manual editing of the native buffers.

## Version reporting and timeout behavior

`/version` reports `version multibuf_js_v2 2.0.0` from the status outlet. No existing command names or defaults were changed.

A timeout marks that file as failed and cancels the remaining/queued load work, but **does not delete a buffer that may still be in a native read**. Its unpublished staging buffer is retained and no new reads are accepted until its native completion arrives. The previous public buffer survives a failed refresh.

```text
waiting <batch-id> native_read <name> <path>
readsettled <batch-id> <name> discarded_after_error
version multibuf_js_v2 2.0.0
clear_failed <remaining-count>
```

After a late completion the temporary buffer can be discarded, the cancelled batch can issue `done`, and a pending clear can finish. **If Max never emits a native completion, this instance remains waiting**; no `done` or `cleared 0` is fabricated. `/status` and `/version` remain available while Max's message loop is responsive. The script has no safe decoder-abort API; a blocked native call also blocks JS timers. Capture the Max Console's last `loading` line and the crash report if the problem persists. The update does not guarantee interruption of a hung native decoder, click-free changes, or prevention of out-of-memory failures.

## Paths, collisions, lifecycle and compatibility

**Paths.** Absolute paths obtained from Max's dialogs are preferred. Bare filenames retain native Max search-path lookup for compatibility. Once resolved through `File`, the absolute folder/name combination is passed to the buffer. Explicit relative paths such as `./samples/bell.wav` are resolved beside the saved top-level patch, **not** implicitly beside the loader abstraction. An unsaved parent has no reliable directory anchor; use an absolute path. Alias/symlink identity and file-system case folding are not resolved by a custom realpath engine.

**Invalid versus empty folders.** Max's JS `Folder.end` can be true for either. The loader checks the parent directory for an empty folder. When it cannot establish that distinction it reports `folder_empty_or_unavailable` rather than falsely claiming a successful scan. OS permissions, root folders and aliases can affect this check.

**Shared names.** Loader instances coordinate name reservations through a Max `Global`. The private registry keeps the identifier `multibuf_js_v1_name_claims` so v1 and v2 can share in-flight name reservations. This identifier does not load or require any v1 file. Native Buffer metadata is additionally probed to avoid taking an already-observable buffer name belonging to another patch. For an externally created buffer the original source path may be unavailable. The legacy API does not provide an explicit documented `Buffer.exists()` call; this is a **metadata-based guard, not a guaranteed inventory of every other patch's empty or unusual buffer object**. Unique filenames or deliberate prefixes remain advisable. Do not rename/delete the loader's private native objects externally.

**Ownership.** Max, not JavaScript, destroys the native runtime buffers when their owning abstraction is freed. The direct `freebang` shutdown signal and the `notifydeleted()` fallback cancel JS work, release claims, and invalidate cached references without touching the native patcher graph. Merely closing an embedded subpatch editor does not shut down the loader. `autowatch` is off. Do not recompile or replace the JS file while an instance is running; quit Max before switching versions. Startup no longer deletes accidentally saved or unrelated runtime boxes. Do not save generated runtime boxes into the abstraction itself; use the clean supplied abstraction.

**Persistence.** Loaded audio and configuration are not embedded or restored automatically. Use a saved native `coll` of full paths, or your own ordered loadbang messages, to restore a session. Save your instrument patch normally, but do not save the generated internal runtime boxes as a preset. External abstraction instances keep their runtime objects outside the containing patch's stored object list.

**Legacy differences.** `/file`, `/folder`, `/clear`, `/mono`, `/coll`, `/multicoll`, and the useful three-inlet / first-two-outlet roles are retained. Numeric `/samplor` naming and its global `samplor-bufs-*` collections are deliberately **not** reimplemented; `/samplor off` is accepted, while numeric mode requests return an explicit error. Plain OSC-style address messages are accepted, but odot `FullPacket` bundles must be unpacked upstream. The obsolete ambiguous “folder dispatched” bang is not retained. The middle-inlet query interface is read-only, not the original editable named `coll`.

## Implementation and efficiency

The JS creates native `buffer~` objects, enumerates paths, validates names, schedules loading requests, and reads metadata. It never calls sample `peek`/`poke`, copies waveform arrays, or participates in audio playback. Once a batch finishes, there is no recurring Task unless new work is requested. The temporary completion-routing objects are removed after each successful read; the native buffers remain.

Folder enumeration and the empty-folder parent check are chunked in groups of up to 128 entries. `/clear` removes no more than eight owned buffers per worker turn. No startup or shutdown object-list sweep is performed. Native reads are issued **one at a time**. This favors orderly completion reporting and moderate loading pressure rather than maximum parallel loading throughput. It is not a hard real-time loading guarantee: native allocation, decoding, and disk I/O may still stall Max or affect active audio. No loading-speed or playback-CPU benchmark against `polybuffer~` has been measured.

## Testing

**V2 validation:** JS syntax checking and 60 automated control-logic tests in Node with mocked Max `File`, `Folder`, `Buffer`, `Patcher`, `Global`, and `Task` APIs. All 60 passed. The mock now distinguishes native parent destruction from JS `Patcher.remove`, records attempted native access during teardown, and records attempts to delete a buffer whose read has not completed. The original 36-test model did not model those lifecycle hazards. Tests cover exact filename atoms, full paths, channel arguments, folder filtering, duplicate handling, concurrent instances, queue order, cancellation, timeouts, staged refresh, collection loading, capacity, queries, cleanup and idle-task behavior.

**Not performed here:** opening these files in Max, real codec decoding, actual DSP playback, native buffer rename/read callbacks, live UI rendering in Max, OS-specific permissions, or performance measurements. The mock tests validate the state machine and requested native messages; they cannot prove the behavior of the native Max objects.

`tests/results.json` records the test results. `tests/test_loader.js` is optional developer material and is not loaded by Max. To rerun it with Node:

```sh
node tests/test_loader.js --json
```

The help patch's **IN_MAX_SMOKE_TESTS** subpatch provides the checks for your actual Max installation. The synthesized WAV fixtures are 48 kHz, 16-bit PCM, 16,800 frames (350 ms):

| File | Channels | Tone content |
|---|---:|---|
| `mono_test.wav` | 1 | 440 Hz |
| `name with spaces.wav` | 1 | 523.25 Hz |
| `stereo_test.wav` | 2 | Left 220 Hz; right 660 Hz |
| `quad_test.wav` | 4 | 220 / 330 / 440 / 550 Hz |

After `/mono 1` followed by `/refresh`, the optional `peek~` check at frame 1000 of `stereo_test.wav` should report about `-0.080` for the requested first channel. This distinguishes it from a sum or average of both channels. `test_collisions/mono_test.wav` deliberately duplicates a filename in a different folder for rejection testing.

## API references consulted

Cycling '74 primary documentation:

- Buffer native messages and completion behavior: https://docs.cycling74.com/reference/buffer~/
- JS Buffer metadata: https://docs.cycling74.com/legacy/max8/vignettes/jsbuffer
- JS file resolution: https://docs.cycling74.com/apiref/js/file/
- JS folder iteration and empty/invalid behavior: https://docs.cycling74.com/apiref/js/folder/
- Native patcher scripting: https://docs.cycling74.com/legacy/max8/vignettes/jspatcherobject
- Deferred Task scheduling and lifecycle: https://docs.cycling74.com/legacy/max8/vignettes/jstaskobject
- Named Global storage: https://docs.cycling74.com/apiref/js/global/
- Coll dump and completion outlets: https://docs.cycling74.com/reference/coll/
- JS initialization and private functions: https://docs.cycling74.com/legacy/max8/vignettes/jsbasic

The original files supplied for this rewrite were `multibuf.maxpat` and `_multibuf.maxpat`. Their original author/version notes are preserved in those untouched files; this package is a separately named implementation, not a claim to have authored the originals.
