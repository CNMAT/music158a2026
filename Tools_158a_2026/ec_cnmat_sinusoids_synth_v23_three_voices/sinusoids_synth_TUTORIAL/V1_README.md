# Compact sixteen-stage tutorial

Open the synth normally, then open **V1_00_START_TUTORIAL.maxpat** here. Double-click a lesson. All lessons are also available as numbered files.

**Listen** messages are green with black text. Each lesson is 560 × 402; the overview is 560 × 443. Action messages fit their text. Use **← / →** at the top right, or release the matching arrow key while the lesson is frontmost. The current lesson closes after opening its neighbor. At either end, the outward arrow returns to the overview.

Navigation does not change sound settings or stop audio. **Silence All Feeds** ends held/looping examples. Opening a page does not send synth commands. **Prepare** replaces the live spectrum; save a sound first. Enable DSP manually.

In patching view, **p LESSON_ACTIONS** holds the unchanged action commands. **p PREPARE_RECIPE** holds a long preparation sequence. The tutorial contains no JavaScript or audio objects; it controls the already-open synth.

The main synth has `display partials`, two integer boxes, `display all`, and **Hear displayed only** beside Harmonic Partial Amplitudes. The range applies to **Amplitudes, Detune and Anchors together**. Edit either endpoint while locked; 1 ≤ first ≤ last ≤ Partial Count. Turn **Hear displayed only** on to hear only those slots and their anchors. Turn it off to hear the complete model while keeping the cropped views. **Display all** restores all three views, turns audition off, and silently sets the boxes to 1 and Partial Count. All bar edits are retained; hidden values are not erased. The count buttons in lesson 03 still change the active synthesis count.

**TUTORIAL_GUIDE.html** and **TUTORIAL_GUIDE.md** retain the longer reading descriptions. Their lesson commands remain the same.
