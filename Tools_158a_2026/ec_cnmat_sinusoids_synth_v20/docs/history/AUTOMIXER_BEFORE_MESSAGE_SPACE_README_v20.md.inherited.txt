# ec_sinusoids_synth_automixer_v20

## Open this master
Open **`_ec_sinusoids_synth_automixer_v20.maxpat`** from the extracted folder. Keep the supplied JavaScript, help file and Max abstractions together. This package extends the repaired v20 synth; the original uploaded v20 ZIP and all reference uploads remain unchanged.

**Open only one v20 master/editor instance at a time.** This automixer and the previous v20 master deliberately share the existing v20 signal/control buses and lane stores. They are not independent simultaneous instruments.

## Automixer controls
A new **AUTOMIXER | 12 SPATIAL OUTPUTS** strip appears below the original main-page controls. The existing controls have not been moved.

| Control | Behavior / startup value |
|---|---|
| Mode | **Bypass (unity)** at startup. **Auto mix** starts the 12 generators; **Stop / mute** stops them and fades every mixer gain to zero. |
| restart | Engages Auto mix and restarts all 12 cycles. It does not trigger the existing synthesis ADSRs. |
| MIN RAMP ms | 2000 ms. Lower bound for one rise or fall, not the entire cycle. |
| MAX RAMP ms | 10000 ms. Upper bound for one rise or fall. Reversed bounds are sorted and both fields update. |
| WAIT AT ZERO ms | 5000 ms. Hold after the falling leg; zero gives continuous cycling. |
| PEAK AT 1.0 | Off: independent random peak targets in 0–1. On: every new cycle uses a peak target of 1.0. |
| UPDATE ms | 20 ms; integer range 1–1000. Controls v5's float-update interval and Auto's signal interpolation time. |
| GAIN TARGETS 01–12 | Read-only mixer target display, not an audio meter. |

For each cycle, v5 chooses a ramp duration and peak. The rising and falling legs share that duration. Thus the default full cycle is **9000–25000 ms**, including the 5000 ms hold. Timing/peak changes affect subsequent stages rather than forcibly restarting the current leg. Use restart to begin new cycles with the new settings. A wait edit is consulted when a falling leg ends; an already-running hold retains its selected duration.

**The automixer is an additional gain layer, not a replacement for the twelve ADSRs.** Supply a sounding model, enable DSP, raise the DAC gain cautiously and trigger/hold the synthesis envelopes as usual, then select Auto mix. A zero ADSR still makes its synthesis lane silent. Starting automation does not turn DSP on or trigger those envelopes.

The existing All Off/global lane Stop path stops active Auto mixing as well. It leaves Bypass in Bypass. After active Auto is stopped, select Auto mix or restart to resume; select Bypass to restore the normal synth path.

## Placement and v5 preservation
The embedded instance is:

```max
js automatic_lines_v5_ed.js 12 2000 10000 5000
```

It lives at `p SINUSOIDS_AUDIO_ROUTING_v20` → `p AUTOMIXER_CONTROL_v20` inside the master. The uploaded **v5 JavaScript is byte-for-byte unchanged**. No v6 script was needed.

The supplied routing prototype used 11 voices while wiring 12 outputs as gains. v5's last outlet is a summary list; it is not another voice. The integrated object has 12 scalar voice outlets plus a thirteenth summary outlet. Scalar outlet N controls spatial output N; the summary is monitor-only.

The gain layer is **after the spatial matrix and before every named group send, hardware-fader feed, and mono sum**. The corrected v20 channel order, synthesis engine, existing ADSR authority, presets, and all original audio connections are retained. Each gain is interpolated using `line~`; Stop and Bypass use 20 ms transitions. Auto smoothing follows UPDATE ms. The display shows targets rather than sample-by-sample interpolated gain.

The wrapper gates begin closed, while their gain signals begin at unity. A deferred initialization stops v5's original automatic load-start and selects Bypass. Startup output from the original script therefore cannot mute the normal synth path through the automation gates.

## Gain and native dependencies
Use an installed compatible CNMAT `sinusoids~` external with your Max installation. It is not bundled. Check the Max Console and the actual audio interface/channel mapping before enabling audio. DAC faders retain the v20 -70 dB initialization; no new DSP-on command was added.

**The named group buses and mono FX bus remain PRE-DAC-FADER, but are now POST-AUTOMIXER.** `Output_Gain_dB_v20` controls the DAC faders, not those named sends. Apply separate receive-side gain to FX/spatial receivers. Bypass restores unity gain in the new layer; it is not a mute command.

All new control/state bus names end in `_v20`. The generic supplied engine intentionally retains its own `automatic_lines_v5_ed.js` name. The help file has been corrected to load that exact filename.

## Remote control, changes and diagnostics
Send messages through `[send Automixer_v20]`; see `CONTROL_REFERENCE_v20.md` and `controls_v20.json`. Existing CUE galleries remain unchanged and synchronized. New automation can be driven directly from a score without opening a second editor.

`RELEASE_NOTES_v20.md` identifies changes outside the master. Fresh results are in `DIAGNOSTICS_v20.md` and `diagnostics/release/`. The previous base-v20 evidence is explicitly separated under `diagnostics/base_v20_release/`; older material under `docs/history/` is historical, not current verification.

To reproduce source/graph checks with Python 3.10+ and Node 18+:

```sh
python3 run_diagnostics_v20.py
```

Tests execute in a temporary copy; new results go to `diagnostics/latest/`. Python/Node are diagnostic dependencies only, not performance-time dependencies.

**Native Max execution, audio auditioning, actual scheduler behavior, CPU load and physical DAC routing were not tested in this build environment.** Complete `NATIVE_MAX_CHECKLIST_v20.md` before rehearsal or performance.
