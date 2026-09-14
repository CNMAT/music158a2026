# Organ-inspired sinusoid synth stops

## Stop, rank, spectrum

An organ stop selects one or more ranks of pipes. A rank is a coordinated set across a keyboard compass, rather than a single pitch. For one held key, each selected rank contributes a sounding pipe; the stop action and key action together decide which pipes speak. Registration is the choice of stops, and a combination action recalls groups of those choices. [1]

For an additive synth, three different quantities must remain distinct: the pitch multiplier of a rank, the harmonics within each pipe tone, and the relative level of the rank. A Principal 8-foot stop is not just sinusoid number 1. Its sounding pipe contributes fundamental plus overtones. Adding an Octava 4-foot rank adds a complete spectrum rooted at twice the note frequency.

The current Octave Families workspace is a different operation. It partitions indices 2–256 into disjoint doubling chains, such as 3, 6, 12, 24. That is useful for composition and spectral selection. Pipe-organ registrations deliberately overlap: harmonic 6 can arrive from the third harmonic of a ratio-2 rank and the second harmonic of a ratio-3 rank. The stops workspace therefore accumulates contributions at shared indices rather than enforcing exclusive membership.

The implemented workspace has fourteen drawable stop recipes and ten named registrations. Draw several stops and click apply, or click a named registration once. All three 256-slot banks are replaced in one transaction; the visible count is preserved. Opening the workspace does not change the sound. Its catalog is small enough to inspect in one script, and its output remains editable in the existing multisliders.

A sampled or physically modeled organ would require more detail. These recipes model sustained spectral organization, not pipe attacks, mouth noise, room radiation, wind interaction, or historic voicing. The distinction is deliberate: the immediate musical objective is to expose reusable combinations of partials, amplitudes and beating.

## Footage, ratios and pipe length

Footage expresses a stop's pitch relative to an open-pipe convention. At an 8-foot reference, 4-foot is one octave up and 2-foot is two octaves up; 16-foot is an octave down. Fractional footage identifies mutation pitches. Grapenthin's guide identifies the Cornet combination as 8, 4, 2 2/3, 2 and 1 3/5-foot ranks. [3]

For this workspace, Source Base Hz is the reference frequency F. The rank multiplier is m = 8 / footage. Here are the exact arithmetic mappings:

Footage           Multiplier       Harmonic index
32-foot           1/4              below the current index grid
16-foot           1/2              below the current index grid
8-foot            1                1
5 1/3-foot        3/2              requires a fractional pitch grid
4-foot            2                2
2 2/3-foot        3                3
2-foot            4                4
1 3/5-foot        5                5
1 1/3-foot        6                6
1 1/7-foot        7                7
1-foot            8                8
4/5-foot          10               10
2/3-foot          12               12
1/2-foot          16               16

The frequency of harmonic h of rank m is F × m × h. When m is an integer, that contribution belongs to slider index m × h. A ratio-3 rank therefore populates 3, 6, 9, 12… rather than only the doubling sequence 3, 6, 12, 24… .

For ideal cylindrical resonators, an open pipe has fundamental approximately c/(2L), while a one-end-closed pipe has approximately c/(4L). The stopped cylinder emphasizes the odd resonance sequence. Effective acoustic length differs from the geometrical length because of end corrections. These are useful starting models, not exact construction dimensions. [2]

Consequently an 8-foot stopped flute can have a physically shorter resonator than an 8-foot open rank. Footage should not be read as a universal measured tube length, especially for stopped, harmonic-overblowing and reed pipes. A reed stop's speaking behavior also involves the reed and resonator; it cannot be inferred from the simple open-cylinder formula alone.

V14 deliberately keeps the established integer partial grid. It does not force a 16-foot rank into index 1 or retune the entire synth just to imitate a suboctave stop. A later extension could choose a common denominator, halve the model base, and translate the other indices consistently. That changes the meaning of the source reference and needs a separate design decision.

## Voicing and spectral envelopes

Pipe dimensions influence tone as well as pitch. Pykett's analysis relates scaling across a rank to changes in harmonic spectra and notes that length and diameter need not halve at the same keyboard interval. His reported diapason example halves diameter every sixteenth note, while octave length changes occur every twelve semitones. That is one progression, not a universal recipe. [4]

A mouth-driven organ tone is also shaped by its excitation. Fletcher and Douglas investigate harmonic generation in organ pipes, recorders and flutes and compare model predictions with experiments; their results make clear that harmonic amplitudes depend on drive geometry and operating conditions, not just the resonator's list of possible modes. [11]

The v14 spectral laws are original design choices. They are not measurements from the sources and should not be presented as historic pipe scales. With harmonic number h beginning at 1:

