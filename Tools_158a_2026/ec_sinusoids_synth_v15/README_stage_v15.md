# ec_sinusoids_synth_v15

Open `_ec_sinusoids_synth_stage_v15.maxpat`. Keep the entire folder together so its JavaScript helpers and stop-workspace abstractions resolve. This release uses the user-revised `ec_sinusoids_synth_v13(1).zip` as the baseline.

All uploaded main-page objects and patch cords are retained. Stage identifiers and dependencies are updated to 14. The existing copy message is widened to fit its requested name and its adjacent explanatory label is shortened and shifted to avoid overlap. New stop-workspace controls appear below the uploaded layout. No original defaults or other positions/styles are changed.

## Requested changes

- `alloff` clears all 256 slots in all three memories and silently resets the three SHAPES menus AND their internal library selections to flat zero. This applies from the main page and the Octave Families workspace. It preserves the visible count and does not restart shape interpolation.
- `PartialAmplitudes_to_HarmonicAnchor` replaces the old `copyamplitudes` message. One click snapshots the primary amplitude layer, stops its and the destination's morph, and copies all 256 stored values into the harmonic-anchor bank in one model transaction.
- `PartialAmplitudes_to_Inharmonicity` uses the message already positioned in the uploaded patch; it is now connected and implements the same full-bank copy into the inharmonicity layer. Harmonic anchors are preserved.

## Stop workspace

Double-click `ec_sinusoid_synth_stops_v15` below the main layout. Select any of fourteen stop recipes, then click `apply`, or click one of ten named registrations. Parameter/toggle edits alone do not alter the synth. Applying replaces all three 256-slot banks and stops shape morphs, without changing the visible count. Select 256 components in the main patch to expose every populated index.

Registrations: PrincipalChorus, CornetV, SesquialteraII, FluteQuint, CelesteII, ReedChorus, OpenFlute, StoppedFlute, String8, SharpMixture. Each rank adds its own harmonic tail; overlapping components accumulate. Total linear amplitude across primary and anchor banks is normalised to 0.8 for nonempty registrations. This is not equal-loudness or physical organ-volume modelling.

CelesteII uses paired string-like amplitudes and calculates inharmonicity for an approximate requested separation in Hz. Set Max Drift above zero. Its seeded directions can differ per partial; the fundamental stays fixed. It is organ-inspired spectral beating, not coherent detuning of two complete pipe ranks. Reapply after changing the source base, Max Drift, BEAT Hz or harmonic tail. The existing micro-drift feature remains separate and retains its settings.

Source Base Hz is the 8-foot reference. Rank roots are integer multiples (1, 2, 3, 4, 5, 6, 8). Suboctave 16/32-foot ranks, fractional-grid mutations and automatic keyboard-dependent mixture breaks are research proposals rather than implemented features.

## Research

From the stops workspace, double-click `_ec_sinusoid_synth_stops_research_v15`. It has seven topics with numbered source references and clickable URL messages, covering footage, pipe construction, scaling, spectra, mixtures, historical examples, beating, recipe design and eight next-transform proposals. The supporting editable text is `organ_stops_research_v15.md`.

Twelve primary/first-hand educational, experimental and organ-design sources support the principles. The recipe exponents, gains and combinations are original synthetic design choices, not measured reconstructions of Schnitger or Saint-Sulpice pipes.

## Verification

Seven Node tests exercise mocked Max tasks/feedback, seeded micro motion, retuning, filtering, removal, Octave Families, both named copy functions, silent shape reset, stop-rank algebra, beating calculations, full-bank apply and all three patch graphs/dependencies. The old micro test was updated to follow the user's relocated subpatcher controls; the original routing was intact. A structural comparison confirms retention of all uploaded objects/cords and preservation of original layout/defaults apart from the required copy-label fit and memory-engine outlet count.

These checks verify programming and saved graph data. Max 9 rendering, external loading and sound must be auditioned natively. Source links are provided in the research reader for listening/context; no recordings were embedded.
