# CNMAT sinusoids~ Stage 09

Keep the MAXPAT and all six `_09.js` helpers in one extracted folder. Requires Max and the installed CNMAT `sinusoids~` external. Open only this revision when testing. Embedded support patchers and JavaScript object names use `_09`; standard Max/CNMAT object classes are unchanged. The existing external `receive gain-envelope` and `receive rounded-integers` names are intentionally preserved for your function-library connections.

## Global tuning

The new controls are below the existing multisliders. Existing positions, colors, stored slider values, shape menus, and shape interpolation settings are preserved.

- **SOURCE BASE Hz** establishes a reference and retargets the global base. The separate **TARGET BASE Hz** transposes without modifying that reference.
- **Rebuild base / ERB drift:** regenerates partials from the evolving target base; the same slider factors produce frequency-dependent ERB offsets. Harmonic anchors follow the base.
- **Ratio transpose / fixed spectrum:** keeps the generator at SOURCE BASE and multiplies every frequency by CURRENT BASE / SOURCE BASE. Exact spectral ratios are preserved.
- **Additive Hz shift:** keeps the generator at SOURCE BASE and adds CURRENT BASE - SOURCE BASE to every frequency. Harmonic ratios are deliberately changed.
- **RETUNE MS:** default 1000; 0 changes immediately. Rebuild/ratio glides are geometric in frequency (linear pitch); Hz-shift glides are linear in Hz. A new target starts from the elapsed current state. Changing the time box affects the next retarget, not an ongoing ramp.
- Changing tuning mode retains the current target; differences between mode formulas can cause an immediate spectral change. Audition mode switches at low output level.

## Post-model transforms

Semitones and cents multiply the mode's frequencies. EXTRA SHIFT Hz adds an independent offset after multiplication. MODEL AMP GAIN scales and clips each amplitude to 0–1. MINIMUM Hz is inclusive; MAXIMUM Hz is exclusive. Safety also enforces strictly positive frequencies below min(23000, 0.499 × sample rate).

CLUSTER SPAN Hz defaults to 0: only frequencies within 0.0001 Hz are merged, using the previous clipped-amplitude-sum policy. Optional nonzero clusters use bounded frequency spans, power-weighted centroids, and clipped RMS amplitudes. This is a simple native Hz cluster operation, NOT an implementation of res-transform clustering. Clustering can remove the beating pairs you deliberately created, so enable it consciously.

POST TRANSFORM BYPASS skips ratio/Hz shifts, semitone/cents/extra offset, amplitude gain, and optional clustering. It does not undo ERB base rebuilding, remove the frequency window, or disable safety/duplicate filtering.

The generator now exposes its full pre-alias-filter model on outlet 5. The transform stores this source, transforms it afresh on every parameter change, then filters/sorts/merges it. Raising a base can reject upper partials; lowering it can bring those source partials back. No cumulative transposition is applied to an already transformed list. The transformed output is the sole automatic feed into `p model_09` → `sinusoids~`.

Final status fields: SOURCE PAIRS, OUTPUT PAIRS, MERGED, REJECTED, INVALID, LIMIT Hz. Rejection display lists source-pair indices and transformed frequencies. When nothing survives, a silent `1.0 0.0` model clears audible output; status still reports zero surviving pairs.

## Quick tests

1. Set SOURCE BASE to 110 and RETUNE MS to 0. Choose ratio mode and TARGET BASE 220: each frequency doubles; all slider values remain unchanged.
2. Choose shift mode: each source frequency increases by 110 Hz, rather than doubling.
3. Choose rebuild mode: exact anchors remain n × target base; drift is recomputed at each new frequency.
4. Use a high source base/count, then ratio-transpose downward: previously over-limit source frequencies should return.
5. Set MINIMUM above MAXIMUM: output becomes silent and OUTPUT PAIRS is 0. Restore the bounds.
6. Increase RETUNE MS and retarget during a glide; the current-base display continues from its elapsed value.
7. While tuning, choose shapes in any channel: shape interpolation and global retuning remain independent.

Validation uses JavaScript VM tests with mocked Max Tasks, graph checks, unchanged-layout/value comparison, and ZIP integrity. Audio behavior still requires audition in Max. Sorted-list crossings, pair-count changes at safety boundaries, and oscillator reassignment may cause audible discontinuities; control-rate parameter glides are not a guarantee of phase-continuous synthesis.
