# CNMAT sinusoids~ Stage 10

Keep the patch and all seven `_10.js` helpers in one folder. Requires Max with CNMAT `sinusoids~`. All JavaScript and embedded support patchers are scoped to Stage 10. Existing function-library receive names are preserved. Clustering and global retuning are unchanged.

## Defaults

- Output live.gain~ initializes to **-65 dB** on patch load.
- Inharmonicity menu starts with **Flat zero (default)** and selects it at load.
- Amplitude menu starts with **Flat zero**; its load selection is the unchanged **Linear: high to low** item.
- Harmonic anchor retains its flat-zero default.
- MODEL AMP GAIN remains initially **1.0**, with maximum **2.0** (enforced in both the box and JavaScript).
- Frequency window initializes to **20–12000 Hz**. Upper bound remains exclusive; sample-rate-dependent alias safety still applies.

## Per-partial memory

Each layer has a separate 255-slot bank. All slots outside the startup active amplitude profile begin at zero. Changing the count shows a prefix of this bank; it does NOT stretch or regenerate a library shape.

For example, after editing a 24-component model, changing to 120 preserves components 1–24 and fills never-used 25–120 with zero. Reducing to 12 hides, but does not erase, 13–120. Returning to 24 restores the saved values. Editing a visible slider updates that layer's active values and leaves its hidden slots unchanged.

A new shape-library or random selection applies to the current active count and updates those slots as interpolation progresses. Hidden values remain unchanged. Increasing the count later does not continue a previously selected shape into the new slots: they come from indexed memory.

Manual edits cancel that layer's active shape interpolation, so an upcoming frame cannot overwrite the edit. A count change stops all ongoing shape interpolations at their elapsed values and preserves those values before resizing. Retuning continues independently. Memory-restoration echoes and any lists emitted by a size message are suppressed from the bank-update path.

This bank is **session memory**, not a new preset/file-storage system: reopening the patch initializes the requested defaults. Persistent bank snapshots can be added later with the coll preset layer.

## Component labels

Read-only jsui overlays align with the multislider bars, with index 1 identifying the fundamental. At ordinary counts every bar is numbered. At dense counts the labels are automatically spaced to remain readable, while showing index 1 and the final index. At 255 bars it is physically impossible to display every 3-digit label legibly in the existing 875-pixel width. The overlays ignore mouse input, leaving editing to the multisliders underneath. The existing bar object positions and colors are preserved.

## Verification

The included Node tests use mocked Max Tasks and feedback to verify 24→120→12→24 restoration, edits to previously hidden slots, zero padding, no count-driven shape regeneration, interrupted interpolation, gain/range defaults, and patch routing. Actual jsui rendering, mouse passthrough, and audio initialization still require verification in Max.
