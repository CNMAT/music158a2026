ABL HELP FILE LIBRARY v3 — AMXD v26 system + compact DSP-oriented documentation

This revision preserves the complete v2 EXAMPLE/control architecture and ABL-specific JavaScript helpers.
Documentation changes:
- Removed top-level implementation/specification commentary from the visible help patch.
- Added concise descriptions of what each ABL object does to audio, or what it generates/analyzes for non-effect objects.
- Added listening/output-result language and compact key-control summaries.
- Reduced the default patcher window height from 930 px to approximately 505 px, fitting the EXAMPLE system plus documentation.
- Original Max 9 examples remain embedded and accessible from the top-right subpatch.

Functional architecture retained from v2:
- ABL_<effect> receive~ naming
- RANDOM SET and direct-parameter messaging
- 24-slot editable presets and state capture
- fixed gain/wet behavior established in v2
- ABL-specific helper JavaScript files
