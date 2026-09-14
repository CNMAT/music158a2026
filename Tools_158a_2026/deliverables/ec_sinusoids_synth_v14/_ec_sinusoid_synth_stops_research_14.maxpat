{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      100,
      100,
      960,
      730
    ],
    "bgcolor": [
      0.95,
      0.95,
      0.95,
      1
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "text": "ORGAN-INSPIRED SINUSOID SYNTH STOPS",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            20,
            900,
            30
          ],
          "fontsize": 20,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "text": "Double-click a topic. Numbered references identify sources; Sources contains clickable URL messages. Recipes are original synthetic designs, not sampled historic stops.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            65,
            900,
            45
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic0",
          "maxclass": "newobj",
          "text": "p Stop_rank_spectrum_14",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            140,
            390,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 5,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100,
              100,
              960,
              730
            ],
            "bgcolor": [
              0.95,
              0.95,
              0.95,
              1
            ],
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "STOP, RANK, SPECTRUM",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    20,
                    900,
                    30
                  ],
                  "fontsize": 20,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "body",
                  "maxclass": "comment",
                  "text": "An organ stop selects one or more ranks of pipes. A rank is a coordinated set across a keyboard compass,\nrather than a single pitch. For one held key, each selected rank contributes a sounding pipe; the stop\naction and key action together decide which pipes speak. Registration is the choice of stops, and a\ncombination action recalls groups of those choices. [1]\n\nFor an additive synth, three different quantities must remain distinct: the pitch multiplier of a rank,\nthe harmonics within each pipe tone, and the relative level of the rank. A Principal 8-foot stop is not\njust sinusoid number 1. Its sounding pipe contributes fundamental plus overtones. Adding an Octava 4-foot\nrank adds a complete spectrum rooted at twice the note frequency.\n\nThe current Octave Families workspace is a different operation. It partitions indices 2\u2013256 into disjoint\ndoubling chains, such as 3, 6, 12, 24. That is useful for composition and spectral selection. Pipe-organ\nregistrations deliberately overlap: harmonic 6 can arrive from the third harmonic of a ratio-2 rank and\nthe second harmonic of a ratio-3 rank. The stops workspace therefore accumulates contributions at shared\nindices rather than enforcing exclusive membership.\n\nThe implemented workspace has fourteen drawable stop recipes and ten named registrations. Draw several\nstops and click apply, or click a named registration once. All three 256-slot banks are replaced in one\ntransaction; the visible count is preserved. Opening the workspace does not change the sound. Its catalog\nis small enough to inspect in one script, and its output remains editable in the existing multisliders.\n\nA sampled or physically modeled organ would require more detail. These recipes model sustained spectral\norganization, not pipe attacks, mouth noise, room radiation, wind interaction, or historic voicing. The\ndistinction is deliberate: the immediate musical objective is to expose reusable combinations of\npartials, amplitudes and beating.",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    75,
                    900,
                    600
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              }
            ],
            "lines": []
          }
        }
      },
      {
        "box": {
          "id": "synopsis0",
          "maxclass": "comment",
          "text": "What a stop selects; ranks versus harmonics.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            140,
            485,
            35
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic1",
          "maxclass": "newobj",
          "text": "p Footage_ratios_and_pipe_length_14",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            195,
            390,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 5,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100,
              100,
              960,
              730
            ],
            "bgcolor": [
              0.95,
              0.95,
              0.95,
              1
            ],
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "FOOTAGE, RATIOS AND PIPE LENGTH",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    20,
                    900,
                    30
                  ],
                  "fontsize": 20,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "body",
                  "maxclass": "comment",
                  "text": "Footage expresses a stop's pitch relative to an open-pipe convention. At an 8-foot reference, 4-foot is\none octave up and 2-foot is two octaves up; 16-foot is an octave down. Fractional footage identifies\nmutation pitches. Grapenthin's guide identifies the Cornet combination as 8, 4, 2 2/3, 2 and 1 3/5-foot\nranks. [3]\n\nFor this workspace, Source Base Hz is the reference frequency F. The rank multiplier is m = 8 / footage.\nHere are the exact arithmetic mappings:\n\nFootage           Multiplier       Harmonic index\n32-foot           1/4              below the current index grid\n16-foot           1/2              below the current index grid\n8-foot            1                1\n5 1/3-foot        3/2              requires a fractional pitch grid\n4-foot            2                2\n2 2/3-foot        3                3\n2-foot            4                4\n1 3/5-foot        5                5\n1 1/3-foot        6                6\n1 1/7-foot        7                7\n1-foot            8                8\n4/5-foot          10               10\n2/3-foot          12               12\n1/2-foot          16               16\n\nThe frequency of harmonic h of rank m is F \u00d7 m \u00d7 h. When m is an integer, that contribution belongs to\nslider index m \u00d7 h. A ratio-3 rank therefore populates 3, 6, 9, 12\u2026 rather than only the doubling\nsequence 3, 6, 12, 24\u2026 .\n\nFor ideal cylindrical resonators, an open pipe has fundamental approximately c/(2L), while a one-end-\nclosed pipe has approximately c/(4L). The stopped cylinder emphasizes the odd resonance sequence.\nEffective acoustic length differs from the geometrical length because of end corrections. These are\nuseful starting models, not exact construction dimensions. [2]\n\nConsequently an 8-foot stopped flute can have a physically shorter resonator than an 8-foot open rank.\nFootage should not be read as a universal measured tube length, especially for stopped, harmonic-\noverblowing and reed pipes. A reed stop's speaking behavior also involves the reed and resonator; it\ncannot be inferred from the simple open-cylinder formula alone.\n\nV14 deliberately keeps the established integer partial grid. It does not force a 16-foot rank into index\n1 or retune the entire synth just to imitate a suboctave stop. A later extension could choose a common\ndenominator, halve the model base, and translate the other indices consistently. That changes the meaning\nof the source reference and needs a separate design decision.",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    75,
                    900,
                    734
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              }
            ],
            "lines": []
          }
        }
      },
      {
        "box": {
          "id": "synopsis1",
          "maxclass": "comment",
          "text": "Footage-to-ratio table and current grid limits.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            195,
            485,
            35
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic2",
          "maxclass": "newobj",
          "text": "p Voicing_and_spectral_envelopes_14",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            250,
            390,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 5,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100,
              100,
              960,
              730
            ],
            "bgcolor": [
              0.95,
              0.95,
              0.95,
              1
            ],
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "VOICING AND SPECTRAL ENVELOPES",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    20,
                    900,
                    30
                  ],
                  "fontsize": 20,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "body",
                  "maxclass": "comment",
                  "text": "Pipe dimensions influence tone as well as pitch. Pykett's analysis relates scaling across a rank to\nchanges in harmonic spectra and notes that length and diameter need not halve at the same keyboard\ninterval. His reported diapason example halves diameter every sixteenth note, while octave length changes\noccur every twelve semitones. That is one progression, not a universal recipe. [4]\n\nA mouth-driven organ tone is also shaped by its excitation. Fletcher and Douglas investigate harmonic\ngeneration in organ pipes, recorders and flutes and compare model predictions with experiments; their\nresults make clear that harmonic amplitudes depend on drive geometry and operating conditions, not just\nthe resonator's list of possible modes. [11]\n\nThe v14 spectral laws are original design choices. They are not measurements from the sources and should\nnot be presented as historic pipe scales. With harmonic number h beginning at 1:\n\nPrincipal: h^(-1.35) \u00d7 exp(-(h-1)/18)\nOpen flute: h^(-2.6) \u00d7 exp(-(h-1)/9)\nStopped flute: h^(-2) \u00d7 exp(-(h-1)/12), odd h only\nString: h^(-0.9) \u00d7 exp(-(h-1)/22); fundamental \u00d7 0.45\nReed: h^(-0.8) \u00d7 exp(-(h-1)/20), with a broad boost around harmonic 4\n\nThese laws make the flute comparatively fundamental-dominated, the principal intermediate, and\nstring/reed recipes richer in upper components. The stopped recipe is an ideal odd-harmonic reduction.\nReal stopped pipes can radiate even components; that ideal reduction is a controllable transform, not a\nclaim that every stopped organ pipe has exactly zero even harmonics.\n\nThe harmonics-per-rank control defaults to 24. It limits h within each rank, not the overall model size.\nA ratio-8 rank with a 24-harmonic tail can reach index 192. Contributions beyond index 256 are omitted.\nThe synth's existing post-transform frequency window still determines which populated components reach\nthe oscillator bank.\n\nPykett's parameter-estimation work proposes compact descriptions of steady-state pipe spectra instead of\nindividually tuning dozens of harmonics. Its emphasis on intuitive voicing controls supports keeping this\nworkspace small and exposing its resulting lists for further editing. [10]\n\nThe next useful voicing controls would be spectral slope and a knee between two slopes, followed by a\nsmall formant boost. They would permit broad tone-family changes without introducing a separate slider\nfor every rank's every overtone. Physical diameter can remain an explanatory metaphor unless an actual\nmeasured mapping is supplied.",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    75,
                    900,
                    649
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              }
            ],
            "lines": []
          }
        }
      },
      {
        "box": {
          "id": "synopsis2",
          "maxclass": "comment",
          "text": "Pipe scaling; original spectral laws.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            250,
            485,
            35
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic3",
          "maxclass": "newobj",
          "text": "p Mutations_mixtures_and_breaks_14",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            305,
            390,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 5,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100,
              100,
              960,
              730
            ],
            "bgcolor": [
              0.95,
              0.95,
              0.95,
              1
            ],
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "MUTATIONS, MIXTURES AND BREAKS",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    20,
                    900,
                    30
                  ],
                  "fontsize": 20,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "body",
                  "maxclass": "comment",
                  "text": "A mutation rank supplies a non-octave pitch relationship. V14 includes Nazard ratio 3, Tierce ratio 5 and\nLarigot ratio 6, each with its own flute-like harmonic tail. A Cornet V recipe combines ratios 1, 2, 3, 4\nand 5. A Sesquialtera II recipe combines ratios 3 and 5; adding the flute foundations makes a related\nsolo registration.\n\nOrgan mixture compositions often use diatonic interval labels, not harmonic indices. Pykett gives a\nthree-rank quint mixture composition 15\u201319\u201322. Relative to an 8-foot manual reference, these are\nmultipliers 4\u20136\u20138. He also explains how rank compositions break back in the upper compass and how their\nnatural-harmonic tuning interacts with temperament. [5]\n\nThe translation table is:\nInterval label 8  \u2192 multiplier 2\nInterval label 12 \u2192 multiplier 3\nInterval label 15 \u2192 multiplier 4\nInterval label 17 \u2192 multiplier 5\nInterval label 19 \u2192 multiplier 6\nInterval label 22 \u2192 multiplier 8\nInterval label 26 \u2192 multiplier 12\nInterval label 29 \u2192 multiplier 16\n\nThe implemented Quint Mixture III contains rank roots 4, 6 and 8. It does not mean sliders 15, 19 and 22.\nEach root generates its own overtones, and shared components accumulate. This avoids a common\ntranscription error when adapting real stoplists to additive synthesis.\n\nLawrence Phelps's account of the Mother Church organ gives actual compound-stop compositions across the\ncompass and relates them to different functions: richness, brilliance and solo color. His Hauptwerk\nSesquialtera II uses interval roots 12 and 17 through most of its compass, with a different bass\ncomposition. His examples demonstrate that a stop name is not a complete, register-independent algorithm.\n[6]\n\nV14 does not yet implement automatic keyboard-dependent break tables. Source Base Hz can be an arbitrary\nfrequency and the synth is not currently a 61-note organ rank player. A later mixture transform should\ntherefore declare its reference note and break points explicitly, then lower selected rank roots one\noctave at specified thresholds. It should not silently delete high ranks and call that a historical\nbreak.\n\nThe present named PrincipalChorus combines Principal 8, Octava 4, Doublette 2 and Quint Mixture III. The\nstandalone SharpMixture registration contains only the mixture and is chiefly useful for inspection or\nadding it manually to another spectral design. It is a label for this bright experiment, not the\nspecification of a particular historic Scharff.",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    75,
                    900,
                    700
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              }
            ],
            "lines": []
          }
        }
      },
      {
        "box": {
          "id": "synopsis3",
          "maxclass": "comment",
          "text": "Mutation roots, mixture intervals and register breaks.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            305,
            485,
            35
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic4",
          "maxclass": "newobj",
          "text": "p Historic_examples_and_beating_14",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            360,
            390,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 5,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100,
              100,
              960,
              730
            ],
            "bgcolor": [
              0.95,
              0.95,
              0.95,
              1
            ],
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "HISTORIC EXAMPLES AND BEATING",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    20,
                    900,
                    30
                  ],
                  "fontsize": 20,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "body",
                  "maxclass": "comment",
                  "text": "The BYU recordings catalog for the 1693 Schnitger organ at St. Jacobi lists principal and octave ranks\nalongside flutes, mutations, mixtures and reeds. Its R\u00fcckpositiv entries include Gedackt, Quintadena,\nOctava, Sexquialtera and Scharff. This provides listening references for contrasting rank families and\nthe way mixtures supplement foundations. The v14 recipes do not copy those recorded spectra. [8]\n\nThe Saint-Sulpice stoplist documents another approach: Montre and Diapason foundations, Bourdon and\nharmonic flutes, mutations, several compound stops, and a R\u00e9cit Voix c\u00e9leste. It also records the origins\nof ranks, including older Clicquot material incorporated into the later instrument. An organ identified\nwith Cavaill\u00e9-Coll is not necessarily composed entirely of newly built Cavaill\u00e9-Coll ranks. [9]\n\nBYU OrganTutor describes a c\u00e9leste as a slightly off-pitch rank used with a companion rank, or as a\ncompound stop containing both. The detuned rank is usually sharp. This is a closely related principle to\nthe synth's primary-plus-anchor pairs, though the exact tuning architecture differs. [7]\n\nV14's Celeste-inspired II recipe creates a string-like primary spectrum with an equal anchor spectrum.\nAbove partial 1, it chooses inharmonicity values to request approximately the selected BEAT Hz separation\nbefore post transforms:\n\ninharmonicity[n] = beatHz / (Max Drift \u00d7 ERB(Source Base \u00d7 n))\n\nValues are clipped to 1. If Max Drift is zero, the ERB detuning cannot create that separation and the\nstatus reports beat-limited slots. Reapply after changing base, Max Drift, beat amount or tail length.\nThe six-decimal memory resolution means the resulting separation is approximate.\n\nSeeded signs can place different primary partials above or below their anchors. The fundamental stays\nfixed, unlike two independently tuned complete organ ranks. This is therefore a controlled spectral-\nbeating transform, not an exact reproduction of Voix c\u00e9leste. Existing micro drift can vary the\nseparation over time without changing the stored recipe.\n\nReal organ pipes are nonlinear acoustic oscillators and can interact. Abel, Bergweiler and Gerhard-\nMulthaupt experimentally investigate synchronization and nonlinear beating between coupled pipes.\nIndependent sine oscillators do not reproduce those coupling mechanisms. The musical resemblance lies in\nthe changing interference pattern, not in identical physical dynamics. [12]\n\nA more faithful future c\u00e9leste design would support a coherent whole-rank detuning in cents, including\nits fundamental, rather than independently offsetting partials. A separate rank representation would also\npreserve multiple same-index primary contributors with different tuning instead of collapsing them into\none slider value.",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    75,
                    900,
                    666
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              }
            ],
            "lines": []
          }
        }
      },
      {
        "box": {
          "id": "synopsis4",
          "maxclass": "comment",
          "text": "Schnitger, Saint-Sulpice, c\u00e9lestes and coupling.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            360,
            485,
            35
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic5",
          "maxclass": "newobj",
          "text": "p V14_recipes_and_usage_14",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            415,
            390,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 5,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100,
              100,
              960,
              730
            ],
            "bgcolor": [
              0.95,
              0.95,
              0.95,
              1
            ],
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "V14 RECIPES AND USAGE",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    20,
                    900,
                    30
                  ],
                  "fontsize": 20,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "body",
                  "maxclass": "comment",
                  "text": "Open ec_sinusoid_synth_stops_14 from the main patch. It is a command workspace connected to the existing\nindexed-memory engine; it is not a separate audio instrument. The left input follows the generator's base\nfrequency and the right input follows Max Drift, so beat calculations use the same ERB reference as the\ngenerator.\n\nThe fourteen drawable recipes are Principal 8, Octava 4, Doublette 2, Open Flute 8, Bourdon 8, Gamba 8,\nTrumpet 8, Nazard, Tierce, Larigot, Quint Mixture III, Celeste-inspired II, Flute 4 and Flute 2. Toggle\nany combination, then click apply. Selecting toggles alone changes the proposed registration; it does not\noverwrite the current sliders until apply is pressed.\n\nThe ten one-click registrations are:\nPrincipalChorus: Principal 8 + Octava 4 + Doublette 2 + Mixture III\nCornetV: flute roots 1, 2, 3, 4, 5\nSesquialteraII: flute roots 3, 5\nFluteQuint: Bourdon 8 + Nazard\nCelesteII: paired string-like spectra with requested beating\nReedChorus: Trumpet 8 + principal roots 1, 2, 4\nOpenFlute: Open Flute 8\nStoppedFlute: Bourdon 8\nString8: Gamba 8\nSharpMixture: quint-mixture roots 4, 6, 8\n\nThe relative rank gains are original voicing choices, visible in the script's ranks array. Colliding\ncontributions add in their amplitude layers. To make comparisons predictable, the sum of linear amplitude\nvalues across primary and anchor banks is normalized to 0.8 for each nonempty registration. This is not\nloudness normalization and does not imitate the increase in organ loudness as more stops are drawn.\nRoundoff from the existing six-decimal memory format can cause a small numerical difference.\n\nAPPLY replaces all 256 values in each memory bank, stops shape morphs, and emits one final model. It does\nnot expand the visible count. Set the component count to 256 if the aim is to hear every populated recipe\nslot. Otherwise hidden recipe entries remain in memory and become available when the count grows. Source\nBase, global retuning controls, micro settings and audio amplitude multiplier are preserved.\n\nCLEAR clears proposed stop selections and applies zero banks. Main alloff also clears the banks and\nresets all three SHAPES menus and their internal shape selections to flat zero. Stop toggles remain a\nproposed registration, so another apply can rebuild them. The SHAPES menus identify the last requested\nshape, not a spectral analysis of the stop recipe.\n\nFor a first audition, compare OpenFlute, StoppedFlute and String8 with micro off and extra transforms at\nzero. Then compare PrincipalChorus and CornetV. Finally apply CelesteII with Max Drift above zero and a\nsmall beat setting, followed by enabling the existing micro motion. Reapplication is intentional: it\nmakes proposed parameter edits reviewable before overwriting the current model.\n\nPartialAmplitudes_to_HarmonicAnchor copies all stored primary amplitudes into the anchor bank.\nPartialAmplitudes_to_Inharmonicity copies them into the inharmonicity bank. Those operations use the\ncurrent primary morph position, stop the affected morphs, and update the destination and primary displays\natomically. The untouched layer retains its settings.",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    75,
                    900,
                    819
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              }
            ],
            "lines": []
          }
        }
      },
      {
        "box": {
          "id": "synopsis5",
          "maxclass": "comment",
          "text": "Drawable stops, one-click registrations and memory behavior.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            415,
            485,
            35
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic6",
          "maxclass": "newobj",
          "text": "p Next_transforms_to_consider_14",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            470,
            390,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 5,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100,
              100,
              960,
              730
            ],
            "bgcolor": [
              0.95,
              0.95,
              0.95,
              1
            ],
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "NEXT TRANSFORMS TO CONSIDER",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    20,
                    900,
                    30
                  ],
                  "fontsize": 20,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "body",
                  "maxclass": "comment",
                  "text": "These are proposals beyond the implemented v14 catalog, ordered by how naturally they fit the current\narchitecture.\n\n1. Rank voicing with a spectral knee. Give each selected rank a low-harmonic slope, upper-harmonic slope\nand knee index. A slope can morph smoothly while rank pitch stays fixed. This yields a compact, human-\nreadable route between flute, principal and string character. It can use the same shared memory endpoint\nand does not require more oscillators than the current capacity.\n\n2. Registration morphs. Build A and B from the same small stop catalog and interpolate their full\namplitude banks. Rank selection remains discrete at the design level, while the actual sound transition\nis continuous. Equal linear amplitude does not mean equal loudness, so a separate optional gain law\nshould be auditioned rather than assumed.\n\n3. Mixture break tables. Declare a source-note reference and a table of ranges with rank multipliers. On\neach break, lower one rank at a time by an octave. This is a structural change in the registration, not a\nrandom mask. It needs an explicit policy for arbitrary microtonal bases and for whether Source Base means\na played key or an underlying spectral grid.\n\n4. Controlled temperament mutations. Offer exact harmonic ratios versus tempered pitch ratios for the\nmutation ranks. For example, a ratio-5 root is a natural seventeenth, while a tempered equivalent is\n2^(28/12). The difference can become a purposeful beating source. This requires fractional-frequency rank\ndata; forcing it into an integer slider index would lose the intended tuning.\n\n5. Coherent rank c\u00e9lestes. Detune a complete companion rank by a small number of cents and optionally add\na slower per-rank drift. A single detuned frequency ratio preserves internal harmonic structure. This\nwould complement the existing per-partial micro walk, which creates a less coherent cloud of beating\nrates. Multiple rank oscillators at the same index need a richer model than one primary plus one exact\nanchor.\n\n6. Quintadena and formant colors. Emphasize the third harmonic or a small band in an otherwise flute-like\nspectrum. Such stops would be specified as explicit spectral boosts with a root ratio, rather than by a\nvague timbre label. The current script can support this as another short spectrum function once ears\nguide the coefficients.\n\n7. Septimal and extended mutation families. Explore roots 7, 9, 11 and 13 with short tails, plus their\noctave doublings. These extend the compositional usefulness of Octave Families into nonexclusive\nregistrations. They should be labeled experimental mutations rather than represented as universal\nhistoric stop practice.\n\n8. A bounded wind/chorus transform. Combine a slow shared drift component with small independent residual\nwalks, so some beating moves together and some moves apart. This can use the current micro architecture\nas a starting point. It would simulate coordinated frequency motion, not actual wind pressure or acoustic\nsynchronization.\n\nThe priority should be voicing and coherent registration design before adding many named presets. A\nhandful of well-auditioned ranks, a small set of combinations, and a clear view into the generated data\nwill be more useful than a large unverified dictionary of historic names.",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    75,
                    900,
                    819
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              }
            ],
            "lines": []
          }
        }
      },
      {
        "box": {
          "id": "synopsis6",
          "maxclass": "comment",
          "text": "Eight proposed transforms and priorities.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            470,
            485,
            35
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "sources",
          "maxclass": "newobj",
          "text": "p Sources_14",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            540,
            145,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 5,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100,
              100,
              960,
              730
            ],
            "bgcolor": [
              0.95,
              0.95,
              0.95,
              1
            ],
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "SOURCES \u2014 CLICK A URL MESSAGE",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    20,
                    900,
                    30
                  ],
                  "fontsize": 20,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "label0",
                  "maxclass": "comment",
                  "text": "1. BYU Organ Area \u2014 Organ Types and Components (undated)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    75,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url0",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://www.organ.byu.edu/orpipe.html",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    117,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label1",
                  "maxclass": "comment",
                  "text": "2. Joe Wolfe, UNSW Music Acoustics \u2014 Pipes and harmonics: cylindrical and conical bores (undated)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    167,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url1",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://phys.unsw.edu.au/jw/pipes.html",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    209,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label2",
                  "maxclass": "comment",
                  "text": "3. Ina Grapenthin / Rodgers \u2014 Learning When to Stop (2023 reprint of 2014 guide)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    259,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url2",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://www.rodgersinstruments.com/news/learning-when-to-stop",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    301,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label3",
                  "maxclass": "comment",
                  "text": "4. Colin Pykett \u2014 The Effect of Organ Pipe Scales on their Harmonic Spectra (2016)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    351,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url3",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://www.colinpykett.org.uk/effect-of-organ-pipe-scale-on-harmonic-spectra.htm",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    393,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label4",
                  "maxclass": "comment",
                  "text": "5. Colin Pykett \u2014 Mixture Stops (2014)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    443,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url4",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://www.colinpykett.org.uk/mixture-stops-on-the-organ.htm",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    485,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label5",
                  "maxclass": "comment",
                  "text": "6. Lawrence Phelps \u2014 Compound Stops in Mother Church Organ of Christian Science (undated archived original article)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    535,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url5",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://lawrencephelps.com/Documents/Articles/compoundstops.shtml",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    577,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label6",
                  "maxclass": "comment",
                  "text": "7. BYU OrganTutor \u2014 The String Family, page 4: The Celeste (undated)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    627,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url6",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://organ.byu.edu/organtutor/organ_registration/tone_families/families_intro/string_family/page4.htm",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    669,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label7",
                  "maxclass": "comment",
                  "text": "8. BYU Organ Stop Library \u2014 Schnitger 1693, St. Jacobi: Individual Stops (undated)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    719,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url7",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://organstoplib.byu.edu/JacobiSchnitger/JacStops.html",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    761,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label8",
                  "maxclass": "comment",
                  "text": "9. AROSS, Saint-Sulpice \u2014 Great organ specification (undated)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    811,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url8",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://www.aross.fr/en/the-great-organ/great-organ-specification/",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    853,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label9",
                  "maxclass": "comment",
                  "text": "10. Colin Pykett \u2014 A technique for simplifying parameter estimation in synthesised organ pipe sounds (2017; revised 2024)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    903,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url9",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://www.colinpykett.org.uk/parameter-estimation-in-synthesising-pipe-organ-sounds.htm",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    945,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label10",
                  "maxclass": "comment",
                  "text": "11. N. H. Fletcher and L. M. Douglas \u2014 Harmonic Generation in Organ Pipes, Recorders, and Flutes (1980)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    995,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url10",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://www.phys.unsw.edu.au/music/people/publications/Fletcheretal1980.pdf",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    1037,
                    900,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "label11",
                  "maxclass": "comment",
                  "text": "12. M. Abel, S. Bergweiler, R. Gerhard-Multhaupt \u2014 Synchronization of organ pipes: experimental observations and modeling (2005)",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20,
                    1087,
                    900,
                    40
                  ],
                  "fontsize": 13,
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "url11",
                  "maxclass": "message",
                  "text": "; max launchbrowser https://arxiv.org/abs/physics/0506094",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    20,
                    1129,
                    900,
                    22
                  ]
                }
              }
            ],
            "lines": []
          }
        }
      },
      {
        "box": {
          "id": "limits",
          "maxclass": "comment",
          "text": "Sources support the organ principles. Spectral exponents, gains, normalisation and v14 recipes are design choices. Historic organ names identify listening context, not claims of exact tonal reconstruction.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            600,
            900,
            60
          ],
          "fontsize": 13,
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1
          ]
        }
      }
    ],
    "lines": []
  }
}