# Audio zoom: edit a section, then hear the whole model

1. Start a sounding or looping envelope at a low listening level.
2. Set the first and last slots beside **display partials**, for example **4 / 16**.
3. Amplitudes, Detune and Anchors now show those same slots.
4. Turn **Hear displayed only** on. The other slots fade out over 100 ms.
5. Draw in any of the three editors. Each bar changes its original slot.
6. Turn the toggle off to compare in the full sound without changing the crop.
7. Click **display all** to restore all three full views and full sound.

**No snapshot is restored when leaving audition. Your edits remain.** Range and
solo commands do not zero, shorten or replace the three stored spectral lists.
The two range boxes stay within 1 ≤ first ≤ last ≤ Partial Count.

A slot's primary tone and its harmonic anchor are auditioned together. The
numbers are slot positions, not frequencies or sequence multipliers. Rulers
follow the chosen even/odd/prime sequence and offset.

Turn **Mirror** off to edit anchors independently. The anchor editor still
obeys the existing Anchor Scale. Global shapes, randomization, copy, remove /
restore and Mirror still work on the full model; cropping does not localize
those global operations. Automation and envelopes continue while auditioning.

Auto Level still measures the full transformed model. Soloing does not cause a
new compensation boost. It may sound much quieter, especially in high slots.
The feature does not trigger envelopes or turn on DSP.

Both outgoing and incoming offset-crossfade banks follow the audition range.
Merged tones use only the selected source contributions. Existing merged or
clustered frequencies and lane ownership stay unchanged; soloing is not a
retuning or unmerging operation.

Full-state presets contain the complete, unmasked model. The editing crop and
solo are temporary: preset recall returns to all views with audition off.

## Messages

Connect any of these to `send Partial_View_v23`:

```max
display partials 4 16
first 4
last 16
hear 1
hear 0
display all
```

`hear 0` restores the complete sound while keeping the cropped display.
`display all` restores the complete sound and all three displays.
The bus is direct; it is not a new `Synth_Control_v23` preset-manifest command.

Native Max execution and audio auditioning have not been performed here.