Principal: h^(-1.35) × exp(-(h-1)/18)
Open flute: h^(-2.6) × exp(-(h-1)/9)
Stopped flute: h^(-2) × exp(-(h-1)/12), odd h only
String: h^(-0.9) × exp(-(h-1)/22); fundamental × 0.45
Reed: h^(-0.8) × exp(-(h-1)/20), with a broad boost around harmonic 4

These laws make the flute comparatively fundamental-dominated, the principal intermediate, and string/reed recipes richer in upper components. The stopped recipe is an ideal odd-harmonic reduction. Real stopped pipes can radiate even components; that ideal reduction is a controllable transform, not a claim that every stopped organ pipe has exactly zero even harmonics.

The harmonics-per-rank control defaults to 24. It limits h within each rank, not the overall model size. A ratio-8 rank with a 24-harmonic tail can reach index 192. Contributions beyond index 256 are omitted. The synth's existing post-transform frequency window still determines which populated components reach the oscillator bank.

Pykett's parameter-estimation work proposes compact descriptions of steady-state pipe spectra instead of individually tuning dozens of harmonics. Its emphasis on intuitive voicing controls supports keeping this workspace small and exposing its resulting lists for further editing. [10]

The next useful voicing controls would be spectral slope and a knee between two slopes, followed by a small formant boost. They would permit broad tone-family changes without introducing a separate slider for every rank's every overtone. Physical diameter can remain an explanatory metaphor unless an actual measured mapping is supplied.

## Mutations, mixtures and breaks

A mutation rank supplies a non-octave pitch relationship. V14 includes Nazard ratio 3, Tierce ratio 5 and Larigot ratio 6, each with its own flute-like harmonic tail. A Cornet V recipe combines ratios 1, 2, 3, 4 and 5. A Sesquialtera II recipe combines ratios 3 and 5; adding the flute foundations makes a related solo registration.

Organ mixture compositions often use diatonic interval labels, not harmonic indices. Pykett gives a three-rank quint mixture composition 15–19–22. Relative to an 8-foot manual reference, these are multipliers 4–6–8. He also explains how rank compositions break back in the upper compass and how their natural-harmonic tuning interacts with temperament. [5]

The translation table is:
Interval label 8  → multiplier 2
Interval label 12 → multiplier 3
Interval label 15 → multiplier 4
Interval label 17 → multiplier 5
Interval label 19 → multiplier 6
Interval label 22 → multiplier 8
Interval label 26 → multiplier 12
Interval label 29 → multiplier 16

The implemented Quint Mixture III contains rank roots 4, 6 and 8. It does not mean sliders 15, 19 and 22. Each root generates its own overtones, and shared components accumulate. This avoids a common transcription error when adapting real stoplists to additive synthesis.

Lawrence Phelps's account of the Mother Church organ gives actual compound-stop compositions across the compass and relates them to different functions: richness, brilliance and solo color. His Hauptwerk Sesquialtera II uses interval roots 12 and 17 through most of its compass, with a different bass composition. His examples demonstrate that a stop name is not a complete, register-independent algorithm. [6]

V14 does not yet implement automatic keyboard-dependent break tables. Source Base Hz can be an arbitrary frequency and the synth is not currently a 61-note organ rank player. A later mixture transform should therefore declare its reference note and break points explicitly, then lower selected rank roots one octave at specified thresholds. It should not silently delete high ranks and call that a historical break.

The present named PrincipalChorus combines Principal 8, Octava 4, Doublette 2 and Quint Mixture III. The standalone SharpMixture registration contains only the mixture and is chiefly useful for inspection or adding it manually to another spectral design. It is a label for this bright experiment, not the specification of a particular historic Scharff.

## Historic examples and beating

The BYU recordings catalog for the 1693 Schnitger organ at St. Jacobi lists principal and octave ranks alongside flutes, mutations, mixtures and reeds. Its Rückpositiv entries include Gedackt, Quintadena, Octava, Sexquialtera and Scharff. This provides listening references for contrasting rank families and the way mixtures supplement foundations. The v14 recipes do not copy those recorded spectra. [8]

The Saint-Sulpice stoplist documents another approach: Montre and Diapason foundations, Bourdon and harmonic flutes, mutations, several compound stops, and a Récit Voix céleste. It also records the origins of ranks, including older Clicquot material incorporated into the later instrument. An organ identified with Cavaillé-Coll is not necessarily composed entirely of newly built Cavaillé-Coll ranks. [9]

