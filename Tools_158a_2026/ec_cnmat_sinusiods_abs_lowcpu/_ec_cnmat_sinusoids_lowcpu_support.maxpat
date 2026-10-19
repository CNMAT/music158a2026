{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 2,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      90,
      70,
      1040,
      860
    ],
    "bgcolor": [
      1.0,
      1.0,
      1.0,
      1.0
    ],
    "default_fontsize": 14.0,
    "default_fontname": "Arial",
    "openinpresentation": 0,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "text": "ec_cnmat_sinusoids_lowcpu_abs~  /  FULL SUPPORT",
          "patching_rect": [
            25,
            18,
            990,
            42
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 23.0,
          "fontface": 1,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "subtitle",
          "maxclass": "comment",
          "text": "Build 2.3 \u2022 Double-click a topic patcher. Examples inside the pages send to the demo instrument when opened from the help file. This guide adds no synthesizer or background audio work.",
          "patching_rect": [
            25,
            65,
            985,
            49
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 14.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic0",
          "maxclass": "newobj",
          "text": "p 01_Quick_start",
          "patching_rect": [
            25,
            140,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              803
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "01 / Quick start",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "Open the complete folder",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "Keep ec_cnmat_sinusoids_lowcpu_abs~.maxpat beside dependencies/. Open _ec_cnmat_sinusoids_lowcpu_abs~.maxhelp. The CNMAT sinusoids~ external must be installed. No previous synth version, SPAT, or ml.star package is required by this demo.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    127
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "comment",
                  "text": "Make a first sound",
                  "patching_rect": [
                    25,
                    303,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "comment",
                  "text": "1. Enable audio with the speaker button in the help patch.\n2. Bring up the help patch\u2019s monitor gain.\n3. Click the setup message below; then the note message. This sets a 32-position spectrum and a 2-second triangular envelope.",
                  "patching_rect": [
                    25,
                    347,
                    455,
                    127
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "message",
                  "text": "gain 0.1, control Render_Limit 128, control Partial_Count 32",
                  "patching_rect": [
                    25,
                    486,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "message",
                  "text": "control Amplitude_Shape 4, control ADSR_12_Lanes_Shape 6",
                  "patching_rect": [
                    25,
                    526,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "message",
                  "text": "control ADSR_12_Lanes_Duration_ms 2000",
                  "patching_rect": [
                    25,
                    566,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "message",
                  "text": "note-in 60 100",
                  "patching_rect": [
                    25,
                    606,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-8",
                  "maxclass": "comment",
                  "text": "Click the help keyboard to set pitch and trigger the lanes. The instrument\u2019s internal keyboard also starts all 12 ADSR lanes automatically, after updating the source frequency.",
                  "patching_rect": [
                    25,
                    646,
                    455,
                    68
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "Open the instrument",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "Double-click ec_cnmat_sinusoids_lowcpu_abs~. Its presentation contains the spectral sliders, retuning/filter controls, gain, and preset buttons. The RENDER LIMIT and PARTIAL TO SLIDER DISTRIBUTIONS menus are below PRESETS.",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "comment",
                  "text": "Keyboard notes launch all 12 lanes",
                  "patching_rect": [
                    520,
                    284,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "comment",
                  "text": "note-in PITCH [VELOCITY] updates the source pitch through the visual keyboard, then triggers all 12 ADSR lanes once. MIDI pitch is 0\u2013127; velocity defaults to 100. Velocity 0 is ignored. Each lane keeps its DEL. Repeating the same note retriggers. Velocity is not mapped to gain.",
                  "patching_rect": [
                    520,
                    328,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "message",
                  "text": "note-in 48 100",
                  "patching_rect": [
                    520,
                    448,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "message",
                  "text": "control Source_Base_Hz 110",
                  "patching_rect": [
                    520,
                    488,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "message",
                  "text": "trigger",
                  "patching_rect": [
                    520,
                    528,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "message",
                  "text": "stop",
                  "patching_rect": [
                    520,
                    568,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-8",
                  "maxclass": "comment",
                  "text": "stop cancels pending starts and loops, stops playback, and fades the lane envelopes to zero in 5 ms. It preserves the spectrum. gain 0 also silences the output without erasing stored values.",
                  "patching_rect": [
                    520,
                    608,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-9",
                  "maxclass": "message",
                  "text": "gain 0",
                  "patching_rect": [
                    520,
                    708,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    753,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-5",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-7",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-5",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-7",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-9",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary0",
          "maxclass": "comment",
          "text": "Install, hear a first tone, and open the instrument.",
          "patching_rect": [
            25,
            174,
            465,
            28
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic1",
          "maxclass": "newobj",
          "text": "p 02_Render_limit_and_memory",
          "patching_rect": [
            25,
            242,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              900
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "02 / Render limit, slider count and memory",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "A ceiling, not a forced count",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "RENDER LIMIT offers 64 / 128 / 256; default 128. SLIDER COUNT selects 2 up to that ceiling across the entire instrument.\n\n256 sliders + limit 128 \u2192 count becomes 128.\n48 sliders + limit 128 \u2192 count remains 48.\nRaise limit 128 \u2192 256 \u2192 count remains unchanged.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    147
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "message",
                  "text": "control Render_Limit 64",
                  "patching_rect": [
                    25,
                    323,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "message",
                  "text": "control Render_Limit 128",
                  "patching_rect": [
                    25,
                    363,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "message",
                  "text": "control Render_Limit 256",
                  "patching_rect": [
                    25,
                    403,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "message",
                  "text": "control Partial_Count 48",
                  "patching_rect": [
                    25,
                    443,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "message",
                  "text": "control Partial_Count 256",
                  "patching_rect": [
                    25,
                    483,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "comment",
                  "text": "A Partial_Count request above the limit is clipped. Raise Render Limit first if you want a larger count. The number box and drag range follow the same ceiling.",
                  "patching_rect": [
                    25,
                    523,
                    455,
                    68
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-8",
                  "maxclass": "comment",
                  "text": "Hidden values survive",
                  "patching_rect": [
                    25,
                    603,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-9",
                  "maxclass": "comment",
                  "text": "Reducing count preserves all three 256-position memories: detune, primary amplitude, and anchor amplitude. Raise the limit, then explicitly raise the count to restore hidden positions. Presets retain these hidden values too. Departing bars may remain visible for the existing 150 ms fade.",
                  "patching_rect": [
                    25,
                    647,
                    455,
                    127
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-10",
                  "maxclass": "comment",
                  "text": "Count changes no longer reapply the selected shape. To spread a shape over the new count, select that shape again. Newly exposed positions that have never been set retain their stored values, normally zero.",
                  "patching_rect": [
                    25,
                    786,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "How many oscillators?",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "One slider position has a primary partial plus a harmonic anchor. At count 256, the capacity is 256 primaries + 256 anchors = 512 components. An undetuned primary and its anchor can share the same frequency.\n\nThe limit is shared by all 12 lanes; it is not a per-lane allowance.",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    147
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "comment",
                  "text": "Paired oscillator-slot budgets",
                  "patching_rect": [
                    520,
                    323,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "comment",
                  "text": "64 positions: 128 steady / 256 during crossfade\n128 positions: 256 steady / 512 during crossfade\n256 positions: 512 steady / 1024 during crossfade",
                  "patching_rect": [
                    520,
                    367,
                    455,
                    68
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "comment",
                  "text": "During a sequence/offset change, the old and new banks overlap. Lower counts and frequency filtering can reduce allocation. Silent partner slots and holes may remain to preserve sounding oscillator identities; the live slot readout is the actual allocation.",
                  "patching_rect": [
                    520,
                    447,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "comment",
                  "text": "What stays at 256?",
                  "patching_rect": [
                    520,
                    567,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "comment",
                  "text": "Storage capacity stays at 256, regardless of the rendering ceiling. This is why a smaller performance setup can later recover its larger spectrum.\n\nExplicit full-bank operations such as All Off, copying layers, mirroring anchors, and organ-stop registrations can intentionally change hidden memory. A count reduction itself does not erase it.",
                  "patching_rect": [
                    520,
                    611,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "comment",
                  "text": "Preset recall",
                  "patching_rect": [
                    520,
                    789,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-8",
                  "maxclass": "comment",
                  "text": "Recall restores the saved limit and clamps the saved count if needed. Older format-1/2 presets default to limit 128. To hear a larger stored spectrum after recall: set limit 256, then set count 256.",
                  "patching_rect": [
                    520,
                    833,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    938,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-5",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary1",
          "maxclass": "comment",
          "text": "The new count ceiling, hidden values, and oscillator counts.",
          "patching_rect": [
            25,
            276,
            465,
            28
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic2",
          "maxclass": "newobj",
          "text": "p 03_Partial_sequences_and_offset",
          "patching_rect": [
            25,
            344,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              839
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "03 / Partial-to-slider distributions and offset",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "Menu index \u2192 multipliers of f0",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "0  one-to-one: 1, 2, 3, 4, 5, 6\u2026\n1  even num partials: 1, 2, 4, 6, 8, 10\u2026\n2  odd num partials: 1, 3, 5, 7, 9, 11\u2026\n3  prime multiples: 1, 2, 3, 5, 7, 11\u2026",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "message",
                  "text": "control Partial_Distribution 0",
                  "patching_rect": [
                    25,
                    264,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "message",
                  "text": "control Partial_Distribution 1",
                  "patching_rect": [
                    25,
                    304,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "message",
                  "text": "control Partial_Distribution 2",
                  "patching_rect": [
                    25,
                    344,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "message",
                  "text": "control Partial_Distribution 3",
                  "patching_rect": [
                    25,
                    384,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "comment",
                  "text": "With offset 1 and f0 = 100 Hz, slider 4 is 400 Hz in one-to-one mode, 600 Hz in even mode, 700 Hz in odd mode, and 500 Hz in prime mode. Its anchor uses the same multiplier. Primary detuning is applied afterward.",
                  "patching_rect": [
                    25,
                    424,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "comment",
                  "text": "Offset 1 assigns f0 to slider 1",
                  "patching_rect": [
                    25,
                    524,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-8",
                  "maxclass": "comment",
                  "text": "The initial 1 in prime mode is deliberate; 1 is not a prime number. The prime sequence continues for all requested positions. An actual 1x f0 partial is protected from detune and micro-drift; its amplitude, global retuning, and filtering still apply. It is not forced to sound.",
                  "patching_rect": [
                    25,
                    568,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "Partial Offset shifts the whole sequence",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "Slider 1 starts at position N of the selected sequence. BASE FREQ stays at f0. Offset OFF uses N=1. At offset 5:\n\nOne-to-one: 5, 6, 7, 8\u2026\nEven: 8, 10, 12, 14\u2026\nOdd: 9, 11, 13, 15\u2026\nPrime: 7, 11, 13, 17\u2026",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "message",
                  "text": "control Partial_Offset_On 1",
                  "patching_rect": [
                    520,
                    342,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "message",
                  "text": "control Partial_Offset_Number 5",
                  "patching_rect": [
                    520,
                    382,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "message",
                  "text": "control Partial_Offset_On 0",
                  "patching_rect": [
                    520,
                    422,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "comment",
                  "text": "Turning Offset ON resets its number to 1; enable it before setting N. Sequence and offset changes use the 150 ms two-bank crossfade. Rapid changes keep the most recent queued destination.",
                  "patching_rect": [
                    520,
                    462,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "comment",
                  "text": "Position is not harmonic number",
                  "patching_rect": [
                    520,
                    562,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "comment",
                  "text": "Count 64 means 64 selected positions, not \u201call harmonics through 64 \u00d7 f0.\u201d Odd and prime modes can reach much higher frequencies. The frequency window and Nyquist filtering can reject high positions.\n\nShape and organ-stop recipes remain patterns over slider positions; changing the sequence changes their resulting timbre.",
                  "patching_rect": [
                    520,
                    606,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    789,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-5",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary2",
          "maxclass": "comment",
          "text": "One-to-one, even, odd, prime, and Partial Offset.",
          "patching_rect": [
            25,
            378,
            465,
            28
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic3",
          "maxclass": "newobj",
          "text": "p 04_Spectral_layers_and_shapes",
          "patching_rect": [
            25,
            446,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              900
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "04 / Spectral layers, shapes and drift",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "The three multisliders",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "DETUNE: \u22121 to +1 represents \u2212100 to +100 cents around the selected multiple; 0 is exact. Only an actual 1\u00d7 f0 partial is protected from detune/drift.\n\nPRIMARY AMPLITUDE: 0\u20131 per position.\n\nHARMONIC ANCHOR: a second amplitude bank at exact selected multiples, without primary detune/drift. Mixing a nearby detuned primary with its anchor produces beating.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    186
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "comment",
                  "text": "Shapes and morph times",
                  "patching_rect": [
                    25,
                    362,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "comment",
                  "text": "Choose a shape to write a curve across the current count. Amplitude/anchor menus use indices 0\u201324: 0 Flat Zero, 1 All on full, 4 Linear high-to-low, 6 Triangle. Detune has 94 signed/critical-band choices.\n\nEach layer has its own morph time. Count changes preserve the stored per-position values; they do not redistribute a shape.",
                  "patching_rect": [
                    25,
                    406,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "message",
                  "text": "control Amplitude_Morph_ms 500",
                  "patching_rect": [
                    25,
                    584,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "message",
                  "text": "control Amplitude_Shape 4",
                  "patching_rect": [
                    25,
                    624,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "message",
                  "text": "control Drift_Morph_ms 1000",
                  "patching_rect": [
                    25,
                    664,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "message",
                  "text": "control Drift_Shape 0",
                  "patching_rect": [
                    25,
                    704,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-8",
                  "maxclass": "message",
                  "text": "control Anchor_Shape 0",
                  "patching_rect": [
                    25,
                    744,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "Anchors",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "MIRROR PARTIAL AMPS makes anchors follow the primary amplitude bank, including hidden positions. ANCHOR SCALE sets their proportion: 0.5 is half amplitude, 1.0 full. Turn mirroring off for independent anchor editing.",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "message",
                  "text": "control Anchor_Mirror 1",
                  "patching_rect": [
                    520,
                    264,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "message",
                  "text": "control Anchor_Scale 0.5",
                  "patching_rect": [
                    520,
                    304,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "message",
                  "text": "control Anchor_Mirror 0",
                  "patching_rect": [
                    520,
                    344,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "comment",
                  "text": "Indexed editing",
                  "patching_rect": [
                    520,
                    384,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "comment",
                  "text": "Indexed messages use slider positions 1\u2013256, including hidden memory. Partial_Drift is signed detune; Partial_Amplitude and Partial_Anchor are 0\u20131 levels.",
                  "patching_rect": [
                    520,
                    428,
                    455,
                    68
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "message",
                  "text": "control Partial_Amplitude 20 0.4",
                  "patching_rect": [
                    520,
                    508,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-8",
                  "maxclass": "message",
                  "text": "control Partial_Drift 20 0.25",
                  "patching_rect": [
                    520,
                    548,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-9",
                  "maxclass": "message",
                  "text": "control Partial_Anchor 20 0.2",
                  "patching_rect": [
                    520,
                    588,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-10",
                  "maxclass": "comment",
                  "text": "Micro-drift and other workspaces",
                  "patching_rect": [
                    520,
                    628,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-11",
                  "maxclass": "comment",
                  "text": "Micro-drift adds time-varying movement to primary frequencies above f0; anchors stay fixed. Use the drift toggle, depth/step controls and segment time. The built-in Micro-Drift help explains its detailed behavior.\n\nOrgan Stops, Octave Families and weighted Remove/Add remain available in the instrument. Remove/Add acts on stored spectral values; it is separate from the non-destructive rendering ceiling.",
                  "patching_rect": [
                    520,
                    672,
                    455,
                    186
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    875,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-5",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-7",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-8",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-7",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-8",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-9",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary3",
          "maxclass": "comment",
          "text": "Detune, amplitudes, anchors, morphs, drift and stored values.",
          "patching_rect": [
            25,
            480,
            465,
            28
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic4",
          "maxclass": "newobj",
          "text": "p 05_ADSR_lanes_and_delays",
          "patching_rect": [
            25,
            548,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              887
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "05 / ADSR lanes, loops and start delay",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "Open AMP_ENVELOPE_ADSR_12_VOICES",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "Each lane has its own envelope, shape/point controls, duration, smoothing, loop setting, user stores, and DEL. The global row sets shared values across all 12 lanes; edit individual lanes afterward for differences.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "comment",
                  "text": "PTS / DUR / DEL",
                  "patching_rect": [
                    25,
                    264,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "comment",
                  "text": "PTS is the sampled point count. DUR is the envelope duration in milliseconds. DEL is an integer start delay in milliseconds; default 0. Each lane can have a different delay. Zero starts immediately; a positive value schedules the start.",
                  "patching_rect": [
                    25,
                    308,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "message",
                  "text": "control ADSR_Lane_01_Delay_ms 500",
                  "patching_rect": [
                    25,
                    428,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "message",
                  "text": "control ADSR_Lane_02_Delay_ms 1000",
                  "patching_rect": [
                    25,
                    468,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "message",
                  "text": "control ADSR_Lane_01_Delay_ms 0",
                  "patching_rect": [
                    25,
                    508,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "message",
                  "text": "control ADSR_12_Lanes_Duration_ms 2000",
                  "patching_rect": [
                    25,
                    548,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-8",
                  "maxclass": "message",
                  "text": "control ADSR_12_Lanes_Smoothing_ms 200",
                  "patching_rect": [
                    25,
                    588,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-9",
                  "maxclass": "comment",
                  "text": "Use two-digit lane numbers 01\u201312 in messages. Delay can be 0\u20133,600,000 ms. Changing DEL affects the next trigger; it does not move an already scheduled start.",
                  "patching_rect": [
                    25,
                    628,
                    455,
                    68
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "Trigger and loop behavior",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "A keyboard note, note-in message or trigger starts all lanes, each through its DEL. A new trigger replaces an outstanding delayed start. A looping lane also waits its DEL before each restart, adding that delay to the cycle. The waiting period holds the current envelope level.",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "message",
                  "text": "control ADSR_12_Lanes_Loop 1",
                  "patching_rect": [
                    520,
                    284,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "message",
                  "text": "control ADSR_12_Lanes_Shape 6",
                  "patching_rect": [
                    520,
                    324,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "message",
                  "text": "trigger",
                  "patching_rect": [
                    520,
                    364,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "message",
                  "text": "control ADSR_Lane_01_Trigger",
                  "patching_rect": [
                    520,
                    404,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "message",
                  "text": "control ADSR_Lane_01_Loop 0",
                  "patching_rect": [
                    520,
                    444,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "message",
                  "text": "stop",
                  "patching_rect": [
                    520,
                    484,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-8",
                  "maxclass": "comment",
                  "text": "Sustained test sound",
                  "patching_rect": [
                    520,
                    524,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-9",
                  "maxclass": "comment",
                  "text": "Shape 1 is All on full. The instrument also has a full-on trigger action. For a finite phrase, choose a shape that ends at zero, disable looping and trigger.",
                  "patching_rect": [
                    520,
                    568,
                    455,
                    68
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-10",
                  "maxclass": "message",
                  "text": "control ADSR_12_Lanes_Shape 1, trigger",
                  "patching_rect": [
                    520,
                    648,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-11",
                  "maxclass": "comment",
                  "text": "Preset behavior",
                  "patching_rect": [
                    520,
                    688,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-12",
                  "maxclass": "comment",
                  "text": "Presets include lane curves, delays, loop switches and stored shapes. Global values restore before individual overrides. Recall cancels pending starts and waits for trigger; it does not resume halfway through an envelope. A new keyboard note also starts playback.",
                  "patching_rect": [
                    520,
                    732,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    837,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-5",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-7",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-8",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-5",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-7",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-10",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary4",
          "maxclass": "comment",
          "text": "Twelve envelopes, global vs individual settings, loops and DEL.",
          "patching_rect": [
            25,
            582,
            465,
            46
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic5",
          "maxclass": "newobj",
          "text": "p 06_Retuning_filter_and_gain",
          "patching_rect": [
            25,
            650,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              900
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "06 / Retuning, filtering and gain",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "Source and global transform",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "Source_Base_Hz defines f0. BASE FREQ MORPH TIME smooths source changes. The global retuning section provides:\n0  Rebuild base / ERB drift\n1  Ratio transpose / fixed spectrum\n2  Additive Hz shift\n\nTarget_Base_Hz supplies the destination. Semitones, cents and an extra Hz offset provide further adjustments. Retune_ms controls transition time.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    186
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "message",
                  "text": "control Source_Base_Hz 55",
                  "patching_rect": [
                    25,
                    362,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "message",
                  "text": "control Retuning_Mode 1",
                  "patching_rect": [
                    25,
                    402,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "message",
                  "text": "control Target_Base_Hz 110",
                  "patching_rect": [
                    25,
                    442,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "message",
                  "text": "control Semitones 0, control Cents 0",
                  "patching_rect": [
                    25,
                    482,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "message",
                  "text": "control Offset_Hz 0",
                  "patching_rect": [
                    25,
                    522,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "comment",
                  "text": "Frequency limits and clustering",
                  "patching_rect": [
                    25,
                    562,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-8",
                  "maxclass": "comment",
                  "text": "Minimum_Hz and Maximum_Hz set the allowed frequency window; startup values are 20 and 12000 Hz. Sample-rate/Nyquist protection also applies. Cluster_Hz combines nearby spectral components when enabled; 0 disables the cluster span. Equal-frequency merging can make component and distinct-frequency counts differ.",
                  "patching_rect": [
                    25,
                    606,
                    455,
                    127
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-9",
                  "maxclass": "message",
                  "text": "control Minimum_Hz 20, control Maximum_Hz 12000",
                  "patching_rect": [
                    25,
                    745,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-10",
                  "maxclass": "message",
                  "text": "control Cluster_Hz 0",
                  "patching_rect": [
                    25,
                    785,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "Auto Level Compensation",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "Auto Level estimates model power relative to a reference and applies one shared correction. Default ON, strength 100%, smoothing 300 ms, maximum boost 6 dB. It follows the rendered subset and excludes hidden positions beyond the limit.\n\nIt is model-power compensation, not a loudness meter or peak limiter. Independent ADSR dynamics remain after this estimate.",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    186
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "message",
                  "text": "control Auto_Level on 1",
                  "patching_rect": [
                    520,
                    362,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "message",
                  "text": "control Auto_Level capture",
                  "patching_rect": [
                    520,
                    402,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "message",
                  "text": "control Auto_Level smooth 300",
                  "patching_rect": [
                    520,
                    442,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "comment",
                  "text": "Three different gain locations",
                  "patching_rect": [
                    520,
                    482,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "comment",
                  "text": "Model_Gain scales the spectral model. Auto Level applies its compensation. GLOBAL OUTPUT GAIN controls all group outputs and the mono sum; default 0.1 (\u221220 dB). The help patch\u2019s monitor gain is an additional parent-patch control.",
                  "patching_rect": [
                    520,
                    526,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "message",
                  "text": "gain 0.1",
                  "patching_rect": [
                    520,
                    646,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-8",
                  "maxclass": "message",
                  "text": "gaindb -20",
                  "patching_rect": [
                    520,
                    686,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-9",
                  "maxclass": "message",
                  "text": "gain 0",
                  "patching_rect": [
                    520,
                    726,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-10",
                  "maxclass": "comment",
                  "text": "Inlet 2 also accepts a linear gain number from 0 to 1. Muting output gain or an ADSR does not remove the oscillators from the model; use the render/count controls to reduce synthesis work.",
                  "patching_rect": [
                    520,
                    766,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    871,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-5",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-9",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-10",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-7",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-8",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-9",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary5",
          "maxclass": "comment",
          "text": "Source pitch, transform modes, frequency limits and Auto Level.",
          "patching_rect": [
            25,
            684,
            465,
            46
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic6",
          "maxclass": "newobj",
          "text": "p 07_Presets_and_saved_state",
          "patching_rect": [
            530,
            140,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              900
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "07 / Preset capture and recall",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "Sweep and dump",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "sweep collects the current controls, engine state and user stores and reports completion. dump performs a fresh capture and outputs one complete preset message. You do not have to sweep before dumping.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "message",
                  "text": "sweep",
                  "patching_rect": [
                    25,
                    264,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "message",
                  "text": "dump",
                  "patching_rect": [
                    25,
                    304,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "comment",
                  "text": "Wire the message box correctly",
                  "patching_rect": [
                    25,
                    344,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "comment",
                  "text": "Connect outlet 14 to the LEFT inlet of an ordinary message box. The abstraction emits \u201cset preset \u2026\u201d, which fills the box silently. Connect the box\u2019s outlet to abstraction inlet 1. Clicking the filled box sends \u201cpreset \u2026\u201d and recalls it.\n\nThe help file\u2019s p preset already provides this wiring. Save the parent patch, or copy the filled message box into your own patch, to retain the preset across closing/reopening.",
                  "patching_rect": [
                    25,
                    388,
                    455,
                    206
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "comment",
                  "text": "Recall then trigger",
                  "patching_rect": [
                    25,
                    606,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "comment",
                  "text": "Recall briefly mutes output, cancels pending lane starts, restores the complete state, then restores gain. It restores loop switches but waits for trigger or a new keyboard note before playing.",
                  "patching_rect": [
                    25,
                    650,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-8",
                  "maxclass": "message",
                  "text": "trigger",
                  "patching_rect": [
                    25,
                    750,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-9",
                  "maxclass": "message",
                  "text": "check",
                  "patching_rect": [
                    25,
                    790,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "\u201cpreset 3\u201d is a format version",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "The number identifies the encoding/schema version, not preset slot 3. Multiple presets can all begin \u201cpreset 3.\u201d Name or organize their message boxes yourself. Do not edit the version number, checksum or encoded chunks.\n\nThis build retains format 3, so existing lowcpu presets remain usable. Formats 1 and 2 are migrated on recall.",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "comment",
                  "text": "What is saved",
                  "patching_rect": [
                    520,
                    342,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "comment",
                  "text": "209 UI controls, 25 engine states and 14 user stores, including all 256 spectral memory positions, lane delays/curves/loops, render limit, partial sequence, and gain.\n\nNot saved: oscillator phase, elapsed ADSR playback position, host DSP/audio settings, meters, or edits to patcher wiring.",
                  "patching_rect": [
                    520,
                    386,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "comment",
                  "text": "Older presets",
                  "patching_rect": [
                    520,
                    564,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "comment",
                  "text": "Formats 1/2 default to Render Limit 128 and one-to-one. Format 1 supplies zero for the twelve DEL values; format 2 retains them. The count is clamped to the restored ceiling without deleting high-slot memory.\n\nTo recover a full stored spectrum: set limit 256, set count 256, then dump again. The two original example preset messages are preserved in the help file.",
                  "patching_rect": [
                    520,
                    608,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "comment",
                  "text": "Diagnostics",
                  "patching_rect": [
                    520,
                    786,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "comment",
                  "text": "check verifies that all 25 preset engine endpoints respond. A successful dump reports its size/chunks. \u201cUnknown message set\u201d indicates the message-box storage/recall wiring should be checked.",
                  "patching_rect": [
                    520,
                    830,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    935,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-8",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-9",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary6",
          "maxclass": "comment",
          "text": "Sweep, dump, message-box storage, recall and version numbers.",
          "patching_rect": [
            530,
            174,
            465,
            28
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic7",
          "maxclass": "newobj",
          "text": "p 08_Inlets_outlets_and_instances",
          "patching_rect": [
            530,
            242,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              900
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "08 / Integration and multiple instances",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "Two inlets",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "1  Messages: note-in, trigger, stop, gain, gaindb, sweep, dump, check, preset, and control NAME \u2026\n2  Linear global output gain, 0\u20131.\n\nNo creation argument is required. Audio hardware and external MIDI routing belong in the parent patch.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    127
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "comment",
                  "text": "Fifteen outlets, counted from 1",
                  "patching_rect": [
                    25,
                    303,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "comment",
                  "text": "1\u201312  Individual audio groups\n13       Post-gain mono sum\n14       Preset dump for a message box\n15       Status messages\n\nUse either the mono sum or the separate groups for a listening mix; combining both duplicates the same signal. Route groups to your own mixer or spatial processor.",
                  "patching_rect": [
                    25,
                    347,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "comment",
                  "text": "Lane assignment is a separate menu",
                  "patching_rect": [
                    25,
                    525,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "comment",
                  "text": "Render_Distribution chooses how partials reach lanes:\n0  Interleaved\n1  Spectral Bands\n2  Seeded Random\n3  Octave Families\n4  Perfect Fifth Bands\n\nPartial_Distribution chooses the harmonic sequence. These menus do different jobs.",
                  "patching_rect": [
                    25,
                    569,
                    455,
                    186
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "message",
                  "text": "control Render_Distribution 0",
                  "patching_rect": [
                    25,
                    767,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "message",
                  "text": "control Spatial_Group_Count 12",
                  "patching_rect": [
                    25,
                    807,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "Independent abstraction instances",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "Each instance uses its own Max #0 identifier for internal sends, receives, named collections and preset transfers. That identifier is passed to the ADSR bpatchers and JS engines.\n\nCreate separate ec_cnmat_sinusoids_lowcpu_abs~ object boxes. Each has independent spectra, gain, envelopes and presets. No manual bus renaming or extra naming argument is required.",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    186
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "comment",
                  "text": "Address the intended instance",
                  "patching_rect": [
                    520,
                    362,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "comment",
                  "text": "Wire messages to that instance\u2019s inlet. Sending a message to two instances deliberately changes both. A preset message is portable: send the same preset to another instance to copy its settings. Their later changes remain independent.",
                  "patching_rect": [
                    520,
                    406,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "comment",
                  "text": "Keep the abstraction boundary",
                  "patching_rect": [
                    520,
                    526,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "comment",
                  "text": "Instantiate the supplied abstraction instead of copying its internal objects into the same parent. Keep dependencies beside the abstraction. The lowcpu filenames and bus prefix differ from the previous nonlowcpu package.",
                  "patching_rect": [
                    520,
                    570,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "comment",
                  "text": "External MIDI",
                  "patching_rect": [
                    520,
                    690,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "comment",
                  "text": "In your parent patch, collect notein pitch and velocity into a list, prepend note-in, and send it to inlet 1. Positive-velocity note-in messages now trigger all 12 lanes automatically; do not add a second trigger for the same note. Velocity-zero events are ignored. Source_Base_Hz edits remain pitch-only.",
                  "patching_rect": [
                    520,
                    734,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    859,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c0-7",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary7",
          "maxclass": "comment",
          "text": "Audio routing, group assignment, integration and isolation.",
          "patching_rect": [
            530,
            276,
            465,
            28
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic8",
          "maxclass": "newobj",
          "text": "p 09_CPU_status_and_defaults",
          "patching_rect": [
            530,
            344,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              859
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "09 / CPU status and startup defaults",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "Read the live status row",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "Example: limit 128 slots 256 nonzero 128 banks 12\n\nlimit: selected position ceiling.\nslots: oscillator slots currently allocated.\nnonzero: model entries with nonzero amplitude.\nbanks: occupied lane/bank renderers, out of 24.\n\nThese describe the spectral renderer, not measured audibility after envelopes/gain.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    186
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "comment",
                  "text": "What the optimization does",
                  "patching_rect": [
                    25,
                    362,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "comment",
                  "text": "Separate A/B banks for each of the 12 lanes receive only needed identities within the limit. Inactive banks receive clear. Unchanged bank models are not resent. The generator avoids unused duplicate model builds and sorting.\n\nThe old renderer sent 1,024 slots even at low counts. This version\u2019s actual work follows the active model much more closely.",
                  "patching_rect": [
                    25,
                    406,
                    455,
                    186
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "comment",
                  "text": "Why slots may be higher than expected",
                  "patching_rect": [
                    25,
                    604,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "comment",
                  "text": "A crossfade temporarily uses both banks. Departing partials fade before retirement. Silent partners and interior holes may remain to avoid moving sounding oscillators; they can persist until a bank becomes idle. Read actual slots after changes settle.",
                  "patching_rect": [
                    25,
                    648,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "Startup values for the main workflow",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "Render Limit: 128\nSlider Count: 32\nPartial sequence: 0 / one-to-one\nSource f0: 55 Hz\nGlobal output gain: 0.1\nPartial Offset: OFF, number 1\nAnchor Mirror: OFF; scale 1.0\nDetune shape: Flat Zero\nPrimary amplitude shape: Linear high-to-low\nAnchor shape: Flat Zero\nLane DEL: 0 ms for all lanes\nFrequency window: 20\u201312000 Hz\nAuto Level: ON, 100%, 300 ms, max boost 6 dB",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    264
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "comment",
                  "text": "These are initialization values, not a guarantee after recalling a preset or clicking a setup message. A preset can replace them.",
                  "patching_rect": [
                    520,
                    440,
                    455,
                    68
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "comment",
                  "text": "Practical CPU comparisons",
                  "patching_rect": [
                    520,
                    520,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "comment",
                  "text": "Compare 64/128/256 using the same spectrum, sample rate, vector sizes and active instances. Wait for fades to finish. Read both Max\u2019s CPU meter and the renderer statistics. Reducing spatial group count is not equivalent to reducing partial count.",
                  "patching_rect": [
                    520,
                    564,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "comment",
                  "text": "Gain 0, stopped envelopes, and a zero ADSR level do not suspend a nonzero model. This build does not add poly~ voice suspension or parallel DSP. All Off clears the spectrum and stored banks; use it only when that reset is intended.",
                  "patching_rect": [
                    520,
                    684,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    809,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary8",
          "maxclass": "comment",
          "text": "Read the live statistics and understand the remaining workload.",
          "patching_rect": [
            530,
            378,
            465,
            46
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic9",
          "maxclass": "newobj",
          "text": "p 10_Troubleshooting_and_examples",
          "patching_rect": [
            530,
            446,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              851
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "10 / Troubleshooting and verification",
                  "patching_rect": [
                    25,
                    18,
                    965,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "guide",
                  "maxclass": "comment",
                  "text": "Click message examples to address the demo instrument when this page is opened from the help file. Close this window to return to the index.",
                  "patching_rect": [
                    25,
                    62,
                    955,
                    46
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-0",
                  "maxclass": "comment",
                  "text": "No sound",
                  "patching_rect": [
                    25,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-1",
                  "maxclass": "comment",
                  "text": "Check DSP is on, the help monitor gain is up, global gain is above zero, primary/anchor amplitudes are nonzero, and the lane envelopes have been triggered. A zero-ending envelope needs another trigger. Check filter bounds and high prime/offset frequencies.",
                  "patching_rect": [
                    25,
                    164,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-2",
                  "maxclass": "comment",
                  "text": "Slider values appear missing",
                  "patching_rect": [
                    25,
                    284,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-3",
                  "maxclass": "comment",
                  "text": "Check Render Limit and Slider Count. Raising the limit alone does not expand the count. Hidden positions retain values; never-used positions may be zero. A count edit does not stretch the previous shape. Select the shape again if that is what you want.",
                  "patching_rect": [
                    25,
                    328,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-4",
                  "maxclass": "comment",
                  "text": "Missing JS/bpatcher or deleted patchcord errors",
                  "patching_rect": [
                    25,
                    448,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-5",
                  "maxclass": "comment",
                  "text": "Unzip the whole package. Keep dependencies/ beside the abstraction. Close old instances and reopen the supplied help after replacing the folder. Confirm Max finds this build rather than another same-named copy. CNMAT sinusoids~ itself must be installed.",
                  "patching_rect": [
                    25,
                    492,
                    455,
                    108
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-6",
                  "maxclass": "comment",
                  "text": "Preset trouble",
                  "patching_rect": [
                    25,
                    612,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-7",
                  "maxclass": "comment",
                  "text": "Use outlet 14 \u2192 message LEFT inlet; box output \u2192 instrument inlet 1. Run check. Recall should report \u201crecalled\u201d; then trigger. Keep the complete encoded message. Do not change preset 3 into preset 1 or 2.",
                  "patching_rect": [
                    25,
                    656,
                    455,
                    88
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c0-8",
                  "maxclass": "message",
                  "text": "check",
                  "patching_rect": [
                    25,
                    756,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-0",
                  "maxclass": "comment",
                  "text": "Try the ceiling without losing a high value",
                  "patching_rect": [
                    520,
                    120,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-1",
                  "maxclass": "comment",
                  "text": "Run these in order. They change count and one amplitude; they do not erase the full bank. The high position may be inaudible if its frequency is outside the window.",
                  "patching_rect": [
                    520,
                    164,
                    455,
                    68
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-2",
                  "maxclass": "message",
                  "text": "control Render_Limit 256, control Partial_Count 256",
                  "patching_rect": [
                    520,
                    244,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-3",
                  "maxclass": "message",
                  "text": "control Partial_Amplitude 200 0.4",
                  "patching_rect": [
                    520,
                    284,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-4",
                  "maxclass": "message",
                  "text": "control Render_Limit 64",
                  "patching_rect": [
                    520,
                    324,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-5",
                  "maxclass": "comment",
                  "text": "Count becomes 64. Now raise the limit: count should remain 64.",
                  "patching_rect": [
                    520,
                    364,
                    455,
                    49
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-6",
                  "maxclass": "message",
                  "text": "control Render_Limit 256",
                  "patching_rect": [
                    520,
                    425,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-7",
                  "maxclass": "comment",
                  "text": "Explicitly restore the count: position 200 returns with amplitude 0.4 after the fade.",
                  "patching_rect": [
                    520,
                    465,
                    455,
                    49
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-8",
                  "maxclass": "message",
                  "text": "control Partial_Count 256",
                  "patching_rect": [
                    520,
                    526,
                    450,
                    30
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "fontsize": 13.0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    0.94,
                    0.94,
                    0.94,
                    1
                  ],
                  "bgfillcolor_type": "color"
                }
              },
              {
                "box": {
                  "id": "c1-9",
                  "maxclass": "comment",
                  "text": "Testing supplied with the package",
                  "patching_rect": [
                    520,
                    566,
                    455,
                    32
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 16.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "c1-10",
                  "maxclass": "comment",
                  "text": "diagnostics/ contains source/graph regression scripts, results, an isolation patch, and PROFILE_IN_MAX.txt. Checks cover hidden-memory recall, old presets, count ceilings, distribution mapping, ADSR delays and local dependencies.\n\nAutomated checks model native objects and do not replace Max loading, listening or CPU testing on your machine.",
                  "patching_rect": [
                    520,
                    610,
                    455,
                    166
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "patching_rect": [
                    975,
                    801,
                    25,
                    25
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "comment": "Example messages to the instrument in the help file"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "c0-8",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-2",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-3",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-4",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-6",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "c1-8",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ],
                  "hidden": 1
                }
              }
            ],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary9",
          "maxclass": "comment",
          "text": "Silent output, missing files, presets and a memory-retention check.",
          "patching_rect": [
            530,
            480,
            465,
            46
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "topic10",
          "maxclass": "newobj",
          "text": "p 11_Control_reference",
          "patching_rect": [
            530,
            548,
            465,
            28
          ],
          "numinlets": 0,
          "numoutlets": 0,
          "outlettype": [],
          "fontsize": 14.0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              90,
              70,
              1020,
              800
            ],
            "bgcolor": [
              1.0,
              1.0,
              1.0,
              1.0
            ],
            "default_fontsize": 14.0,
            "default_fontname": "Arial",
            "openinpresentation": 0,
            "boxes": [
              {
                "box": {
                  "id": "title",
                  "maxclass": "comment",
                  "text": "11 / Complete control-name reference",
                  "patching_rect": [
                    25,
                    18,
                    950,
                    40
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 22.0,
                  "fontface": 1,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "intro",
                  "maxclass": "comment",
                  "text": "Build 2.3 lowcpu. Keyboard / note-in now triggers all 12 ADSR lanes. Render Limit caps Slider Count.",
                  "patching_rect": [
                    25,
                    65,
                    950,
                    49
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "sub0",
                  "maxclass": "newobj",
                  "text": "p Pitch_and_spectrum",
                  "patching_rect": [
                    25,
                    165,
                    340,
                    26
                  ],
                  "numinlets": 0,
                  "numoutlets": 0,
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 0,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      90,
                      70,
                      980,
                      800
                    ],
                    "bgcolor": [
                      1.0,
                      1.0,
                      1.0,
                      1.0
                    ],
                    "default_fontsize": 14.0,
                    "default_fontname": "Arial",
                    "openinpresentation": 0,
                    "boxes": [
                      {
                        "box": {
                          "id": "title",
                          "maxclass": "comment",
                          "text": "Pitch and spectrum",
                          "patching_rect": [
                            25,
                            18,
                            925,
                            39
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 21.0,
                          "fontface": 1,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "intro",
                          "maxclass": "comment",
                          "text": "Build 2.3 lowcpu. Keyboard / note-in now triggers all 12 ADSR lanes. Render Limit caps Slider Count.",
                          "patching_rect": [
                            25,
                            65,
                            915,
                            49
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 14.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names0",
                          "maxclass": "comment",
                          "text": "Add_Partials\nAll_Off\nAmplitude_Morph_ms\nAmplitude_Shape\nAmplitude_Values\nAnchor_Mirror\nAnchor_Morph_ms\nAnchor_Scale\nAnchor_Shape\nAnchor_Values\nAuto_Level\nCents\nCluster_Hz\nCopy_Amplitude_to_Anchor\nCopy_Amplitude_to_Drift\nDirection_Seed\nDrift_Morph_ms\nDrift_Shape\nDrift_Values\nEnvelope_Loop\nEnvelope_Trigger\nMax_Drift\nMaximum_Hz\nMicro_Depth_Hz\nMicro_Off_Morph_ms\nMicro_On\nMicro_Segment_ms\nMinimum_Hz\nModel_Gain",
                          "patching_rect": [
                            25,
                            160,
                            445,
                            537
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names1",
                          "maxclass": "comment",
                          "text": "Octave_Family\nOffset_Hz\nPartial_Amplitude\nPartial_Anchor\nPartial_Count\nPartial_Distribution\nPartial_Drift\nPartial_Offset_Number\nPartial_Offset_On\nPost_Bypass\nRandom_Amplitude\nRandom_Anchor\nRandom_Drift\nRegistration\nRemoval_Count\nRemoval_Shape\nRemove_Partials\nRender_Distribution\nRender_Limit\nRender_Ramp_ms\nRender_Seed\nRetune_ms\nRetuning_Mode\nSemitones\nSource_Base_Hz\nSpatial_Group_Count\nStops_Apply\nStops_Clear\nTarget_Base_Hz",
                          "patching_rect": [
                            500,
                            160,
                            445,
                            537
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      }
                    ],
                    "lines": [],
                    "autosave": 0
                  },
                  "fontsize": 14.0
                }
              },
              {
                "box": {
                  "id": "desc0",
                  "maxclass": "comment",
                  "text": "58 names",
                  "patching_rect": [
                    385,
                    165,
                    565,
                    29
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "sub1",
                  "maxclass": "newobj",
                  "text": "p Global_ADSR_and_library",
                  "patching_rect": [
                    25,
                    263,
                    340,
                    26
                  ],
                  "numinlets": 0,
                  "numoutlets": 0,
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 0,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      90,
                      70,
                      980,
                      800
                    ],
                    "bgcolor": [
                      1.0,
                      1.0,
                      1.0,
                      1.0
                    ],
                    "default_fontsize": 14.0,
                    "default_fontname": "Arial",
                    "openinpresentation": 0,
                    "boxes": [
                      {
                        "box": {
                          "id": "title",
                          "maxclass": "comment",
                          "text": "Global ADSR and library",
                          "patching_rect": [
                            25,
                            18,
                            925,
                            39
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 21.0,
                          "fontface": 1,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "intro",
                          "maxclass": "comment",
                          "text": "Build 2.3 lowcpu. Keyboard / note-in now triggers all 12 ADSR lanes. Render Limit caps Slider Count.",
                          "patching_rect": [
                            25,
                            65,
                            915,
                            49
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 14.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names0",
                          "maxclass": "comment",
                          "text": "ADSR_12_Lanes_Duration_ms\nADSR_12_Lanes_Global_Trigger\nADSR_12_Lanes_Loop\nADSR_12_Lanes_Shape\nADSR_12_Lanes_Smoothing_ms\nADSR_12_Lanes_Stop\nADSR_Breakpoints\nADSR_Duration_ms\nADSR_Emit\nADSR_Morph_ms\nADSR_Points",
                          "patching_rect": [
                            25,
                            160,
                            445,
                            210
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names1",
                          "maxclass": "comment",
                          "text": "ADSR_Recall\nADSR_Shape\nADSR_Store\nADSR_Store_Index\nLibrary_Breakpoints\nLibrary_Duration_ms\nLibrary_Emit\nLibrary_Points\nLibrary_Shape\nLibrary_Store\nLibrary_Store_Index",
                          "patching_rect": [
                            500,
                            160,
                            445,
                            210
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      }
                    ],
                    "lines": [],
                    "autosave": 0
                  },
                  "fontsize": 14.0
                }
              },
              {
                "box": {
                  "id": "desc1",
                  "maxclass": "comment",
                  "text": "22 names",
                  "patching_rect": [
                    385,
                    263,
                    565,
                    29
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "sub2",
                  "maxclass": "newobj",
                  "text": "p Lane_01_template",
                  "patching_rect": [
                    25,
                    361,
                    340,
                    26
                  ],
                  "numinlets": 0,
                  "numoutlets": 0,
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 0,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      90,
                      70,
                      980,
                      800
                    ],
                    "bgcolor": [
                      1.0,
                      1.0,
                      1.0,
                      1.0
                    ],
                    "default_fontsize": 14.0,
                    "default_fontname": "Arial",
                    "openinpresentation": 0,
                    "boxes": [
                      {
                        "box": {
                          "id": "title",
                          "maxclass": "comment",
                          "text": "Lane 01 template",
                          "patching_rect": [
                            25,
                            18,
                            925,
                            39
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 21.0,
                          "fontface": 1,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "intro",
                          "maxclass": "comment",
                          "text": "Build 2.3 lowcpu. Keyboard / note-in now triggers all 12 ADSR lanes. Render Limit caps Slider Count.",
                          "patching_rect": [
                            25,
                            65,
                            915,
                            49
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 14.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names0",
                          "maxclass": "comment",
                          "text": "ADSR_Lane_01_Breakpoints\nADSR_Lane_01_Delay_ms\nADSR_Lane_01_Duration_ms\nADSR_Lane_01_Emit\nADSR_Lane_01_Loop\nADSR_Lane_01_Points\nADSR_Lane_01_Recall",
                          "patching_rect": [
                            25,
                            160,
                            445,
                            137
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names1",
                          "maxclass": "comment",
                          "text": "ADSR_Lane_01_Shape\nADSR_Lane_01_Smoothing_ms\nADSR_Lane_01_Stop\nADSR_Lane_01_Store\nADSR_Lane_01_Store_Index\nADSR_Lane_01_Trigger",
                          "patching_rect": [
                            500,
                            160,
                            445,
                            119
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      }
                    ],
                    "lines": [],
                    "autosave": 0
                  },
                  "fontsize": 14.0
                }
              },
              {
                "box": {
                  "id": "desc2",
                  "maxclass": "comment",
                  "text": "13 names (same suffixes apply to all 12 lanes)",
                  "patching_rect": [
                    385,
                    361,
                    565,
                    29
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "sub3",
                  "maxclass": "newobj",
                  "text": "p Organ_stop_addresses",
                  "patching_rect": [
                    25,
                    459,
                    340,
                    26
                  ],
                  "numinlets": 0,
                  "numoutlets": 0,
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 0,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      90,
                      70,
                      980,
                      800
                    ],
                    "bgcolor": [
                      1.0,
                      1.0,
                      1.0,
                      1.0
                    ],
                    "default_fontsize": 14.0,
                    "default_fontname": "Arial",
                    "openinpresentation": 0,
                    "boxes": [
                      {
                        "box": {
                          "id": "title",
                          "maxclass": "comment",
                          "text": "Organ stop addresses",
                          "patching_rect": [
                            25,
                            18,
                            925,
                            39
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 21.0,
                          "fontface": 1,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "intro",
                          "maxclass": "comment",
                          "text": "Build 2.3 lowcpu. Keyboard / note-in now triggers all 12 ADSR lanes. Render Limit caps Slider Count.",
                          "patching_rect": [
                            25,
                            65,
                            915,
                            49
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 14.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names0",
                          "maxclass": "comment",
                          "text": "Stop_0\nStop_1\nStop_10\nStop_11\nStop_12\nStop_13\nStop_2\nStop_3",
                          "patching_rect": [
                            25,
                            160,
                            445,
                            155
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names1",
                          "maxclass": "comment",
                          "text": "Stop_4\nStop_5\nStop_6\nStop_7\nStop_8\nStop_9\nStop_Beat_Hz\nStop_Tail",
                          "patching_rect": [
                            500,
                            160,
                            445,
                            155
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      }
                    ],
                    "lines": [],
                    "autosave": 0
                  },
                  "fontsize": 14.0
                }
              },
              {
                "box": {
                  "id": "desc3",
                  "maxclass": "comment",
                  "text": "16 names",
                  "patching_rect": [
                    385,
                    459,
                    565,
                    29
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              },
              {
                "box": {
                  "id": "sub4",
                  "maxclass": "newobj",
                  "text": "p Readbacks_and_internal_buses",
                  "patching_rect": [
                    25,
                    557,
                    340,
                    26
                  ],
                  "numinlets": 0,
                  "numoutlets": 0,
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 0,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      90,
                      70,
                      980,
                      800
                    ],
                    "bgcolor": [
                      1.0,
                      1.0,
                      1.0,
                      1.0
                    ],
                    "default_fontsize": 14.0,
                    "default_fontname": "Arial",
                    "openinpresentation": 0,
                    "boxes": [
                      {
                        "box": {
                          "id": "title",
                          "maxclass": "comment",
                          "text": "Readbacks and internal buses",
                          "patching_rect": [
                            25,
                            18,
                            925,
                            39
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 21.0,
                          "fontface": 1,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "intro",
                          "maxclass": "comment",
                          "text": "Build 2.3 lowcpu. Keyboard / note-in now triggers all 12 ADSR lanes. Render Limit caps Slider Count.",
                          "patching_rect": [
                            25,
                            65,
                            915,
                            49
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 14.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names0",
                          "maxclass": "comment",
                          "text": "ADSR_12_Lanes_Loop_state\nADSR_12_Lanes_Shape_state\nADSR_Lane_01_Points_state\nADSR_Lane_02_Points_state\nADSR_Lane_03_Points_state\nADSR_Lane_04_Points_state\nADSR_Lane_05_Points_state\nADSR_Lane_06_Points_state\nADSR_Lane_07_Points_state\nADSR_Lane_08_Points_state\nADSR_Lane_09_Points_state\nADSR_Lane_10_Points_state\nADSR_Lane_11_Points_state\nADSR_Lane_12_Points_state\nAnchor_Mirror_state\nAnchor_Scale_state\nAuto_Level_state\nEnvelope_Loop_state\nMicro_Depth_Hz_state",
                          "patching_rect": [
                            25,
                            160,
                            445,
                            355
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "names1",
                          "maxclass": "comment",
                          "text": "Micro_On_state\nPartial_Offset_Crossfade\nRender_Status_state\nRenderer_Reemit\nRetune_ms_state\nSource_Base_Hz_state\nadd-partials-stage-\nec-control\nec-gain-value\nenv-post\nfunction\nremove-partials-stage-\nrender-distribution-engine-\nrender-dump-engine-\nrender-ramp-engine-\nrender-seed-engine-\nspatial-group-count-engine-\ntagged-model-s",
                          "patching_rect": [
                            500,
                            160,
                            445,
                            337
                          ],
                          "numinlets": 1,
                          "numoutlets": 0,
                          "fontname": "Arial",
                          "fontsize": 13.0,
                          "fontface": 0,
                          "textcolor": [
                            0.08,
                            0.08,
                            0.08,
                            1.0
                          ],
                          "bgcolor": [
                            1,
                            1,
                            1,
                            1
                          ]
                        }
                      }
                    ],
                    "lines": [],
                    "autosave": 0
                  },
                  "fontsize": 14.0
                }
              },
              {
                "box": {
                  "id": "desc4",
                  "maxclass": "comment",
                  "text": "37 names",
                  "patching_rect": [
                    385,
                    557,
                    565,
                    29
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "fontface": 0,
                  "textcolor": [
                    0.08,
                    0.08,
                    0.08,
                    1.0
                  ],
                  "bgcolor": [
                    1,
                    1,
                    1,
                    1
                  ]
                }
              }
            ],
            "lines": [],
            "autosave": 0
          }
        }
      },
      {
        "box": {
          "id": "summary10",
          "maxclass": "comment",
          "text": "Complete address index, with a reusable lane-name template.",
          "patching_rect": [
            530,
            582,
            465,
            28
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "footer",
          "maxclass": "comment",
          "text": "The standalone support patcher is the same guide. Its example messages leave its outlet when embedded in a parent patch. Saved instrument presets remain in the main help file\u2019s p preset.",
          "patching_rect": [
            25,
            770,
            980,
            46
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0,
          "textcolor": [
            0.08,
            0.08,
            0.08,
            1.0
          ],
          "bgcolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "out",
          "maxclass": "outlet",
          "index": 1,
          "patching_rect": [
            975,
            820,
            25,
            25
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Example messages to the instrument in the help file"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "topic0",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic1",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic2",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic3",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic4",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic5",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic6",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic7",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic8",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "topic9",
            0
          ],
          "destination": [
            "out",
            0
          ],
          "hidden": 1
        }
      }
    ],
    "autosave": 0
  }
}
