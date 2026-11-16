AMXD Help Files v27
===================

Generated from the supplied documented Harmonic Filter model.

- 59 help patches upgraded.
- 0 nonstandard help patches isolated in _REVIEW_NONSTANDARD.
- Every upgraded patch uses the model's exact top-level geometry, colors, source selector, copy/paste wrapper, empty-startup preset behavior, and 150 ms fade transitions.
- Effect-specific amxd~, direct-parameter randomization, stored preset data, send/receive names, OSC-style preset address, title, description, and concise parameter documentation were translated from v26.
- Every helpfile includes three bounded working presets. Preset 1 is retained; Presets 2 and 3 vary only parameters approved by the device randomization map.
- Input gain, internal output gain, dry/wet balance, and Final_Output_Gain remain protected in derived presets.
- Phase Scope exposes no randomizable AMXD parameters, so its three slots intentionally retain the same safe protected state.
- The selected test source passes through dry_output_gain before branching to direct out and AMXD_<effect>_send.
- The left and right effect-output receives are vertically arranged, with an independent audio meter below each return before the stereo dac~ connections.
- Parameter support uses bold parameter names with normal descriptions, value types, numeric ranges, and applicable units such as ms, Hz, cents, dB, percent, samples, and BPM.
- The preset menu recalls only. A separate 1–24 number box selects the STORE/OVERWRITE target before the store button captures the current state.
- The open message is 14 pt; the preset menu is 14 pt and 20 percent narrower; startwindow/stop are lowered with stop aligned to dac~.
- Signal names use each v26 AMXD_<effect> base with _send, _out_L, _out_R, _out_MONO, _output_gain, and _preset suffixes.
- Source defaults to MUTED; effect output starts at -80 dB, matching empty-slot behavior.

See V27_GENERATION_AUDIT.tsv for the per-file mapping.