BYU OrganTutor describes a céleste as a slightly off-pitch rank used with a companion rank, or as a compound stop containing both. The detuned rank is usually sharp. This is a closely related principle to the synth's primary-plus-anchor pairs, though the exact tuning architecture differs. [7]

V14's Celeste-inspired II recipe creates a string-like primary spectrum with an equal anchor spectrum. Above partial 1, it chooses inharmonicity values to request approximately the selected BEAT Hz separation before post transforms:

inharmonicity[n] = beatHz / (Max Drift × ERB(Source Base × n))

Values are clipped to 1. If Max Drift is zero, the ERB detuning cannot create that separation and the status reports beat-limited slots. Reapply after changing base, Max Drift, beat amount or tail length. The six-decimal memory resolution means the resulting separation is approximate.

Seeded signs can place different primary partials above or below their anchors. The fundamental stays fixed, unlike two independently tuned complete organ ranks. This is therefore a controlled spectral-beating transform, not an exact reproduction of Voix céleste. Existing micro drift can vary the separation over time without changing the stored recipe.

Real organ pipes are nonlinear acoustic oscillators and can interact. Abel, Bergweiler and Gerhard-Multhaupt experimentally investigate synchronization and nonlinear beating between coupled pipes. Independent sine oscillators do not reproduce those coupling mechanisms. The musical resemblance lies in the changing interference pattern, not in identical physical dynamics. [12]

A more faithful future céleste design would support a coherent whole-rank detuning in cents, including its fundamental, rather than independently offsetting partials. A separate rank representation would also preserve multiple same-index primary contributors with different tuning instead of collapsing them into one slider value.

## V14 recipes and usage

Open ec_sinusoid_synth_stops_14 from the main patch. It is a command workspace connected to the existing indexed-memory engine; it is not a separate audio instrument. The left input follows the generator's base frequency and the right input follows Max Drift, so beat calculations use the same ERB reference as the generator.

The fourteen drawable recipes are Principal 8, Octava 4, Doublette 2, Open Flute 8, Bourdon 8, Gamba 8, Trumpet 8, Nazard, Tierce, Larigot, Quint Mixture III, Celeste-inspired II, Flute 4 and Flute 2. Toggle any combination, then click apply. Selecting toggles alone changes the proposed registration; it does not overwrite the current sliders until apply is pressed.

The ten one-click registrations are:
PrincipalChorus: Principal 8 + Octava 4 + Doublette 2 + Mixture III
CornetV: flute roots 1, 2, 3, 4, 5
SesquialteraII: flute roots 3, 5
FluteQuint: Bourdon 8 + Nazard
CelesteII: paired string-like spectra with requested beating
ReedChorus: Trumpet 8 + principal roots 1, 2, 4
OpenFlute: Open Flute 8
StoppedFlute: Bourdon 8
String8: Gamba 8
SharpMixture: quint-mixture roots 4, 6, 8

The relative rank gains are original voicing choices, visible in the script's ranks array. Colliding contributions add in their amplitude layers. To make comparisons predictable, the sum of linear amplitude values across primary and anchor banks is normalized to 0.8 for each nonempty registration. This is not loudness normalization and does not imitate the increase in organ loudness as more stops are drawn. Roundoff from the existing six-decimal memory format can cause a small numerical difference.

APPLY replaces all 256 values in each memory bank, stops shape morphs, and emits one final model. It does not expand the visible count. Set the component count to 256 if the aim is to hear every populated recipe slot. Otherwise hidden recipe entries remain in memory and become available when the count grows. Source Base, global retuning controls, micro settings and audio amplitude multiplier are preserved.

CLEAR clears proposed stop selections and applies zero banks. Main alloff also clears the banks and resets all three SHAPES menus and their internal shape selections to flat zero. Stop toggles remain a proposed registration, so another apply can rebuild them. The SHAPES menus identify the last requested shape, not a spectral analysis of the stop recipe.

For a first audition, compare OpenFlute, StoppedFlute and String8 with micro off and extra transforms at zero. Then compare PrincipalChorus and CornetV. Finally apply CelesteII with Max Drift above zero and a small beat setting, followed by enabling the existing micro motion. Reapplication is intentional: it makes proposed parameter edits reviewable before overwriting the current model.

PartialAmplitudes_to_HarmonicAnchor copies all stored primary amplitudes into the anchor bank. PartialAmplitudes_to_Inharmonicity copies them into the inharmonicity bank. Those operations use the current primary morph position, stop the affected morphs, and update the destination and primary displays atomically. The untouched layer retains its settings.

## Next transforms to consider

These are proposals beyond the implemented v14 catalog, ordered by how naturally they fit the current architecture.

