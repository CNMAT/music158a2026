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
      2001.0,
      124.0,
      1034.0,
      942.0
    ],
    "boxes": [
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "id": "obj-13",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            933.0,
            885.5,
            23.0,
            23.0
          ],
          "presentation": 1,
          "presentation_rect": [
            52.0,
            535.0,
            22.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.972549,
            0.462745,
            0.501961,
            1.0
          ],
          "id": "obj-3",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            932.0,
            952.0,
            25.0,
            25.0
          ],
          "presentation": 1,
          "presentation_rect": [
            46.0,
            700.0,
            19.0,
            19.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1973.0,
            737.0,
            70.0,
            22.0
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "id": "obj-34",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            2043.0,
            826.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            933.0,
            604.5,
            24.0,
            24.0
          ],
          "uncheckedcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
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
              59.0,
              119.0,
              1037.0,
              409.0
            ],
            "visible": 1,
            "boxes": [
              {
                "box": {
                  "id": "micro-title14",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    100.0,
                    875.0,
                    20.0
                  ],
                  "text": "SEEDED DRIFT DIRECTIONS / MICRO RANDOM WALK"
                }
              },
              {
                "box": {
                  "id": "seed14label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    130.0,
                    210.0,
                    20.0
                  ],
                  "text": "DIRECTION SEED"
                }
              },
              {
                "box": {
                  "id": "seed14",
                  "maxclass": "number",
                  "maximum": 2147483647,
                  "minimum": 0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    50.0,
                    157.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "seed14command",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    200.0,
                    160.0,
                    22.0
                  ],
                  "text": "prepend seed"
                }
              },
              {
                "box": {
                  "id": "seed14load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    240.0,
                    120.0,
                    22.0
                  ],
                  "text": "loadmess 12345"
                }
              },
              {
                "box": {
                  "id": "micro-on14label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    225.0,
                    130.0,
                    210.0,
                    20.0
                  ],
                  "text": "MICRO ON"
                }
              },
              {
                "box": {
                  "id": "micro-on14",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    225.0,
                    157.0,
                    28.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "micro-on14command",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    225.0,
                    200.0,
                    160.0,
                    22.0
                  ],
                  "text": "prepend micro"
                }
              },
              {
                "box": {
                  "id": "micro-on14load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    225.0,
                    240.0,
                    120.0,
                    22.0
                  ],
                  "text": "loadmess 0"
                }
              },
              {
                "box": {
                  "id": "micro-depth14label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    370.0,
                    130.0,
                    210.0,
                    20.0
                  ],
                  "text": "MICRO DEPTH \u00b1Hz"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "micro-depth14",
                  "maxclass": "flonum",
                  "maximum": 5.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    370.0,
                    157.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "micro-depth14command",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    370.0,
                    200.0,
                    160.0,
                    22.0
                  ],
                  "text": "prepend microdepth"
                }
              },
              {
                "box": {
                  "id": "micro-depth14load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    370.0,
                    240.0,
                    120.0,
                    22.0
                  ],
                  "text": "loadmess 0.1"
                }
              },
              {
                "box": {
                  "id": "micro-time14label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    600.0,
                    130.0,
                    210.0,
                    20.0
                  ],
                  "text": "WALK SEGMENT MS"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "micro-time14",
                  "maxclass": "flonum",
                  "maximum": 600000.0,
                  "minimum": 100.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    600.0,
                    157.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "micro-time14command",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600.0,
                    200.0,
                    160.0,
                    22.0
                  ],
                  "text": "prepend microtime"
                }
              },
              {
                "box": {
                  "id": "micro-time14load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600.0,
                    240.0,
                    120.0,
                    22.0
                  ],
                  "text": "loadmess 2000."
                }
              },
              {
                "box": {
                  "id": "micro-live-label14",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    775.0,
                    130.0,
                    220.0,
                    20.0
                  ],
                  "text": "CURRENT MAX MICRO |Hz|"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "micro-live14",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    775.0,
                    157.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-30",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    775.0,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-31",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    305.25,
                    324.0,
                    30.0,
                    30.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "micro-depth14command",
                    0
                  ],
                  "source": [
                    "micro-depth14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-31",
                    0
                  ],
                  "source": [
                    "micro-depth14command",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "micro-depth14",
                    0
                  ],
                  "source": [
                    "micro-depth14load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "micro-on14command",
                    0
                  ],
                  "source": [
                    "micro-on14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-31",
                    0
                  ],
                  "source": [
                    "micro-on14command",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "micro-on14",
                    0
                  ],
                  "source": [
                    "micro-on14load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "micro-time14command",
                    0
                  ],
                  "source": [
                    "micro-time14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-31",
                    0
                  ],
                  "source": [
                    "micro-time14command",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "micro-time14",
                    0
                  ],
                  "source": [
                    "micro-time14load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "micro-live14",
                    0
                  ],
                  "source": [
                    "obj-30",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "seed14command",
                    0
                  ],
                  "source": [
                    "seed14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-31",
                    0
                  ],
                  "source": [
                    "seed14command",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "seed14",
                    0
                  ],
                  "source": [
                    "seed14load",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            1962.0,
            827.0,
            74.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            885.0,
            658.0,
            74.0,
            22.0
          ],
          "text": "p Micro-Drift"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "bgfillcolor_color1": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "obj-28",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            923.0,
            927.0,
            197.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            77.0,
            535.0,
            197.0,
            22.0
          ],
          "text": "PartialAmplitudes_to_Inharmonicity"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.051,
            0.424,
            0.616,
            1.0
          ],
          "fontface": 1,
          "id": "obj-26",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            17.0,
            1654.0,
            875.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            17.0,
            981.0,
            345.0,
            20.0
          ],
          "text": "DESIGNING SYNTHESIS as ORGAN-like/PARTIAL STOPS",
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.373,
            0.965,
            0.0,
            1.0
          ],
          "id": "obj-25",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            680.0,
            1164.0,
            226.0,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            31.0,
            1083.0,
            263.0,
            33.0
          ],
          "text": "SHAPES menu treats the curves as a weighted \ndistribution (PROBABILITY ONLY)."
        }
      },
      {
        "box": {
          "id": "obj-24",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            380.0,
            707.0,
            226.0,
            33.0
          ],
          "presentation": 1,
          "presentation_rect": [
            383.0,
            679.0,
            233.0,
            20.0
          ],
          "text": "SHAPES menu applies AMP. value curves"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            376.0,
            548.0,
            226.0,
            33.0
          ],
          "presentation": 1,
          "presentation_rect": [
            379.0,
            512.0,
            241.0,
            20.0
          ],
          "text": "SHAPES menu applies DRIFT value curves"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.37254901960784315,
            0.9647058823529412,
            0.0,
            1.0
          ],
          "fontface": 1,
          "id": "obj-22",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            10.0,
            1084.0,
            875.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            6.0,
            1057.0,
            345.0,
            20.0
          ],
          "text": "REMOVE PARTIALS USING PROBABILITY DISTRIBUTIONS",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "fontface": 1,
          "id": "obj-10",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            634.0,
            326.0,
            229.0,
            33.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            360.0,
            250.0,
            20.0
          ],
          "text": "HARMONIC PARTIAL AMPLITUDES 0.0-1.0",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1121.0,
            928.5,
            851.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            5.0,
            662.0,
            851.0,
            20.0
          ],
          "text": "Apply a +- frequency offset to the visible HARMONIC PARTIALS in the top multislider, based on DRIFT value. 0.0 drift = no change (see What is MAX DRIFT? ",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "fontface": 1,
          "id": "obj-20",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            302.5,
            885.5,
            74.0,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            795.0,
            683.0,
            85.0,
            33.0
          ],
          "text": "MORPH TIME\nin MS",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "fontface": 1,
          "id": "obj-19",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            563.0,
            646.0,
            62.0,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            653.0,
            346.0,
            62.0,
            33.0
          ],
          "text": "RANDOM\nAMPS",
          "textcolor": [
            0.0,
            0.549019607843137,
            0.67843137254902,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "fontface": 1,
          "id": "obj-16",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1064.0,
            744.0,
            66.0,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            653.0,
            526.0,
            66.0,
            33.0
          ],
          "text": "RANDOM \nAMPS",
          "textcolor": [
            0.0,
            0.549019607843137,
            0.67843137254902,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "fontface": 1,
          "id": "obj-15",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            392.0,
            899.0,
            66.0,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            653.0,
            683.0,
            66.0,
            33.0
          ],
          "text": "RANDOM \nAMPS",
          "textcolor": [
            0.0,
            0.549019607843137,
            0.67843137254902,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "id": "obj-14",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
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
              59.0,
              119.0,
              930.0,
              616.0
            ],
            "boxes": [
              {
                "box": {
                  "fontsize": 18.0,
                  "id": "obj-2",
                  "linecount": 24,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25.0,
                    25.0,
                    827.0,
                    509.0
                  ],
                  "text": "With the duplicate set and amplitude, each partial will have **two nearby oscillators**:\n\n* The **primary oscillator** is shifted from its harmonic frequency by the inharmonicity setting.\n* The **anchor oscillator** stays at the exact harmonic frequency.\n\nWhen both sound, their waves repeatedly reinforce and cancel one another. This produces **beating**\u2014a fluctuation in loudness at the difference between their frequencies.\n\nFor example, an anchor at **440 Hz** and a primary at **440.5 Hz** produce **0.5 beats per second**: one loudness cycle every two seconds. Shifting the primary below the anchor to **439.5 Hz** gives the same beating rate.\n\nThe controls shape this interaction:\n\n* **Inharmonicity and Max Drift** determine frequency separation and therefore beating speed.\n* **Primary and anchor amplitudes** determine beating depth. Similar amplitudes give stronger fluctuations; a much quieter oscillator gives shallower fluctuations.\n* **Micro drift** slowly changes the separation, making the beating accelerate and decelerate.\n\nAcross the partial set, each pair has its own separation and beating rate. Their simultaneous fluctuations create the changing texture.\n\nWith **zero separation and micro off**, the pair has no beating; the patch merges matching frequencies. With either oscillator\u2019s amplitude at zero, that pair also produces no beating.\n"
                }
              }
            ],
            "lines": []
          },
          "patching_rect": [
            936.0,
            1023.0,
            131.0,
            35.0
          ],
          "presentation": 1,
          "presentation_linecount": 4,
          "presentation_rect": [
            884.0,
            720.0,
            78.0,
            62.0
          ],
          "text": "p why the anchor and what is BEATING?"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            195.0,
            1111.5,
            497.0,
            33.0
          ],
          "presentation": 1,
          "presentation_rect": [
            6.0,
            822.0,
            724.0,
            20.0
          ],
          "text": "duplicate set of HARMONIC PARTIALS with 0.0-1.0 amplitudes that are mixing with detuned originals to creating beating effects "
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
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
              59.0,
              119.0,
              1145.0,
              706.0
            ],
            "boxes": [
              {
                "box": {
                  "bgcolor": [
                    0.301961,
                    0.301961,
                    0.301961,
                    1
                  ],
                  "bgcolor2": [
                    0.2,
                    0.2,
                    0.2,
                    1
                  ],
                  "bgfillcolor_autogradient": 0.0,
                  "bgfillcolor_color": [
                    0.2,
                    0.2,
                    0.2,
                    1
                  ],
                  "bgfillcolor_color1": [
                    0.301961,
                    0.301961,
                    0.301961,
                    1
                  ],
                  "bgfillcolor_color2": [
                    0.2,
                    0.2,
                    0.2,
                    1
                  ],
                  "bgfillcolor_type": "gradient",
                  "fontsize": 14.0,
                  "gradient": 1,
                  "id": "syn-filtered-message",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    100.0,
                    955.0,
                    24.0
                  ],
                  "text": "1 18.354048 2 18.354048",
                  "textcolor": [
                    1.0,
                    0.0,
                    0.08235294117647059,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-10",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    50.0,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "syn-filtered-message",
                    0
                  ],
                  "source": [
                    "obj-10",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            1302.0,
            1416.0,
            109.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            883.0,
            416.0,
            109.0,
            22.0
          ],
          "text": "p FILTER_ACTIVE"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1305.0,
            1312.0,
            150.0,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 3,
          "presentation_rect": [
            881.0,
            436.0,
            130.0,
            47.0
          ],
          "text": "FILTER ACTIVE posts Out-of-range partials inside patcher."
        }
      },
      {
        "box": {
          "id": "obj-7",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            609.0,
            689.5,
            226.0,
            33.0
          ],
          "presentation": 1,
          "presentation_rect": [
            378.0,
            335.0,
            233.0,
            20.0
          ],
          "text": "SHAPES menu applies AMP. value curves"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
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
              59.0,
              119.0,
              992.0,
              848.0
            ],
            "visible": 1,
            "boxes": [
              {
                "box": {
                  "fontsize": 18.0,
                  "id": "obj-2",
                  "linecount": 39,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25.0,
                    25.0,
                    827.0,
                    811.0
                  ],
                  "text": "**MAX Drift (ERB units)** sets the maximum nominal detuning of the primary partials from their exact harmonic frequencies. ERB is a frequency-dependent auditory bandwidth, so the same ERB value produces a larger offset in Hz at higher frequencies.\n\nMAX Drift scales the INHARMONICITY LEVELS for all primary partials above the fundamental.\n\nEach slider sets that partial\u2019s proportion of the maximum:\n\n0: no ERB detuning.\n0.5: half the Max Drift amount.\n1: the full Max Drift amount.\n\nFor each partial above the fundamental:\n\n**Offset in Hz = seeded \u00b1 direction \u00d7 inharmonicity slider value \u00d7 Max Drift \u00d7 ERB bandwidth**\n\nFor example, at an exact harmonic frequency of **1,000 Hz**, the patch calculates an ERB bandwidth of approximately **133 Hz**:\n\n| Max Drift | Inharmonicity slider | Nominal offset |\n| --------- | -------------------- | -------------- |\n| 0.5       | 1.0                  | \u00b166.3 Hz       |\n| 0.5       | 0.5                  | \u00b133.2 Hz       |\n| 0.5       | 0.0                  | 0 Hz           |\n\nThe sign comes from that partial\u2019s seeded random direction; it stays fixed until you change the seed.\n\nIn the current patch, the **MAX DRIFT control feeds inlet 5 of `js cnmat_sinusoid_model_generator_14.js`**. The generator applies this offset while building the primary frequencies, before Global Model Retuning and post transforms.\n\n* **Partial 1** remains at the base frequency.\n* **Harmonic anchors** remain at exact harmonic frequencies.\n* **Micro drift** adds its separate, time-varying offset in Hz to the primary frequencies. Consequently, setting Max Drift to **0** removes ERB detuning, but micro motion continues if enabled.\n\nIn **Rebuild** mode, ERB offsets are recalculated at the changing base frequency. **Ratio** mode scales the generated offsets with the spectrum; **Additive** mode shifts the generated frequencies by a common Hz amount.\n"
                }
              }
            ],
            "lines": []
          },
          "patching_rect": [
            1959.0,
            799.0,
            131.0,
            22.0
          ],
          "presentation": 1,
          "presentation_linecount": 3,
          "presentation_rect": [
            883.0,
            549.0,
            77.0,
            49.0
          ],
          "text": "p what is MAX DRIFT?"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            36.0,
            857.5,
            716.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            6.0,
            490.0,
            575.0,
            20.0
          ],
          "text": "individual partial amplitudes (0.0-1.0) built from whole-number multiples of  source BASE FREQ left to right"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
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
              0.0,
              0.0,
              1000.0,
              780.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "syn-model-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    109.0,
                    36.0,
                    22.0
                  ],
                  "text": "t l l"
                }
              },
              {
                "box": {
                  "id": "syn-model-prepend",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    107.0,
                    109.0,
                    76.0,
                    22.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "bgcolor": [
                    0.301961,
                    0.301961,
                    0.301961,
                    1
                  ],
                  "bgcolor2": [
                    0.2,
                    0.2,
                    0.2,
                    1
                  ],
                  "bgfillcolor_autogradient": 0.0,
                  "bgfillcolor_color": [
                    0.2,
                    0.2,
                    0.2,
                    1
                  ],
                  "bgfillcolor_color1": [
                    0.301961,
                    0.301961,
                    0.301961,
                    1
                  ],
                  "bgfillcolor_color2": [
                    0.2,
                    0.2,
                    0.2,
                    1
                  ],
                  "bgfillcolor_type": "gradient",
                  "gradient": 1,
                  "id": "syn-model-message",
                  "linecount": 121,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    195.0,
                    102.0,
                    88.0,
                    1322.0
                  ],
                  "text": "33.161449 0.877497 36.708096 0.877497 55.062144 0.768388 58.92893 0.768388 69.358815 0.673659 73.416192 0.673659 87.636272 0.589434 91.77024 0.589434 110.124288 0.516182 114.255815 0.516182 128.478336 0.451166 132.53638 0.451166 146.832384 0.394521 150.771727 0.394521 165.186432 0.344335 168.965746 0.344335 183.54048 0.300533 187.136732 0.300533 198.502527 0.261793 201.894528 0.261793 217.069665 0.227922 220.248576 0.227922 235.644616 0.19802 238.602624 0.19802 254.219713 0.171828 256.956672 0.171828 275.31072 0.148747 277.827377 0.148747 291.363492 0.128494 293.664768 0.128494 309.926984 0.110678 312.018816 0.110678 330.372864 0.095016 332.2628 0.095016 347.03 0.081266 348.726912 0.081266 367.08096 0.069155 368.593507 0.069155 384.096621 0.058541 385.435008 0.058541 403.789056 0.049176 404.962049 0.049176 421.124917 0.040984 422.143104 0.040984 439.625433 0.033743 440.497152 0.033743 458.8512 0.02742 459.586731 0.02742 477.205248 0.021821 477.812203 0.021821 495.071327 0.01694 495.559296 0.01694 513.913344 0.01261 514.289075 0.01261 532.267392 0.008844 532.539671 0.008844 550.446791 0.005496 550.62144 0.005496 568.890652 0.002589 568.975488 0.002589 587.329536 0",
                  "textcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-3",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-4",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    1484.0,
                    30.0,
                    30.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "syn-model-trigger",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "syn-model-message",
                    0
                  ],
                  "source": [
                    "syn-model-prepend",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "source": [
                    "syn-model-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "syn-model-prepend",
                    0
                  ],
                  "source": [
                    "syn-model-trigger",
                    1
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            42.0,
            1117.0,
            71.0,
            22.0
          ],
          "text": "p model_14"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            583.0,
            597.0,
            55.0,
            22.0
          ],
          "text": "dac~ 1 2"
        }
      },
      {
        "box": {
          "channels": 1,
          "id": "obj-1",
          "lastchannelcount": 0,
          "maxclass": "live.gain~",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "signal",
            "",
            "float",
            "list"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            640.0,
            526.5,
            48.0,
            136.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                -65
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.gain~",
              "parameter_mmax": 6.0,
              "parameter_mmin": -70.0,
              "parameter_modmode": 3,
              "parameter_shortname": "live.gain~",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "varname": "live.gain~"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontsize": 24.0,
          "id": "syn-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            36.0,
            591.5,
            414.0,
            33.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            235.0,
            414.0,
            33.0
          ],
          "text": "EC_CNMAT sinusoids~ Synthesizer",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-method",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1119.0,
            993.0,
            699.0,
            33.0
          ],
          "text": "Drift model: fn = n\u00b7f0 \u00b1 drift[n]\u00b7max-drift\u00b7ERB(n\u00b7f0). Partial 1 remains f0. Frequencies \u2265 min(23 kHz, 0.499\u00b7sample rate) are filtered.",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "fontface": 1,
          "id": "syn-count-label",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            48.0,
            665.5,
            229.0,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            107.0,
            284.0,
            191.0,
            33.0
          ],
          "text": "HARMONIC PARTIALS 2-256\nbuilt up from SOURCE BASE Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "elementcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "hint": "Number of sinusoidal components 2-255",
          "id": "syn-count-slider",
          "knobcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "knobshape": 3,
          "maxclass": "slider",
          "numinlets": 1,
          "numoutlets": 1,
          "orientation": 1,
          "outlettype": [
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            36.0,
            701.5,
            210.0,
            30.0
          ],
          "presentation": 1,
          "presentation_rect": [
            107.0,
            320.0,
            210.0,
            30.0
          ],
          "size": 255.0,
          "valuepopuplabel": 1
        }
      },
      {
        "box": {
          "id": "syn-plus2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            333.0,
            651.5,
            32.0,
            22.0
          ],
          "text": "+ 2"
        }
      },
      {
        "box": {
          "id": "syn-count-split",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ],
          "patching_rect": [
            952.0,
            711.0,
            37.0,
            22.0
          ],
          "text": "t i i"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "cantchange": 1,
          "fontsize": 14.0,
          "id": "syn-count-display",
          "maxclass": "number",
          "maximum": 256,
          "minimum": 2,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            248.0,
            698.5,
            52.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            319.0,
            356.0,
            52.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-count-update",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            952.0,
            749.0,
            50.0,
            22.0
          ],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "fontface": 1,
          "id": "syn-base-label",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            450.0,
            592.5,
            91.0,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 3,
          "presentation_rect": [
            8.0,
            270.0,
            94.0,
            47.0
          ],
          "text": "BASE FREQ \nF0 (Partial 1) in Hertz (Hz)",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "fontsize": 18.0,
          "format": 6,
          "id": "syn-base",
          "maxclass": "flonum",
          "maximum": 23000.0,
          "minimum": 1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            316.0,
            676.5,
            117.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            321.0,
            94.0,
            29.0
          ]
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "syn-drift-label",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1959.0,
            857.5,
            77.0,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            883.0,
            600.0,
            44.0,
            33.0
          ],
          "text": "MAX \nDRIFT",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "format": 6,
          "id": "syn-drift",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1959.0,
            898.0,
            80.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            883.0,
            635.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "fontface": 1,
          "id": "syn-freq-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1082.0,
            780.0,
            215.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            11.0,
            512.0,
            207.0,
            20.0
          ],
          "text": "INHARMONICITY FACTOR   0.0\u20131.0",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.7294117647058823,
            1.0,
            1.0
          ],
          "candicane2": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "candycane": 2,
          "contdata": 1,
          "ghostbar": 13,
          "id": "syn-freq-slider",
          "maxclass": "multislider",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1082.0,
            804.0,
            875.0,
            120.0
          ],
          "presentation": 1,
          "presentation_rect": [
            6.0,
            560.0,
            875.0,
            100.0
          ],
          "setminmax": [
            0.0,
            1.0
          ],
          "size": 32,
          "slidercolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "spacing": 2
        }
      },
      {
        "box": {
          "bgcolor": [
            0.638838505167049,
            0.548194572727919,
            0.130142067214928,
            1.0
          ],
          "candicane2": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "candycane": 2,
          "contdata": 1,
          "ghostbar": 13,
          "id": "syn-amp-slider",
          "maxclass": "multislider",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            36.0,
            748.5,
            875.0,
            107.0
          ],
          "presentation": 1,
          "presentation_rect": [
            6.0,
            383.0,
            875.0,
            100.0
          ],
          "setminmax": [
            0.0,
            1.0
          ],
          "size": 32,
          "slidercolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "spacing": 2
        }
      },
      {
        "box": {
          "id": "syn-js",
          "maxclass": "newobj",
          "numinlets": 9,
          "numoutlets": 6,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            30.5,
            903.5,
            269.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "cnmat_sinusoid_model_generator_14.js",
            "parameter_enable": 0
          },
          "text": "js cnmat_sinusoid_model_generator_14.js",
          "varname": "cnmat_sinusoid_model_generator_14"
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "syn-model-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            187.0,
            1146.0,
            460.0,
            20.0
          ],
          "text": "FINAL TRANSFORMED MODEL \u2014 AUTO-LOADED INTO sinusoids~",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-status-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            117.0,
            1118.0,
            76.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.301961,
            0.301961,
            0.301961,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_color1": [
            0.301961,
            0.301961,
            0.301961,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "syn-status-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            41.0,
            1171.0,
            335.0,
            22.0
          ],
          "text": "63 61 0 2 0 12000",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "syn-status-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            130.0,
            1207.0,
            435.0,
            20.0
          ],
          "text": "SOURCE  OUTPUT  MERGED  REJECTED  INVALID  LIMIT Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-adstatus",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            "int"
          ],
          "patching_rect": [
            497.0,
            1183.0,
            70.0,
            22.0
          ],
          "text": "adstatus sr"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "syn-sr-display",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            577.0,
            1183.0,
            88.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "syn-sr-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            577.0,
            1207.0,
            100.0,
            20.0
          ],
          "text": "SAMPLE RATE",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "checkedcolor": [
            0.611764705882353,
            0.0,
            0.027471133949191,
            1.0
          ],
          "id": "syn-alias-toggle",
          "ignoreclick": 1,
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1302.0,
            1378.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            883.0,
            383.0,
            28.0,
            28.0
          ],
          "uncheckedcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ]
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "syn-alias-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1341.0,
            1382.0,
            178.0,
            20.0
          ],
          "text": "FINAL FILTER ACTIVE",
          "textcolor": [
            0.611764705882353,
            0.0,
            0.027471133949191,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-filtered-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            489.0,
            1527.0,
            76.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "syn-filtered-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            380.0,
            1329.0,
            292.0,
            20.0
          ],
          "text": "REJECTED: source-pair index / transformed Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-loadbang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            436.0,
            1166.0,
            60.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "syn-delay",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            63.0,
            1206.0,
            62.0,
            22.0
          ],
          "text": "delay 100"
        }
      },
      {
        "box": {
          "id": "syn-init-bangs",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "bang",
            "bang"
          ],
          "patching_rect": [
            28.0,
            1264.0,
            50.0,
            22.0
          ],
          "text": "t b b b"
        }
      },
      {
        "box": {
          "id": "syn-load-count",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            37.0,
            642.5,
            77.0,
            22.0
          ],
          "text": "loadmess 30"
        }
      },
      {
        "box": {
          "id": "syn-load-base",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1139.0,
            1029.0,
            80.0,
            22.0
          ],
          "text": "loadmess 55."
        }
      },
      {
        "box": {
          "id": "syn-load-drift",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1033.0,
            681.0,
            85.0,
            22.0
          ],
          "text": "loadmess 0.5"
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "obj-18",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            266.0,
            150.0,
            429.0,
            20.0
          ],
          "text": "Rounded to integers \u2014 STORED, NOT TRIGGERED",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
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
              59.0,
              119.0,
              1000.0,
              780.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-analysis-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "bang",
                    "",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    100.0,
                    72.0,
                    22.0
                  ],
                  "text": "t b l b l"
                }
              },
              {
                "box": {
                  "id": "obj-store-normalized",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    57.0,
                    434.0,
                    50.0,
                    22.0
                  ],
                  "text": "zl reg"
                }
              },
              {
                "box": {
                  "id": "obj-store-127",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    337.0,
                    465.0,
                    50.0,
                    22.0
                  ],
                  "text": "zl reg"
                }
              },
              {
                "box": {
                  "id": "obj-reset-group",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    285.0,
                    150.0,
                    47.0,
                    22.0
                  ],
                  "text": "zlclear"
                }
              },
              {
                "box": {
                  "id": "obj-reset-maximum",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    305.0,
                    190.0,
                    30.0,
                    22.0
                  ],
                  "text": "0."
                }
              },
              {
                "box": {
                  "id": "obj-iter-pairs",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    370.0,
                    150.0,
                    55.0,
                    22.0
                  ],
                  "text": "zl.iter 2"
                }
              },
              {
                "box": {
                  "id": "obj-unpack-pair",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "float"
                  ],
                  "patching_rect": [
                    370.0,
                    190.0,
                    70.0,
                    22.0
                  ],
                  "text": "unpack f f"
                }
              },
              {
                "box": {
                  "id": "obj-value-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    448.0,
                    191.0,
                    215.0,
                    20.0
                  ],
                  "text": "value     duration ignored",
                  "textcolor": [
                    0.35,
                    0.35,
                    0.35,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-group-values",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    370.0,
                    230.0,
                    72.0,
                    22.0
                  ],
                  "text": "zl.group 48"
                }
              },
              {
                "box": {
                  "id": "obj-maximum",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "int"
                  ],
                  "patching_rect": [
                    370.0,
                    270.0,
                    74.0,
                    22.0
                  ],
                  "text": "maximum 0."
                }
              },
              {
                "box": {
                  "id": "obj-max-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "float"
                  ],
                  "patching_rect": [
                    370.0,
                    310.0,
                    40.0,
                    22.0
                  ],
                  "text": "t f f"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "obj-max-display",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    460.0,
                    295.0,
                    90.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "hidden": 1,
                  "id": "obj-filter-max-display",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    555.0,
                    295.0,
                    112.0,
                    22.0
                  ],
                  "text": "routepass int float"
                }
              },
              {
                "box": {
                  "id": "obj-classify",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    370.0,
                    350.0,
                    66.0,
                    22.0
                  ],
                  "text": "<= 1.0001"
                }
              },
              {
                "box": {
                  "id": "obj-select-type",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    370.0,
                    390.0,
                    56.0,
                    22.0
                  ],
                  "text": "sel 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-class-note",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    344.0,
                    360.0,
                    33.0
                  ],
                  "text": "Classification: maximum value \u2264 1.0001 = normalized envelope; otherwise = 0\u2013127 control data.",
                  "textcolor": [
                    0.35,
                    0.35,
                    0.35,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-status-norm",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    455.0,
                    480.0,
                    169.0,
                    22.0
                  ],
                  "text": "0-1 ENVELOPE STORED"
                }
              },
              {
                "box": {
                  "id": "obj-status-127",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    640.0,
                    480.0,
                    250.0,
                    22.0
                  ],
                  "text": "RAW 0-127 FLOAT CONTROL STORED"
                }
              },
              {
                "box": {
                  "id": "obj-status-prepend",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    455.0,
                    515.0,
                    77.0,
                    22.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-envelope-prepend",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    490.0,
                    77.0,
                    22.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-control-prepend",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    117.0,
                    691.0,
                    77.0,
                    22.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-12",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-13",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-14",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    822.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-15",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    85.0,
                    822.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-16",
                  "index": 3,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    822.0,
                    30.0,
                    30.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-analysis-trigger",
                    0
                  ],
                  "source": [
                    "obj-12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-status-prepend",
                    0
                  ],
                  "source": [
                    "obj-13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-group-values",
                    0
                  ],
                  "source": [
                    "obj-analysis-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-iter-pairs",
                    0
                  ],
                  "source": [
                    "obj-analysis-trigger",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-reset-group",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-analysis-trigger",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-reset-maximum",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-analysis-trigger",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-store-127",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "obj-analysis-trigger",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-store-normalized",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "obj-analysis-trigger",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-select-type",
                    0
                  ],
                  "source": [
                    "obj-classify",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-15",
                    0
                  ],
                  "source": [
                    "obj-control-prepend",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-14",
                    0
                  ],
                  "source": [
                    "obj-envelope-prepend",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-max-display",
                    0
                  ],
                  "source": [
                    "obj-filter-max-display",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-max-display",
                    0
                  ],
                  "source": [
                    "obj-filter-max-display",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-maximum",
                    0
                  ],
                  "source": [
                    "obj-group-values",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-unpack-pair",
                    0
                  ],
                  "source": [
                    "obj-iter-pairs",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-classify",
                    0
                  ],
                  "source": [
                    "obj-max-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-filter-max-display",
                    0
                  ],
                  "source": [
                    "obj-max-trigger",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-max-trigger",
                    0
                  ],
                  "source": [
                    "obj-maximum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-group-values",
                    0
                  ],
                  "source": [
                    "obj-reset-group",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-maximum",
                    1
                  ],
                  "source": [
                    "obj-reset-maximum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-status-127",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-select-type",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-status-norm",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-select-type",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-store-127",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-select-type",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-store-normalized",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-select-type",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-status-prepend",
                    0
                  ],
                  "source": [
                    "obj-status-127",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-status-prepend",
                    0
                  ],
                  "source": [
                    "obj-status-norm",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-16",
                    0
                  ],
                  "source": [
                    "obj-status-prepend",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-control-prepend",
                    0
                  ],
                  "source": [
                    "obj-store-127",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-envelope-prepend",
                    0
                  ],
                  "source": [
                    "obj-store-normalized",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-group-values",
                    0
                  ],
                  "source": [
                    "obj-unpack-pair",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            45.0,
            204.0,
            63.0,
            22.0
          ],
          "text": "p prep_14"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontsize": 20.0,
          "id": "obj-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            45.0,
            25.0,
            870.0,
            29.0
          ],
          "text": "CNMAT SINUSOIDS~ SYNTHESIZER \u2014 STAGE 14",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-subtitle",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            47.0,
            60.0,
            870.0,
            20.0
          ],
          "text": "receive function \u2192 normalized envelope or raw float control; receive function-rounded-integers \u2192 rounded MIDI control",
          "textcolor": [
            0.3,
            0.3,
            0.3,
            1.0
          ]
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "obj-receive-heading",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            14.5,
            104.0,
            165.0,
            20.0
          ],
          "text": "FUNCTION-LIST RECEIVER",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-receive",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            45.0,
            130.0,
            126.0,
            22.0
          ],
          "text": "receive gain-envelope"
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "obj-envelope-heading",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            85.0,
            355.0,
            429.0,
            20.0
          ],
          "text": "NORMALIZED 0\u20131 AMPLITUDE ENVELOPE \u2014 STORED, NOT TRIGGERED",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0,
            0.7294117647058823,
            1,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_color1": [
            0,
            0.7294117647058823,
            1,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "obj-envelope-message",
          "linecount": 4,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            45.0,
            379.0,
            760.0,
            62.0
          ],
          "text": "0. 0. 0. 21.28 0. 21.28 0.01 21.28 0.01 21.28 0.01 21.28 0.01 21.28 0.02 21.28 0.02 21.28 0.02 21.28 0.03 21.28 0.03 21.28 0.03 21.28 0.04 21.28 0.04 21.28 0.05 21.28 0.05 21.28 0.06 21.28 0.07 21.28 0.08 21.28 0.08 21.28 0.09 21.28 0.1 21.28 0.11 21.28 0.13 21.28 0.14 21.28 0.15 21.28 0.17 21.28 0.18 21.28 0.2 21.28 0.22 21.28 0.24 21.28 0.27 21.28 0.29 21.28 0.32 21.28 0.35 21.28 0.38 21.28 0.42 21.28 0.45 21.28 0.5 21.28 0.54 21.28 0.59 21.28 0.65 21.28 0.71 21.28 0.77 21.28 0.84 21.28 0.92 21.28 1. 21.28",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.549019607843137,
            0.67843137254902,
            1.0
          ],
          "id": "obj-trigger-button",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            14.0,
            343.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "obj-trigger-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            10.0,
            321.0,
            185.0,
            20.0
          ],
          "text": "TRIGGER STORED ENVELOPE",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-line",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            426.0,
            471.0,
            73.0,
            22.0
          ],
          "text": "line~ 0."
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "obj-signal-heading",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            465.0,
            505.0,
            480.0,
            20.0
          ],
          "text": "AMPLITUDE MULTIPLIER \u2014 CNMAT SINUSOIDS~ OUTPUT",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-signal-in",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            294.0,
            481.0,
            70.0,
            22.0
          ],
          "text": "sinusoids~"
        }
      },
      {
        "box": {
          "id": "obj-multiply",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            409.0,
            504.0,
            36.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "comment": "envelope-controlled synthesis output",
          "id": "obj-signal-out",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            379.0,
            515.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-signal-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            140.0,
            525.0,
            230.0,
            20.0
          ],
          "text": "CNMAT sinusoidal oscillator bank",
          "textcolor": [
            0.35,
            0.35,
            0.35,
            1.0
          ]
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "obj-control-heading",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            115.0,
            218.0,
            411.0,
            20.0
          ],
          "text": "RAW 0\u2013127 FLOAT CONTROL LIST \u2014 STORED FOR THE NEXT STAGE",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.6388385052447552,
            0.5481945727244106,
            0.13014206719178864,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_color1": [
            0.6388385052447552,
            0.5481945727244106,
            0.13014206719178864,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "obj-control-message",
          "linecount": 5,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            57.0,
            240.0,
            760.0,
            76.0
          ],
          "text": "0. 0. 5.4 21.28 10.81 21.28 16.21 21.28 21.62 21.28 27.02 21.28 32.43 21.28 37.83 21.28 43.23 21.28 48.64 21.28 54.04 21.28 59.45 21.28 64.85 21.28 70.26 21.28 75.66 21.28 81.06 21.28 86.47 21.28 91.87 21.28 97.28 21.28 102.68 21.28 108.09 21.28 113.49 21.28 118.89 21.28 124.3 21.28 124.3 21.28 118.89 21.28 113.49 21.28 108.09 21.28 102.68 21.28 97.28 21.28 91.87 21.28 86.47 21.28 81.06 21.28 75.66 21.28 70.26 21.28 64.85 21.28 59.45 21.28 54.04 21.28 48.64 21.28 43.23 21.28 37.83 21.28 32.43 21.28 27.02 21.28 21.62 21.28 16.21 21.28 10.81 21.28 5.4 21.28 0. 21.28",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-receive-rounded",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            182.0,
            104.0,
            141.0,
            22.0
          ],
          "text": "receive rounded-integers"
        }
      },
      {
        "box": {
          "id": "obj-rounded-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            182.0,
            147.0,
            77.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "bgcolor": [
            0,
            0.7294117647058823,
            1,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_color1": [
            0,
            0.7294117647058823,
            1,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "obj-rounded-message",
          "linecount": 2,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            182.0,
            177.0,
            482.0,
            35.0
          ],
          "text": "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0,
            0.7294117647058823,
            1,
            1
          ],
          "bgfillcolor_color": [
            0,
            0.7294117647058823,
            1,
            1
          ],
          "bgfillcolor_color1": [
            0.301961,
            0.301961,
            0.301961,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "color",
          "id": "syn-freq-shape-menu",
          "items": [
            "Flat zero (default)",
            ",",
            "Linear: low to high",
            ",",
            "Exponential: low to high",
            ",",
            "Linear: high to low",
            ",",
            "Exponential: high to low",
            ",",
            "Triangle: center peak",
            ",",
            "Exponential triangle: center peak",
            ",",
            "Gaussian",
            ",",
            "Steep Gaussian",
            ",",
            "Inverted Gaussian",
            ",",
            "Steep Inverted Gaussian",
            ",",
            "Double Gaussian",
            ",",
            "Steep Double Gaussian",
            ",",
            "Inverted Double Gaussian",
            ",",
            "Steep Inverted Double Gaussian",
            ",",
            "Triple Gaussian",
            ",",
            "Steep Triple Gaussian",
            ",",
            "Inverted Triple Gaussian",
            ",",
            "Steep Inverted Triple Gaussian",
            ",",
            "Quadruple Gaussian",
            ",",
            "Steep Quadruple Gaussian",
            ",",
            "Inverted Quadruple Gaussian",
            ",",
            "Steep Inverted Quadruple Gaussian",
            ",",
            "Random (fixed)"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1612.0,
            777.0,
            345.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            378.0,
            535.0,
            235.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.638838505167049,
            0.548194572727919,
            0.130142067214928,
            1
          ],
          "bgfillcolor_color": [
            0.638838505167049,
            0.548194572727919,
            0.130142067214928,
            1
          ],
          "bgfillcolor_color1": [
            0.301961,
            0.301961,
            0.301961,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "color",
          "id": "syn-amp-shape-menu",
          "items": [
            "Flat zero",
            ",",
            "Linear: low to high",
            ",",
            "Exponential: low to high",
            ",",
            "Linear: high to low",
            ",",
            "Exponential: high to low",
            ",",
            "Triangle: center peak",
            ",",
            "Exponential triangle: center peak",
            ",",
            "Gaussian",
            ",",
            "Steep Gaussian",
            ",",
            "Inverted Gaussian",
            ",",
            "Steep Inverted Gaussian",
            ",",
            "Double Gaussian",
            ",",
            "Steep Double Gaussian",
            ",",
            "Inverted Double Gaussian",
            ",",
            "Steep Inverted Double Gaussian",
            ",",
            "Triple Gaussian",
            ",",
            "Steep Triple Gaussian",
            ",",
            "Inverted Triple Gaussian",
            ",",
            "Steep Inverted Triple Gaussian",
            ",",
            "Quadruple Gaussian",
            ",",
            "Steep Quadruple Gaussian",
            ",",
            "Inverted Quadruple Gaussian",
            ",",
            "Steep Inverted Quadruple Gaussian",
            ",",
            "Random (fixed)"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            499.0,
            480.0,
            340.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            378.0,
            357.0,
            235.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-dynamic-shapes",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            118.0,
            1266.0,
            176.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "dynamic_shape_library_14.js",
            "parameter_enable": 0
          },
          "text": "js dynamic_shape_library_14.js",
          "varname": "dynamic_shape_library_14"
        }
      },
      {
        "box": {
          "id": "syn-dynamic-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            742.0,
            1141.0,
            175.0,
            20.0
          ],
          "text": "MORPH / 256-SLOT MEMORY",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-load-shape-menus",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1612.0,
            749.0,
            76.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "fontface": 1,
          "id": "syn-harmonic-amp-label",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            43.0,
            928.5,
            216.0,
            33.0
          ],
          "presentation": 1,
          "presentation_rect": [
            5.0,
            679.0,
            321.0,
            20.0
          ],
          "text": "HARMONIC ANCHOR  DUPLICATES no DRIFT) 0.0-1.0",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-harmonic-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            572.0,
            899.0,
            345.0,
            20.0
          ],
          "text": "Exact n \u00d7 base frequency; default amplitudes = 0.0",
          "textcolor": [
            0.611764705882353,
            0.0,
            0.027471133949191,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.972549,
            0.462745,
            0.501961,
            1.0
          ],
          "candicane2": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "candycane": 2,
          "contdata": 1,
          "ghostbar": 13,
          "id": "syn-harmonic-amp-slider",
          "maxclass": "multislider",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            42.0,
            963.0,
            875.0,
            120.0
          ],
          "presentation": 1,
          "presentation_rect": [
            6.0,
            720.0,
            875.0,
            100.0
          ],
          "setminmax": [
            0.0,
            1.0
          ],
          "size": 32,
          "slidercolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "spacing": 2
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "id": "syn-random-freq-button",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1541.5,
            771.0,
            23.0,
            23.0
          ],
          "presentation": 1,
          "presentation_rect": [
            722.0,
            526.0,
            33.0,
            33.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.638838505167049,
            0.548194572727919,
            0.130142067214928,
            1.0
          ],
          "id": "syn-random-amp-button",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            772.0,
            723.5,
            23.0,
            23.0
          ],
          "presentation": 1,
          "presentation_rect": [
            717.0,
            346.0,
            33.0,
            33.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.972549,
            0.462745,
            0.501961,
            1.0
          ],
          "id": "syn-random-harmonic-button",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            397.0,
            933.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            722.0,
            683.0,
            33.0,
            33.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "bgfillcolor_color1": [
            0.301961,
            0.301961,
            0.301961,
            1.0
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "color",
          "id": "syn-harmonic-shape-menu",
          "items": [
            "Flat zero (default)",
            ",",
            "Linear: low to high",
            ",",
            "Exponential: low to high",
            ",",
            "Linear: high to low",
            ",",
            "Exponential: high to low",
            ",",
            "Triangle: center peak",
            ",",
            "Exponential triangle: center peak",
            ",",
            "Gaussian",
            ",",
            "Steep Gaussian",
            ",",
            "Inverted Gaussian",
            ",",
            "Steep Inverted Gaussian",
            ",",
            "Double Gaussian",
            ",",
            "Steep Double Gaussian",
            ",",
            "Inverted Double Gaussian",
            ",",
            "Steep Inverted Double Gaussian",
            ",",
            "Triple Gaussian",
            ",",
            "Steep Triple Gaussian",
            ",",
            "Inverted Triple Gaussian",
            ",",
            "Steep Inverted Triple Gaussian",
            ",",
            "Quadruple Gaussian",
            ",",
            "Steep Quadruple Gaussian",
            ",",
            "Inverted Quadruple Gaussian",
            ",",
            "Steep Inverted Quadruple Gaussian",
            ",",
            "Random (fixed)"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            572.0,
            934.0,
            345.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            385.0,
            696.0,
            228.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "syn-load-harmonic-menu",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            494.0,
            934.0,
            76.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "id": "syn-random-js",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            694.0,
            1117.0,
            230.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "random_multislider_values_14.js",
            "parameter_enable": 0
          },
          "text": "js random_multislider_values_14.js",
          "varname": "random_multislider_values_14"
        }
      },
      {
        "box": {
          "id": "obj-function-list-gate",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            45.0,
            166.0,
            58.0,
            22.0
          ],
          "text": "route list"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "fontface": 1,
          "id": "syn-freq-interp-label",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1406.0,
            723.5,
            74.0,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            793.0,
            526.0,
            88.0,
            33.0
          ],
          "text": "MORPH TIME\nin MS",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.729,
            1.0,
            1.0
          ],
          "format": 6,
          "id": "syn-freq-interp-ms",
          "maxclass": "flonum",
          "maximum": 600000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1412.0,
            771.0,
            68.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            883.0,
            526.0,
            68.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "fontface": 1,
          "id": "syn-amp-interp-label",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            843.0,
            675.5,
            56.0,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            791.0,
            348.0,
            88.0,
            33.0
          ],
          "text": "MORPH TIME \nin MS",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.549,
            0.129,
            1.0
          ],
          "format": 6,
          "id": "syn-amp-interp-ms",
          "maxclass": "flonum",
          "maximum": 600000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            843.0,
            725.5,
            68.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            881.0,
            359.0,
            68.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "format": 6,
          "id": "syn-harmonic-interp-ms",
          "maxclass": "flonum",
          "maximum": 600000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            322.0,
            933.0,
            68.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            883.0,
            683.0,
            68.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-load-freq-interp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            927.0,
            1216.0,
            95.0,
            22.0
          ],
          "text": "loadmess 1000."
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-load-amp-interp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            927.0,
            1241.0,
            95.0,
            22.0
          ],
          "text": "loadmess 1000."
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-load-harmonic-interp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            927.0,
            1266.0,
            95.0,
            22.0
          ],
          "text": "loadmess 1000."
        }
      },
      {
        "box": {
          "id": "syn-interpolation-js",
          "maxclass": "newobj",
          "numinlets": 11,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            502.0,
            1266.0,
            250.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "multislider_interpolation_engine_14.js",
            "parameter_enable": 0
          },
          "text": "js multislider_interpolation_engine_14.js",
          "varname": "multislider_interpolation_engine_14"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-freq-list",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            927.0,
            1091.0,
            82.0,
            22.0
          ],
          "text": "routepass list"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-amp-list",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            927.0,
            1116.0,
            82.0,
            22.0
          ],
          "text": "routepass list"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-anchor-list",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            927.0,
            1141.0,
            82.0,
            22.0
          ],
          "text": "routepass list"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-count-number",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            1014.0,
            1091.0,
            112.0,
            22.0
          ],
          "text": "routepass int float"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-base-number",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            1014.0,
            1116.0,
            112.0,
            22.0
          ],
          "text": "routepass int float"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-drift-number",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            1014.0,
            1141.0,
            112.0,
            22.0
          ],
          "text": "routepass int float"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-sr-number",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            1014.0,
            1166.0,
            112.0,
            22.0
          ],
          "text": "routepass int float"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-sr-display",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            1132.0,
            1091.0,
            112.0,
            22.0
          ],
          "text": "routepass int float"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-count-display",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            1132.0,
            1116.0,
            112.0,
            22.0
          ],
          "text": "routepass int float"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-base-display",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            1132.0,
            1141.0,
            112.0,
            22.0
          ],
          "text": "routepass int float"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "syn-filter-drift-display",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            1132.0,
            1166.0,
            112.0,
            22.0
          ],
          "text": "routepass int float"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "fontface": 1,
          "id": "rt14-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1306.0,
            875.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            11.0,
            841.0,
            251.0,
            20.0
          ],
          "text": "GLOBAL RETUNING TRANSFORM",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "rt14-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1243.0,
            875.0,
            20.0
          ],
          "text": "Source sliders remain untouched. Target changes glide automatically; post transforms are always recalculated from the stored source.",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.7294117647058823,
            0.0392156862745098,
            1.0
          ],
          "id": "rt14-mode-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1371.0,
            240.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            37.0,
            867.0,
            240.0,
            20.0
          ],
          "text": "RETUNING MODE",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "bgfillcolor_color1": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "gradient",
          "id": "rt14-mode",
          "items": [
            "Rebuild base / ERB drift",
            ",",
            "Ratio transpose / fixed spectrum",
            ",",
            "Additive Hz shift"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            42.0,
            1396.0,
            240.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            37.0,
            892.0,
            240.0,
            22.0
          ],
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-mode-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            258.0,
            1347.0,
            80.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-target-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            290.0,
            1371.0,
            109.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            292.0,
            867.0,
            109.0,
            20.0
          ],
          "text": "TARGET BASE Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-target",
          "maxclass": "flonum",
          "maximum": 23000.0,
          "minimum": 1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            297.0,
            1396.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            292.0,
            892.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.12941176470588237,
            0.12549019607843137,
            0.12549019607843137,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-target-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            297.0,
            1281.0,
            100.0,
            22.0
          ],
          "text": "loadmess 110"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-glide-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            402.0,
            1371.0,
            100.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            397.0,
            867.0,
            100.0,
            20.0
          ],
          "text": "RETUNE MS",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-glide",
          "maxclass": "flonum",
          "maximum": 600000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            402.0,
            1396.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            397.0,
            892.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.12941176470588237,
            0.12549019607843137,
            0.12549019607843137,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-glide-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            402.0,
            1281.0,
            100.0,
            22.0
          ],
          "text": "loadmess 1000"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-current-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            507.0,
            1371.0,
            120.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            502.0,
            867.0,
            120.0,
            20.0
          ],
          "text": "CURRENT BASE Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-current",
          "ignoreclick": 1,
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            507.0,
            1396.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            502.0,
            892.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.12941176470588237,
            0.12549019607843137,
            0.12549019607843137,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-current-set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            189.0,
            1614.0,
            80.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "checkedcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "rt14-bypass",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            632.0,
            1393.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            627.0,
            889.0,
            28.0,
            28.0
          ],
          "uncheckedcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "rt14-bypass-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            670.0,
            1396.0,
            230.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            665.0,
            892.0,
            171.0,
            20.0
          ],
          "text": "POST TRANSFORM BYPASS",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-bypass-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            721.0,
            1364.0,
            100.0,
            22.0
          ],
          "text": "prepend bypass"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-bypass-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            632.0,
            1364.0,
            80.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-semitones-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1446.0,
            125.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            37.0,
            922.0,
            125.0,
            20.0
          ],
          "text": "SEMITONES",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-semitones",
          "maxclass": "flonum",
          "maximum": 120.0,
          "minimum": -120.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            42.0,
            1469.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            37.0,
            947.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-semitones-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            42.0,
            1424.0,
            100.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-semitones-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            42.0,
            1492.0,
            120.0,
            22.0
          ],
          "text": "prepend semitones"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-cents-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            167.0,
            1446.0,
            125.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            162.0,
            922.0,
            125.0,
            20.0
          ],
          "text": "CENTS",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-cents",
          "maxclass": "flonum",
          "maximum": 12000.0,
          "minimum": -12000.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            167.0,
            1471.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            162.0,
            947.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-cents-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            167.0,
            1424.0,
            100.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-cents-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            167.0,
            1498.0,
            120.0,
            22.0
          ],
          "text": "prepend cents"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-offset-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            292.0,
            1446.0,
            125.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            287.0,
            922.0,
            125.0,
            20.0
          ],
          "text": "EXTRA SHIFT Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-offset",
          "maxclass": "flonum",
          "maximum": 23000.0,
          "minimum": -23000.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            292.0,
            1471.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            287.0,
            947.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-offset-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            292.0,
            1424.0,
            100.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-offset-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            292.0,
            1502.0,
            120.0,
            22.0
          ],
          "text": "prepend offset"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-gain-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            417.0,
            1446.0,
            125.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            412.0,
            922.0,
            125.0,
            20.0
          ],
          "text": "MODEL AMP GAIN",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-gain",
          "maxclass": "flonum",
          "maximum": 4.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            417.0,
            1471.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            412.0,
            947.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-gain-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            420.0,
            1424.0,
            100.0,
            22.0
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-gain-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            417.0,
            1502.0,
            120.0,
            22.0
          ],
          "text": "prepend gain"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-low-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            542.0,
            1446.0,
            125.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            537.0,
            922.0,
            125.0,
            20.0
          ],
          "text": "MINIMUM Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-low",
          "maxclass": "flonum",
          "maximum": 23000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            542.0,
            1471.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            537.0,
            947.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-low-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            539.0,
            1424.0,
            100.0,
            22.0
          ],
          "text": "loadmess 20"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-low-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            544.0,
            1498.0,
            120.0,
            22.0
          ],
          "text": "prepend low"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-high-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            667.0,
            1446.0,
            125.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            662.0,
            922.0,
            125.0,
            20.0
          ],
          "text": "MAXIMUM Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-high",
          "maxclass": "flonum",
          "maximum": 23000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            667.0,
            1471.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            662.0,
            947.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-high-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            667.0,
            1424.0,
            100.0,
            22.0
          ],
          "text": "loadmess 12000"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-high-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            667.0,
            1498.0,
            120.0,
            22.0
          ],
          "text": "prepend high"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "id": "rt14-cluster-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            792.0,
            1446.0,
            125.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            787.0,
            922.0,
            125.0,
            20.0
          ],
          "text": "CLUSTER SPAN Hz",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.729,
            0.039,
            1.0
          ],
          "format": 6,
          "id": "rt14-cluster",
          "maxclass": "flonum",
          "maximum": 23000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            792.0,
            1469.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            787.0,
            947.0,
            95.0,
            22.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-cluster-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            804.0,
            1424.0,
            100.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-cluster-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            797.0,
            1492.0,
            120.0,
            22.0
          ],
          "text": "prepend cluster"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.039,
            0.039,
            1.0
          ],
          "id": "rt14-retuning",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            42.0,
            1527.0,
            290.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "global_retuning_controller_14.js",
            "parameter_enable": 0
          },
          "text": "js global_retuning_controller_14.js",
          "varname": "global_retuning_controller_14"
        }
      },
      {
        "box": {
          "id": "rt14-transform",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            648.5,
            1527.0,
            285.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "sinusoid_model_transform_14.js",
            "parameter_enable": 0
          },
          "text": "js sinusoid_model_transform_14.js",
          "varname": "sinusoid_model_transform_14"
        }
      },
      {
        "box": {
          "id": "rt14-safe-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1551.0,
            875.0,
            20.0
          ],
          "text": "Bypass skips post tuning/gain/clusters, NOT base rebuilding or safety filtering. Clusters OFF (0 Hz) preserve beating.",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-sr-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            975.0,
            1492.0,
            115.0,
            22.0
          ],
          "text": "prepend samplerate"
        }
      },
      {
        "box": {
          "id": "rt14-source-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1591.0,
            875.0,
            20.0
          ],
          "text": "FULL SOURCE MODEL \u2014 STORED BEFORE POST TRANSFORMS / ALIAS FILTER (clicking does not send)",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rt14-source-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            982.0,
            1550.0,
            80.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "bgcolor": [
            0,
            0.7294117647058823,
            1,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_color1": [
            0,
            0.7294117647058823,
            1,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "rt14-source-message",
          "linecount": 23,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            982.0,
            1591.0,
            309.0,
            317.0
          ],
          "text": "110 1 110 1 198.744136 0.877497 220 0.877497 353.174532 0.768388 330 0.768388 415.683214 0.673659 440 0.673659 525.224188 0.589434 550 0.589434 684.761183 0.516182 660 0.516182 794.320787 0.451166 770 0.451166 903.609383 0.394521 880 0.394521 1012.650289 0.344335 990 0.344335 1121.55316 0.300533 1100 0.300533 1189.670963 0.261793 1210 0.261793 1300.948059 0.227922 1320 0.227922 1412.271985 0.19802 1430 0.19802 1523.596778 0.171828 1540 0.171828 1665.082897 0.148747 1650 0.148747 1746.207927 0.128494 1760 0.128494 1857.463175 0.110678 1870 0.110678 1991.32682 0.095016 1980 0.095016 2079.83 0.081266 2090 0.081266 2209.065038 0.069155 2200 0.069155 2301.978739 0.058541 2310 0.058541 2427.03 0.049176 2420 0.049176 2523.897776 0.040984 2530 0.040984 2634.775589 0.033743 2640 0.033743 2754.408207 0.02742 2750 0.02742 2863.637621 0.021821 2860 0.021821 2967.075488 0.01694 2970 0.01694 3082.251844 0.01261 3080 0.01261 3191.63183 0.008844 3190 0.008844 3298.95329 0.005496 3300 0.005496 3409.491557 0.002589 3410 0.002589 3520 0",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "rt14-study",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1696.0,
            875.0,
            20.0
          ],
          "text": "Rebuild changes the ERB-aware model; ratio preserves frequency ratios; additive moves every frequency by the same Hz amount.",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "stage12-amp-default",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            424.0,
            642.5,
            90.0,
            22.0
          ],
          "text": "loadmess 3"
        }
      },
      {
        "box": {
          "filename": "component_index_ruler_14.js",
          "id": "stage12-freq-indices",
          "ignoreclick": 1,
          "maxclass": "jsui",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1082.0,
            710.5,
            875.0,
            12.0
          ],
          "varname": "component_indices_freq_14"
        }
      },
      {
        "box": {
          "filename": "component_index_ruler_14.js",
          "id": "stage12-amp-indices",
          "ignoreclick": 1,
          "maxclass": "jsui",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            36.0,
            456.0,
            875.0,
            12.0
          ],
          "varname": "component_indices_amp_14"
        }
      },
      {
        "box": {
          "filename": "component_index_ruler_14.js",
          "id": "stage12-harmonic-indices",
          "ignoreclick": 1,
          "maxclass": "jsui",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            42.0,
            1228.0,
            875.0,
            12.0
          ],
          "varname": "component_indices_harmonic_14"
        }
      },
      {
        "box": {
          "fontface": 1,
          "id": "rm14-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1756.0,
            875.0,
            20.0
          ],
          "text": "WEIGHTED PARTIAL REMOVAL \u2014 INDEPENDENT DISTRIBUTION LIBRARY",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.373,
            0.965,
            0.0,
            1.0
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.373,
            0.965,
            0.0,
            1.0
          ],
          "bgfillcolor_color1": [
            0.301961,
            0.301961,
            0.301961,
            1.0
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "color",
          "id": "rm14-shape-menu",
          "items": [
            "Flat zero",
            ",",
            "Linear: low to high",
            ",",
            "Exponential: low to high",
            ",",
            "Linear: high to low",
            ",",
            "Exponential: high to low",
            ",",
            "Triangle: center peak",
            ",",
            "Exponential triangle: center peak",
            ",",
            "Gaussian",
            ",",
            "Steep Gaussian",
            ",",
            "Inverted Gaussian",
            ",",
            "Steep Inverted Gaussian",
            ",",
            "Double Gaussian",
            ",",
            "Steep Double Gaussian",
            ",",
            "Inverted Double Gaussian",
            ",",
            "Steep Inverted Double Gaussian",
            ",",
            "Triple Gaussian",
            ",",
            "Steep Triple Gaussian",
            ",",
            "Inverted Triple Gaussian",
            ",",
            "Steep Inverted Triple Gaussian",
            ",",
            "Quadruple Gaussian",
            ",",
            "Steep Quadruple Gaussian",
            ",",
            "Inverted Quadruple Gaussian",
            ",",
            "Steep Inverted Quadruple Gaussian",
            ",",
            "Random (fixed)"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            42.0,
            1841.0,
            345.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            31.0,
            1121.0,
            263.0,
            22.0
          ],
          "textcolor": [
            0.12941176470588237,
            0.12549019607843137,
            0.12549019607843137,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.373,
            0.965,
            0.0,
            1.0
          ],
          "id": "rm14-count-label",
          "linecount": 7,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            417.0,
            1816.0,
            107.0,
            100.0
          ],
          "presentation": 1,
          "presentation_linecount": 3,
          "presentation_rect": [
            373.0,
            1083.0,
            217.0,
            47.0
          ],
          "text": "Each bang zeros this many elements across all three sliders. selection based on the distribution shape.",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.373,
            0.965,
            0.0,
            1.0
          ],
          "id": "rm14-count",
          "maxclass": "number",
          "maximum": 256,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            417.0,
            1791.0,
            85.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            375.0,
            1135.0,
            85.0,
            22.0
          ],
          "textcolor": [
            0.09411764705882353,
            0.09019607843137255,
            0.09019607843137255,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.373,
            0.965,
            0.0,
            1.0
          ],
          "id": "rm14-go",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            524.0,
            1838.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            630.0,
            1106.0,
            39.0,
            39.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.373,
            0.965,
            0.0,
            1.0
          ],
          "id": "rm14-go-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            555.0,
            1841.0,
            75.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            629.0,
            1083.0,
            75.0,
            20.0
          ],
          "text": "REMOVE",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "rm14-example",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            642.0,
            1841.0,
            275.0,
            22.0
          ],
          "text": "remove X partials 10"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rm14-count-store",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            939.0,
            1841.0,
            40.0,
            22.0
          ],
          "text": "i 10"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rm14-count-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            997.0,
            1934.0,
            80.0,
            22.0
          ],
          "text": "loadmess 10"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rm14-command",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1087.0,
            1909.0,
            100.0,
            22.0
          ],
          "text": "prepend remove"
        }
      },
      {
        "box": {
          "id": "rm14-indices-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1733.0,
            875.0,
            20.0
          ],
          "text": "REMOVED COMPONENT NUMBERS \u2014 1 = FUNDAMENTAL",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0,
            0.7294117647,
            1,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_color1": [
            0,
            0.7294117647,
            1,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "rm14-indices",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            42.0,
            1919.0,
            875.0,
            22.0
          ],
          "text": "none",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rm14-indices-set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            947.0,
            1911.0,
            80.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "rm14-status-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            1961.0,
            875.0,
            20.0
          ],
          "text": "REQUESTED   REMOVED   SOUNDING REMAINING   UNIFORM FALLBACK DRAWS   VISIBLE COUNT",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0,
            0.7294117647,
            1,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_color1": [
            0,
            0.7294117647,
            1,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "rm14-status",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            42.0,
            1986.0,
            875.0,
            22.0
          ],
          "text": "7 0 0 0 150",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rm14-status-set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            947.0,
            1986.0,
            80.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "rm14-weight-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            2021.0,
            875.0,
            20.0
          ],
          "text": "CURRENT WEIGHTS \u2014 RESAMPLED TO VISIBLE COUNT; THESE DO NOT SET THE SOUND SLIDERS",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0,
            0.7294117647,
            1,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_color1": [
            0,
            0.7294117647,
            1,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "rm14-weights-preview",
          "linecount": 2,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            42.0,
            2046.0,
            875.0,
            35.0
          ],
          "text": "1 0.967742 0.935484 0.903226 0.870967 0.83871 0.806452 0.774193 0.741936 0.709678 0.677419 0.645161 0.612903 0.580645 0.548387 0.516129 0.483871 0.451613 0.419355 0.387097 0.354839 0.322581 0.290322 0.258064 0.225807 0.193548 0.16129 0.129033 0.096774 0.064516 0.032258 0",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rm14-weights-set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            947.0,
            2046.0,
            80.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "rm14-weight-library",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            42.0,
            2136.0,
            305.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "dynamic_shape_library_weights_14.js",
            "parameter_enable": 0
          },
          "text": "js dynamic_shape_library_weights_14.js",
          "varname": "dynamic_shape_library_weights_14"
        }
      },
      {
        "box": {
          "id": "rm14-engine",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            367.0,
            2136.0,
            285.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "weighted_partial_removal_14.js",
            "parameter_enable": 0
          },
          "text": "js weighted_partial_removal_14.js",
          "varname": "weighted_partial_removal_14"
        }
      },
      {
        "box": {
          "id": "rm14-receive",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            42.0,
            2176.0,
            270.0,
            22.0
          ],
          "text": "receive remove-partials-stage-14"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rm14-shape-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            947.0,
            2136.0,
            80.0,
            22.0
          ],
          "text": "loadmess 3"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "rm14-size-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "int"
          ],
          "patching_rect": [
            947.0,
            2176.0,
            45.0,
            22.0
          ],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "rm14-policy",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            2216.0,
            875.0,
            20.0
          ],
          "text": "Already-silent components are excluded. Zero weights use uniform fallback only when positive weights are exhausted. Hidden slots survive.",
          "textcolor": [
            0.16,
            0.29,
            0.45,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.050980392156862744,
            0.4235294117647059,
            0.615686274509804,
            1.0
          ],
          "id": "workspace14",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
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
              100.0,
              100.0,
              1140.0,
              850.0
            ],
            "openinpresentation": 1,
            "visible": 1,
            "boxes": [
              {
                "box": {
                  "fontsize": 20.0,
                  "id": "title",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    15.0,
                    1090.0,
                    29.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    15.0,
                    1090.0,
                    29.0
                  ],
                  "text": "OCTAVE FAMILIES"
                }
              },
              {
                "box": {
                  "id": "explain",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    50.0,
                    1090.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    50.0,
                    1090.0,
                    20.0
                  ],
                  "text": "octave families of partial indices, generated by repeatedly doubling a starting number, up to 256."
                }
              },
              {
                "box": {
                  "id": "explain2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    93.0,
                    1090.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    93.0,
                    1090.0,
                    20.0
                  ],
                  "text": "ALL OFF / FLAT ZERO clears all 256 slots in all three memories, including partial 1. Scroll for all 128 families."
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "output",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    1820.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "prefix",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1780.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend octavefamily"
                }
              },
              {
                "box": {
                  "id": "on2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "2 on"
                }
              },
              {
                "box": {
                  "id": "off2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "2 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family2",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    245.0,
                    46.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    245.0,
                    122.0,
                    19.0
                  ],
                  "text": "2 4 8 16 32 64 128 256"
                }
              },
              {
                "box": {
                  "id": "on3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "3 on"
                }
              },
              {
                "box": {
                  "id": "off3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "3 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family3",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    245.0,
                    42.0,
                    43.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    245.0,
                    106.0,
                    19.0
                  ],
                  "text": "3 6 12 24 48 96 192"
                }
              },
              {
                "box": {
                  "id": "on5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "5 on"
                }
              },
              {
                "box": {
                  "id": "off5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "5 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family5",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    245.0,
                    40.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    245.0,
                    100.0,
                    19.0
                  ],
                  "text": "5 10 20 40 80 160"
                }
              },
              {
                "box": {
                  "id": "on7",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "7 on"
                }
              },
              {
                "box": {
                  "id": "off7",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "7 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family7",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    245.0,
                    44.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    245.0,
                    102.0,
                    19.0
                  ],
                  "text": "7 14 28 56 112 224"
                }
              },
              {
                "box": {
                  "id": "on9",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "9 on"
                }
              },
              {
                "box": {
                  "id": "off9",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "9 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family9",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    245.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    245.0,
                    100.0,
                    19.0
                  ],
                  "text": "9 18 36 72 144"
                }
              },
              {
                "box": {
                  "id": "on11",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "11 on"
                }
              },
              {
                "box": {
                  "id": "off11",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "11 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family11",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    245.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    245.0,
                    100.0,
                    19.0
                  ],
                  "text": "11 22 44 88 176"
                }
              },
              {
                "box": {
                  "id": "on13",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "13 on"
                }
              },
              {
                "box": {
                  "id": "off13",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "13 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family13",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    245.0,
                    40.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    245.0,
                    100.0,
                    19.0
                  ],
                  "text": "13 26 52 104 208"
                }
              },
              {
                "box": {
                  "id": "on15",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "15 on"
                }
              },
              {
                "box": {
                  "id": "off15",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "15 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family15",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    245.0,
                    40.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    245.0,
                    100.0,
                    19.0
                  ],
                  "text": "15 30 60 120 240"
                }
              },
              {
                "box": {
                  "id": "on17",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "17 on"
                }
              },
              {
                "box": {
                  "id": "off17",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "17 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family17",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    245.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    245.0,
                    100.0,
                    19.0
                  ],
                  "text": "17 34 68 136"
                }
              },
              {
                "box": {
                  "id": "on19",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    190.0,
                    100.0,
                    22.0
                  ],
                  "text": "19 on"
                }
              },
              {
                "box": {
                  "id": "off19",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    218.0,
                    100.0,
                    22.0
                  ],
                  "text": "19 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family19",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    245.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    245.0,
                    100.0,
                    19.0
                  ],
                  "text": "19 38 76 152"
                }
              },
              {
                "box": {
                  "id": "on21",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "21 on"
                }
              },
              {
                "box": {
                  "id": "off21",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "21 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family21",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    361.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "21 42 84 168"
                }
              },
              {
                "box": {
                  "id": "on23",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "23 on"
                }
              },
              {
                "box": {
                  "id": "off23",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "23 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family23",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    361.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "23 46 92 184"
                }
              },
              {
                "box": {
                  "id": "on25",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "25 on"
                }
              },
              {
                "box": {
                  "id": "off25",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "25 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family25",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    361.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "25 50 100 200"
                }
              },
              {
                "box": {
                  "id": "on27",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "27 on"
                }
              },
              {
                "box": {
                  "id": "off27",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "27 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family27",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    361.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "27 54 108 216"
                }
              },
              {
                "box": {
                  "id": "on29",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "29 on"
                }
              },
              {
                "box": {
                  "id": "off29",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "29 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family29",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    361.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "29 58 116 232"
                }
              },
              {
                "box": {
                  "id": "on31",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "31 on"
                }
              },
              {
                "box": {
                  "id": "off31",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "31 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family31",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    361.0,
                    34.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "31 62 124 248"
                }
              },
              {
                "box": {
                  "id": "on33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "33 on"
                }
              },
              {
                "box": {
                  "id": "off33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "33 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family33",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    361.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "33 66 132"
                }
              },
              {
                "box": {
                  "id": "on35",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "35 on"
                }
              },
              {
                "box": {
                  "id": "off35",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "35 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family35",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    361.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "35 70 140"
                }
              },
              {
                "box": {
                  "id": "on37",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "37 on"
                }
              },
              {
                "box": {
                  "id": "off37",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "37 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family37",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    361.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "37 74 148"
                }
              },
              {
                "box": {
                  "id": "on39",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    306.0,
                    100.0,
                    22.0
                  ],
                  "text": "39 on"
                }
              },
              {
                "box": {
                  "id": "off39",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    334.0,
                    100.0,
                    22.0
                  ],
                  "text": "39 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family39",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    361.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    361.0,
                    100.0,
                    19.0
                  ],
                  "text": "39 78 156"
                }
              },
              {
                "box": {
                  "id": "on41",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "41 on"
                }
              },
              {
                "box": {
                  "id": "off41",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "41 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family41",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    477.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "41 82 164"
                }
              },
              {
                "box": {
                  "id": "on43",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "43 on"
                }
              },
              {
                "box": {
                  "id": "off43",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "43 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family43",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    477.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "43 86 172"
                }
              },
              {
                "box": {
                  "id": "on45",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "45 on"
                }
              },
              {
                "box": {
                  "id": "off45",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "45 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family45",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    477.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "45 90 180"
                }
              },
              {
                "box": {
                  "id": "on47",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "47 on"
                }
              },
              {
                "box": {
                  "id": "off47",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "47 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family47",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    477.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "47 94 188"
                }
              },
              {
                "box": {
                  "id": "on49",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "49 on"
                }
              },
              {
                "box": {
                  "id": "off49",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "49 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family49",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    477.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "49 98 196"
                }
              },
              {
                "box": {
                  "id": "on51",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "51 on"
                }
              },
              {
                "box": {
                  "id": "off51",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "51 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family51",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "51 102 204"
                }
              },
              {
                "box": {
                  "id": "on53",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "53 on"
                }
              },
              {
                "box": {
                  "id": "off53",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "53 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family53",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "53 106 212"
                }
              },
              {
                "box": {
                  "id": "on55",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "55 on"
                }
              },
              {
                "box": {
                  "id": "off55",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "55 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family55",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    477.0,
                    29.0,
                    43.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "55 110 220"
                }
              },
              {
                "box": {
                  "id": "on57",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "57 on"
                }
              },
              {
                "box": {
                  "id": "off57",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "57 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family57",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    477.0,
                    29.0,
                    43.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "57 114 228"
                }
              },
              {
                "box": {
                  "id": "on59",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    422.0,
                    100.0,
                    22.0
                  ],
                  "text": "59 on"
                }
              },
              {
                "box": {
                  "id": "off59",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    450.0,
                    100.0,
                    22.0
                  ],
                  "text": "59 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family59",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    477.0,
                    29.0,
                    43.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    477.0,
                    100.0,
                    19.0
                  ],
                  "text": "59 118 236"
                }
              },
              {
                "box": {
                  "id": "on61",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "61 on"
                }
              },
              {
                "box": {
                  "id": "off61",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "61 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family61",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "61 122 244"
                }
              },
              {
                "box": {
                  "id": "on63",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "63 on"
                }
              },
              {
                "box": {
                  "id": "off63",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "63 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family63",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "63 126 252"
                }
              },
              {
                "box": {
                  "id": "on65",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "65 on"
                }
              },
              {
                "box": {
                  "id": "off65",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "65 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family65",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "65 130"
                }
              },
              {
                "box": {
                  "id": "on67",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "67 on"
                }
              },
              {
                "box": {
                  "id": "off67",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "67 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family67",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "67 134"
                }
              },
              {
                "box": {
                  "id": "on69",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "69 on"
                }
              },
              {
                "box": {
                  "id": "off69",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "69 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family69",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "69 138"
                }
              },
              {
                "box": {
                  "id": "on71",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "71 on"
                }
              },
              {
                "box": {
                  "id": "off71",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "71 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family71",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "71 142"
                }
              },
              {
                "box": {
                  "id": "on73",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "73 on"
                }
              },
              {
                "box": {
                  "id": "off73",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "73 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family73",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "73 146"
                }
              },
              {
                "box": {
                  "id": "on75",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "75 on"
                }
              },
              {
                "box": {
                  "id": "off75",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "75 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family75",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "75 150"
                }
              },
              {
                "box": {
                  "id": "on77",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "77 on"
                }
              },
              {
                "box": {
                  "id": "off77",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "77 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family77",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "77 154"
                }
              },
              {
                "box": {
                  "id": "on79",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    538.0,
                    100.0,
                    22.0
                  ],
                  "text": "79 on"
                }
              },
              {
                "box": {
                  "id": "off79",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    566.0,
                    100.0,
                    22.0
                  ],
                  "text": "79 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family79",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    593.0,
                    100.0,
                    19.0
                  ],
                  "text": "79 158"
                }
              },
              {
                "box": {
                  "id": "on81",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "81 on"
                }
              },
              {
                "box": {
                  "id": "off81",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "81 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family81",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "81 162"
                }
              },
              {
                "box": {
                  "id": "on83",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "83 on"
                }
              },
              {
                "box": {
                  "id": "off83",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "83 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family83",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "83 166"
                }
              },
              {
                "box": {
                  "id": "on85",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "85 on"
                }
              },
              {
                "box": {
                  "id": "off85",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "85 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family85",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "85 170"
                }
              },
              {
                "box": {
                  "id": "on87",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "87 on"
                }
              },
              {
                "box": {
                  "id": "off87",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "87 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family87",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "87 174"
                }
              },
              {
                "box": {
                  "id": "on89",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "89 on"
                }
              },
              {
                "box": {
                  "id": "off89",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "89 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family89",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "89 178"
                }
              },
              {
                "box": {
                  "id": "on91",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "91 on"
                }
              },
              {
                "box": {
                  "id": "off91",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "91 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family91",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "91 182"
                }
              },
              {
                "box": {
                  "id": "on93",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "93 on"
                }
              },
              {
                "box": {
                  "id": "off93",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "93 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family93",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "93 186"
                }
              },
              {
                "box": {
                  "id": "on95",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "95 on"
                }
              },
              {
                "box": {
                  "id": "off95",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "95 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family95",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "95 190"
                }
              },
              {
                "box": {
                  "id": "on97",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "97 on"
                }
              },
              {
                "box": {
                  "id": "off97",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "97 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family97",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "97 194"
                }
              },
              {
                "box": {
                  "id": "on99",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    654.0,
                    100.0,
                    22.0
                  ],
                  "text": "99 on"
                }
              },
              {
                "box": {
                  "id": "off99",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    682.0,
                    100.0,
                    22.0
                  ],
                  "text": "99 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family99",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    709.0,
                    100.0,
                    19.0
                  ],
                  "text": "99 198"
                }
              },
              {
                "box": {
                  "id": "on101",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "101 on"
                }
              },
              {
                "box": {
                  "id": "off101",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "101 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family101",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    825.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "101 202"
                }
              },
              {
                "box": {
                  "id": "on103",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "103 on"
                }
              },
              {
                "box": {
                  "id": "off103",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "103 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family103",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    825.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "103 206"
                }
              },
              {
                "box": {
                  "id": "on105",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "105 on"
                }
              },
              {
                "box": {
                  "id": "off105",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "105 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family105",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    825.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "105 210"
                }
              },
              {
                "box": {
                  "id": "on107",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "107 on"
                }
              },
              {
                "box": {
                  "id": "off107",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "107 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family107",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    825.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "107 214"
                }
              },
              {
                "box": {
                  "id": "on109",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "109 on"
                }
              },
              {
                "box": {
                  "id": "off109",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "109 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family109",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    825.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "109 218"
                }
              },
              {
                "box": {
                  "id": "on111",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "111 on"
                }
              },
              {
                "box": {
                  "id": "off111",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "111 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family111",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    825.0,
                    24.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "111 222"
                }
              },
              {
                "box": {
                  "id": "on113",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "113 on"
                }
              },
              {
                "box": {
                  "id": "off113",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "113 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family113",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    825.0,
                    24.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "113 226"
                }
              },
              {
                "box": {
                  "id": "on115",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "115 on"
                }
              },
              {
                "box": {
                  "id": "off115",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "115 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family115",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    825.0,
                    24.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "115 230"
                }
              },
              {
                "box": {
                  "id": "on117",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "117 on"
                }
              },
              {
                "box": {
                  "id": "off117",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "117 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family117",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    825.0,
                    24.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "117 234"
                }
              },
              {
                "box": {
                  "id": "on119",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    770.0,
                    100.0,
                    22.0
                  ],
                  "text": "119 on"
                }
              },
              {
                "box": {
                  "id": "off119",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    798.0,
                    100.0,
                    22.0
                  ],
                  "text": "119 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family119",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    825.0,
                    24.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    825.0,
                    100.0,
                    19.0
                  ],
                  "text": "119 238"
                }
              },
              {
                "box": {
                  "id": "on121",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "121 on"
                }
              },
              {
                "box": {
                  "id": "off121",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "121 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family121",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    941.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "121 242"
                }
              },
              {
                "box": {
                  "id": "on123",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "123 on"
                }
              },
              {
                "box": {
                  "id": "off123",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "123 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family123",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    941.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "123 246"
                }
              },
              {
                "box": {
                  "id": "on125",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "125 on"
                }
              },
              {
                "box": {
                  "id": "off125",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "125 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family125",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    941.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "125 250"
                }
              },
              {
                "box": {
                  "id": "on127",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "127 on"
                }
              },
              {
                "box": {
                  "id": "off127",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "127 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family127",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    941.0,
                    26.0,
                    56.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "127 254"
                }
              },
              {
                "box": {
                  "id": "on129",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "129 on"
                }
              },
              {
                "box": {
                  "id": "off129",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "129 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family129",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "129"
                }
              },
              {
                "box": {
                  "id": "on131",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "131 on"
                }
              },
              {
                "box": {
                  "id": "off131",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "131 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family131",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "131"
                }
              },
              {
                "box": {
                  "id": "on133",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "133 on"
                }
              },
              {
                "box": {
                  "id": "off133",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "133 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family133",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "133"
                }
              },
              {
                "box": {
                  "id": "on135",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "135 on"
                }
              },
              {
                "box": {
                  "id": "off135",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "135 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family135",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "135"
                }
              },
              {
                "box": {
                  "id": "on137",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "137 on"
                }
              },
              {
                "box": {
                  "id": "off137",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "137 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family137",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "137"
                }
              },
              {
                "box": {
                  "id": "on139",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    886.0,
                    100.0,
                    22.0
                  ],
                  "text": "139 on"
                }
              },
              {
                "box": {
                  "id": "off139",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    914.0,
                    100.0,
                    22.0
                  ],
                  "text": "139 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family139",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    941.0,
                    100.0,
                    19.0
                  ],
                  "text": "139"
                }
              },
              {
                "box": {
                  "id": "on141",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "141 on"
                }
              },
              {
                "box": {
                  "id": "off141",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "141 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family141",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "141"
                }
              },
              {
                "box": {
                  "id": "on143",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "143 on"
                }
              },
              {
                "box": {
                  "id": "off143",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "143 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family143",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "143"
                }
              },
              {
                "box": {
                  "id": "on145",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "145 on"
                }
              },
              {
                "box": {
                  "id": "off145",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "145 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family145",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "145"
                }
              },
              {
                "box": {
                  "id": "on147",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "147 on"
                }
              },
              {
                "box": {
                  "id": "off147",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "147 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family147",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "147"
                }
              },
              {
                "box": {
                  "id": "on149",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "149 on"
                }
              },
              {
                "box": {
                  "id": "off149",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "149 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family149",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "149"
                }
              },
              {
                "box": {
                  "id": "on151",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "151 on"
                }
              },
              {
                "box": {
                  "id": "off151",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "151 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family151",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "151"
                }
              },
              {
                "box": {
                  "id": "on153",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "153 on"
                }
              },
              {
                "box": {
                  "id": "off153",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "153 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family153",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "153"
                }
              },
              {
                "box": {
                  "id": "on155",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "155 on"
                }
              },
              {
                "box": {
                  "id": "off155",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "155 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family155",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "155"
                }
              },
              {
                "box": {
                  "id": "on157",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "157 on"
                }
              },
              {
                "box": {
                  "id": "off157",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "157 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family157",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "157"
                }
              },
              {
                "box": {
                  "id": "on159",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1002.0,
                    100.0,
                    22.0
                  ],
                  "text": "159 on"
                }
              },
              {
                "box": {
                  "id": "off159",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1030.0,
                    100.0,
                    22.0
                  ],
                  "text": "159 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family159",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1057.0,
                    100.0,
                    19.0
                  ],
                  "text": "159"
                }
              },
              {
                "box": {
                  "id": "on161",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "161 on"
                }
              },
              {
                "box": {
                  "id": "off161",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "161 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family161",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "161"
                }
              },
              {
                "box": {
                  "id": "on163",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "163 on"
                }
              },
              {
                "box": {
                  "id": "off163",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "163 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family163",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "163"
                }
              },
              {
                "box": {
                  "id": "on165",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "165 on"
                }
              },
              {
                "box": {
                  "id": "off165",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "165 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family165",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "165"
                }
              },
              {
                "box": {
                  "id": "on167",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "167 on"
                }
              },
              {
                "box": {
                  "id": "off167",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "167 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family167",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "167"
                }
              },
              {
                "box": {
                  "id": "on169",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "169 on"
                }
              },
              {
                "box": {
                  "id": "off169",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "169 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family169",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "169"
                }
              },
              {
                "box": {
                  "id": "on171",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "171 on"
                }
              },
              {
                "box": {
                  "id": "off171",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "171 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family171",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "171"
                }
              },
              {
                "box": {
                  "id": "on173",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "173 on"
                }
              },
              {
                "box": {
                  "id": "off173",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "173 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family173",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "173"
                }
              },
              {
                "box": {
                  "id": "on175",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "175 on"
                }
              },
              {
                "box": {
                  "id": "off175",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "175 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family175",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "175"
                }
              },
              {
                "box": {
                  "id": "on177",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "177 on"
                }
              },
              {
                "box": {
                  "id": "off177",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "177 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family177",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "177"
                }
              },
              {
                "box": {
                  "id": "on179",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1118.0,
                    100.0,
                    22.0
                  ],
                  "text": "179 on"
                }
              },
              {
                "box": {
                  "id": "off179",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1146.0,
                    100.0,
                    22.0
                  ],
                  "text": "179 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family179",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1173.0,
                    100.0,
                    19.0
                  ],
                  "text": "179"
                }
              },
              {
                "box": {
                  "id": "on181",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "181 on"
                }
              },
              {
                "box": {
                  "id": "off181",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "181 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family181",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "181"
                }
              },
              {
                "box": {
                  "id": "on183",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "183 on"
                }
              },
              {
                "box": {
                  "id": "off183",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "183 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family183",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "183"
                }
              },
              {
                "box": {
                  "id": "on185",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "185 on"
                }
              },
              {
                "box": {
                  "id": "off185",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "185 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family185",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "185"
                }
              },
              {
                "box": {
                  "id": "on187",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "187 on"
                }
              },
              {
                "box": {
                  "id": "off187",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "187 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family187",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "187"
                }
              },
              {
                "box": {
                  "id": "on189",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "189 on"
                }
              },
              {
                "box": {
                  "id": "off189",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "189 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family189",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "189"
                }
              },
              {
                "box": {
                  "id": "on191",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "191 on"
                }
              },
              {
                "box": {
                  "id": "off191",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "191 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family191",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "191"
                }
              },
              {
                "box": {
                  "id": "on193",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "193 on"
                }
              },
              {
                "box": {
                  "id": "off193",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "193 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family193",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "193"
                }
              },
              {
                "box": {
                  "id": "on195",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "195 on"
                }
              },
              {
                "box": {
                  "id": "off195",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "195 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family195",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "195"
                }
              },
              {
                "box": {
                  "id": "on197",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "197 on"
                }
              },
              {
                "box": {
                  "id": "off197",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "197 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family197",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "197"
                }
              },
              {
                "box": {
                  "id": "on199",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1234.0,
                    100.0,
                    22.0
                  ],
                  "text": "199 on"
                }
              },
              {
                "box": {
                  "id": "off199",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1262.0,
                    100.0,
                    22.0
                  ],
                  "text": "199 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family199",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1289.0,
                    100.0,
                    19.0
                  ],
                  "text": "199"
                }
              },
              {
                "box": {
                  "id": "on201",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "201 on"
                }
              },
              {
                "box": {
                  "id": "off201",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "201 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family201",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "201"
                }
              },
              {
                "box": {
                  "id": "on203",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "203 on"
                }
              },
              {
                "box": {
                  "id": "off203",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "203 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family203",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "203"
                }
              },
              {
                "box": {
                  "id": "on205",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "205 on"
                }
              },
              {
                "box": {
                  "id": "off205",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "205 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family205",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "205"
                }
              },
              {
                "box": {
                  "id": "on207",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "207 on"
                }
              },
              {
                "box": {
                  "id": "off207",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "207 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family207",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "207"
                }
              },
              {
                "box": {
                  "id": "on209",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "209 on"
                }
              },
              {
                "box": {
                  "id": "off209",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "209 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family209",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "209"
                }
              },
              {
                "box": {
                  "id": "on211",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "211 on"
                }
              },
              {
                "box": {
                  "id": "off211",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "211 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family211",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "211"
                }
              },
              {
                "box": {
                  "id": "on213",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "213 on"
                }
              },
              {
                "box": {
                  "id": "off213",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "213 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family213",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "213"
                }
              },
              {
                "box": {
                  "id": "on215",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "215 on"
                }
              },
              {
                "box": {
                  "id": "off215",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "215 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family215",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "215"
                }
              },
              {
                "box": {
                  "id": "on217",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "217 on"
                }
              },
              {
                "box": {
                  "id": "off217",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "217 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family217",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "217"
                }
              },
              {
                "box": {
                  "id": "on219",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1350.0,
                    100.0,
                    22.0
                  ],
                  "text": "219 on"
                }
              },
              {
                "box": {
                  "id": "off219",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1378.0,
                    100.0,
                    22.0
                  ],
                  "text": "219 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family219",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1405.0,
                    100.0,
                    19.0
                  ],
                  "text": "219"
                }
              },
              {
                "box": {
                  "id": "on221",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "221 on"
                }
              },
              {
                "box": {
                  "id": "off221",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "221 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family221",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "221"
                }
              },
              {
                "box": {
                  "id": "on223",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "223 on"
                }
              },
              {
                "box": {
                  "id": "off223",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "223 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family223",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "223"
                }
              },
              {
                "box": {
                  "id": "on225",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "225 on"
                }
              },
              {
                "box": {
                  "id": "off225",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "225 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family225",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "225"
                }
              },
              {
                "box": {
                  "id": "on227",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "227 on"
                }
              },
              {
                "box": {
                  "id": "off227",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "227 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family227",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "227"
                }
              },
              {
                "box": {
                  "id": "on229",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "229 on"
                }
              },
              {
                "box": {
                  "id": "off229",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "229 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family229",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "229"
                }
              },
              {
                "box": {
                  "id": "on231",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "231 on"
                }
              },
              {
                "box": {
                  "id": "off231",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "231 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family231",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "231"
                }
              },
              {
                "box": {
                  "id": "on233",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "233 on"
                }
              },
              {
                "box": {
                  "id": "off233",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "233 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family233",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "233"
                }
              },
              {
                "box": {
                  "id": "on235",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "235 on"
                }
              },
              {
                "box": {
                  "id": "off235",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "235 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family235",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "235"
                }
              },
              {
                "box": {
                  "id": "on237",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "237 on"
                }
              },
              {
                "box": {
                  "id": "off237",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    900.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "237 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family237",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    900.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "237"
                }
              },
              {
                "box": {
                  "id": "on239",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1466.0,
                    100.0,
                    22.0
                  ],
                  "text": "239 on"
                }
              },
              {
                "box": {
                  "id": "off239",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1010.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1494.0,
                    100.0,
                    22.0
                  ],
                  "text": "239 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family239",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1010.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    1010.0,
                    1521.0,
                    100.0,
                    19.0
                  ],
                  "text": "239"
                }
              },
              {
                "box": {
                  "id": "on241",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "text": "241 on"
                }
              },
              {
                "box": {
                  "id": "off241",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "text": "241 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family241",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "text": "241"
                }
              },
              {
                "box": {
                  "id": "on243",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "text": "243 on"
                }
              },
              {
                "box": {
                  "id": "off243",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    130.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "text": "243 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family243",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    130.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    130.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "text": "243"
                }
              },
              {
                "box": {
                  "id": "on245",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "text": "245 on"
                }
              },
              {
                "box": {
                  "id": "off245",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    240.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "text": "245 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family245",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    240.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    240.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "text": "245"
                }
              },
              {
                "box": {
                  "id": "on247",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "text": "247 on"
                }
              },
              {
                "box": {
                  "id": "off247",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "text": "247 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family247",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "text": "247"
                }
              },
              {
                "box": {
                  "id": "on249",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "text": "249 on"
                }
              },
              {
                "box": {
                  "id": "off249",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    460.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "text": "249 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family249",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    460.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    460.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "text": "249"
                }
              },
              {
                "box": {
                  "id": "on251",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "text": "251 on"
                }
              },
              {
                "box": {
                  "id": "off251",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    570.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "text": "251 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family251",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    570.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    570.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "text": "251"
                }
              },
              {
                "box": {
                  "id": "on253",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "text": "253 on"
                }
              },
              {
                "box": {
                  "id": "off253",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    680.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "text": "253 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family253",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    680.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    680.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "text": "253"
                }
              },
              {
                "box": {
                  "id": "on255",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1582.0,
                    100.0,
                    22.0
                  ],
                  "text": "255 on"
                }
              },
              {
                "box": {
                  "id": "off255",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1610.0,
                    100.0,
                    22.0
                  ],
                  "text": "255 off"
                }
              },
              {
                "box": {
                  "fontsize": 11.0,
                  "id": "family255",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    790.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    790.0,
                    1637.0,
                    100.0,
                    19.0
                  ],
                  "text": "255"
                }
              },
              {
                "box": {
                  "id": "alloff14",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    142.0,
                    80.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    142.0,
                    80.0,
                    22.0
                  ],
                  "text": "alloff"
                }
              },
              {
                "box": {
                  "id": "alloff-label14",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    115.0,
                    142.0,
                    700.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    115.0,
                    142.0,
                    700.0,
                    20.0
                  ],
                  "text": "ALL OFF / FLAT ZERO \u2014 all 256 slots in all three multisliders"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "output",
                    0
                  ],
                  "source": [
                    "alloff14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off101",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off103",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off105",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off107",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off109",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off111",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off113",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off115",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off117",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off119",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off121",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off123",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off125",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off127",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off129",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off131",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off135",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off137",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off139",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off141",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off143",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off145",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off147",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off149",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off15",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off151",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off153",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off155",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off157",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off159",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off161",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off163",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off165",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off167",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off169",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off17",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off171",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off173",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off177",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off179",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off181",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off183",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off185",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off187",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off189",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off191",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off193",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off195",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off197",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off199",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off201",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off203",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off205",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off207",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off209",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off211",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off213",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off215",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off219",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off221",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off223",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off225",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off227",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off229",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off23",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off231",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off233",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off235",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off237",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off239",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off241",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off243",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off245",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off247",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off249",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off251",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off253",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off255",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off35",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off37",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off39",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off41",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off43",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off45",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off49",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off51",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off55",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off57",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off59",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off61",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off63",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off65",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off67",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off69",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off71",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off73",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off75",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off77",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off79",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off81",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off83",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off85",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off87",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off89",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off91",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off93",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off95",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off97",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "off99",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on101",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on103",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on105",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on107",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on109",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on111",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on113",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on115",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on117",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on119",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on121",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on123",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on125",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on127",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on129",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on131",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on135",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on137",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on139",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on141",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on143",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on145",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on147",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on149",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on15",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on151",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on153",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on155",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on157",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on159",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on161",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on163",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on165",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on167",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on169",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on17",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on171",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on173",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on177",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on179",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on181",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on183",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on185",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on187",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on189",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on191",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on193",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on195",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on197",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on199",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on201",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on203",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on205",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on207",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on209",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on211",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on213",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on215",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on219",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on221",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on223",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on225",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on227",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on229",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on23",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on231",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on233",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on235",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on237",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on239",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on241",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on243",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on245",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on247",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on249",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on251",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on253",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on255",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on35",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on37",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on39",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on41",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on43",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on45",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on49",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on51",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on55",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on57",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on59",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on61",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on63",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on65",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on67",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on69",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on71",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on73",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on75",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on77",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on79",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on81",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on83",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on85",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on87",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on89",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on91",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on93",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on95",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on97",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "prefix",
                    0
                  ],
                  "source": [
                    "on99",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "output",
                    0
                  ],
                  "source": [
                    "prefix",
                    0
                  ]
                }
              }
            ],
            "bgcolor": [
              0.92,
              0.92,
              0.92,
              1.0
            ]
          },
          "patching_rect": [
            42.0,
            2251.0,
            240.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            37.0,
            1009.0,
            164.0,
            22.0
          ],
          "saved_object_attributes": {
            "locked_bgcolor": [
              0.92,
              0.92,
              0.92,
              1.0
            ]
          },
          "text": "p Octave_Families_stage_14"
        }
      },
      {
        "box": {
          "id": "workspace-note12",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            307.0,
            2251.0,
            610.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            213.0,
            1010.0,
            375.0,
            20.0
          ],
          "text": "Double-click to open the octave-family amplitude workspace (2\u2013256)."
        }
      },
      {
        "box": {
          "bgcolor": [
            0.7215686274509804,
            0.6941176470588235,
            0.6235294117647059,
            1.0
          ],
          "id": "retuning-help14",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
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
              100.0,
              100.0,
              880.0,
              730.0
            ],
            "boxes": [
              {
                "box": {
                  "fontsize": 20.0,
                  "id": "help0",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    30.0,
                    825.0,
                    29.0
                  ],
                  "text": "RETUNING MODES \u2014 HOW TO USE THEM",
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontsize": 13.0,
                  "id": "help1",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    78.0,
                    825.0,
                    50.0
                  ],
                  "text": "SOURCE BASE Hz defines the source model. Changing it resets TARGET BASE to that value and retunes over RETUNE MS. CURRENT BASE shows the glide position. With Source 27.5, no extra transforms, and zero inharmonicity, the harmonic series is 27.5, 55, 82.5, 110\u2026 Hz.",
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontsize": 13.0,
                  "id": "help2",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    182.0,
                    829.0,
                    50.0
                  ],
                  "text": "1. REBUILD BASE / ERB DRIFT: The generator rebuilds each partial using CURRENT BASE and the existing inharmonicity sliders. The ERB bandwidth is recalculated at the new frequencies, so an inharmonic spectrum changes its relative spacing. For exact harmonics with zero drift: Source 110 \u2192 Target 220 doubles every frequency.",
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontsize": 13.0,
                  "id": "help3",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    286.0,
                    825.0,
                    50.0
                  ],
                  "text": "2. RATIO TRANSPOSE / FIXED SPECTRUM: The generator stays at SOURCE BASE. Every stored source frequency is multiplied by CURRENT BASE / SOURCE BASE. Source 110 \u2192 Target 220 gives ratio 2; Target 27.5 gives ratio 0.25. Frequency ratios and relative inharmonicity are preserved.",
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontsize": 13.0,
                  "id": "help4",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    390.0,
                    825.0,
                    50.0
                  ],
                  "text": "3. ADDITIVE Hz SHIFT: The generator stays at SOURCE BASE. Every frequency receives CURRENT BASE \u2212 SOURCE BASE Hz. Source 110 \u2192 Target 220 shifts 110, 220, 330 to 220, 330, 440 Hz. This changes frequency ratios and does not preserve a harmonic series rooted at the target.",
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontsize": 13.0,
                  "id": "help5",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    494.0,
                    825.0,
                    36.0
                  ],
                  "text": "GLIDE: Rebuild and ratio modes use a geometric pitch glide; additive uses a linear-Hz glide. RETUNE MS 0 applies immediately. Changing RETUNE MS affects the next target request. A new target starts from the elapsed position of the current glide.",
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontsize": 13.0,
                  "id": "help6",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    586.0,
                    825.0,
                    36.0
                  ],
                  "text": "POST TRANSFORMS: retuned frequency = source \u00d7 retuning ratio \u00d7 2^(semitones/12 + cents/1200) + retuning shift + extra shift Hz. Model gain follows. Minimum / maximum Hz and the sample-rate safety limit filter the result; optional clusters combine nearby frequencies.",
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontsize": 13.0,
                  "id": "help7",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    690.0,
                    825.0,
                    50.0
                  ],
                  "text": "BYPASS: skips ratio/additive retuning, semitones, cents, extra shift, gain and clusters. Rebuild-mode base changes still apply. Safety filtering remains active. To audition 27.5 Hz directly: zero inharmonicity, nonzero partial-1 amplitude, gain > 0, low cutoff \u2264 27.5, bypass off and extra transforms at zero. Speakers may reproduce 27.5 Hz weakly.",
                  "textcolor": [
                    0.1,
                    0.1,
                    0.1,
                    1.0
                  ]
                }
              }
            ],
            "lines": [],
            "bgcolor": [
              0.92,
              0.92,
              0.92,
              1.0
            ]
          },
          "patching_rect": [
            45.0,
            1347.0,
            210.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            271.0,
            840.0,
            210.0,
            22.0
          ],
          "saved_object_attributes": {
            "locked_bgcolor": [
              0.92,
              0.92,
              0.92,
              1.0
            ]
          },
          "text": "p Retuning_Modes_Help_14"
        }
      },
      {
        "box": {
          "id": "retuning-help-note14",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            272.0,
            1631.0,
            645.0,
            20.0
          ],
          "text": "Double-click for mode explanations, formulas, examples and bypass behavior."
        }
      },
      {
        "box": {
          "bgcolor": [
            0.639,
            0.548,
            0.13,
            1.0
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.639,
            0.548,
            0.13,
            1.0
          ],
          "bgfillcolor_color1": [
            0.639,
            0.548,
            0.13,
            1.0
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "global-flat-zero14",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            734.0,
            562.5,
            75.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            576.0,
            277.0,
            75.0,
            22.0
          ],
          "text": "alloff"
        }
      },
      {
        "box": {
          "id": "global-flat-zero-note14",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            811.0,
            563.5,
            506.0,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 3,
          "presentation_rect": [
            383.0,
            277.0,
            191.0,
            47.0
          ],
          "text": "alloff message clears all 256 slots \nin all three multisliders; \nvisible count stays as set."
        }
      },
      {
        "box": {
          "bgcolor": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "bgfillcolor_color1": [
            0.973,
            0.463,
            0.502,
            1.0
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "copy-amplitudes14",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            959.0,
            953.0,
            260.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            67.0,
            698.0,
            215.0,
            22.0
          ],
          "text": "PartialAmplitudes_to_HarmonicAnchor"
        }
      },
      {
        "box": {
          "id": "copy-amplitudes-note14",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            322.0,
            2336.0,
            595.0,
            20.0
          ],
          "text": "Copies all 256 primary amplitudes to harmonic anchors in one update."
        }
      },
      {
        "box": {
          "id": "micro-note14",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            42.0,
            2576.0,
            875.0,
            33.0
          ],
          "text": "MICRO adds independent smooth frequency motion to primary partials, even with zero inharmonicity. DEPTH is the maximum excursion in Hz (default \u00b10.1 Hz). Fundamental and harmonic anchors stay fixed. The live readout shows the largest current shift among visible sounding primary partials."
        }
      },
      {
        "box": {
          "id": "flat-menus14",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            945.0,
            2640.0,
            65.0,
            22.0
          ],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "stops-workspace14",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            42.0,
            2650.0,
            260.0,
            22.0
          ],
          "text": "ec_sinusoid_synth_stops_14"
        }
      },
      {
        "box": {
          "id": "stops-workspace-note14",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            325.0,
            2650.0,
            590.0,
            20.0
          ],
          "text": "Double-click: organ-inspired ranks, registrations, beating and research."
        }
      },
      {
        "box": {
          "id": "envelope-shaper01",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            700.0,
            130.0,
            155.0,
            22.0
          ],
          "outlettype": [
            "list"
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
              1794.0,
              154.0,
              805.0,
              610.0
            ],
            "openinpresentation": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    201.0,
                    357.0,
                    29.5,
                    22.0
                  ],
                  "text": "+ 3"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 18.0,
                  "id": "obj-10",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    77.0,
                    81.0,
                    727.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    11.0,
                    727.0,
                    27.0
                  ],
                  "text": "BUILD A FUNCTION suitable for line or line~ or other time-based number transitions",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "id": "obj-9",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    77.0,
                    297.5,
                    139.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    89.0,
                    47.0,
                    139.0,
                    20.0
                  ],
                  "text": "number of breakpoints",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "number",
                  "maximum": 200,
                  "minimum": 2,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    149.0,
                    370.5,
                    50.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    76.0,
                    103.0,
                    50.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    ""
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
                      59.0,
                      119.0,
                      1000.0,
                      780.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-plus3",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "int"
                          ],
                          "patching_rect": [
                            50.0,
                            100.0,
                            32.0,
                            22.0
                          ],
                          "text": "+ 3"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-count-number",
                          "maxclass": "number",
                          "maximum": 48,
                          "minimum": 3,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            50.0,
                            126.0,
                            52.0,
                            22.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "obj-count-clip",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            156.0,
                            63.0,
                            22.0
                          ],
                          "text": "clip 3 48"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-count-t",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "int",
                            "int"
                          ],
                          "patching_rect": [
                            50.0,
                            187.0,
                            40.0,
                            22.0
                          ],
                          "text": "t i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-minus3",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "int"
                          ],
                          "patching_rect": [
                            100.0,
                            187.0,
                            32.0,
                            22.0
                          ],
                          "text": "- 3"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-slider-set",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            100.0,
                            215.0,
                            48.0,
                            22.0
                          ],
                          "text": "set $1"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-size-t",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "bang",
                            "int"
                          ],
                          "patching_rect": [
                            50.0,
                            221.0,
                            40.0,
                            22.0
                          ],
                          "text": "t b i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-size-message",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            71.0,
                            254.0,
                            52.0,
                            22.0
                          ],
                          "text": "size $1"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-2",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            40.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-4",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            54.5,
                            336.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-5",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            100.0,
                            336.0,
                            30.0,
                            30.0
                          ]
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-plus3",
                            0
                          ],
                          "source": [
                            "obj-2",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-count-t",
                            0
                          ],
                          "source": [
                            "obj-count-clip",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-count-clip",
                            0
                          ],
                          "source": [
                            "obj-count-number",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-minus3",
                            0
                          ],
                          "source": [
                            "obj-count-t",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-size-t",
                            0
                          ],
                          "source": [
                            "obj-count-t",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-slider-set",
                            0
                          ],
                          "source": [
                            "obj-minus3",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-count-number",
                            0
                          ],
                          "source": [
                            "obj-plus3",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-4",
                            0
                          ],
                          "source": [
                            "obj-size-message",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-4",
                            0
                          ],
                          "source": [
                            "obj-size-t",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-size-message",
                            0
                          ],
                          "source": [
                            "obj-size-t",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "source": [
                            "obj-slider-set",
                            0
                          ]
                        }
                      }
                    ]
                  },
                  "patching_rect": [
                    64.0,
                    357.0,
                    67.0,
                    22.0
                  ],
                  "text": "p wrapping"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "id": "obj-1",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    5.0,
                    634.0,
                    56.0,
                    60.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 4,
                  "presentation_rect": [
                    17.0,
                    336.0,
                    56.0,
                    60.0
                  ],
                  "text": "function\nvalue +\nduration\npairs",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 20.0,
                  "id": "obj-title",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    45.0,
                    25.0,
                    520.0,
                    29.0
                  ],
                  "text": "Envelope-Shaper_01"
                }
              },
              {
                "box": {
                  "bgcolor": [
                    0.0,
                    0.729,
                    1.0,
                    1.0
                  ],
                  "elementcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "Number of elements 3-48",
                  "id": "obj-count-slider",
                  "knobcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "knobshape": 3,
                  "maxclass": "slider",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "orientation": 1,
                  "outlettype": [
                    ""
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    64.0,
                    319.5,
                    163.0,
                    30.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    76.0,
                    69.0,
                    163.0,
                    30.0
                  ],
                  "size": 46.0,
                  "valuepopuplabel": 1
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "id": "obj-range-heading",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    249.0,
                    297.5,
                    210.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    331.0,
                    46.5,
                    155.0,
                    20.0
                  ],
                  "text": "FIXED VALUE RANGE  0.0\u20131.0",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-min-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    248.0,
                    325.5,
                    70.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    344.0,
                    68.0,
                    70.0,
                    20.0
                  ],
                  "text": "minimum"
                }
              },
              {
                "box": {
                  "id": "obj-range-min",
                  "patching_rect": [
                    318.0,
                    323.5,
                    72.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    414.0,
                    68.0,
                    72.0,
                    22.0
                  ],
                  "maxclass": "comment",
                  "text": "0.0",
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "obj-max-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    248.0,
                    354.0,
                    70.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    343.0,
                    93.0,
                    70.0,
                    20.0
                  ],
                  "text": "maximum"
                }
              },
              {
                "box": {
                  "id": "obj-range-max",
                  "patching_rect": [
                    318.0,
                    352.0,
                    72.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    413.0,
                    93.0,
                    72.0,
                    22.0
                  ],
                  "maxclass": "comment",
                  "text": "1.0",
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "id": "obj-duration-heading",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    475.0,
                    289.5,
                    148.0,
                    33.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 2,
                  "presentation_rect": [
                    495.0,
                    40.0,
                    106.0,
                    33.0
                  ],
                  "text": "TOTAL \nDURATION in MS",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "obj-duration",
                  "maxclass": "flonum",
                  "maximum": 3600000.0,
                  "minimum": 1.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    475.0,
                    323.5,
                    90.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    495.0,
                    73.0,
                    73.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-duration-clip",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    475.0,
                    347.5,
                    106.0,
                    22.0
                  ],
                  "text": "clip 1. 3600000."
                }
              },
              {
                "box": {
                  "id": "obj-duration-t",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    "float"
                  ],
                  "patching_rect": [
                    475.0,
                    370.5,
                    40.0,
                    22.0
                  ],
                  "text": "t b f"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "id": "obj-multislider-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    12.0,
                    403.0,
                    50.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    20.0,
                    209.5,
                    50.0,
                    20.0
                  ],
                  "text": "SHAPE",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "bgcolor": [
                    0.0,
                    0.7294117647058823,
                    1.0,
                    1.0
                  ],
                  "candicane2": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "candycane": 2,
                  "contdata": 1,
                  "ghostbar": 13,
                  "id": "obj-multislider",
                  "maxclass": "multislider",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    64.0,
                    403.0,
                    711.0,
                    157.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    76.0,
                    139.5,
                    711.0,
                    157.0
                  ],
                  "setminmax": [
                    0.0,
                    1.0
                  ],
                  "size": 48,
                  "slidercolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "spacing": 6,
                  "thickness": 6
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "list"
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
                      84.0,
                      144.0,
                      760.0,
                      540.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "comment": "multislider value list",
                          "id": "sub-in-list",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            40.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "duration in milliseconds",
                          "id": "sub-in-duration",
                          "index": 2,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            310.0,
                            40.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "sub-trigger",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 4,
                          "outlettype": [
                            "bang",
                            "",
                            "",
                            "bang"
                          ],
                          "patching_rect": [
                            50.0,
                            100.0,
                            72.0,
                            22.0
                          ],
                          "text": "t b l l b"
                        }
                      },
                      {
                        "box": {
                          "id": "sub-clear",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            125.0,
                            140.0,
                            39.0,
                            22.0
                          ],
                          "text": "clear"
                        }
                      },
                      {
                        "box": {
                          "id": "sub-zllen",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            205.0,
                            140.0,
                            43.0,
                            22.0
                          ],
                          "text": "zl.len"
                        }
                      },
                      {
                        "box": {
                          "id": "sub-minus-one",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "int"
                          ],
                          "patching_rect": [
                            205.0,
                            180.0,
                            31.0,
                            22.0
                          ],
                          "text": "- 1"
                        }
                      },
                      {
                        "box": {
                          "id": "sub-domain-n",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            205.0,
                            220.0,
                            88.0,
                            22.0
                          ],
                          "text": "setdomain $1"
                        }
                      },
                      {
                        "box": {
                          "id": "sub-listfunnel",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "list"
                          ],
                          "patching_rect": [
                            50.0,
                            180.0,
                            76.0,
                            22.0
                          ],
                          "text": "listfunnel 0"
                        }
                      },
                      {
                        "box": {
                          "id": "sub-duration-store",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            310.0,
                            100.0,
                            53.0,
                            22.0
                          ],
                          "text": "f 1000."
                        }
                      },
                      {
                        "box": {
                          "id": "sub-final-trigger",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "bang",
                            "float"
                          ],
                          "patching_rect": [
                            310.0,
                            180.0,
                            40.0,
                            22.0
                          ],
                          "text": "t b f"
                        }
                      },
                      {
                        "box": {
                          "id": "sub-domain-duration",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            365.0,
                            220.0,
                            88.0,
                            22.0
                          ],
                          "text": "setdomain $1"
                        }
                      },
                      {
                        "box": {
                          "comment": "clear, X/Y pairs, setdomain duration, then bang",
                          "id": "sub-out",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            190.0,
                            330.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "sub-comment",
                          "linecount": 3,
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            50.0,
                            395.0,
                            382.0,
                            47.0
                          ],
                          "text": "Order: clear \u2192 temporary domain N\u22121 \u2192 index/value pairs \u2192 duration domain \u2192 bang. The final bang requests one complete function list.",
                          "textcolor": [
                            0.35,
                            0.35,
                            0.35,
                            1.0
                          ]
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "sub-out",
                            0
                          ],
                          "source": [
                            "sub-clear",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-out",
                            0
                          ],
                          "source": [
                            "sub-domain-duration",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-out",
                            0
                          ],
                          "source": [
                            "sub-domain-n",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-final-trigger",
                            0
                          ],
                          "source": [
                            "sub-duration-store",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-domain-duration",
                            0
                          ],
                          "source": [
                            "sub-final-trigger",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-out",
                            0
                          ],
                          "source": [
                            "sub-final-trigger",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-duration-store",
                            1
                          ],
                          "source": [
                            "sub-in-duration",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-trigger",
                            0
                          ],
                          "source": [
                            "sub-in-list",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-out",
                            0
                          ],
                          "source": [
                            "sub-listfunnel",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-domain-n",
                            0
                          ],
                          "source": [
                            "sub-minus-one",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-clear",
                            0
                          ],
                          "source": [
                            "sub-trigger",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-duration-store",
                            0
                          ],
                          "source": [
                            "sub-trigger",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-listfunnel",
                            0
                          ],
                          "source": [
                            "sub-trigger",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-zllen",
                            0
                          ],
                          "source": [
                            "sub-trigger",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "sub-minus-one",
                            0
                          ],
                          "source": [
                            "sub-zllen",
                            0
                          ]
                        }
                      }
                    ]
                  },
                  "patching_rect": [
                    64.0,
                    569.0,
                    69.0,
                    22.0
                  ],
                  "text": "p translator"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "id": "obj-function-label",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    174.0,
                    799.0,
                    220.0,
                    47.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    78.0,
                    451.0,
                    422.0,
                    20.0
                  ],
                  "text": "DURATION-SCALED FUNCTION (value + time/interpolation to next value ",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    0,
                    21.27659574468085,
                    0.0,
                    0,
                    42.5531914893617,
                    0.0,
                    0,
                    63.829787234042556,
                    0.0,
                    0,
                    85.1063829787234,
                    0.0,
                    0,
                    106.38297872340425,
                    0.0,
                    0,
                    127.65957446808511,
                    0.0,
                    0,
                    148.93617021276594,
                    0.0,
                    0,
                    170.2127659574468,
                    0.0,
                    0,
                    191.48936170212767,
                    0.0,
                    0,
                    212.7659574468085,
                    0.0,
                    0,
                    234.04255319148936,
                    0.0,
                    0,
                    255.31914893617022,
                    0.0,
                    0,
                    276.59574468085106,
                    0.0,
                    0,
                    297.8723404255319,
                    0.0,
                    0,
                    319.1489361702128,
                    0.0,
                    0,
                    340.4255319148936,
                    0.0,
                    0,
                    361.70212765957444,
                    0.0,
                    0,
                    382.97872340425533,
                    0.0,
                    0,
                    404.25531914893617,
                    0.0,
                    0,
                    425.531914893617,
                    0.0,
                    0,
                    446.8085106382979,
                    0.0,
                    0,
                    468.0851063829787,
                    0.0,
                    0,
                    489.36170212765956,
                    0.0,
                    0,
                    510.63829787234044,
                    0.0,
                    0,
                    531.9148936170212,
                    0.0,
                    0,
                    553.1914893617021,
                    0.0,
                    0,
                    574.468085106383,
                    0.0,
                    0,
                    595.7446808510638,
                    0.0,
                    0,
                    617.0212765957447,
                    0.0,
                    0,
                    638.2978723404256,
                    0.0,
                    0,
                    659.5744680851063,
                    0.0,
                    0,
                    680.8510638297872,
                    0.0,
                    0,
                    702.1276595744681,
                    0.0,
                    0,
                    723.4042553191489,
                    0.0,
                    0,
                    744.6808510638298,
                    0.0,
                    0,
                    765.9574468085107,
                    0.0,
                    0,
                    787.2340425531914,
                    0.0,
                    0,
                    808.5106382978723,
                    0.0,
                    0,
                    829.7872340425532,
                    0.0,
                    0,
                    851.063829787234,
                    0.0,
                    0,
                    872.3404255319149,
                    0.0,
                    0,
                    893.6170212765958,
                    0.0,
                    0,
                    914.8936170212766,
                    0.0,
                    0,
                    936.1702127659574,
                    0.0,
                    0,
                    957.4468085106383,
                    0.0,
                    0,
                    978.7234042553191,
                    0.0,
                    0,
                    1000.0,
                    0.0,
                    0
                  ],
                  "bgcolor": [
                    0.6388385052447552,
                    0.5481945727244106,
                    0.13014206719178864,
                    1.0
                  ],
                  "classic_curve": 1,
                  "grid": 3,
                  "gridstep_y": 0.1,
                  "id": "obj-function",
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "outputmode": 1,
                  "parameter_enable": 0,
                  "patching_rect": [
                    64.0,
                    598.0,
                    711.0,
                    147.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    76.0,
                    300.0,
                    711.0,
                    147.0
                  ],
                  "range": [
                    0.0,
                    1.0
                  ],
                  "domain": 1000.0
                }
              },
              {
                "box": {
                  "id": "obj-round-output",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    156.5,
                    759.0,
                    74.0,
                    22.0
                  ],
                  "text": "t l"
                }
              },
              {
                "box": {
                  "id": "obj-output-t",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    288.0,
                    759.0,
                    40.0,
                    22.0
                  ],
                  "text": "t l l l"
                }
              },
              {
                "box": {
                  "id": "obj-output-set",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    417.0,
                    795.0,
                    77.0,
                    22.0
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "bgcolor": [
                    0.611764705882353,
                    0.0,
                    0.027471133935787612,
                    1.0
                  ],
                  "bgcolor2": [
                    0.2,
                    0.2,
                    0.2,
                    1.0
                  ],
                  "bgfillcolor_angle": 270.0,
                  "bgfillcolor_autogradient": 0.0,
                  "bgfillcolor_color": [
                    0.611764705882353,
                    0.0,
                    0.027471133935787612,
                    1.0
                  ],
                  "bgfillcolor_color1": [
                    0.611764705882353,
                    0.0,
                    0.027471133935787612,
                    1.0
                  ],
                  "bgfillcolor_color2": [
                    0.2,
                    0.2,
                    0.2,
                    1.0
                  ],
                  "bgfillcolor_proportion": 0.5,
                  "bgfillcolor_type": "gradient",
                  "gradient": 1,
                  "id": "obj-output-message",
                  "linecount": 4,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    40.0,
                    872.0,
                    690.0,
                    62.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 4,
                  "presentation_rect": [
                    78.0,
                    473.0,
                    709.0,
                    62.0
                  ],
                  "text": "0. 0. 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28"
                }
              },
              {
                "box": {
                  "comment": "complete line~ format function list",
                  "id": "obj-output",
                  "index": 0,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    609.0,
                    840.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "id": "obj-coll-heading",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    40.0,
                    958.0,
                    234.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    74.0,
                    549.0,
                    234.0,
                    20.0
                  ],
                  "text": "EMBEDDED COLL FUNCTION LIBRARY",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-coll-index-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    40.0,
                    988.0,
                    96.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    78.0,
                    578.0,
                    85.0,
                    20.0
                  ],
                  "text": "selected index"
                }
              },
              {
                "box": {
                  "bgcolor": [
                    0.0,
                    0.549019607843137,
                    0.67843137254902,
                    1.0
                  ],
                  "id": "obj-coll-index",
                  "maxclass": "number",
                  "maximum": 9999,
                  "minimum": 1,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    140.0,
                    986.0,
                    58.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    174.0,
                    577.0,
                    58.0,
                    22.0
                  ],
                  "saved_attribute_attributes": {
                    "bgcolor": {
                      "expression": "themecolor.live_modulation"
                    }
                  }
                }
              },
              {
                "box": {
                  "bgcolor": [
                    0.0,
                    0.549019607843137,
                    0.67843137254902,
                    1.0
                  ],
                  "id": "obj-coll-store-button",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    220.0,
                    986.0,
                    24.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    273.0,
                    576.0,
                    24.0,
                    24.0
                  ],
                  "saved_attribute_attributes": {
                    "bgcolor": {
                      "expression": "themecolor.live_modulation"
                    }
                  }
                }
              },
              {
                "box": {
                  "id": "obj-coll-store-label",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    251.0,
                    988.0,
                    180.0,
                    33.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    300.0,
                    578.0,
                    195.0,
                    20.0
                  ],
                  "text": "STORE CURRENT FUNCTION -->"
                }
              },
              {
                "box": {
                  "id": "obj-coll-index-store",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    140.0,
                    1025.0,
                    29.0,
                    22.0
                  ],
                  "text": "i 1"
                }
              },
              {
                "box": {
                  "id": "obj-coll-join",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    220.0,
                    1025.0,
                    43.0,
                    22.0
                  ],
                  "text": "zl join"
                }
              },
              {
                "box": {
                  "bgcolor": [
                    0.0,
                    0.549019607843137,
                    0.67843137254902,
                    1.0
                  ],
                  "coll_data": {
                    "count": 0,
                    "data": []
                  },
                  "id": "obj-coll",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    300.0,
                    1025.0,
                    89.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    498.0,
                    577.0,
                    89.0,
                    22.0
                  ],
                  "saved_attribute_attributes": {
                    "bgcolor": {
                      "expression": "themecolor.live_modulation"
                    }
                  },
                  "saved_newobj_attribute_attributes": {
                    "bgcolor": {
                      "expression": "themecolor.live_modulation"
                    }
                  },
                  "saved_object_attributes": {
                    "embed": 1,
                    "precision": 6
                  },
                  "text": "coll @embed 1"
                }
              },
              {
                "box": {
                  "id": "obj-coll-note",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400.0,
                    1026.0,
                    330.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    589.0,
                    578.0,
                    223.0,
                    20.0
                  ],
                  "text": "double-click coll to inspect saved entries",
                  "textcolor": [
                    0.35,
                    0.35,
                    0.35,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-coll-init-index",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    40.0,
                    1025.0,
                    70.0,
                    22.0
                  ],
                  "text": "loadmess 1"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 10.0,
                  "id": "obj-shape-heading-norm",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    912.0,
                    230.0,
                    252.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    603.5,
                    40.0,
                    194.0,
                    18.0
                  ],
                  "text": "STAGE 14 SHAPES  0.0\u20131.0",
                  "textcolor": [
                    0.16,
                    0.29,
                    0.45,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "bgcolor": [
                    0.972549,
                    0.462745,
                    0.501961,
                    1.0
                  ],
                  "bgfillcolor_angle": 270.0,
                  "bgfillcolor_color": [
                    0.972549,
                    0.462745,
                    0.501961,
                    1.0
                  ],
                  "bgfillcolor_color1": [
                    0.3764705882352941,
                    0.3843137254901961,
                    0.4,
                    1.0
                  ],
                  "bgfillcolor_color2": [
                    0.2901960784313726,
                    0.30980392156862746,
                    0.30196078431372547,
                    1.0
                  ],
                  "bgfillcolor_proportion": 0.39,
                  "bgfillcolor_type": "color",
                  "id": "obj-shape-menu-norm",
                  "items": [
                    "Flat zero",
                    ",",
                    "Linear: low to high",
                    ",",
                    "Exponential: low to high",
                    ",",
                    "Linear: high to low",
                    ",",
                    "Exponential: high to low",
                    ",",
                    "Triangle: center peak",
                    ",",
                    "Exponential triangle: center peak",
                    ",",
                    "Gaussian",
                    ",",
                    "Steep Gaussian",
                    ",",
                    "Inverted Gaussian",
                    ",",
                    "Steep Inverted Gaussian",
                    ",",
                    "Double Gaussian",
                    ",",
                    "Steep Double Gaussian",
                    ",",
                    "Inverted Double Gaussian",
                    ",",
                    "Steep Inverted Double Gaussian",
                    ",",
                    "Triple Gaussian",
                    ",",
                    "Steep Triple Gaussian",
                    ",",
                    "Inverted Triple Gaussian",
                    ",",
                    "Steep Inverted Triple Gaussian",
                    ",",
                    "Quadruple Gaussian",
                    ",",
                    "Steep Quadruple Gaussian",
                    ",",
                    "Inverted Quadruple Gaussian",
                    ",",
                    "Steep Inverted Quadruple Gaussian",
                    ",",
                    "Random (fixed)"
                  ],
                  "maxclass": "umenu",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "int",
                    "",
                    ""
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    912.0,
                    253.0,
                    300.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    603.5,
                    56.0,
                    182.0,
                    22.0
                  ],
                  "saved_attribute_attributes": {
                    "bgfillcolor": {
                      "expression": "themecolor.live_value_bar2"
                    }
                  }
                }
              },
              {
                "box": {
                  "coll_data": {
                    "count": 24,
                    "data": [
                      {
                        "key": 0,
                        "value": [
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0,
                          0.0
                        ]
                      },
                      {
                        "key": 1,
                        "value": [
                          0.0,
                          0.021277,
                          0.042553,
                          0.06383,
                          0.085106,
                          0.106383,
                          0.12766,
                          0.148936,
                          0.170213,
                          0.191489,
                          0.212766,
                          0.234043,
                          0.255319,
                          0.276596,
                          0.297872,
                          0.319149,
                          0.340426,
                          0.361702,
                          0.382979,
                          0.404255,
                          0.425532,
                          0.446809,
                          0.468085,
                          0.489362,
                          0.510638,
                          0.531915,
                          0.553191,
                          0.574468,
                          0.595745,
                          0.617021,
                          0.638298,
                          0.659574,
                          0.680851,
                          0.702128,
                          0.723404,
                          0.744681,
                          0.765957,
                          0.787234,
                          0.808511,
                          0.829787,
                          0.851064,
                          0.87234,
                          0.893617,
                          0.914894,
                          0.93617,
                          0.957447,
                          0.978723,
                          1.0
                        ]
                      },
                      {
                        "key": 2,
                        "value": [
                          0.0,
                          0.001657,
                          0.003462,
                          0.005427,
                          0.007566,
                          0.009896,
                          0.012432,
                          0.015194,
                          0.018201,
                          0.021476,
                          0.025041,
                          0.028923,
                          0.033149,
                          0.037751,
                          0.042762,
                          0.048218,
                          0.054159,
                          0.060628,
                          0.067671,
                          0.07534,
                          0.08369,
                          0.092781,
                          0.102681,
                          0.11346,
                          0.125196,
                          0.137975,
                          0.151889,
                          0.167039,
                          0.183535,
                          0.201496,
                          0.221053,
                          0.242347,
                          0.265533,
                          0.290779,
                          0.318267,
                          0.348197,
                          0.380785,
                          0.416269,
                          0.454905,
                          0.496973,
                          0.542778,
                          0.592652,
                          0.646956,
                          0.706084,
                          0.770465,
                          0.840565,
                          0.916892,
                          1.0
                        ]
                      },
                      {
                        "key": 3,
                        "value": [
                          1.0,
                          0.978723,
                          0.957447,
                          0.93617,
                          0.914894,
                          0.893617,
                          0.87234,
                          0.851064,
                          0.829787,
                          0.808511,
                          0.787234,
                          0.765957,
                          0.744681,
                          0.723404,
                          0.702128,
                          0.680851,
                          0.659574,
                          0.638298,
                          0.617021,
                          0.595745,
                          0.574468,
                          0.553191,
                          0.531915,
                          0.510638,
                          0.489362,
                          0.468085,
                          0.446809,
                          0.425532,
                          0.404255,
                          0.382979,
                          0.361702,
                          0.340426,
                          0.319149,
                          0.297872,
                          0.276596,
                          0.255319,
                          0.234043,
                          0.212766,
                          0.191489,
                          0.170213,
                          0.148936,
                          0.12766,
                          0.106383,
                          0.085106,
                          0.06383,
                          0.042553,
                          0.021277,
                          0.0
                        ]
                      },
                      {
                        "key": 4,
                        "value": [
                          1.0,
                          0.916892,
                          0.840565,
                          0.770465,
                          0.706084,
                          0.646956,
                          0.592652,
                          0.542778,
                          0.496973,
                          0.454905,
                          0.416269,
                          0.380785,
                          0.348197,
                          0.318267,
                          0.290779,
                          0.265533,
                          0.242347,
                          0.221053,
                          0.201496,
                          0.183535,
                          0.167039,
                          0.151889,
                          0.137975,
                          0.125196,
                          0.11346,
                          0.102681,
                          0.092781,
                          0.08369,
                          0.07534,
                          0.067671,
                          0.060628,
                          0.054159,
                          0.048218,
                          0.042762,
                          0.037751,
                          0.033149,
                          0.028923,
                          0.025041,
                          0.021476,
                          0.018201,
                          0.015194,
                          0.012432,
                          0.009896,
                          0.007566,
                          0.005427,
                          0.003462,
                          0.001657,
                          0.0
                        ]
                      },
                      {
                        "key": 5,
                        "value": [
                          0.0,
                          0.042553,
                          0.085106,
                          0.12766,
                          0.170213,
                          0.212766,
                          0.255319,
                          0.297872,
                          0.340426,
                          0.382979,
                          0.425532,
                          0.468085,
                          0.510638,
                          0.553191,
                          0.595745,
                          0.638298,
                          0.680851,
                          0.723404,
                          0.765957,
                          0.808511,
                          0.851064,
                          0.893617,
                          0.93617,
                          0.978723,
                          0.978723,
                          0.93617,
                          0.893617,
                          0.851064,
                          0.808511,
                          0.765957,
                          0.723404,
                          0.680851,
                          0.638298,
                          0.595745,
                          0.553191,
                          0.510638,
                          0.468085,
                          0.425532,
                          0.382979,
                          0.340426,
                          0.297872,
                          0.255319,
                          0.212766,
                          0.170213,
                          0.12766,
                          0.085106,
                          0.042553,
                          0.0
                        ]
                      },
                      {
                        "key": 6,
                        "value": [
                          0.0,
                          0.003544,
                          0.007761,
                          0.012779,
                          0.018751,
                          0.025857,
                          0.034312,
                          0.044374,
                          0.056347,
                          0.070594,
                          0.087548,
                          0.107721,
                          0.131727,
                          0.160293,
                          0.194285,
                          0.234734,
                          0.282867,
                          0.340142,
                          0.408296,
                          0.489397,
                          0.585903,
                          0.700741,
                          0.837392,
                          1.0,
                          1.0,
                          0.837392,
                          0.700741,
                          0.585903,
                          0.489397,
                          0.408296,
                          0.340142,
                          0.282867,
                          0.234734,
                          0.194285,
                          0.160293,
                          0.131727,
                          0.107721,
                          0.087548,
                          0.070594,
                          0.056347,
                          0.044374,
                          0.034312,
                          0.025857,
                          0.018751,
                          0.012779,
                          0.007761,
                          0.003544,
                          0.0
                        ]
                      },
                      {
                        "key": 7,
                        "value": [
                          0.0,
                          0.00384,
                          0.009304,
                          0.016928,
                          0.027356,
                          0.041335,
                          0.059694,
                          0.083312,
                          0.113058,
                          0.149724,
                          0.193931,
                          0.24603,
                          0.305999,
                          0.373347,
                          0.447044,
                          0.525485,
                          0.606502,
                          0.687429,
                          0.765232,
                          0.836679,
                          0.898565,
                          0.947937,
                          0.982338,
                          1.0,
                          1.0,
                          0.982338,
                          0.947937,
                          0.898565,
                          0.836679,
                          0.765232,
                          0.687429,
                          0.606502,
                          0.525485,
                          0.447044,
                          0.373347,
                          0.305999,
                          0.24603,
                          0.193931,
                          0.149724,
                          0.113058,
                          0.083312,
                          0.059694,
                          0.041335,
                          0.027356,
                          0.016928,
                          0.009304,
                          0.00384,
                          0.0
                        ]
                      },
                      {
                        "key": 8,
                        "value": [
                          0.0,
                          1e-06,
                          8e-06,
                          3.7e-05,
                          0.000124,
                          0.000347,
                          0.000871,
                          0.002003,
                          0.004298,
                          0.008674,
                          0.016562,
                          0.030024,
                          0.051796,
                          0.085169,
                          0.133621,
                          0.200171,
                          0.286471,
                          0.391805,
                          0.512251,
                          0.64032,
                          0.765374,
                          0.87488,
                          0.956428,
                          1.0,
                          1.0,
                          0.956428,
                          0.87488,
                          0.765374,
                          0.64032,
                          0.512251,
                          0.391805,
                          0.286471,
                          0.200171,
                          0.133621,
                          0.085169,
                          0.051796,
                          0.030024,
                          0.016562,
                          0.008674,
                          0.004298,
                          0.002003,
                          0.000871,
                          0.000347,
                          0.000124,
                          3.7e-05,
                          8e-06,
                          1e-06,
                          0.0
                        ]
                      },
                      {
                        "key": 9,
                        "value": [
                          1.0,
                          0.99616,
                          0.990696,
                          0.983072,
                          0.972644,
                          0.958665,
                          0.940306,
                          0.916688,
                          0.886942,
                          0.850276,
                          0.806069,
                          0.75397,
                          0.694001,
                          0.626653,
                          0.552956,
                          0.474515,
                          0.393498,
                          0.312571,
                          0.234768,
                          0.163321,
                          0.101435,
                          0.052063,
                          0.017662,
                          0.0,
                          0.0,
                          0.017662,
                          0.052063,
                          0.101435,
                          0.163321,
                          0.234768,
                          0.312571,
                          0.393498,
                          0.474515,
                          0.552956,
                          0.626653,
                          0.694001,
                          0.75397,
                          0.806069,
                          0.850276,
                          0.886942,
                          0.916688,
                          0.940306,
                          0.958665,
                          0.972644,
                          0.983072,
                          0.990696,
                          0.99616,
                          1.0
                        ]
                      },
                      {
                        "key": 10,
                        "value": [
                          1.0,
                          0.999999,
                          0.999992,
                          0.999963,
                          0.999876,
                          0.999653,
                          0.999129,
                          0.997997,
                          0.995702,
                          0.991326,
                          0.983438,
                          0.969976,
                          0.948204,
                          0.914831,
                          0.866379,
                          0.799829,
                          0.713529,
                          0.608195,
                          0.487749,
                          0.35968,
                          0.234626,
                          0.12512,
                          0.043572,
                          0.0,
                          0.0,
                          0.043572,
                          0.12512,
                          0.234626,
                          0.35968,
                          0.487749,
                          0.608195,
                          0.713529,
                          0.799829,
                          0.866379,
                          0.914831,
                          0.948204,
                          0.969976,
                          0.983438,
                          0.991326,
                          0.995702,
                          0.997997,
                          0.999129,
                          0.999653,
                          0.999876,
                          0.999963,
                          0.999992,
                          0.999999,
                          1.0
                        ]
                      },
                      {
                        "key": 11,
                        "value": [
                          0.0,
                          0.020055,
                          0.050435,
                          0.094286,
                          0.154508,
                          0.233047,
                          0.330056,
                          0.443115,
                          0.566743,
                          0.69246,
                          0.809525,
                          0.90636,
                          0.9724,
                          1.0,
                          0.985911,
                          0.931958,
                          0.844743,
                          0.734461,
                          0.613188,
                          0.493074,
                          0.384866,
                          0.297035,
                          0.235518,
                          0.203925,
                          0.203925,
                          0.235518,
                          0.297035,
                          0.384866,
                          0.493074,
                          0.613188,
                          0.734461,
                          0.844743,
                          0.931958,
                          0.985911,
                          1.0,
                          0.9724,
                          0.90636,
                          0.809525,
                          0.69246,
                          0.566743,
                          0.443115,
                          0.330056,
                          0.233047,
                          0.154508,
                          0.094286,
                          0.050435,
                          0.020055,
                          0.0
                        ]
                      },
                      {
                        "key": 12,
                        "value": [
                          0.0,
                          5.7e-05,
                          0.000571,
                          0.00273,
                          0.009384,
                          0.026219,
                          0.062585,
                          0.130705,
                          0.241805,
                          0.399013,
                          0.589625,
                          0.782081,
                          0.932422,
                          1.0,
                          0.965149,
                          0.838476,
                          0.655861,
                          0.462298,
                          0.294431,
                          0.170718,
                          0.091891,
                          0.048086,
                          0.026919,
                          0.018779,
                          0.018779,
                          0.026919,
                          0.048086,
                          0.091891,
                          0.170718,
                          0.294431,
                          0.462298,
                          0.655861,
                          0.838476,
                          0.965149,
                          1.0,
                          0.932422,
                          0.782081,
                          0.589625,
                          0.399013,
                          0.241805,
                          0.130705,
                          0.062585,
                          0.026219,
                          0.009384,
                          0.00273,
                          0.000571,
                          5.7e-05,
                          0.0
                        ]
                      },
                      {
                        "key": 13,
                        "value": [
                          1.0,
                          0.979945,
                          0.949565,
                          0.905714,
                          0.845492,
                          0.766953,
                          0.669944,
                          0.556885,
                          0.433257,
                          0.30754,
                          0.190475,
                          0.09364,
                          0.0276,
                          0.0,
                          0.014089,
                          0.068042,
                          0.155257,
                          0.265539,
                          0.386812,
                          0.506926,
                          0.615134,
                          0.702965,
                          0.764482,
                          0.796075,
                          0.796075,
                          0.764482,
                          0.702965,
                          0.615134,
                          0.506926,
                          0.386812,
                          0.265539,
                          0.155257,
                          0.068042,
                          0.014089,
                          0.0,
                          0.0276,
                          0.09364,
                          0.190475,
                          0.30754,
                          0.433257,
                          0.556885,
                          0.669944,
                          0.766953,
                          0.845492,
                          0.905714,
                          0.949565,
                          0.979945,
                          1.0
                        ]
                      },
                      {
                        "key": 14,
                        "value": [
                          1.0,
                          0.999943,
                          0.999429,
                          0.99727,
                          0.990616,
                          0.973781,
                          0.937415,
                          0.869295,
                          0.758195,
                          0.600987,
                          0.410375,
                          0.217919,
                          0.067578,
                          0.0,
                          0.034851,
                          0.161524,
                          0.344139,
                          0.537702,
                          0.705569,
                          0.829282,
                          0.908109,
                          0.951914,
                          0.973081,
                          0.981221,
                          0.981221,
                          0.973081,
                          0.951914,
                          0.908109,
                          0.829282,
                          0.705569,
                          0.537702,
                          0.344139,
                          0.161524,
                          0.034851,
                          0.0,
                          0.067578,
                          0.217919,
                          0.410375,
                          0.600987,
                          0.758195,
                          0.869295,
                          0.937415,
                          0.973781,
                          0.990616,
                          0.99727,
                          0.999429,
                          0.999943,
                          1.0
                        ]
                      },
                      {
                        "key": 15,
                        "value": [
                          0.0,
                          0.068636,
                          0.172626,
                          0.314625,
                          0.487685,
                          0.672741,
                          0.840424,
                          0.958077,
                          1.0,
                          0.956614,
                          0.838159,
                          0.671113,
                          0.489312,
                          0.324258,
                          0.198838,
                          0.126089,
                          0.111549,
                          0.15613,
                          0.256827,
                          0.404683,
                          0.581768,
                          0.760331,
                          0.90661,
                          0.989258,
                          0.989258,
                          0.90661,
                          0.760331,
                          0.581768,
                          0.404683,
                          0.256827,
                          0.15613,
                          0.111549,
                          0.126089,
                          0.198838,
                          0.324258,
                          0.489312,
                          0.671113,
                          0.838159,
                          0.956614,
                          1.0,
                          0.958077,
                          0.840424,
                          0.672741,
                          0.487685,
                          0.314625,
                          0.172626,
                          0.068636,
                          0.0
                        ]
                      },
                      {
                        "key": 16,
                        "value": [
                          0.0,
                          0.001234,
                          0.012381,
                          0.055524,
                          0.166092,
                          0.37121,
                          0.647509,
                          0.898465,
                          1.0,
                          0.895039,
                          0.643156,
                          0.368968,
                          0.167481,
                          0.059872,
                          0.01763,
                          0.005645,
                          0.004156,
                          0.009632,
                          0.033427,
                          0.104181,
                          0.258151,
                          0.504088,
                          0.782621,
                          0.973361,
                          0.973361,
                          0.782621,
                          0.504088,
                          0.258151,
                          0.104181,
                          0.033427,
                          0.009632,
                          0.004156,
                          0.005645,
                          0.01763,
                          0.059872,
                          0.167481,
                          0.368968,
                          0.643156,
                          0.895039,
                          1.0,
                          0.898465,
                          0.647509,
                          0.37121,
                          0.166092,
                          0.055524,
                          0.012381,
                          0.001234,
                          0.0
                        ]
                      },
                      {
                        "key": 17,
                        "value": [
                          1.0,
                          0.931364,
                          0.827374,
                          0.685375,
                          0.512315,
                          0.327259,
                          0.159576,
                          0.041923,
                          0.0,
                          0.043386,
                          0.161841,
                          0.328887,
                          0.510688,
                          0.675742,
                          0.801162,
                          0.873911,
                          0.888451,
                          0.84387,
                          0.743173,
                          0.595317,
                          0.418232,
                          0.239669,
                          0.09339,
                          0.010742,
                          0.010742,
                          0.09339,
                          0.239669,
                          0.418232,
                          0.595317,
                          0.743173,
                          0.84387,
                          0.888451,
                          0.873911,
                          0.801162,
                          0.675742,
                          0.510688,
                          0.328887,
                          0.161841,
                          0.043386,
                          0.0,
                          0.041923,
                          0.159576,
                          0.327259,
                          0.512315,
                          0.685375,
                          0.827374,
                          0.931364,
                          1.0
                        ]
                      },
                      {
                        "key": 18,
                        "value": [
                          1.0,
                          0.998766,
                          0.987619,
                          0.944476,
                          0.833908,
                          0.62879,
                          0.352491,
                          0.101535,
                          0.0,
                          0.104961,
                          0.356844,
                          0.631032,
                          0.832519,
                          0.940128,
                          0.98237,
                          0.994355,
                          0.995844,
                          0.990368,
                          0.966573,
                          0.895819,
                          0.741849,
                          0.495912,
                          0.217379,
                          0.026639,
                          0.026639,
                          0.217379,
                          0.495912,
                          0.741849,
                          0.895819,
                          0.966573,
                          0.990368,
                          0.995844,
                          0.994355,
                          0.98237,
                          0.940128,
                          0.832519,
                          0.631032,
                          0.356844,
                          0.104961,
                          0.0,
                          0.101535,
                          0.352491,
                          0.62879,
                          0.833908,
                          0.944476,
                          0.987619,
                          0.998766,
                          1.0
                        ]
                      },
                      {
                        "key": 19,
                        "value": [
                          0.096133,
                          0.284366,
                          0.532159,
                          0.786056,
                          0.964102,
                          0.997023,
                          0.871173,
                          0.637723,
                          0.380293,
                          0.16969,
                          0.040715,
                          0.0,
                          0.046557,
                          0.181381,
                          0.396603,
                          0.654977,
                          0.883756,
                          1.0,
                          0.956242,
                          0.770731,
                          0.515534,
                          0.273192,
                          0.098522,
                          0.010821,
                          0.010821,
                          0.098522,
                          0.273192,
                          0.515534,
                          0.770731,
                          0.956242,
                          1.0,
                          0.883756,
                          0.654977,
                          0.396603,
                          0.181381,
                          0.046557,
                          0.0,
                          0.040715,
                          0.16969,
                          0.380293,
                          0.637723,
                          0.871173,
                          0.997023,
                          0.964102,
                          0.786056,
                          0.532159,
                          0.284366,
                          0.096133
                        ]
                      },
                      {
                        "key": 20,
                        "value": [
                          0.002865,
                          0.043122,
                          0.206587,
                          0.547815,
                          0.912657,
                          0.992574,
                          0.708371,
                          0.324773,
                          0.089186,
                          0.011862,
                          0.000334,
                          0.0,
                          0.000468,
                          0.014011,
                          0.099058,
                          0.347188,
                          0.734228,
                          1.0,
                          0.894169,
                          0.521503,
                          0.190829,
                          0.039009,
                          0.003047,
                          1.2e-05,
                          1.2e-05,
                          0.003047,
                          0.039009,
                          0.190829,
                          0.521503,
                          0.894169,
                          1.0,
                          0.734228,
                          0.347188,
                          0.099058,
                          0.014011,
                          0.000468,
                          0.0,
                          0.000334,
                          0.011862,
                          0.089186,
                          0.324773,
                          0.708371,
                          0.992574,
                          0.912657,
                          0.547815,
                          0.206587,
                          0.043122,
                          0.002865
                        ]
                      },
                      {
                        "key": 21,
                        "value": [
                          0.903867,
                          0.715634,
                          0.467841,
                          0.213944,
                          0.035898,
                          0.002977,
                          0.128827,
                          0.362277,
                          0.619707,
                          0.83031,
                          0.959285,
                          1.0,
                          0.953443,
                          0.818619,
                          0.603397,
                          0.345023,
                          0.116244,
                          0.0,
                          0.043758,
                          0.229269,
                          0.484466,
                          0.726808,
                          0.901478,
                          0.989179,
                          0.989179,
                          0.901478,
                          0.726808,
                          0.484466,
                          0.229269,
                          0.043758,
                          0.0,
                          0.116244,
                          0.345023,
                          0.603397,
                          0.818619,
                          0.953443,
                          1.0,
                          0.959285,
                          0.83031,
                          0.619707,
                          0.362277,
                          0.128827,
                          0.002977,
                          0.035898,
                          0.213944,
                          0.467841,
                          0.715634,
                          0.903867
                        ]
                      },
                      {
                        "key": 22,
                        "value": [
                          0.997135,
                          0.956878,
                          0.793413,
                          0.452185,
                          0.087343,
                          0.007426,
                          0.291629,
                          0.675227,
                          0.910814,
                          0.988138,
                          0.999666,
                          1.0,
                          0.999532,
                          0.985989,
                          0.900942,
                          0.652812,
                          0.265772,
                          0.0,
                          0.105831,
                          0.478497,
                          0.809171,
                          0.960991,
                          0.996953,
                          0.999988,
                          0.999988,
                          0.996953,
                          0.960991,
                          0.809171,
                          0.478497,
                          0.105831,
                          0.0,
                          0.265772,
                          0.652812,
                          0.900942,
                          0.985989,
                          0.999532,
                          1.0,
                          0.999666,
                          0.988138,
                          0.910814,
                          0.675227,
                          0.291629,
                          0.007426,
                          0.087343,
                          0.452185,
                          0.793413,
                          0.956878,
                          0.997135
                        ]
                      },
                      {
                        "key": 23,
                        "value": [
                          0.684252,
                          0.995491,
                          0.934361,
                          0.10241,
                          0.418453,
                          0.770951,
                          0.329513,
                          0.632919,
                          0.640483,
                          0.06445,
                          0.113825,
                          0.557088,
                          0.046934,
                          0.081483,
                          0.603648,
                          0.713657,
                          0.532517,
                          0.032737,
                          0.631007,
                          0.055018,
                          0.657812,
                          0.087056,
                          0.315027,
                          0.794472,
                          0.115627,
                          0.879021,
                          0.083101,
                          0.943951,
                          0.140064,
                          0.592541,
                          0.773648,
                          0.878784,
                          0.702661,
                          0.522066,
                          0.325899,
                          0.553865,
                          0.892673,
                          0.310473,
                          0.257807,
                          0.693359,
                          0.882688,
                          0.514288,
                          0.704867,
                          0.156758,
                          0.680873,
                          0.357273,
                          0.740705,
                          0.453477
                        ]
                      }
                    ]
                  },
                  "id": "obj-shape-coll-norm",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    912.0,
                    293.0,
                    89.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "embed": 1,
                    "precision": 6
                  },
                  "text": "coll @embed 1"
                }
              },
              {
                "box": {
                  "id": "obj-shape-trigger-norm",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "patching_rect": [
                    1022.0,
                    293.0,
                    68.0,
                    22.0
                  ],
                  "text": "t l b"
                }
              },
              {
                "box": {
                  "id": "obj-shape-count-48",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1029.0,
                    323.5,
                    30.0,
                    22.0
                  ],
                  "text": "45"
                }
              },
              {
                "box": {
                  "id": "obj-loadbang",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    778.0,
                    153.0,
                    60.0,
                    22.0
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "obj-load-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    778.0,
                    186.0,
                    62.0,
                    22.0
                  ],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-init-duration",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    778.0,
                    283.0,
                    46.0,
                    22.0
                  ],
                  "text": "1000."
                }
              },
              {
                "box": {
                  "id": "env-init-flat",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    778.0,
                    313.0,
                    30.0,
                    22.0
                  ],
                  "text": "0"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-function",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-count-slider",
                    0
                  ],
                  "midpoints": [
                    121.5,
                    389.19921875,
                    56.21484375,
                    389.19921875,
                    56.21484375,
                    309.5,
                    73.5,
                    309.5
                  ],
                  "source": [
                    "obj-6",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-multislider",
                    0
                  ],
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-coll-index-store",
                    1
                  ],
                  "source": [
                    "obj-coll-index",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-coll-join",
                    0
                  ],
                  "source": [
                    "obj-coll-index-store",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-coll-index",
                    0
                  ],
                  "source": [
                    "obj-coll-init-index",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-coll",
                    0
                  ],
                  "source": [
                    "obj-coll-join",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-coll-index-store",
                    0
                  ],
                  "source": [
                    "obj-coll-store-button",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-2",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-count-slider",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-count-slider",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-duration-clip",
                    0
                  ],
                  "source": [
                    "obj-duration",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-duration-t",
                    0
                  ],
                  "source": [
                    "obj-duration-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    1
                  ],
                  "source": [
                    "obj-duration-t",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-multislider",
                    0
                  ],
                  "source": [
                    "obj-duration-t",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-round-output",
                    0
                  ],
                  "source": [
                    "obj-function",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-duration",
                    0
                  ],
                  "source": [
                    "obj-init-duration",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-load-trigger",
                    0
                  ],
                  "source": [
                    "obj-loadbang",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-multislider",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-output-message",
                    0
                  ],
                  "source": [
                    "obj-output-set",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-output",
                    0
                  ],
                  "source": [
                    "obj-output-t",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-output-set",
                    0
                  ],
                  "source": [
                    "obj-output-t",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-coll-join",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "obj-round-output",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-output-t",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-round-output",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-shape-trigger-norm",
                    0
                  ],
                  "source": [
                    "obj-shape-coll-norm",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-count-slider",
                    0
                  ],
                  "source": [
                    "obj-shape-count-48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-shape-coll-norm",
                    0
                  ],
                  "source": [
                    "obj-shape-menu-norm",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-multislider",
                    0
                  ],
                  "source": [
                    "obj-shape-trigger-norm",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-shape-count-48",
                    0
                  ],
                  "source": [
                    "obj-shape-trigger-norm",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-load-trigger",
                    1
                  ],
                  "destination": [
                    "obj-init-duration",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-load-trigger",
                    0
                  ],
                  "destination": [
                    "env-init-flat",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "env-init-flat",
                    0
                  ],
                  "destination": [
                    "obj-shape-menu-norm",
                    0
                  ]
                }
              }
            ],
            "autosave": 0
          },
          "text": "p Envelope-Shaper_01"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            10
          ],
          "source": [
            "copy-amplitudes14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-amp-shape-menu",
            0
          ],
          "order": 2,
          "source": [
            "flat-menus14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-freq-shape-menu",
            0
          ],
          "order": 0,
          "source": [
            "flat-menus14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-harmonic-shape-menu",
            0
          ],
          "order": 1,
          "source": [
            "flat-menus14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            10
          ],
          "source": [
            "global-flat-zero14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-2",
            1
          ],
          "order": 0,
          "source": [
            "obj-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-2",
            0
          ],
          "order": 1,
          "source": [
            "obj-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-28",
            0
          ],
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-control-message",
            0
          ],
          "source": [
            "obj-17",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-envelope-message",
            0
          ],
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            10
          ],
          "source": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "copy-amplitudes14",
            0
          ],
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            8
          ],
          "source": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            0
          ],
          "source": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-signal-in",
            0
          ],
          "source": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-line",
            0
          ],
          "source": [
            "obj-envelope-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-17",
            0
          ],
          "source": [
            "obj-function-list-gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-multiply",
            1
          ],
          "source": [
            "obj-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-1",
            0
          ],
          "order": 0,
          "source": [
            "obj-multiply",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-signal-out",
            0
          ],
          "order": 1,
          "source": [
            "obj-multiply",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-function-list-gate",
            0
          ],
          "source": [
            "obj-receive",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-rounded-prepend",
            0
          ],
          "source": [
            "obj-receive-rounded",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-rounded-message",
            0
          ],
          "source": [
            "obj-rounded-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-multiply",
            0
          ],
          "source": [
            "obj-signal-in",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-envelope-message",
            0
          ],
          "source": [
            "obj-trigger-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-engine",
            0
          ],
          "source": [
            "rm14-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-count-store",
            1
          ],
          "source": [
            "rm14-count",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-count",
            0
          ],
          "source": [
            "rm14-count-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-command",
            0
          ],
          "source": [
            "rm14-count-store",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-indices-set",
            0
          ],
          "source": [
            "rm14-engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-status-set",
            0
          ],
          "source": [
            "rm14-engine",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            10
          ],
          "source": [
            "rm14-engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-engine",
            0
          ],
          "source": [
            "rm14-example",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-count-store",
            0
          ],
          "source": [
            "rm14-go",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-indices",
            0
          ],
          "source": [
            "rm14-indices-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-engine",
            0
          ],
          "source": [
            "rm14-receive",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-shape-menu",
            0
          ],
          "source": [
            "rm14-shape-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-weight-library",
            1
          ],
          "source": [
            "rm14-shape-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-weight-library",
            0
          ],
          "source": [
            "rm14-size-trigger",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-weight-library",
            0
          ],
          "source": [
            "rm14-size-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-status",
            0
          ],
          "source": [
            "rm14-status-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-engine",
            1
          ],
          "order": 1,
          "source": [
            "rm14-weight-library",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-weights-set",
            0
          ],
          "order": 0,
          "source": [
            "rm14-weight-library",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-weights-preview",
            0
          ],
          "source": [
            "rm14-weights-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-bypass-command",
            0
          ],
          "source": [
            "rt14-bypass",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-bypass-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-bypass",
            0
          ],
          "source": [
            "rt14-bypass-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-cents-command",
            0
          ],
          "source": [
            "rt14-cents",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-cents-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-cents",
            0
          ],
          "source": [
            "rt14-cents-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-cluster-command",
            0
          ],
          "source": [
            "rt14-cluster",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-cluster-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-cluster",
            0
          ],
          "source": [
            "rt14-cluster-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-current",
            0
          ],
          "source": [
            "rt14-current-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-gain-command",
            0
          ],
          "source": [
            "rt14-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-gain-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-gain",
            0
          ],
          "source": [
            "rt14-gain-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-retuning",
            3
          ],
          "source": [
            "rt14-glide",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-glide",
            0
          ],
          "source": [
            "rt14-glide-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-high-command",
            0
          ],
          "source": [
            "rt14-high",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-high-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-high",
            0
          ],
          "source": [
            "rt14-high-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-low-command",
            0
          ],
          "source": [
            "rt14-low",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-low-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-low",
            0
          ],
          "source": [
            "rt14-low-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-retuning",
            2
          ],
          "source": [
            "rt14-mode",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-mode",
            0
          ],
          "source": [
            "rt14-mode-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-offset-command",
            0
          ],
          "source": [
            "rt14-offset",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-offset-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-offset",
            0
          ],
          "source": [
            "rt14-offset-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-current-set",
            0
          ],
          "source": [
            "rt14-retuning",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-target",
            0
          ],
          "source": [
            "rt14-retuning",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-retuning",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stops-workspace14",
            0
          ],
          "order": 1,
          "source": [
            "rt14-retuning",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-base-number",
            0
          ],
          "order": 0,
          "source": [
            "rt14-retuning",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-semitones-command",
            0
          ],
          "source": [
            "rt14-semitones",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-semitones-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-semitones",
            0
          ],
          "source": [
            "rt14-semitones-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-source-message",
            0
          ],
          "source": [
            "rt14-source-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            1
          ],
          "source": [
            "rt14-sr-command",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-retuning",
            1
          ],
          "source": [
            "rt14-target",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-target",
            0
          ],
          "source": [
            "rt14-target-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            0
          ],
          "source": [
            "rt14-transform",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-source-prepend",
            0
          ],
          "source": [
            "rt14-transform",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-alias-toggle",
            0
          ],
          "source": [
            "rt14-transform",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filtered-prepend",
            0
          ],
          "source": [
            "rt14-transform",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-status-prepend",
            0
          ],
          "source": [
            "rt14-transform",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-amp-shape-menu",
            0
          ],
          "source": [
            "stage12-amp-default",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            10
          ],
          "source": [
            "stops-workspace14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-sr-command",
            0
          ],
          "order": 2,
          "source": [
            "syn-adstatus",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-sr-display",
            0
          ],
          "order": 0,
          "source": [
            "syn-adstatus",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-sr-number",
            0
          ],
          "order": 1,
          "source": [
            "syn-adstatus",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "source": [
            "syn-alias-toggle",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            7
          ],
          "source": [
            "syn-amp-interp-ms",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-dynamic-shapes",
            2
          ],
          "source": [
            "syn-amp-shape-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-engine",
            3
          ],
          "order": 2,
          "source": [
            "syn-amp-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-amp-list",
            0
          ],
          "order": 0,
          "source": [
            "syn-amp-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            4
          ],
          "order": 1,
          "source": [
            "syn-amp-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-retuning",
            0
          ],
          "source": [
            "syn-base",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-plus2",
            0
          ],
          "source": [
            "syn-count-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-count-update",
            0
          ],
          "source": [
            "syn-count-split",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-count-display",
            0
          ],
          "source": [
            "syn-count-split",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-engine",
            5
          ],
          "order": 3,
          "source": [
            "syn-count-update",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-size-trigger",
            0
          ],
          "order": 0,
          "source": [
            "syn-count-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stage12-amp-indices",
            0
          ],
          "order": 5,
          "source": [
            "syn-count-update",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stage12-freq-indices",
            0
          ],
          "order": 0,
          "source": [
            "syn-count-update",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stage12-harmonic-indices",
            0
          ],
          "order": 4,
          "source": [
            "syn-count-update",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-dynamic-shapes",
            0
          ],
          "order": 1,
          "source": [
            "syn-count-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-count-number",
            0
          ],
          "order": 1,
          "source": [
            "syn-count-update",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            9
          ],
          "source": [
            "syn-count-update",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-random-js",
            0
          ],
          "order": 2,
          "source": [
            "syn-count-update",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-init-bangs",
            0
          ],
          "source": [
            "syn-delay",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stops-workspace14",
            1
          ],
          "order": 1,
          "source": [
            "syn-drift",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-drift-number",
            0
          ],
          "order": 0,
          "source": [
            "syn-drift",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            2
          ],
          "source": [
            "syn-dynamic-shapes",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            1
          ],
          "source": [
            "syn-dynamic-shapes",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            0
          ],
          "source": [
            "syn-dynamic-shapes",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            1
          ],
          "source": [
            "syn-filter-amp-list",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            2
          ],
          "source": [
            "syn-filter-anchor-list",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-base",
            0
          ],
          "source": [
            "syn-filter-base-display",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-base",
            0
          ],
          "source": [
            "syn-filter-base-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            4
          ],
          "source": [
            "syn-filter-base-number",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            4
          ],
          "source": [
            "syn-filter-base-number",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-count-display",
            0
          ],
          "source": [
            "syn-filter-count-display",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-count-display",
            0
          ],
          "source": [
            "syn-filter-count-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            3
          ],
          "source": [
            "syn-filter-count-number",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            3
          ],
          "source": [
            "syn-filter-count-number",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-drift",
            0
          ],
          "source": [
            "syn-filter-drift-display",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-drift",
            0
          ],
          "source": [
            "syn-filter-drift-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            5
          ],
          "source": [
            "syn-filter-drift-number",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            5
          ],
          "source": [
            "syn-filter-drift-number",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            0
          ],
          "source": [
            "syn-filter-freq-list",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-sr-display",
            0
          ],
          "source": [
            "syn-filter-sr-display",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-sr-display",
            0
          ],
          "source": [
            "syn-filter-sr-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            6
          ],
          "source": [
            "syn-filter-sr-number",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            6
          ],
          "source": [
            "syn-filter-sr-number",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "source": [
            "syn-filtered-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            6
          ],
          "source": [
            "syn-freq-interp-ms",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-dynamic-shapes",
            1
          ],
          "source": [
            "syn-freq-shape-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-engine",
            2
          ],
          "order": 2,
          "source": [
            "syn-freq-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-freq-list",
            0
          ],
          "order": 0,
          "source": [
            "syn-freq-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            3
          ],
          "order": 1,
          "source": [
            "syn-freq-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rm14-engine",
            4
          ],
          "order": 2,
          "source": [
            "syn-harmonic-amp-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-anchor-list",
            0
          ],
          "order": 0,
          "source": [
            "syn-harmonic-amp-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            5
          ],
          "order": 1,
          "source": [
            "syn-harmonic-amp-slider",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            8
          ],
          "source": [
            "syn-harmonic-interp-ms",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-dynamic-shapes",
            3
          ],
          "source": [
            "syn-harmonic-shape-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-amp-slider",
            0
          ],
          "source": [
            "syn-init-bangs",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-freq-slider",
            0
          ],
          "source": [
            "syn-init-bangs",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-harmonic-amp-slider",
            0
          ],
          "source": [
            "syn-init-bangs",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flat-menus14",
            0
          ],
          "order": 0,
          "source": [
            "syn-interpolation-js",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-amp-slider",
            0
          ],
          "source": [
            "syn-interpolation-js",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-dynamic-shapes",
            0
          ],
          "order": 1,
          "source": [
            "syn-interpolation-js",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-freq-slider",
            0
          ],
          "source": [
            "syn-interpolation-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-harmonic-amp-slider",
            0
          ],
          "source": [
            "syn-interpolation-js",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-js",
            7
          ],
          "source": [
            "syn-interpolation-js",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "source": [
            "syn-js",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rt14-transform",
            0
          ],
          "source": [
            "syn-js",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-amp-interp-ms",
            0
          ],
          "source": [
            "syn-load-amp-interp",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-base-display",
            0
          ],
          "source": [
            "syn-load-base",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-count-slider",
            0
          ],
          "source": [
            "syn-load-count",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-filter-drift-display",
            0
          ],
          "source": [
            "syn-load-drift",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-freq-interp-ms",
            0
          ],
          "source": [
            "syn-load-freq-interp",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-harmonic-interp-ms",
            0
          ],
          "source": [
            "syn-load-harmonic-interp",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-harmonic-shape-menu",
            0
          ],
          "source": [
            "syn-load-harmonic-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-freq-shape-menu",
            0
          ],
          "source": [
            "syn-load-shape-menus",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-adstatus",
            0
          ],
          "order": 0,
          "source": [
            "syn-loadbang",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-delay",
            0
          ],
          "order": 1,
          "source": [
            "syn-loadbang",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-count-split",
            0
          ],
          "source": [
            "syn-plus2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-random-js",
            2
          ],
          "source": [
            "syn-random-amp-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-random-js",
            1
          ],
          "source": [
            "syn-random-freq-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-random-js",
            3
          ],
          "source": [
            "syn-random-harmonic-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            2
          ],
          "source": [
            "syn-random-js",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            1
          ],
          "source": [
            "syn-random-js",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            0
          ],
          "source": [
            "syn-random-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-status-message",
            0
          ],
          "source": [
            "syn-status-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "syn-interpolation-js",
            10
          ],
          "source": [
            "workspace14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "envelope-shaper01",
            0
          ],
          "destination": [
            "obj-function-list-gate",
            0
          ]
        }
      }
    ],
    "parameters": {
      "obj-1": [
        "live.gain~",
        "live.gain~",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": [
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ],
          "buttons": [
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ]
        }
      },
      "inherited_shortname": 1
    },
    "autosave": 0
  }
}
