# Envelope-Shaper_01 / updated v14

## Baseline and file access
Used the supplied `ec_sinusoids_synth_v14/_ec_sinusoids_synth_stage_14.maxpat` and `functions-and-lines/00_build_a_function_library_04.maxpat` directly. Original source files remain unchanged. Their SHA-256 hashes are in `baseline_sha256.json`. Read/create/edit/reread access was verified with `file_access_verified.txt` in the workspace; deliverables were written and reread successfully. System Python/Git launchers required unavailable developer tools, so verification used bundled Python and Node instead.

## Changes
- Renamed the function-library derivative Envelope-Shaper_01. Removed both the 0–127 preset bank and adjustable range circuitry, plus the integer-rounding/send branch. Minimum and maximum are now fixed labels at their previous presentation locations. Multislider and function ranges are 0–1; duration remains in milliseconds and is not restricted to 0–1.
- Copied all 24 SHAPE entries in the exact stage 14 amplitude-menu order: Flat zero followed by all 23 original shapes. Copied the actual 48-point templates from `dynamic_shape_library_14.js` into an embedded coll; no extra JavaScript dependency is needed for the standalone.
- Shape selection restores 48 breakpoints using slider value 45 plus the existing +3 offset, then applies the chosen list. The manual 3–48 breakpoint control, duration scaling, editable function, output display and embedded coll storage remain.
- Load initializes duration to 1000 ms and selects Flat zero. Removed delayed competing breakpoint initialization. Replaced output rounding with a list pass-through so small curve values and segment durations retain precision.
- Added a real embedded `p Envelope-Shaper_01` object near the stage 14 function receiver. Its outlet feeds `obj-function-list-gate`, preserving the existing stored-envelope/explicit-trigger path. Embedded copy omits the global send to avoid duplicate delivery. Standalone supplies an outlet and retains `send gain-envelope` compatibility. Opening both copies allows the standalone broadcast to update any open legacy receiver, as before.
- All existing stage 14 objects, settings, nested patchers, and wire endpoints remain unchanged except top-level patching positions and stale wire bend coordinates. Existing raw-control/rounded receiver facilities in stage 14 are retained from the revised baseline; the new envelope library does not produce those outputs.
- Preserved every surviving presentation flag and presentation rectangle in the library, and every presentation flag/rectangle in stage 14, including nested patchers. Added subpatcher is available in patching view; double-click it to open its presentation.
- Resolved top-level rectangle overlaps using nearest available edge/corner positions, followed by passes moving displaced objects toward their original positions. Stage 14: 46 moved objects, median 50.0 px, largest 673.0 px. Crowded wide comments/rulers needed larger shifts; this is a local layout cleanup, not a proof of the global minimum displacement. Every move is listed in `layout_changes.json`. Object sizes and presentation geometry were preserved. Original nested stage patching layouts were left intact.

## Checks performed
All eight Node suites passed; full output is in `checks_performed.txt`.
- Existing seven v14 suites cover retuning, octave families, weighted removal, copies, micro-drift, stops, workspace routing and dependencies.
- New `tests_envelope_shaper01.cjs` checks all 24 exact templates, zero entry, value bounds, normalized ranges, valid recursive IDs/ports/wires, standalone/embedded equivalence apart from send removal, direct integration without duplicate broadcast, and top-level rectangle overlap absence.
- Build assertions compare all original stage object properties except patching rectangles, original wire endpoints/order, and every surviving presentation property against the supplied files.
- ZIP contents were read back, CRC checked and compared byte-for-byte with the delivered folder.
- Checked documented function list mode, range and duration-domain behavior against Cycling '74's [function reference](https://docs.cycling74.com/legacy/max8/refpages/function). This supports the retained value/time-pair translator; automated checks do not execute Max objects.

## Verify in Max
1. Open the updated stage 14 patch from this package with its sibling files and your existing CNMAT `sinusoids~` installation. Check the Max Console for missing objects or errors.
2. In patching view, double-click `p Envelope-Shaper_01` near the function receiver. Confirm its presentation matches the retained positions and the SHAPE menu displays all choices (long names may be abbreviated at the inherited menu width).
3. Select each shape, especially Flat zero and Random (fixed). Confirm 48 points, 0–1 values, the expected curve, and stable repeated Random (fixed) selection. Test manual breakpoint counts 3 and 48 and duration changes. Check the initial zero list is stored without triggering playback.
4. Set a nonzero shape and trigger the stored stage envelope. Confirm the audible envelope follows the chosen duration; Flat zero should silence it. Monitor `line~` as needed. Audio, scheduling and actual Max list behavior have not been run here.
5. Edit the function, bang it to emit its current list, store entries in coll, save the patch and reopen to check persistence. Open the standalone separately and verify its outlet / gain-envelope broadcast.
6. Inspect patching view at your normal zoom for text clipping and wire readability; rectangle tests cannot validate font rendering or cable crossings. Confirm original presentation controls and ruler overlays still align. Review original nested patching views separately if further cleanup is desired.

## Files
Open `_ec_sinusoids_synth_stage_14.maxpat` for the updated synth. `Envelope-Shaper_01.maxpat` is the standalone. Keep existing v14 JavaScript and support patches beside the synth. The standalone is self-contained and can be copied alone.

## Standalone hundredths update
The standalone now truncates every outgoing float toward zero at the hundredths place using an embedded `p hundredths` with `vexpr int($f1 * 100.) / 100.`. Examples: 0.129 → 0.12; 0.999 → 0.99; 21.276595 → 21.27. The transformation precedes the message display, coll storage, outlet and gain-envelope send, so all receive the same truncated list. Both amplitude values and segment times are affected. For example, 47 segments of 21.27 ms total 999.69 ms rather than 1000 ms. The stage 14 embedded shaper retains its previous full precision, as this request applies to the standalone. All patching and presentation coordinates remain unchanged. Numeric messages may display 0. or 0.5 rather than padded 0.00 or 0.50; values remain numeric. Max runtime confirmation is still required.

## Stage 14 hundredths update
The embedded stage 14 shaper now uses the same hundredths truncation as the standalone. This supersedes the previous standalone-only precision distinction. All resulting amplitude values and segment times truncate toward zero to two decimal places before display, storage and output. The updated embedded shaper matches the standalone except for omission of the standalone global send. Existing patching and presentation coordinates and wire endpoints remain unchanged. Actual Max playback/display still requires verification.

## Explicit 48-breakpoint startup
Both standalone and embedded shapers now defer startup to the low-priority queue, explicitly send 45 to the count slider (existing +3 gives 48), then initialize duration and Flat zero. Count initialization no longer depends on successful menu/coll output. Saved multislider size is 48. Existing object positions and presentation coordinates are preserved. Verify opening/reopening in Max shows 48 before interacting with SHAPE.