1. Rank voicing with a spectral knee. Give each selected rank a low-harmonic slope, upper-harmonic slope and knee index. A slope can morph smoothly while rank pitch stays fixed. This yields a compact, human-readable route between flute, principal and string character. It can use the same shared memory endpoint and does not require more oscillators than the current capacity.

2. Registration morphs. Build A and B from the same small stop catalog and interpolate their full amplitude banks. Rank selection remains discrete at the design level, while the actual sound transition is continuous. Equal linear amplitude does not mean equal loudness, so a separate optional gain law should be auditioned rather than assumed.

3. Mixture break tables. Declare a source-note reference and a table of ranges with rank multipliers. On each break, lower one rank at a time by an octave. This is a structural change in the registration, not a random mask. It needs an explicit policy for arbitrary microtonal bases and for whether Source Base means a played key or an underlying spectral grid.

4. Controlled temperament mutations. Offer exact harmonic ratios versus tempered pitch ratios for the mutation ranks. For example, a ratio-5 root is a natural seventeenth, while a tempered equivalent is 2^(28/12). The difference can become a purposeful beating source. This requires fractional-frequency rank data; forcing it into an integer slider index would lose the intended tuning.

5. Coherent rank célestes. Detune a complete companion rank by a small number of cents and optionally add a slower per-rank drift. A single detuned frequency ratio preserves internal harmonic structure. This would complement the existing per-partial micro walk, which creates a less coherent cloud of beating rates. Multiple rank oscillators at the same index need a richer model than one primary plus one exact anchor.

6. Quintadena and formant colors. Emphasize the third harmonic or a small band in an otherwise flute-like spectrum. Such stops would be specified as explicit spectral boosts with a root ratio, rather than by a vague timbre label. The current script can support this as another short spectrum function once ears guide the coefficients.

7. Septimal and extended mutation families. Explore roots 7, 9, 11 and 13 with short tails, plus their octave doublings. These extend the compositional usefulness of Octave Families into nonexclusive registrations. They should be labeled experimental mutations rather than represented as universal historic stop practice.

8. A bounded wind/chorus transform. Combine a slow shared drift component with small independent residual walks, so some beating moves together and some moves apart. This can use the current micro architecture as a starting point. It would simulate coordinated frequency motion, not actual wind pressure or acoustic synchronization.

The priority should be voicing and coherent registration design before adding many named presets. A handful of well-auditioned ranks, a small set of combinations, and a clear view into the generated data will be more useful than a large unverified dictionary of historic names.

## Sources

1. BYU Organ Area. [Organ Types and Components](https://www.organ.byu.edu/orpipe.html). undated.
2. Joe Wolfe, UNSW Music Acoustics. [Pipes and harmonics: cylindrical and conical bores](https://phys.unsw.edu.au/jw/pipes.html). undated.
3. Ina Grapenthin / Rodgers. [Learning When to Stop](https://www.rodgersinstruments.com/news/learning-when-to-stop). 2023 reprint of 2014 guide.
4. Colin Pykett. [The Effect of Organ Pipe Scales on their Harmonic Spectra](https://www.colinpykett.org.uk/effect-of-organ-pipe-scale-on-harmonic-spectra.htm). 2016.
5. Colin Pykett. [Mixture Stops](https://www.colinpykett.org.uk/mixture-stops-on-the-organ.htm). 2014.
6. Lawrence Phelps. [Compound Stops in Mother Church Organ of Christian Science](https://lawrencephelps.com/Documents/Articles/compoundstops.shtml). undated archived original article.
7. BYU OrganTutor. [The String Family, page 4: The Celeste](https://organ.byu.edu/organtutor/organ_registration/tone_families/families_intro/string_family/page4.htm). undated.
8. BYU Organ Stop Library. [Schnitger 1693, St. Jacobi: Individual Stops](https://organstoplib.byu.edu/JacobiSchnitger/JacStops.html). undated.
9. AROSS, Saint-Sulpice. [Great organ specification](https://www.aross.fr/en/the-great-organ/great-organ-specification/). undated.
10. Colin Pykett. [A technique for simplifying parameter estimation in synthesised organ pipe sounds](https://www.colinpykett.org.uk/parameter-estimation-in-synthesising-pipe-organ-sounds.htm). 2017; revised 2024.
11. N. H. Fletcher and L. M. Douglas. [Harmonic Generation in Organ Pipes, Recorders, and Flutes](https://www.phys.unsw.edu.au/music/people/publications/Fletcheretal1980.pdf). 1980.
12. M. Abel, S. Bergweiler, R. Gerhard-Multhaupt. [Synchronization of organ pipes: experimental observations and modeling](https://arxiv.org/abs/physics/0506094). 2005.
