# Stage 11 — Weighted partial removal

Keep the patch and all nine `_11.js` helpers together. Existing Stage 10 defaults, three indexed 255-slot memories, retuning, and clustering remain intact. Existing object positions/colors are preserved; the new panel is below the previous controls.

## Usage

Choose a REMOVAL DISTRIBUTION from the independent shape library. Set REMOVE COUNT and click REMOVE, or click/send the message `remove X partials 10`. The count box does not remove anything until the button is pressed. All existing shape entries are copied unchanged, including the flat-zero entry.

The separate library has its own script and instance. Changing this menu only updates weights and their preview, NEVER the sound sliders or their normal shape menus. Weights are generated at the exact visible component count; changing that count recalculates the distribution while retaining the sound's indexed memory.

Commands accepted at `receive remove-partials-stage-11` (or the left inlet of the removal JS):

- `remove 10`
- `remove 10 partials`
- `remove partials 10`
- `remove X partials 10`

Replace 10 with any nonnegative integer. The user-facing box is constrained to 0–255. Requests above the available sounding count are safely clamped.

## Selection rule

Each visible component is eligible if either its primary amplitude or harmonic-anchor amplitude is positive. Components already silent in both amplitude layers are excluded, so repeated commands remove additional sounding components. Selection is random and weighted without replacement: an index cannot be selected twice in a single call.

At each draw, the probability for an eligible component is its shape value divided by the sum of the remaining eligible weights. Thus high-to-low favors lower component numbers; low-to-high favors higher ones; Gaussian peaks favor their corresponding indices. These are preferences, not deterministic masks or guaranteed quotas at each peak.

Zero-weight indices are not selected while any positive eligible weights remain. If too few positive weights remain to satisfy the requested count, the remaining indices are chosen uniformly. Flat zero therefore means uniform selection. Uniform-fallback draws are reported. The selected shape's endpoint zeros do not provide permanent protection when requests exhaust its positive support.

## What changes

Every chosen 1-based component index is set to zero in **all three** visible memory layers: inharmonicity, primary amplitude, and harmonic-anchor amplitude. This ensures the harmonic anchor cannot keep a removed partial sounding. It does not change the visible component count or the base frequency. Both amplitude entries are silenced even if the component generates a detuned-plus-anchor pair of oscillator frequencies.

The zeros become the new session-memory settings. Shrinking then expanding restores those zeros; hidden components outside the current visible range are untouched. Subsequent manual edits or new sound-shape selections can bring components back, since this is a memory edit, not a persistent mute mask. There is no undo/preset-storage addition in this stage.

Removal snapshots and stops all ongoing **shape** interpolations before writing zeros, so a later morph frame cannot undo the operation. A generator transaction sends one complete final model after all three layer updates, not a sequence of partially updated models. Global retuning is unaffected. Removal currently changes values immediately; it does not add an amplitude fade. Audition removal during sustained sound at a low level to check for any clicks in your CNMAT version.

Status: REQUESTED, REMOVED, SOUNDING REMAINING, UNIFORM FALLBACK DRAWS, VISIBLE COUNT. The index display gives the exact selected component numbers, with 1 identifying the fundamental. A request for 0 does not interrupt interpolation or change memory.

## Verification

The automated tests cover weighted bias, uniqueness, sparse/zero-weight fallback, silent-component exclusion, count clamping, shape-library independence and count adaptation, actual memory zeroing/restoration, hidden-slot preservation, graph/name checks, and unchanged layout/colors. They mock Max's Task/feedback system; audio and jsui behavior still require checking in Max.
