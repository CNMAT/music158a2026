{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 2,
      "revision": 1,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      451.0,
      633.0,
      699.0,
      408.0
    ],
    "boxes": [
      {
        "box": {
          "hidden": 1,
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            24.0,
            76.5,
            70.0,
            22.0
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "bubble": 1,
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "obj-12",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            145.0,
            136.0,
            152.0,
            25.0
          ],
          "text": "2 - receive~ filterbank"
        }
      },
      {
        "box": {
          "bubble": 1,
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "obj-10",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            145.0,
            107.0,
            130.0,
            25.0
          ],
          "text": "1 - noise~"
        }
      },
      {
        "box": {
          "bubble": 1,
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "obj-11",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            145.0,
            78.0,
            114.0,
            25.0
          ],
          "text": "0 - all inlets off"
        }
      },
      {
        "box": {
          "disabled": [
            0,
            0,
            0
          ],
          "flagmode": 1,
          "id": "obj-13",
          "itemtype": 0,
          "maxclass": "radiogroup",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": 29,
          "outlettype": [
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            120.0,
            80.0,
            19.0,
            89.0
          ],
          "size": 3,
          "value": 1
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            49.0,
            186.0,
            68.0,
            22.0
          ],
          "text": "selector~ 2"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.067,
            0.122,
            0.761,
            1.0
          ],
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            193.0,
            166.0,
            72.0,
            22.0
          ],
          "text": "r~ filterbank"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            "int"
          ],
          "patching_rect": [
            401.0,
            289.0,
            91.0,
            22.0
          ],
          "text": "adstatus switch"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.067,
            0.122,
            0.761,
            1.0
          ],
          "id": "obj-3",
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
              "minor": 2,
              "revision": 1,
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
                  "annotation": "Click to restore; Capture replaces this message.",
                  "bgcolor": [
                    0.1,
                    0.14,
                    0.18,
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
                    0.1,
                    0.14,
                    0.18,
                    1
                  ],
                  "bgfillcolor_color2": [
                    0.2,
                    0.2,
                    0.2,
                    1
                  ],
                  "bgfillcolor_type": "gradient",
                  "fontname": "Menlo",
                  "fontsize": 10.0,
                  "gradient": 1,
                  "hint": "Click to restore; Capture replaces this message.",
                  "id": "full_state",
                  "linecount": 24,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    100.0,
                    821.0,
                    346.0
                  ],
                  "text": "restorestate 1 0 1 1 1 1 11 0 117 20261030 8 1000 0.5 1 0 1 700 -9.562401 1 1 440 0 20 200 6 500 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 1 0.75 -1 1 0 1 1 440 0 20 100 6 700 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 1 0.75 -1 1 0 1 1 440 0 20 50 7 1100 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 1 0.75 -1 1 0 1 1 880 0 20 300 11 1300 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 1 0.75 -1 1 0 1 97 20261030 10 1000 1 1 1 1 700 0 1 0 1200 0 2 0 18 12000 1 0 2 0 0 1 0 6 0 0 0.2 1 0.35 1 0.65 -1 0.8 -1 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 2 97 20261030 10 1000 1 1 2 1 700 0 1 1 4100 0 0.707107 3900 0 16000 1 0 6 0 0 0.2 -1 0.3 -1 0.7 1 0.8 1 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 3 93 20261030 10 1000 1 1 3 1 700 0 1 2 2650 12 6 2350 0 12000 1 0 4 0 0 0.25 1 0.75 -1 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 4 93 20261030 10 1000 1 1 4 1 700 0 1 3 1200 24 100 500 0 12000 1 0 4 0 0 0.25 1 0.75 -1 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 5 97 20261030 10 1000 1 1 5 1 700 0 1 4 5060 0 0.707107 4940 0 16000 1 0 6 0 0 0.2 -1 0.3 -1 0.7 1 0.8 1 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 6 93 20261030 10 1000 1 1 6 1 700 0 1 5 1200 0 16 900 0 10000 1 -6 4 0 0 0.25 1 0.75 -1 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 7 97 20261030 10 1000 1 1 7 1 700 0 1 6 2000 0 0.75 1600 0 14000 1 0 6 0 0 0.2 -1 0.3 -1 0.7 1 0.8 1 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 0 0 60 0 6 0 0 4000 0 0 2 0 0 1 0 2 0 0 1 0 8 117 20261030 8 1000 0.8 1 8 1 700 0 1 0 180 6 6 60 10 8000 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 -1 0.75 1 1 0 1 0 700 6 6 200 10 8000 1 4 0 0 0.25 -1 0.75 1 1 0 4 0 0 0.25 -1 0.75 1 1 0 1 0 2400 6 6 600 10 8000 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 -1 0.75 1 1 0 1 0 7000 6 6 1200 10 8000 1 4 0 0 0.25 -1 0.75 1 1 0 4 0 0 0.25 -1 0.75 1 1 0 9 117 20261030 8 1000 0.8 1 9 1 700 0 1 0 180 8 3 60 8 3000 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 1 0.75 -1 1 0 1 0 700 8 5 200 8 5000 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 1 0.75 -1 1 0 1 0 2400 8 8 600 8 7000 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 1 0.75 -1 1 0 1 0 7000 8 4 1200 8 11000 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 1 0.75 -1 1 0 10 117 20261030 8 2000 0.7 1 10 1 1000 0 1 3 220 24 100 30 4 7000 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 -1 0.75 -0.5 1 0 1 3 700 24 100 110 6 9000 1 4 0 0 0.25 -1 0.75 1 1 0 4 0 0 0.25 -1 0.75 -0.5 1 0 1 3 2200 24 100 330 5 11000 1 4 0 0 0.25 1 0.75 -1 1 0 4 0 0 0.25 -1 0.75 -0.5 1 0 1 3 7000 24 100 900 7 13000 1 4 0 0 0.25 -1 0.75 1 1 0 4 0 0 0.25 -1 0.75 -0.5 1 0",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "full_state"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-1",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    850.0,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-2",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    506.0,
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
                    "obj-2",
                    0
                  ],
                  "source": [
                    "full_state",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "full_state",
                    1
                  ],
                  "source": [
                    "obj-1",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            69.0,
            273.0,
            130.0,
            22.0
          ],
          "text": "p capture-restore-state"
        }
      },
      {
        "box": {
          "annotation": "Test input level: 0.1.",
          "hint": "Test input level: 0.1.",
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            49.0,
            134.5,
            60.0,
            22.0
          ],
          "text": "*~ 0.1"
        }
      },
      {
        "box": {
          "annotation": "White-noise test input.",
          "hint": "White-noise test input.",
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            49.0,
            104.0,
            60.0,
            22.0
          ],
          "text": "noise~"
        }
      },
      {
        "box": {
          "annotation": "Local output on/off; 100 ms fade.",
          "bgcolor": [
            0.027450980392156862,
            0.8901960784313725,
            0.09803921568627451,
            1.0
          ],
          "checkedcolor": [
            0.8901960784313725,
            0.03137254901960784,
            0.03137254901960784,
            1.0
          ],
          "hint": "Local output on/off; 100 ms fade.",
          "id": "obj-33",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            401.0,
            344.0,
            30.0,
            30.0
          ],
          "uncheckedcolor": [
            0.027,
            0.89,
            0.098,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Hardware outputs 1 and 2.",
          "hint": "Hardware outputs 1 and 2.",
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            398.0,
            382.0,
            70.0,
            22.0
          ],
          "text": "dac~ 1 2"
        }
      },
      {
        "box": {
          "annotation": "Local listening level after Filter Bank.",
          "channels": 1,
          "hint": "Local listening level after Filter Bank.",
          "id": "obj-6",
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
            49.0,
            314.0,
            77.0,
            71.0
          ],
          "saved_attribute_attributes": {
            "slidercolor": {
              "expression": "themecolor.live_arranger_grid_tiles"
            },
            "textcolor": {
              "expression": ""
            },
            "tribordercolor": {
              "expression": "themecolor.live_record"
            },
            "tricolor": {
              "expression": "themecolor.live_record"
            },
            "trioncolor": {
              "expression": "themecolor.live_record"
            },
            "valueof": {
              "parameter_initial": [
                -80
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
          "slidercolor": [
            0.039216,
            0.039216,
            0.039216,
            1.0
          ],
          "textcolor": [
            1.0,
            0.1607843137254902,
            0.1607843137254902,
            1.0
          ],
          "tribordercolor": [
            1.0,
            0.34902,
            0.372549,
            1.0
          ],
          "tricolor": [
            1.0,
            0.34902,
            0.372549,
            1.0
          ],
          "trioncolor": [
            1.0,
            0.34902,
            0.372549,
            1.0
          ],
          "varname": "live.gain~",
          "warmcolor": [
            0.03137254901960784,
            0.03137254901960784,
            0.8705882352941177,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Audio in left; local commands in right. Double-click to edit.",
          "bgcolor": [
            0.06666666666666667,
            0.12156862745098039,
            0.7607843137254902,
            1.0
          ],
          "hint": "Audio in left; local commands in right. Double-click to edit.",
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            ""
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 2,
              "revision": 1,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              451.0,
              113.0,
              1030.0,
              790.0
            ],
            "openinpresentation": 1,
            "visible": 1,
            "boxes": [
              {
                "box": {
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "fontname": "Arial",
                  "fontsize": 9.0,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-287",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    784.0,
                    176.0,
                    89.0,
                    17.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    877.0,
                    177.5,
                    54.0,
                    17.0
                  ],
                  "text": "input meter",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "fontname": "Arial",
                  "fontsize": 9.0,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-235",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    531.0,
                    176.0,
                    89.0,
                    17.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    622.0,
                    177.5,
                    54.0,
                    17.0
                  ],
                  "text": "input meter",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "fontname": "Arial",
                  "fontsize": 9.0,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-234",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    279.0,
                    175.0,
                    89.0,
                    17.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    371.0,
                    177.5,
                    54.0,
                    17.0
                  ],
                  "text": "input meter",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "fontname": "Arial",
                  "fontsize": 9.0,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-233",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    17.0,
                    177.0,
                    89.0,
                    17.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    117.0,
                    177.5,
                    54.0,
                    17.0
                  ],
                  "text": "input meter",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Control group.",
                  "background": 1,
                  "bgcolor": [
                    0.115,
                    0.135,
                    0.165,
                    1
                  ],
                  "bordercolor": [
                    0.13725490196078433,
                    0.7764705882352941,
                    0.8509803921568627,
                    1.0
                  ],
                  "hint": "Control group.",
                  "id": "obj-15",
                  "maxclass": "panel",
                  "mode": 0,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    280.0,
                    260.0,
                    398.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    15.0,
                    180.0,
                    246.1848739495798,
                    488.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Control group.",
                  "background": 1,
                  "bgcolor": [
                    0.115,
                    0.135,
                    0.165,
                    1
                  ],
                  "bordercolor": [
                    0.13725490196078433,
                    0.7764705882352941,
                    0.8509803921568627,
                    1.0
                  ],
                  "hint": "Control group.",
                  "id": "obj-71",
                  "maxclass": "panel",
                  "mode": 0,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300.0,
                    280.0,
                    260.0,
                    398.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    268.0,
                    180.0,
                    246.1848739495798,
                    488.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Control group.",
                  "background": 1,
                  "bgcolor": [
                    0.115,
                    0.135,
                    0.165,
                    1
                  ],
                  "bordercolor": [
                    0.13725490196078433,
                    0.7764705882352941,
                    0.8509803921568627,
                    1.0
                  ],
                  "hint": "Control group.",
                  "id": "obj-127",
                  "maxclass": "panel",
                  "mode": 0,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    580.0,
                    280.0,
                    260.0,
                    398.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    521.0,
                    180.0,
                    246.1848739495798,
                    488.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Control group.",
                  "background": 1,
                  "bgcolor": [
                    0.115,
                    0.135,
                    0.165,
                    1
                  ],
                  "bordercolor": [
                    0.13725490196078433,
                    0.7764705882352941,
                    0.8509803921568627,
                    1.0
                  ],
                  "hint": "Control group.",
                  "id": "obj-183",
                  "maxclass": "panel",
                  "mode": 0,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    860.0,
                    280.0,
                    260.0,
                    398.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    774.0,
                    180.0,
                    246.1848739495798,
                    488.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Control group.",
                  "background": 1,
                  "bgcolor": [
                    0.035,
                    0.055,
                    0.08,
                    1
                  ],
                  "border": 1,
                  "bordercolor": [
                    0.42,
                    0.52,
                    0.63,
                    1.0
                  ],
                  "hint": "Control group.",
                  "id": "obj-390",
                  "maxclass": "panel",
                  "mode": 0,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    842.0,
                    700.0,
                    278.0,
                    71.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    735.2941176470589,
                    689.0,
                    288.00000000000006,
                    66.73949579831938
                  ],
                  "rounded": 7
                }
              },
              {
                "box": {
                  "annotation": "Base frequency: 60–13000 Hz.",
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base frequency: 60–13000 Hz.",
                  "id": "obj-385",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    16.0,
                    273.0,
                    185.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    28.5,
                    275.0,
                    96.0,
                    22.0
                  ],
                  "text": "FILTER TYPE",
                  "textcolor": [
                    0.8745098039215686,
                    0.8823529411764706,
                    0.8901960784313725,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Base filter gain: -36 to +36 dB.",
                  "id": "obj-2",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    81.0,
                    329.0,
                    80.0,
                    47.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    21.0,
                    331.0,
                    232.0,
                    20.0
                  ],
                  "text": "FREQ / GAIN MOTION",
                  "textcolor": [
                    0.3058823529411765,
                    0.8156862745098039,
                    0.0784313725490196,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Four independent filters; seven filter modes.",
                  "fontname": "Arial",
                  "fontsize": 21.0,
                  "hint": "Four independent filters; seven filter modes.",
                  "id": "obj-1",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    8.0,
                    500.0,
                    53.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    9.0,
                    4.0,
                    968.0672268907564,
                    30.0
                  ],
                  "text": "4X FILTER BANK v6 • FOUR PARALLEL BIQUADS • 60–13000 Hz",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "This instance's controller.",
                  "hint": "This instance's controller.",
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    75.0,
                    230.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "filename": "ec_filterbank_v6.js",
                    "parameter_enable": 0
                  },
                  "text": "js ec_filterbank_v6.js",
                  "varname": "engine"
                }
              },
              {
                "box": {
                  "annotation": "Schedule low-priority control.",
                  "hint": "Schedule low-priority control.",
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1460.0,
                    75.0,
                    90.0,
                    22.0
                  ],
                  "text": "deferlow"
                }
              },
              {
                "box": {
                  "annotation": "Block display feedback.",
                  "hint": "Block display feedback.",
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    140.0,
                    100.0,
                    22.0
                  ],
                  "text": "gate 1 0",
                  "varname": "graph_gate"
                }
              },
              {
                "box": {
                  "annotation": "Native coefficients for the combined response display.",
                  "autoout": 1,
                  "bgcolor": [
                    0.04,
                    0.055,
                    0.075,
                    1.0
                  ],
                  "curvecolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "domain": [
                    60.0,
                    13000.0
                  ],
                  "fontface": 0,
                  "hcurvecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "hint": "Native coefficients for the combined response display.",
                  "id": "obj-6",
                  "ignoreclick": 1,
                  "logmarkers": [
                    60.0,
                    100.0,
                    200.0,
                    500.0,
                    1000.0,
                    2000.0,
                    5000.0,
                    10000.0,
                    13000.0
                  ],
                  "markercolor": [
                    0.25,
                    0.28,
                    0.32,
                    1.0
                  ],
                  "maxclass": "filtergraph~",
                  "nfilters": 4,
                  "numinlets": 8,
                  "numoutlets": 7,
                  "outlettype": [
                    "list",
                    "float",
                    "float",
                    "float",
                    "float",
                    "list",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1220.0,
                    1700.0,
                    1120.0,
                    135.0
                  ],
                  "range": [
                    0.003981071524322033,
                    63.095733642578125
                  ],
                  "setfilter": [
                    3,
                    5,
                    1,
                    0,
                    1,
                    60.0,
                    0.015848931924611134,
                    0.5,
                    60.0,
                    13000.0,
                    0.015848932787775993,
                    63.095733642578125,
                    0.5,
                    200.0,
                    2,
                    5,
                    1,
                    0,
                    1,
                    60.0,
                    0.015848931924611134,
                    0.5,
                    60.0,
                    13000.0,
                    0.015848932787775993,
                    63.095733642578125,
                    0.5,
                    200.0,
                    1,
                    5,
                    1,
                    0,
                    1,
                    60.0,
                    0.015848931924611134,
                    0.5,
                    60.0,
                    13000.0,
                    0.015848932787775993,
                    63.095733642578125,
                    0.5,
                    200.0,
                    0,
                    5,
                    1,
                    0,
                    1,
                    60.0,
                    0.015848931924611134,
                    0.5,
                    60.0,
                    13000.0,
                    0.015848932787775993,
                    63.095733642578125,
                    0.5,
                    200.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "eqgraph"
                }
              },
              {
                "box": {
                  "annotation": "Section guide.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Section guide.",
                  "id": "obj-7",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    60.0,
                    1120.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    9.0,
                    36.0,
                    1017.0,
                    19.0
                  ],
                  "text": "Four parallel filters • OFF mutes • Top meters show input • Output faders feed Global Gain Out",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current frequency, Hz.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current frequency, Hz.",
                  "id": "obj-8",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    226.0,
                    76.0,
                    19.0
                  ],
                  "text": "#1",
                  "textcolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current frequency, Hz.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current frequency, Hz.",
                  "id": "obj-9",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 13000.0,
                  "minimum": 60.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    110.0,
                    222.0,
                    160.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "livefreq0"
                }
              },
              {
                "box": {
                  "annotation": "Current filter gain, dB.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current filter gain, dB.",
                  "id": "obj-10",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    254.0,
                    25.0,
                    19.0
                  ],
                  "text": "dB",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current filter gain, dB.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current filter gain, dB.",
                  "id": "obj-11",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 36.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    60.0,
                    250.0,
                    72.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "livegain0"
                }
              },
              {
                "box": {
                  "annotation": "Current Q.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current Q.",
                  "id": "obj-12",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    144.0,
                    254.0,
                    19.0,
                    19.0
                  ],
                  "text": "Q",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current Q.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current Q.",
                  "id": "obj-13",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 200.0,
                  "minimum": 0.5,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    165.0,
                    250.0,
                    65.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "liveq0"
                }
              },
              {
                "box": {
                  "annotation": "Filter output state.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Filter output state.",
                  "id": "obj-14",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    235.0,
                    254.0,
                    61.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    55.0,
                    198.0,
                    32.0,
                    20.0
                  ],
                  "text": "OFF",
                  "textcolor": [
                    0.34901960784313724,
                    0.8156862745098039,
                    0.2784313725490196,
                    1.0
                  ],
                  "varname": "bandstatus0"
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "bgcolor": [
                    0.7764705882352941,
                    0.5019607843137255,
                    0.1803921568627451,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Select target filter: 1–4.",
                  "id": "obj-16",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    30.0,
                    288.0,
                    124.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    94.0,
                    196.0,
                    79.0,
                    24.0
                  ],
                  "text": "FILTER 1",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "FILTER 1"
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "hint": "Select target filter: 1–4.",
                  "id": "obj-17",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    250.0,
                    185.0,
                    22.0
                  ],
                  "text": "filter 1"
                }
              },
              {
                "box": {
                  "annotation": "ON sends filtered audio; OFF mutes.",
                  "bgcolor": [
                    0.03137254901960784,
                    0.8705882352941177,
                    0.43529411764705883,
                    1.0
                  ],
                  "checkedcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "ON sends filtered audio; OFF mutes.",
                  "id": "obj-18",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    194.0,
                    289.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    29.411764705882355,
                    197.0,
                    22.0,
                    22.0
                  ],
                  "uncheckedcolor": [
                    0.031,
                    0.871,
                    0.435,
                    1.0
                  ],
                  "varname": "enabled0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    250.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 enable"
                }
              },
              {
                "box": {
                  "annotation": "ON / OFF.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "ON / OFF.",
                  "id": "obj-20",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    224.0,
                    290.0,
                    42.0,
                    20.0
                  ],
                  "text": "On",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Change filter type with gain, Q and motion reset.",
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1
                  ],
                  "bgfillcolor_angle": 270,
                  "bgfillcolor_autogradient": 0,
                  "bgfillcolor_color": [
                    0.776,
                    0.502,
                    0.18,
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
                  "bgfillcolor_proportion": 0.5,
                  "bgfillcolor_type": "color",
                  "fontsize": 18.0,
                  "hint": "Manual type change: briefly mute this filter, reset Gain to 0 dB and Q for the new type, stop Once/Loop and set both motion depths to 0. Output is lowered to -12 dB (quieter settings stay quieter). Frequency and drawn curves are retained. Preset recall does not perform this reset.",
                  "id": "obj-21",
                  "items": [
                    "Peak",
                    ",",
                    "Lowpass",
                    ",",
                    "Bandpass",
                    ",",
                    "Ultra-narrow Bandpass",
                    ",",
                    "Highpass",
                    ",",
                    "Resonant",
                    ",",
                    "Notch"
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
                    30.0,
                    318.0,
                    151.0,
                    29.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    28.5,
                    300.0,
                    231.0,
                    29.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "type0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-22",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    250.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 uitype"
                }
              },
              {
                "box": {
                  "annotation": "Sharpness: higher Q is narrower.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Sharpness: higher Q is narrower.",
                  "id": "obj-23",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    190.0,
                    320.0,
                    25.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    149.0,
                    275.0,
                    25.0,
                    22.0
                  ],
                  "text": "Q",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Sharpness: higher Q is narrower.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Sharpness: higher Q is narrower.",
                  "id": "obj-24",
                  "maxclass": "flonum",
                  "maximum": 20.0,
                  "minimum": 0.5,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    211.0,
                    317.0,
                    62.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    175.0,
                    274.0,
                    62.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "q0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    250.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 q"
                }
              },
              {
                "box": {
                  "annotation": "Base frequency: 60–13000 Hz.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base frequency: 60–13000 Hz.",
                  "id": "obj-26",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    348.0,
                    185.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    27.0,
                    249.0,
                    143.0,
                    22.0
                  ],
                  "text": "Frequency / Hz",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Center/cutoff frequency: 60–13000 Hz.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Center/cutoff frequency: 60–13000 Hz.",
                  "id": "obj-27",
                  "maxclass": "flonum",
                  "maximum": 13000.0,
                  "minimum": 60.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    30.0,
                    365.0,
                    143.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    175.0,
                    248.0,
                    71.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "freq0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-28",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    305.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 freq"
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base filter gain: -36 to +36 dB.",
                  "id": "obj-29",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    224.0,
                    348.0,
                    98.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    223.0,
                    130.0,
                    22.0
                  ],
                  "text": "Filter gain / dB",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB. Peak boost/cut; other modes: filter gain. GAIN motion adds its scaled curve to this value.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Base filter gain: -36 to +36 dB. Peak boost/cut; other modes: filter gain. GAIN motion adds its scaled curve to this value.",
                  "id": "obj-30",
                  "maxclass": "flonum",
                  "maximum": 36.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    172.0,
                    372.0,
                    98.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    175.0,
                    222.0,
                    72.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "gain0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    305.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 gain"
                }
              },
              {
                "box": {
                  "annotation": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "id": "obj-32",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    396.0,
                    115.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    353.0,
                    115.0,
                    18.0
                  ],
                  "text": "Motion depth / ±Hz",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "id": "obj-33",
                  "maxclass": "flonum",
                  "maximum": 12940.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    30.0,
                    413.0,
                    115.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    373.0,
                    115.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "depth0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    305.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 depth"
                }
              },
              {
                "box": {
                  "annotation": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "id": "obj-35",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    157.0,
                    396.0,
                    113.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    146.0,
                    353.0,
                    113.0,
                    18.0
                  ],
                  "text": "Gain depth / ±dB",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "id": "obj-36",
                  "maxclass": "flonum",
                  "maximum": 48.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    157.0,
                    413.0,
                    113.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    146.0,
                    373.0,
                    113.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "ampdepth0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-37",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    305.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 ampdepth"
                }
              },
              {
                "box": {
                  "annotation": "One complete curve trip, ms.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "One complete curve trip, ms.",
                  "id": "obj-38",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    446.0,
                    115.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    400.0,
                    127.0,
                    20.0
                  ],
                  "text": "Full circle trip/ ms",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "One complete curve trip, ms.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "One complete curve trip, ms.",
                  "id": "obj-39",
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
                    157.0,
                    442.0,
                    113.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    146.0,
                    398.0,
                    113.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "period0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-40",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    360.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 period"
                }
              },
              {
                "box": {
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-41",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    479.0,
                    129.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    424.0,
                    47.0,
                    22.0
                  ],
                  "text": "FREQ",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Flatten frequency curve; stop motion.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 1: Flatten frequency curve; stop motion.",
                  "id": "obj-42",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    130.0,
                    474.0,
                    54.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    119.0,
                    423.0,
                    54.0,
                    24.0
                  ],
                  "text": "Flat",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Flat",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Flatten frequency curve; stop motion.",
                  "hint": "Filter 1: Flatten frequency curve; stop motion.",
                  "id": "obj-43",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    360.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 1 resetcurve"
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Set frequency triangle shape.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 1: Set frequency triangle shape.",
                  "id": "obj-44",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    194.0,
                    474.0,
                    76.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    183.0,
                    423.0,
                    76.0,
                    24.0
                  ],
                  "text": "Triangle",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Triangle",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Set frequency triangle shape.",
                  "hint": "Filter 1: Set frequency triangle shape.",
                  "id": "obj-45",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    360.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 1 triangle"
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    1,
                    100.0,
                    0.0,
                    1
                  ],
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "bgcolor": [
                    0.055,
                    0.07,
                    0.09,
                    1.0
                  ],
                  "classic_curve": 1,
                  "domain": 100.0,
                  "grid": 3,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-46",
                  "linecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    30.0,
                    500.0,
                    240.0,
                    52.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    449.0,
                    240.0,
                    52.0
                  ],
                  "range": [
                    -1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "curve0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-47",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    360.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend curvepoints 1"
                }
              },
              {
                "box": {
                  "annotation": "Capture edited curve points.",
                  "hint": "Capture edited curve points.",
                  "id": "obj-48",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    415.0,
                    185.0,
                    22.0
                  ],
                  "text": "curvechanged 1"
                }
              },
              {
                "box": {
                  "annotation": "Gain offset shape, scaled by dB depth.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Gain offset shape, scaled by dB depth.",
                  "id": "obj-49",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    565.0,
                    41.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    21.0,
                    504.0,
                    43.0,
                    22.0
                  ],
                  "text": "GAIN",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Flatten gain curve.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 1: Flatten gain curve.",
                  "id": "obj-50",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    130.0,
                    560.0,
                    54.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    119.0,
                    503.0,
                    54.0,
                    24.0
                  ],
                  "text": "Flat",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Flat",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Flatten gain curve.",
                  "hint": "Filter 1: Flatten gain curve.",
                  "id": "obj-51",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    415.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 1 resetamp"
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Set gain triangle shape.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 1: Set gain triangle shape.",
                  "id": "obj-52",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    194.0,
                    560.0,
                    76.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    183.0,
                    503.0,
                    76.0,
                    24.0
                  ],
                  "text": "Triangle",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Triangle",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Set gain triangle shape.",
                  "hint": "Filter 1: Set gain triangle shape.",
                  "id": "obj-53",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    415.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 1 amptriangle"
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    1,
                    100.0,
                    0.0,
                    1
                  ],
                  "annotation": "Gain offset shape, scaled by dB depth.",
                  "bgcolor": [
                    0.055,
                    0.07,
                    0.09,
                    1.0
                  ],
                  "classic_curve": 1,
                  "domain": 100.0,
                  "grid": 3,
                  "hint": "Gain offset shape, scaled by dB depth.",
                  "id": "obj-54",
                  "linecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    30.0,
                    586.0,
                    240.0,
                    52.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    16.592436974789905,
                    529.0,
                    242.4075630252101,
                    52.0
                  ],
                  "range": [
                    -1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "acurve0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-55",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    415.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend ampcurvepoints 1"
                }
              },
              {
                "box": {
                  "annotation": "Capture edited curve points.",
                  "hint": "Capture edited curve points.",
                  "id": "obj-56",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    470.0,
                    185.0,
                    22.0
                  ],
                  "text": "ampcurvechanged 1"
                }
              },
              {
                "box": {
                  "annotation": "Repeat both motion curves.",
                  "bgcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "checkedcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "Repeat both motion curves.",
                  "id": "obj-57",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    30.0,
                    648.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    583.0,
                    22.0,
                    24.0
                  ],
                  "uncheckedcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "loop0"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-58",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    470.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 1 loop"
                }
              },
              {
                "box": {
                  "annotation": "Repeat both motion curves.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Repeat both motion curves.",
                  "id": "obj-59",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    59.0,
                    650.0,
                    34.0,
                    33.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    47.0,
                    585.0,
                    35.0,
                    20.0
                  ],
                  "text": "Loop",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Run both curves once.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 1: Run both curves once.",
                  "id": "obj-60",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    116.0,
                    646.0,
                    68.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    105.0,
                    583.0,
                    68.0,
                    24.0
                  ],
                  "text": "Once",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Once",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Run both curves once.",
                  "hint": "Filter 1: Run both curves once.",
                  "id": "obj-61",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    470.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 1 once"
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Stop this filter's motion.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 1: Stop this filter's motion.",
                  "id": "obj-62",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    199.0,
                    646.0,
                    71.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    188.0,
                    583.0,
                    71.0,
                    24.0
                  ],
                  "text": "Stop",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Stop",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 1: Stop this filter's motion.",
                  "hint": "Filter 1: Stop this filter's motion.",
                  "id": "obj-63",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    470.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 1 stop"
                }
              },
              {
                "box": {
                  "annotation": "Current frequency, Hz.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current frequency, Hz.",
                  "id": "obj-64",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    310.0,
                    226.0,
                    20.0,
                    31.0
                  ],
                  "text": "#2",
                  "textcolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current frequency, Hz.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current frequency, Hz.",
                  "id": "obj-65",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 13000.0,
                  "minimum": 60.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    390.0,
                    222.0,
                    160.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "livefreq1"
                }
              },
              {
                "box": {
                  "annotation": "Current filter gain, dB.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current filter gain, dB.",
                  "id": "obj-66",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    310.0,
                    254.0,
                    25.0,
                    19.0
                  ],
                  "text": "dB",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current filter gain, dB.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current filter gain, dB.",
                  "id": "obj-67",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 36.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    340.0,
                    250.0,
                    72.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "livegain1"
                }
              },
              {
                "box": {
                  "annotation": "Current Q.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current Q.",
                  "id": "obj-68",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    424.0,
                    254.0,
                    19.0,
                    19.0
                  ],
                  "text": "Q",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current Q.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current Q.",
                  "id": "obj-69",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 200.0,
                  "minimum": 0.5,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    445.0,
                    250.0,
                    65.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "liveq1"
                }
              },
              {
                "box": {
                  "annotation": "Filter output state.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Filter output state.",
                  "id": "obj-70",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    515.0,
                    254.0,
                    52.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    308.0,
                    198.0,
                    32.0,
                    20.0
                  ],
                  "text": "OFF",
                  "textcolor": [
                    0.34901960784313724,
                    0.8156862745098039,
                    0.2784313725490196,
                    1.0
                  ],
                  "varname": "bandstatus1"
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "bgcolor": [
                    0.7764705882352941,
                    0.5019607843137255,
                    0.1803921568627451,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Select target filter: 1–4.",
                  "id": "obj-72",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    310.0,
                    288.0,
                    124.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    347.0,
                    196.0,
                    79.0,
                    24.0
                  ],
                  "text": "FILTER 2",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "FILTER 2"
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "hint": "Select target filter: 1–4.",
                  "id": "obj-73",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    525.0,
                    185.0,
                    22.0
                  ],
                  "text": "filter 2"
                }
              },
              {
                "box": {
                  "annotation": "ON sends filtered audio; OFF mutes.",
                  "bgcolor": [
                    0.03137254901960784,
                    0.8705882352941177,
                    0.43529411764705883,
                    1.0
                  ],
                  "checkedcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "ON sends filtered audio; OFF mutes.",
                  "id": "obj-74",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    474.0,
                    289.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    282.4117647058824,
                    197.0,
                    22.0,
                    22.0
                  ],
                  "uncheckedcolor": [
                    0.031,
                    0.871,
                    0.435,
                    1.0
                  ],
                  "varname": "enabled1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-75",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    525.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 enable"
                }
              },
              {
                "box": {
                  "annotation": "ON / OFF.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "ON / OFF.",
                  "id": "obj-76",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    504.0,
                    290.0,
                    42.0,
                    20.0
                  ],
                  "text": "On",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Change filter type with gain, Q and motion reset.",
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1
                  ],
                  "bgfillcolor_angle": 270,
                  "bgfillcolor_autogradient": 0,
                  "bgfillcolor_color": [
                    0.776,
                    0.502,
                    0.18,
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
                  "bgfillcolor_proportion": 0.5,
                  "bgfillcolor_type": "color",
                  "fontsize": 18.0,
                  "hint": "Manual type change: briefly mute this filter, reset Gain to 0 dB and Q for the new type, stop Once/Loop and set both motion depths to 0. Output is lowered to -12 dB (quieter settings stay quieter). Frequency and drawn curves are retained. Preset recall does not perform this reset.",
                  "id": "obj-77",
                  "items": [
                    "Peak",
                    ",",
                    "Lowpass",
                    ",",
                    "Bandpass",
                    ",",
                    "Ultra-narrow Bandpass",
                    ",",
                    "Highpass",
                    ",",
                    "Resonant",
                    ",",
                    "Notch"
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
                    310.0,
                    318.0,
                    151.0,
                    29.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    281.5,
                    300.0,
                    231.0,
                    29.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "type1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-78",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    525.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 uitype"
                }
              },
              {
                "box": {
                  "annotation": "Sharpness: higher Q is narrower.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Sharpness: higher Q is narrower.",
                  "id": "obj-79",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    470.0,
                    320.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    402.0,
                    275.0,
                    25.0,
                    22.0
                  ],
                  "text": "Q",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Sharpness: higher Q is narrower.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Sharpness: higher Q is narrower.",
                  "id": "obj-80",
                  "maxclass": "flonum",
                  "maximum": 20.0,
                  "minimum": 0.5,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    491.0,
                    317.0,
                    59.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    428.0,
                    274.0,
                    62.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "q1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-81",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    525.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 q"
                }
              },
              {
                "box": {
                  "annotation": "Base frequency: 60–13000 Hz.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base frequency: 60–13000 Hz.",
                  "id": "obj-82",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    310.0,
                    348.0,
                    135.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    280.0,
                    249.0,
                    143.0,
                    22.0
                  ],
                  "text": "Frequency / Hz",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Center/cutoff frequency: 60–13000 Hz.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Center/cutoff frequency: 60–13000 Hz.",
                  "id": "obj-83",
                  "maxclass": "flonum",
                  "maximum": 13000.0,
                  "minimum": 60.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    310.0,
                    365.0,
                    135.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    428.0,
                    248.0,
                    71.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "freq1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-84",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    580.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 freq"
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base filter gain: -36 to +36 dB.",
                  "id": "obj-85",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    457.0,
                    348.0,
                    99.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    283.0,
                    223.0,
                    130.0,
                    22.0
                  ],
                  "text": "Filter gain / dB",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB. Peak boost/cut; other modes: filter gain. GAIN motion adds its scaled curve to this value.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Base filter gain: -36 to +36 dB. Peak boost/cut; other modes: filter gain. GAIN motion adds its scaled curve to this value.",
                  "id": "obj-86",
                  "maxclass": "flonum",
                  "maximum": 36.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    457.0,
                    365.0,
                    93.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    428.0,
                    222.0,
                    72.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "gain1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-87",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    580.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 gain"
                }
              },
              {
                "box": {
                  "annotation": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "id": "obj-88",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    310.0,
                    396.0,
                    115.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    353.0,
                    115.0,
                    18.0
                  ],
                  "text": "Motion depth / ±Hz",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "id": "obj-89",
                  "maxclass": "flonum",
                  "maximum": 12940.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    310.0,
                    413.0,
                    115.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    373.0,
                    115.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "depth1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    580.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 depth"
                }
              },
              {
                "box": {
                  "annotation": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "id": "obj-91",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    437.0,
                    396.0,
                    113.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    399.0,
                    353.0,
                    113.0,
                    18.0
                  ],
                  "text": "Gain depth / ±dB",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "id": "obj-92",
                  "maxclass": "flonum",
                  "maximum": 48.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    437.0,
                    413.0,
                    113.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    399.0,
                    373.0,
                    113.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "ampdepth1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-93",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    580.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 ampdepth"
                }
              },
              {
                "box": {
                  "annotation": "One complete curve trip, ms.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "One complete curve trip, ms.",
                  "id": "obj-94",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    310.0,
                    446.0,
                    115.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    400.0,
                    127.0,
                    20.0
                  ],
                  "text": "Full circle trip/ ms",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "One complete curve trip, ms.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "One complete curve trip, ms.",
                  "id": "obj-95",
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
                    437.0,
                    442.0,
                    113.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    399.0,
                    398.0,
                    113.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "period1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-96",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    635.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 period"
                }
              },
              {
                "box": {
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-97",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    310.0,
                    479.0,
                    96.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    424.0,
                    79.0,
                    22.0
                  ],
                  "text": "FREQ",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Flatten frequency curve; stop motion.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 2: Flatten frequency curve; stop motion.",
                  "id": "obj-98",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    410.0,
                    474.0,
                    54.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    372.0,
                    423.0,
                    54.0,
                    24.0
                  ],
                  "text": "Flat",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Flat",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Flatten frequency curve; stop motion.",
                  "hint": "Filter 2: Flatten frequency curve; stop motion.",
                  "id": "obj-99",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    635.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 2 resetcurve"
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Set frequency triangle shape.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 2: Set frequency triangle shape.",
                  "id": "obj-100",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    474.0,
                    474.0,
                    76.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    436.0,
                    423.0,
                    76.0,
                    24.0
                  ],
                  "text": "Triangle",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Triangle",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Set frequency triangle shape.",
                  "hint": "Filter 2: Set frequency triangle shape.",
                  "id": "obj-101",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    635.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 2 triangle"
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    1,
                    100.0,
                    0.0,
                    1
                  ],
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "bgcolor": [
                    0.055,
                    0.07,
                    0.09,
                    1.0
                  ],
                  "classic_curve": 1,
                  "domain": 100.0,
                  "grid": 3,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-102",
                  "linecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    310.0,
                    500.0,
                    240.0,
                    52.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    449.0,
                    240.0,
                    52.0
                  ],
                  "range": [
                    -1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "curve1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-103",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    635.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend curvepoints 2"
                }
              },
              {
                "box": {
                  "annotation": "Capture edited curve points.",
                  "hint": "Capture edited curve points.",
                  "id": "obj-104",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    690.0,
                    185.0,
                    22.0
                  ],
                  "text": "curvechanged 2"
                }
              },
              {
                "box": {
                  "annotation": "Gain offset shape, scaled by dB depth.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Gain offset shape, scaled by dB depth.",
                  "id": "obj-105",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    310.0,
                    565.0,
                    96.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    274.0,
                    504.0,
                    75.0,
                    22.0
                  ],
                  "text": "GAIN",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Flatten gain curve.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 2: Flatten gain curve.",
                  "id": "obj-106",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    410.0,
                    560.0,
                    54.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    372.0,
                    503.0,
                    54.0,
                    24.0
                  ],
                  "text": "Flat",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Flat",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Flatten gain curve.",
                  "hint": "Filter 2: Flatten gain curve.",
                  "id": "obj-107",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    690.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 2 resetamp"
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Set gain triangle shape.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 2: Set gain triangle shape.",
                  "id": "obj-108",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    474.0,
                    560.0,
                    76.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    436.0,
                    503.0,
                    76.0,
                    24.0
                  ],
                  "text": "Triangle",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Triangle",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Set gain triangle shape.",
                  "hint": "Filter 2: Set gain triangle shape.",
                  "id": "obj-109",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    690.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 2 amptriangle"
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    1,
                    100.0,
                    0.0,
                    1
                  ],
                  "annotation": "Gain offset shape, scaled by dB depth.",
                  "bgcolor": [
                    0.055,
                    0.07,
                    0.09,
                    1.0
                  ],
                  "classic_curve": 1,
                  "domain": 100.0,
                  "grid": 3,
                  "hint": "Gain offset shape, scaled by dB depth.",
                  "id": "obj-110",
                  "linecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    310.0,
                    586.0,
                    240.0,
                    52.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    529.0,
                    240.0,
                    52.0
                  ],
                  "range": [
                    -1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "acurve1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-111",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    690.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend ampcurvepoints 2"
                }
              },
              {
                "box": {
                  "annotation": "Capture edited curve points.",
                  "hint": "Capture edited curve points.",
                  "id": "obj-112",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    745.0,
                    185.0,
                    22.0
                  ],
                  "text": "ampcurvechanged 2"
                }
              },
              {
                "box": {
                  "annotation": "Repeat both motion curves.",
                  "bgcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "checkedcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "Repeat both motion curves.",
                  "id": "obj-113",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    310.0,
                    648.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    583.0,
                    22.0,
                    24.0
                  ],
                  "uncheckedcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "loop1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-114",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    745.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 2 loop"
                }
              },
              {
                "box": {
                  "annotation": "Repeat both motion curves.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Repeat both motion curves.",
                  "id": "obj-115",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    339.0,
                    650.0,
                    44.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    300.0,
                    585.0,
                    48.0,
                    20.0
                  ],
                  "text": "Loop",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Run both curves once.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 2: Run both curves once.",
                  "id": "obj-116",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    396.0,
                    646.0,
                    68.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    358.0,
                    583.0,
                    68.0,
                    24.0
                  ],
                  "text": "Once",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Once",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Run both curves once.",
                  "hint": "Filter 2: Run both curves once.",
                  "id": "obj-117",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    745.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 2 once"
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Stop this filter's motion.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 2: Stop this filter's motion.",
                  "id": "obj-118",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    479.0,
                    646.0,
                    71.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    441.0,
                    583.0,
                    71.0,
                    24.0
                  ],
                  "text": "Stop",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Stop",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 2: Stop this filter's motion.",
                  "hint": "Filter 2: Stop this filter's motion.",
                  "id": "obj-119",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    745.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 2 stop"
                }
              },
              {
                "box": {
                  "annotation": "Current frequency, Hz.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current frequency, Hz.",
                  "id": "obj-120",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590.0,
                    226.0,
                    20.0,
                    31.0
                  ],
                  "text": "#3",
                  "textcolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current frequency, Hz.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current frequency, Hz.",
                  "id": "obj-121",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 13000.0,
                  "minimum": 60.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    670.0,
                    222.0,
                    160.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "livefreq2"
                }
              },
              {
                "box": {
                  "annotation": "Current filter gain, dB.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current filter gain, dB.",
                  "id": "obj-122",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590.0,
                    254.0,
                    25.0,
                    19.0
                  ],
                  "text": "dB",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current filter gain, dB.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current filter gain, dB.",
                  "id": "obj-123",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 36.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    620.0,
                    250.0,
                    72.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "livegain2"
                }
              },
              {
                "box": {
                  "annotation": "Current Q.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current Q.",
                  "id": "obj-124",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    704.0,
                    254.0,
                    19.0,
                    19.0
                  ],
                  "text": "Q",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current Q.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current Q.",
                  "id": "obj-125",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 200.0,
                  "minimum": 0.5,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    725.0,
                    250.0,
                    65.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "liveq2"
                }
              },
              {
                "box": {
                  "annotation": "Filter output state.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Filter output state.",
                  "id": "obj-126",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    795.0,
                    254.0,
                    52.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    561.0,
                    198.0,
                    32.0,
                    20.0
                  ],
                  "text": "OFF",
                  "textcolor": [
                    0.34901960784313724,
                    0.8156862745098039,
                    0.2784313725490196,
                    1.0
                  ],
                  "varname": "bandstatus2"
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "bgcolor": [
                    0.7764705882352941,
                    0.5019607843137255,
                    0.1803921568627451,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Select target filter: 1–4.",
                  "id": "obj-128",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    590.0,
                    288.0,
                    124.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    600.0,
                    196.0,
                    79.0,
                    24.0
                  ],
                  "text": "FILTER 3",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "FILTER 3"
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "hint": "Select target filter: 1–4.",
                  "id": "obj-129",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    800.0,
                    185.0,
                    22.0
                  ],
                  "text": "filter 3"
                }
              },
              {
                "box": {
                  "annotation": "ON sends filtered audio; OFF mutes.",
                  "bgcolor": [
                    0.03137254901960784,
                    0.8705882352941177,
                    0.43529411764705883,
                    1.0
                  ],
                  "checkedcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "ON sends filtered audio; OFF mutes.",
                  "id": "obj-130",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    754.0,
                    289.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    535.4117647058823,
                    197.0,
                    22.0,
                    22.0
                  ],
                  "uncheckedcolor": [
                    0.031,
                    0.871,
                    0.435,
                    1.0
                  ],
                  "varname": "enabled2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-131",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    800.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 enable"
                }
              },
              {
                "box": {
                  "annotation": "ON / OFF.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "ON / OFF.",
                  "id": "obj-132",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    784.0,
                    290.0,
                    42.0,
                    20.0
                  ],
                  "text": "On",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Change filter type with gain, Q and motion reset.",
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1
                  ],
                  "bgfillcolor_angle": 270,
                  "bgfillcolor_autogradient": 0,
                  "bgfillcolor_color": [
                    0.776,
                    0.502,
                    0.18,
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
                  "bgfillcolor_proportion": 0.5,
                  "bgfillcolor_type": "color",
                  "fontsize": 18.0,
                  "hint": "Manual type change: briefly mute this filter, reset Gain to 0 dB and Q for the new type, stop Once/Loop and set both motion depths to 0. Output is lowered to -12 dB (quieter settings stay quieter). Frequency and drawn curves are retained. Preset recall does not perform this reset.",
                  "id": "obj-133",
                  "items": [
                    "Peak",
                    ",",
                    "Lowpass",
                    ",",
                    "Bandpass",
                    ",",
                    "Ultra-narrow Bandpass",
                    ",",
                    "Highpass",
                    ",",
                    "Resonant",
                    ",",
                    "Notch"
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
                    590.0,
                    318.0,
                    151.0,
                    29.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    534.5,
                    300.0,
                    231.0,
                    29.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "type2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-134",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    800.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 uitype"
                }
              },
              {
                "box": {
                  "annotation": "Sharpness: higher Q is narrower.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Sharpness: higher Q is narrower.",
                  "id": "obj-135",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    750.0,
                    320.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    655.0,
                    275.0,
                    25.0,
                    22.0
                  ],
                  "text": "Q",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Sharpness: higher Q is narrower.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Sharpness: higher Q is narrower.",
                  "id": "obj-136",
                  "maxclass": "flonum",
                  "maximum": 20.0,
                  "minimum": 0.5,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    771.0,
                    317.0,
                    59.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    681.0,
                    274.0,
                    62.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "q2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-137",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    800.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 q"
                }
              },
              {
                "box": {
                  "annotation": "Base frequency: 60–13000 Hz.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base frequency: 60–13000 Hz.",
                  "id": "obj-138",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590.0,
                    348.0,
                    135.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    533.0,
                    249.0,
                    143.0,
                    22.0
                  ],
                  "text": "Frequency / Hz",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Center/cutoff frequency: 60–13000 Hz.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Center/cutoff frequency: 60–13000 Hz.",
                  "id": "obj-139",
                  "maxclass": "flonum",
                  "maximum": 13000.0,
                  "minimum": 60.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    590.0,
                    365.0,
                    135.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    681.0,
                    248.0,
                    71.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "freq2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-140",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    855.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 freq"
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base filter gain: -36 to +36 dB.",
                  "id": "obj-141",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    737.0,
                    348.0,
                    99.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    536.0,
                    223.0,
                    130.0,
                    22.0
                  ],
                  "text": "Filter gain / dB",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB. Peak boost/cut; other modes: filter gain. GAIN motion adds its scaled curve to this value.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Base filter gain: -36 to +36 dB. Peak boost/cut; other modes: filter gain. GAIN motion adds its scaled curve to this value.",
                  "id": "obj-142",
                  "maxclass": "flonum",
                  "maximum": 36.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    737.0,
                    365.0,
                    93.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    681.0,
                    222.0,
                    72.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "gain2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-143",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    855.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 gain"
                }
              },
              {
                "box": {
                  "annotation": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "id": "obj-144",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590.0,
                    396.0,
                    115.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    353.0,
                    115.0,
                    18.0
                  ],
                  "text": "Motion depth / ±Hz",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "id": "obj-145",
                  "maxclass": "flonum",
                  "maximum": 12940.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    590.0,
                    413.0,
                    115.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    373.0,
                    115.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "depth2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-146",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    855.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 depth"
                }
              },
              {
                "box": {
                  "annotation": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "id": "obj-147",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    717.0,
                    396.0,
                    113.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    652.0,
                    353.0,
                    113.0,
                    18.0
                  ],
                  "text": "Gain depth / ±dB",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "id": "obj-148",
                  "maxclass": "flonum",
                  "maximum": 48.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    717.0,
                    413.0,
                    113.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    652.0,
                    373.0,
                    113.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "ampdepth2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-149",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    855.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 ampdepth"
                }
              },
              {
                "box": {
                  "annotation": "One complete curve trip, ms.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "One complete curve trip, ms.",
                  "id": "obj-150",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590.0,
                    446.0,
                    115.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    400.0,
                    127.0,
                    20.0
                  ],
                  "text": "Full circle trip/ ms",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "One complete curve trip, ms.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "One complete curve trip, ms.",
                  "id": "obj-151",
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
                    717.0,
                    442.0,
                    113.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    652.0,
                    398.0,
                    113.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "period2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-152",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    910.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 period"
                }
              },
              {
                "box": {
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-153",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590.0,
                    479.0,
                    96.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    424.0,
                    79.0,
                    22.0
                  ],
                  "text": "FREQ",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Flatten frequency curve; stop motion.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 3: Flatten frequency curve; stop motion.",
                  "id": "obj-154",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    690.0,
                    474.0,
                    54.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    625.0,
                    423.0,
                    54.0,
                    24.0
                  ],
                  "text": "Flat",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Flat",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Flatten frequency curve; stop motion.",
                  "hint": "Filter 3: Flatten frequency curve; stop motion.",
                  "id": "obj-155",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    910.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 3 resetcurve"
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Set frequency triangle shape.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 3: Set frequency triangle shape.",
                  "id": "obj-156",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    754.0,
                    474.0,
                    76.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    689.0,
                    423.0,
                    76.0,
                    24.0
                  ],
                  "text": "Triangle",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Triangle",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Set frequency triangle shape.",
                  "hint": "Filter 3: Set frequency triangle shape.",
                  "id": "obj-157",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    910.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 3 triangle"
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    1,
                    100.0,
                    0.0,
                    1
                  ],
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "bgcolor": [
                    0.055,
                    0.07,
                    0.09,
                    1.0
                  ],
                  "classic_curve": 1,
                  "domain": 100.0,
                  "grid": 3,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-158",
                  "linecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    590.0,
                    500.0,
                    240.0,
                    52.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    449.0,
                    240.0,
                    52.0
                  ],
                  "range": [
                    -1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "curve2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-159",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    910.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend curvepoints 3"
                }
              },
              {
                "box": {
                  "annotation": "Capture edited curve points.",
                  "hint": "Capture edited curve points.",
                  "id": "obj-160",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    965.0,
                    185.0,
                    22.0
                  ],
                  "text": "curvechanged 3"
                }
              },
              {
                "box": {
                  "annotation": "Gain offset shape, scaled by dB depth.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Gain offset shape, scaled by dB depth.",
                  "id": "obj-161",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590.0,
                    565.0,
                    96.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    527.0,
                    504.0,
                    75.0,
                    22.0
                  ],
                  "text": "GAIN",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Flatten gain curve.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 3: Flatten gain curve.",
                  "id": "obj-162",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    690.0,
                    560.0,
                    54.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    625.0,
                    503.0,
                    54.0,
                    24.0
                  ],
                  "text": "Flat",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Flat",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Flatten gain curve.",
                  "hint": "Filter 3: Flatten gain curve.",
                  "id": "obj-163",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    965.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 3 resetamp"
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Set gain triangle shape.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 3: Set gain triangle shape.",
                  "id": "obj-164",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    754.0,
                    560.0,
                    76.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    689.0,
                    503.0,
                    76.0,
                    24.0
                  ],
                  "text": "Triangle",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Triangle",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Set gain triangle shape.",
                  "hint": "Filter 3: Set gain triangle shape.",
                  "id": "obj-165",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    965.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 3 amptriangle"
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    1,
                    100.0,
                    0.0,
                    1
                  ],
                  "annotation": "Gain offset shape, scaled by dB depth.",
                  "bgcolor": [
                    0.055,
                    0.07,
                    0.09,
                    1.0
                  ],
                  "classic_curve": 1,
                  "domain": 100.0,
                  "grid": 3,
                  "hint": "Gain offset shape, scaled by dB depth.",
                  "id": "obj-166",
                  "linecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    590.0,
                    586.0,
                    240.0,
                    52.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    529.0,
                    240.0,
                    52.0
                  ],
                  "range": [
                    -1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "acurve2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-167",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    965.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend ampcurvepoints 3"
                }
              },
              {
                "box": {
                  "annotation": "Capture edited curve points.",
                  "hint": "Capture edited curve points.",
                  "id": "obj-168",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1020.0,
                    185.0,
                    22.0
                  ],
                  "text": "ampcurvechanged 3"
                }
              },
              {
                "box": {
                  "annotation": "Repeat both motion curves.",
                  "bgcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "checkedcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "Repeat both motion curves.",
                  "id": "obj-169",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    590.0,
                    648.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    583.0,
                    22.0,
                    24.0
                  ],
                  "uncheckedcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "loop2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-170",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1020.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 3 loop"
                }
              },
              {
                "box": {
                  "annotation": "Repeat both motion curves.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Repeat both motion curves.",
                  "id": "obj-171",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    619.0,
                    650.0,
                    44.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    553.0,
                    585.0,
                    48.0,
                    20.0
                  ],
                  "text": "Loop",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Run both curves once.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 3: Run both curves once.",
                  "id": "obj-172",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    676.0,
                    646.0,
                    68.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    611.0,
                    583.0,
                    68.0,
                    24.0
                  ],
                  "text": "Once",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Once",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Run both curves once.",
                  "hint": "Filter 3: Run both curves once.",
                  "id": "obj-173",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1020.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 3 once"
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Stop this filter's motion.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 3: Stop this filter's motion.",
                  "id": "obj-174",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    759.0,
                    646.0,
                    71.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    694.0,
                    583.0,
                    71.0,
                    24.0
                  ],
                  "text": "Stop",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Stop",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 3: Stop this filter's motion.",
                  "hint": "Filter 3: Stop this filter's motion.",
                  "id": "obj-175",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1020.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 3 stop"
                }
              },
              {
                "box": {
                  "annotation": "Current frequency, Hz.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current frequency, Hz.",
                  "id": "obj-176",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    870.0,
                    226.0,
                    19.0,
                    31.0
                  ],
                  "text": "#4",
                  "textcolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current frequency, Hz.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current frequency, Hz.",
                  "id": "obj-177",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 13000.0,
                  "minimum": 60.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    950.0,
                    222.0,
                    160.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "livefreq3"
                }
              },
              {
                "box": {
                  "annotation": "Current filter gain, dB.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current filter gain, dB.",
                  "id": "obj-178",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    870.0,
                    254.0,
                    25.0,
                    19.0
                  ],
                  "text": "dB",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current filter gain, dB.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current filter gain, dB.",
                  "id": "obj-179",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 36.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    900.0,
                    250.0,
                    72.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "livegain3"
                }
              },
              {
                "box": {
                  "annotation": "Current Q.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Current Q.",
                  "id": "obj-180",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    984.0,
                    254.0,
                    19.0,
                    19.0
                  ],
                  "text": "Q",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Current Q.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Current Q.",
                  "id": "obj-181",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 200.0,
                  "minimum": 0.5,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1005.0,
                    250.0,
                    65.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "liveq3"
                }
              },
              {
                "box": {
                  "annotation": "Filter output state.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Filter output state.",
                  "id": "obj-182",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1075.0,
                    254.0,
                    52.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    814.0,
                    198.0,
                    32.0,
                    20.0
                  ],
                  "text": "OFF",
                  "textcolor": [
                    0.34901960784313724,
                    0.8156862745098039,
                    0.2784313725490196,
                    1.0
                  ],
                  "varname": "bandstatus3"
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "bgcolor": [
                    0.7764705882352941,
                    0.5019607843137255,
                    0.1803921568627451,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Select target filter: 1–4.",
                  "id": "obj-184",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    870.0,
                    288.0,
                    124.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    853.0,
                    196.0,
                    79.0,
                    24.0
                  ],
                  "text": "FILTER 4",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "FILTER 4"
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "hint": "Select target filter: 1–4.",
                  "id": "obj-185",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1075.0,
                    185.0,
                    22.0
                  ],
                  "text": "filter 4"
                }
              },
              {
                "box": {
                  "annotation": "ON sends filtered audio; OFF mutes.",
                  "bgcolor": [
                    0.03137254901960784,
                    0.8705882352941177,
                    0.43529411764705883,
                    1.0
                  ],
                  "checkedcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "ON sends filtered audio; OFF mutes.",
                  "id": "obj-186",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1034.0,
                    289.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    788.4117647058823,
                    197.0,
                    22.0,
                    22.0
                  ],
                  "uncheckedcolor": [
                    0.031,
                    0.871,
                    0.435,
                    1.0
                  ],
                  "varname": "enabled3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-187",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1075.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 enable"
                }
              },
              {
                "box": {
                  "annotation": "ON / OFF.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "ON / OFF.",
                  "id": "obj-188",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1064.0,
                    290.0,
                    42.0,
                    20.0
                  ],
                  "text": "On",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Change filter type with gain, Q and motion reset.",
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1
                  ],
                  "bgfillcolor_angle": 270,
                  "bgfillcolor_autogradient": 0,
                  "bgfillcolor_color": [
                    0.776,
                    0.502,
                    0.18,
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
                  "bgfillcolor_proportion": 0.5,
                  "bgfillcolor_type": "color",
                  "fontsize": 18.0,
                  "hint": "Manual type change: briefly mute this filter, reset Gain to 0 dB and Q for the new type, stop Once/Loop and set both motion depths to 0. Output is lowered to -12 dB (quieter settings stay quieter). Frequency and drawn curves are retained. Preset recall does not perform this reset.",
                  "id": "obj-189",
                  "items": [
                    "Peak",
                    ",",
                    "Lowpass",
                    ",",
                    "Bandpass",
                    ",",
                    "Ultra-narrow Bandpass",
                    ",",
                    "Highpass",
                    ",",
                    "Resonant",
                    ",",
                    "Notch"
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
                    870.0,
                    318.0,
                    151.0,
                    29.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    787.5,
                    300.0,
                    231.0,
                    29.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "type3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-190",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1075.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 uitype"
                }
              },
              {
                "box": {
                  "annotation": "Sharpness: higher Q is narrower.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Sharpness: higher Q is narrower.",
                  "id": "obj-191",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1030.0,
                    320.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    908.0,
                    275.0,
                    25.0,
                    22.0
                  ],
                  "text": "Q",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Sharpness: higher Q is narrower.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Sharpness: higher Q is narrower.",
                  "id": "obj-192",
                  "maxclass": "flonum",
                  "maximum": 20.0,
                  "minimum": 0.5,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1051.0,
                    317.0,
                    59.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    934.0,
                    274.0,
                    62.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "q3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-193",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1075.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 q"
                }
              },
              {
                "box": {
                  "annotation": "Base frequency: 60–13000 Hz.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base frequency: 60–13000 Hz.",
                  "id": "obj-194",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    870.0,
                    348.0,
                    135.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    786.0,
                    249.0,
                    143.0,
                    22.0
                  ],
                  "text": "Frequency / Hz",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Center/cutoff frequency: 60–13000 Hz.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Center/cutoff frequency: 60–13000 Hz.",
                  "id": "obj-195",
                  "maxclass": "flonum",
                  "maximum": 13000.0,
                  "minimum": 60.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    870.0,
                    365.0,
                    135.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    934.0,
                    248.0,
                    71.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "freq3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-196",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1130.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 freq"
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base filter gain: -36 to +36 dB.",
                  "id": "obj-197",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1017.0,
                    348.0,
                    99.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    789.0,
                    223.0,
                    130.0,
                    22.0
                  ],
                  "text": "Filter gain / dB",
                  "textcolor": [
                    0.9254901960784314,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB. Peak boost/cut; other modes: filter gain. GAIN motion adds its scaled curve to this value.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 14.0,
                  "format": 6,
                  "hint": "Base filter gain: -36 to +36 dB. Peak boost/cut; other modes: filter gain. GAIN motion adds its scaled curve to this value.",
                  "id": "obj-198",
                  "maxclass": "flonum",
                  "maximum": 36.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1017.0,
                    365.0,
                    93.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    934.0,
                    222.0,
                    72.0,
                    24.0
                  ],
                  "textcolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "gain3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-199",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1130.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 gain"
                }
              },
              {
                "box": {
                  "annotation": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "id": "obj-200",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    870.0,
                    396.0,
                    115.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    353.0,
                    115.0,
                    18.0
                  ],
                  "text": "Motion depth / ±Hz",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Frequency = base frequency + (FREQ curve x depth). The curve runs from -1 to +1: at 1000 Hz with depth 200, -1 gives 800 Hz, 0 gives 1000 Hz, and +1 gives 1200 Hz. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. Frequency is limited to 60-13000 Hz (or the lower sample-rate limit).",
                  "id": "obj-201",
                  "maxclass": "flonum",
                  "maximum": 12940.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    870.0,
                    413.0,
                    115.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    373.0,
                    115.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "depth3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-202",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1130.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 depth"
                }
              },
              {
                "box": {
                  "annotation": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "id": "obj-203",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    997.0,
                    396.0,
                    113.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    905.0,
                    353.0,
                    113.0,
                    18.0
                  ],
                  "text": "Gain depth / ±dB",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Filter gain = base Filter gain + (GAIN curve x depth). The curve runs from -1 to +1: at -6 dB with depth 12, -1 gives -18 dB, 0 gives -6 dB, and +1 gives +6 dB. Press Once or enable Loop; Full Trip sets the duration of one complete curve. Depth 0 or a flat zero curve gives no motion. The result is limited to -36 to +36 dB. Peak varies boost/cut; other modes vary filter gain. This does not move the OUTPUT fader.",
                  "id": "obj-204",
                  "maxclass": "flonum",
                  "maximum": 48.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    997.0,
                    413.0,
                    113.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    905.0,
                    373.0,
                    113.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "ampdepth3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-205",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1130.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 ampdepth"
                }
              },
              {
                "box": {
                  "annotation": "One complete curve trip, ms.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "One complete curve trip, ms.",
                  "id": "obj-206",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    870.0,
                    446.0,
                    115.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    400.0,
                    127.0,
                    20.0
                  ],
                  "text": "Full circle trip/ ms",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "One complete curve trip, ms.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "One complete curve trip, ms.",
                  "id": "obj-207",
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
                    997.0,
                    442.0,
                    113.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    905.0,
                    398.0,
                    113.0,
                    23.0
                  ],
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "period3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-208",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1185.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 period"
                }
              },
              {
                "box": {
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-209",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    870.0,
                    479.0,
                    96.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    424.0,
                    79.0,
                    22.0
                  ],
                  "text": "FREQ",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Flatten frequency curve; stop motion.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 4: Flatten frequency curve; stop motion.",
                  "id": "obj-210",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    970.0,
                    474.0,
                    54.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    878.0,
                    423.0,
                    54.0,
                    24.0
                  ],
                  "text": "Flat",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Flat",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Flatten frequency curve; stop motion.",
                  "hint": "Filter 4: Flatten frequency curve; stop motion.",
                  "id": "obj-211",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1185.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 4 resetcurve"
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Set frequency triangle shape.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 4: Set frequency triangle shape.",
                  "id": "obj-212",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1034.0,
                    474.0,
                    76.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    942.0,
                    423.0,
                    76.0,
                    24.0
                  ],
                  "text": "Triangle",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Triangle",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Set frequency triangle shape.",
                  "hint": "Filter 4: Set frequency triangle shape.",
                  "id": "obj-213",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1185.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 4 triangle"
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    1,
                    100.0,
                    0.0,
                    1
                  ],
                  "annotation": "Frequency offset shape, scaled by Hz depth.",
                  "bgcolor": [
                    0.055,
                    0.07,
                    0.09,
                    1.0
                  ],
                  "classic_curve": 1,
                  "domain": 100.0,
                  "grid": 3,
                  "hint": "Frequency offset shape, scaled by Hz depth.",
                  "id": "obj-214",
                  "linecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    870.0,
                    500.0,
                    240.0,
                    52.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    449.0,
                    240.0,
                    52.0
                  ],
                  "range": [
                    -1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "curve3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-215",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1185.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend curvepoints 4"
                }
              },
              {
                "box": {
                  "annotation": "Capture edited curve points.",
                  "hint": "Capture edited curve points.",
                  "id": "obj-216",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1240.0,
                    185.0,
                    22.0
                  ],
                  "text": "curvechanged 4"
                }
              },
              {
                "box": {
                  "annotation": "Gain offset shape, scaled by dB depth.",
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Gain offset shape, scaled by dB depth.",
                  "id": "obj-217",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    870.0,
                    565.0,
                    96.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    780.0,
                    504.0,
                    75.0,
                    22.0
                  ],
                  "text": "GAIN",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Flatten gain curve.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 4: Flatten gain curve.",
                  "id": "obj-218",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    970.0,
                    560.0,
                    54.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    878.0,
                    503.0,
                    54.0,
                    24.0
                  ],
                  "text": "Flat",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Flat",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Flatten gain curve.",
                  "hint": "Filter 4: Flatten gain curve.",
                  "id": "obj-219",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1240.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 4 resetamp"
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Set gain triangle shape.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 4: Set gain triangle shape.",
                  "id": "obj-220",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1034.0,
                    560.0,
                    76.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    942.0,
                    503.0,
                    76.0,
                    24.0
                  ],
                  "text": "Triangle",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Triangle",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Set gain triangle shape.",
                  "hint": "Filter 4: Set gain triangle shape.",
                  "id": "obj-221",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1240.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 4 amptriangle"
                }
              },
              {
                "box": {
                  "addpoints": [
                    0.0,
                    0.0,
                    1,
                    100.0,
                    0.0,
                    1
                  ],
                  "annotation": "Gain offset shape, scaled by dB depth.",
                  "bgcolor": [
                    0.055,
                    0.07,
                    0.09,
                    1.0
                  ],
                  "classic_curve": 1,
                  "domain": 100.0,
                  "grid": 3,
                  "hint": "Gain offset shape, scaled by dB depth.",
                  "id": "obj-222",
                  "linecolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "maxclass": "function",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "float",
                    "",
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    870.0,
                    586.0,
                    240.0,
                    52.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    529.0,
                    240.0,
                    52.0
                  ],
                  "range": [
                    -1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "acurve3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-223",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1240.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend ampcurvepoints 4"
                }
              },
              {
                "box": {
                  "annotation": "Capture edited curve points.",
                  "hint": "Capture edited curve points.",
                  "id": "obj-224",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1295.0,
                    185.0,
                    22.0
                  ],
                  "text": "ampcurvechanged 4"
                }
              },
              {
                "box": {
                  "annotation": "Repeat both motion curves.",
                  "bgcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "checkedcolor": [
                    0.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "hint": "Repeat both motion curves.",
                  "id": "obj-225",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    870.0,
                    648.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    583.0,
                    22.0,
                    24.0
                  ],
                  "uncheckedcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ],
                  "varname": "loop3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-226",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1295.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend band 4 loop"
                }
              },
              {
                "box": {
                  "annotation": "Repeat both motion curves.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Repeat both motion curves.",
                  "id": "obj-227",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    899.0,
                    650.0,
                    44.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    806.0,
                    585.0,
                    48.0,
                    20.0
                  ],
                  "text": "Loop",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Run both curves once.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 4: Run both curves once.",
                  "id": "obj-228",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    956.0,
                    646.0,
                    68.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    864.0,
                    583.0,
                    68.0,
                    24.0
                  ],
                  "text": "Once",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Once",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Run both curves once.",
                  "hint": "Filter 4: Run both curves once.",
                  "id": "obj-229",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1295.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 4 once"
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Stop this filter's motion.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Filter 4: Stop this filter's motion.",
                  "id": "obj-230",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1039.0,
                    646.0,
                    71.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    947.0,
                    583.0,
                    71.0,
                    24.0
                  ],
                  "text": "Stop",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Stop",
                  "textoncolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter 4: Stop this filter's motion.",
                  "hint": "Filter 4: Stop this filter's motion.",
                  "id": "obj-231",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1295.0,
                    185.0,
                    22.0
                  ],
                  "text": "band 4 stop"
                }
              },
              {
                "box": {
                  "annotation": "Section guide.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Section guide.",
                  "id": "obj-232",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    684.0,
                    1120.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    670.0,
                    700.0,
                    19.0
                  ],
                  "text": "Four parallel outputs → Global Gain Out → peak protection",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Glide / ms",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Transition time for parameter changes and preset recalls, including the individual output faders. 1000 = 1 second to reach the new value ms",
                  "id": "obj-236",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    100.0,
                    710.0,
                    93.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    691.0,
                    85.0,
                    19.0
                  ],
                  "text": "Glide / ms",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Parameter and preset glide, ms.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Parameter and preset glide, ms.",
                  "id": "obj-237",
                  "maxclass": "flonum",
                  "maximum": 120000.0,
                  "minimum": 20.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    100.0,
                    729.0,
                    85.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    712.0,
                    85.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "interp"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-238",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1350.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend interp"
                }
              },
              {
                "box": {
                  "annotation": "On/off / ms",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Fade time when enabling a filter or switching it OFF. 700 = 0.7 seconds. Filter-type changes also use this fade to reduce clicks.",
                  "id": "obj-239",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    200.0,
                    710.0,
                    93.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    129.0,
                    691.0,
                    85.0,
                    19.0
                  ],
                  "text": "On/off / ms",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Filter on/off fade, ms.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Filter on/off fade, ms.",
                  "id": "obj-240",
                  "maxclass": "flonum",
                  "maximum": 10000.0,
                  "minimum": 20.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    200.0,
                    729.0,
                    85.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    129.0,
                    712.0,
                    85.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "fade"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-241",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1350.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend fade"
                }
              },
              {
                "box": {
                  "annotation": "Target 1–4",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Selects which filter receives short external commands such as freq 1000, gain 12, or loop 1. It does not enable, mute, or solo a filter.",
                  "id": "obj-242",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300.0,
                    710.0,
                    70.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    239.0,
                    691.0,
                    85.0,
                    19.0
                  ],
                  "text": "Target 1–4",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Target filter for short commands.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "hint": "Target filter for short commands.",
                  "id": "obj-243",
                  "maxclass": "number",
                  "maximum": 4,
                  "minimum": 1,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    300.0,
                    729.0,
                    62.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    239.0,
                    712.0,
                    62.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "selected"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-244",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1350.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend selected"
                }
              },
              {
                "box": {
                  "annotation": "Output ceiling: -6 or -1 dBFS.",
                  "checkedcolor": [
                    0.32,
                    0.77,
                    0.75,
                    1.0
                  ],
                  "hint": "Output ceiling: -6 or -1 dBFS.",
                  "id": "obj-245",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    385.0,
                    729.0,
                    23.0,
                    23.0
                  ],
                  "varname": "normalize"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-246",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1405.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend normalize"
                }
              },
              {
                "box": {
                  "annotation": "Auto headroom",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Auto headroom",
                  "id": "obj-247",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    416.0,
                    731.0,
                    118.0,
                    47.0
                  ],
                  "text": "limit peaks to -6 dBFS\nheadroom",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Reduction / dB",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Reduction / dB",
                  "id": "obj-248",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    545.0,
                    710.0,
                    95.0,
                    18.0
                  ],
                  "text": "Reduction / dB",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Output attenuation, dB.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "cantchange": 1,
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Output attenuation, dB.",
                  "id": "obj-249",
                  "ignoreclick": 1,
                  "maxclass": "flonum",
                  "maximum": 200.0,
                  "minimum": 0.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    545.0,
                    729.0,
                    85.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "reduction"
                }
              },
              {
                "box": {
                  "annotation": "IN",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "IN",
                  "id": "obj-250",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    650.0,
                    710.0,
                    45.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    526.0,
                    691.0,
                    45.0,
                    19.0
                  ],
                  "text": "IN",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Signal level.",
                  "hint": "Signal level.",
                  "id": "obj-251",
                  "maxclass": "meter~",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    650.0,
                    735.0,
                    58.0,
                    14.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    524.3697478991598,
                    712.0,
                    58.0,
                    14.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "EQ",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "EQ",
                  "id": "obj-252",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    710.0,
                    710.0,
                    45.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    591.5966386554622,
                    691.0,
                    45.0,
                    19.0
                  ],
                  "text": "SUM",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Signal level.",
                  "hint": "Signal level.",
                  "id": "obj-253",
                  "maxclass": "meter~",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    710.0,
                    735.0,
                    58.0,
                    14.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    586.5546218487395,
                    712.0,
                    58.0,
                    14.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "OUT",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "OUT",
                  "id": "obj-254",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    770.0,
                    710.0,
                    60.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    673.109243697479,
                    691.0,
                    60.0,
                    19.0
                  ],
                  "text": "OUT",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Signal level.",
                  "hint": "Signal level.",
                  "id": "obj-255",
                  "maxclass": "meter~",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    770.0,
                    735.0,
                    60.0,
                    14.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    668.0672268907564,
                    712.0,
                    60.0,
                    14.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "1. Peak: ±18 dB at 1200 Hz; 12 s loop.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "1. Peak: ±18 dB at 1200 Hz; 12 s loop.",
                  "id": "obj-256",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    20.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "1",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "1",
                  "varname": "preset1"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 1.",
                  "hint": "Recall preset 1.",
                  "id": "obj-257",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1405.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 1"
                }
              },
              {
                "box": {
                  "annotation": "2. Lowpass: 200–8000 Hz; 16 s loop.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "2. Lowpass: 200–8000 Hz; 16 s loop.",
                  "id": "obj-258",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    58.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    55.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "2",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "2",
                  "varname": "preset2"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 2.",
                  "hint": "Recall preset 2.",
                  "id": "obj-259",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1405.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 2"
                }
              },
              {
                "box": {
                  "annotation": "3. Bandpass: 300–5000 Hz, Q 6; 12 s loop.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "3. Bandpass: 300–5000 Hz, Q 6; 12 s loop.",
                  "id": "obj-260",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    96.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    91.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "3",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "3",
                  "varname": "preset3"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 3.",
                  "hint": "Recall preset 3.",
                  "id": "obj-261",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1405.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 3"
                }
              },
              {
                "box": {
                  "annotation": "4. Ultra: 700–1700 Hz, Q 100; 12 s loop.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "4. Ultra: 700–1700 Hz, Q 100; 12 s loop.",
                  "id": "obj-262",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    134.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    127.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "4",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "4",
                  "varname": "preset4"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 4.",
                  "hint": "Recall preset 4.",
                  "id": "obj-263",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1460.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 4"
                }
              },
              {
                "box": {
                  "annotation": "5. Highpass: 120–10000 Hz; 16 s loop.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "5. Highpass: 120–10000 Hz; 16 s loop.",
                  "id": "obj-264",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    172.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    163.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "5",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "5",
                  "varname": "preset5"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 5.",
                  "hint": "Recall preset 5.",
                  "id": "obj-265",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1460.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 5"
                }
              },
              {
                "box": {
                  "annotation": "6. Resonant: 300–2100 Hz, Q 16; 10 s loop.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "6. Resonant: 300–2100 Hz, Q 16; 10 s loop.",
                  "id": "obj-266",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    210.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    199.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "6",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "6",
                  "varname": "preset6"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 6.",
                  "hint": "Recall preset 6.",
                  "id": "obj-267",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1460.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 6"
                }
              },
              {
                "box": {
                  "annotation": "7. Notch: 400–3600 Hz, Q 0.75; 14 s loop.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "7. Notch: 400–3600 Hz, Q 0.75; 14 s loop.",
                  "id": "obj-268",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    248.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    235.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "7",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "7",
                  "varname": "preset7"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 7.",
                  "hint": "Recall preset 7.",
                  "id": "obj-269",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1460.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 7"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 8.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Recall preset 8.",
                  "id": "obj-270",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    286.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    271.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "8",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "8",
                  "varname": "preset8"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 8.",
                  "hint": "Recall preset 8.",
                  "id": "obj-271",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1515.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 8"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 9.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Recall preset 9.",
                  "id": "obj-272",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    324.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    307.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "9",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "9",
                  "varname": "preset9"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 9.",
                  "hint": "Recall preset 9.",
                  "id": "obj-273",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1515.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 9"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 10.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Recall preset 10.",
                  "id": "obj-274",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    362.0,
                    780.0,
                    32.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    343.0,
                    758.0,
                    32.0,
                    24.0
                  ],
                  "text": "10",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "10",
                  "varname": "preset10"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 10.",
                  "hint": "Recall preset 10.",
                  "id": "obj-275",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1515.0,
                    185.0,
                    22.0
                  ],
                  "text": "recall 10"
                }
              },
              {
                "box": {
                  "annotation": "Store slot",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Store slot",
                  "id": "obj-276",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    420.0,
                    760.0,
                    90.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    395.0,
                    737.0,
                    95.0,
                    18.0
                  ],
                  "text": "Store Preset",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Store destination: 1–10.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "hint": "Store destination: 1–10.",
                  "id": "obj-277",
                  "maxclass": "number",
                  "maximum": 10,
                  "minimum": 0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    420.0,
                    780.0,
                    59.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    395.0,
                    758.0,
                    50.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "slot"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-278",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1515.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend slot"
                }
              },
              {
                "box": {
                  "annotation": "Save current settings to a preset.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Save current settings to a preset.",
                  "id": "obj-279",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    494.0,
                    780.0,
                    80.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    453.0,
                    758.0,
                    64.0,
                    24.0
                  ],
                  "text": "Store",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Store"
                }
              },
              {
                "box": {
                  "annotation": "Save current settings to a preset.",
                  "hint": "Save current settings to a preset.",
                  "id": "obj-280",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1570.0,
                    185.0,
                    22.0
                  ],
                  "text": "store"
                }
              },
              {
                "box": {
                  "annotation": "Export preset bank.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Export preset bank.",
                  "id": "obj-281",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    602.0,
                    780.0,
                    125.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    532.0,
                    758.0,
                    116.0,
                    24.0
                  ],
                  "text": "Write bank…",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Write bank…"
                }
              },
              {
                "box": {
                  "annotation": "Export preset bank.",
                  "hint": "Export preset bank.",
                  "id": "obj-282",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1570.0,
                    185.0,
                    22.0
                  ],
                  "text": "writebank"
                }
              },
              {
                "box": {
                  "annotation": "Import preset bank.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Import preset bank.",
                  "id": "obj-283",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    750.0,
                    780.0,
                    125.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    657.0,
                    758.0,
                    116.0,
                    24.0
                  ],
                  "text": "Read bank…",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Read bank…"
                }
              },
              {
                "box": {
                  "annotation": "Import preset bank.",
                  "hint": "Import preset bank.",
                  "id": "obj-284",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1570.0,
                    185.0,
                    22.0
                  ],
                  "text": "readbank"
                }
              },
              {
                "box": {
                  "annotation": "Stop all four motion loops.",
                  "bgcolor": [
                    0.22,
                    0.27,
                    0.32,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Stop all four motion loops.",
                  "id": "obj-285",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    904.0,
                    780.0,
                    226.0,
                    24.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    788.0,
                    758.0,
                    230.0,
                    24.0
                  ],
                  "text": "Stop all motion",
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "texton": "Stop all motion"
                }
              },
              {
                "box": {
                  "annotation": "Stop all four motion loops.",
                  "hint": "Stop all four motion loops.",
                  "id": "obj-286",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1570.0,
                    185.0,
                    22.0
                  ],
                  "text": "stopall"
                }
              },
              {
                "box": {
                  "annotation": "This instance's preset bank.",
                  "coll_data": {
                    "count": 11,
                    "data": [
                      {
                        "key": 1,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          1,
                          1,
                          700,
                          -12,
                          1,
                          0,
                          1200,
                          0,
                          2,
                          0,
                          18,
                          12000,
                          1,
                          -5.952755905511806,
                          2,
                          0,
                          0,
                          1,
                          0,
                          6,
                          0,
                          0,
                          0.2,
                          1,
                          0.35,
                          1,
                          0.65,
                          -1,
                          0.8,
                          -1,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 2,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          2,
                          1,
                          700,
                          -12,
                          1,
                          1,
                          4100,
                          0,
                          0.70710678,
                          3900,
                          0,
                          16000,
                          1,
                          0,
                          6,
                          0,
                          0,
                          0.2,
                          -1,
                          0.3,
                          -1,
                          0.7,
                          1,
                          0.8,
                          1,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 3,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          3,
                          1,
                          700,
                          -12,
                          1,
                          2,
                          2650,
                          12,
                          6,
                          2350,
                          0,
                          12000,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 4,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          4,
                          1,
                          700,
                          -12,
                          1,
                          3,
                          1200,
                          24,
                          100,
                          500,
                          0,
                          12000,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 5,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          5,
                          1,
                          700,
                          -12,
                          1,
                          4,
                          5060,
                          0,
                          0.70710678,
                          4940,
                          0,
                          16000,
                          1,
                          0,
                          6,
                          0,
                          0,
                          0.2,
                          -1,
                          0.3,
                          -1,
                          0.7,
                          1,
                          0.8,
                          1,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 6,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          6,
                          1,
                          700,
                          -12,
                          1,
                          5,
                          1200,
                          0,
                          16,
                          900,
                          0,
                          10000,
                          1,
                          -6,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 7,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          7,
                          1,
                          700,
                          -12,
                          1,
                          6,
                          2000,
                          0,
                          0.75,
                          1600,
                          0,
                          14000,
                          1,
                          0,
                          6,
                          0,
                          0,
                          0.2,
                          -1,
                          0.3,
                          -1,
                          0.7,
                          1,
                          0.8,
                          1,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 8,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          8,
                          1,
                          700,
                          -12,
                          1,
                          0,
                          240,
                          6,
                          20,
                          60,
                          48,
                          11000,
                          1,
                          -10.287034120734925,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          1,
                          1,
                          0,
                          1,
                          0,
                          700,
                          6,
                          20,
                          200,
                          48,
                          7000,
                          1,
                          -10.073700787401593,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          1,
                          1,
                          0,
                          1,
                          0,
                          2400,
                          6,
                          20,
                          600,
                          48,
                          5000,
                          1,
                          -8.939842519685051,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          1,
                          1,
                          0,
                          1,
                          2,
                          7000,
                          6,
                          20,
                          1200,
                          48,
                          3000,
                          1,
                          -9.046509186351727,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          1,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 9,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          9,
                          1,
                          700,
                          -12,
                          1,
                          0,
                          180,
                          24,
                          20,
                          60,
                          8,
                          11000,
                          1,
                          -12.0109186351706,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          1,
                          0,
                          700,
                          24,
                          20,
                          200,
                          8,
                          13000,
                          1,
                          -11.977322834645665,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          1,
                          0,
                          2400,
                          24,
                          20,
                          600,
                          8,
                          17000,
                          1,
                          -12.047454068241468,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          1,
                          0,
                          7000,
                          24,
                          20,
                          1200,
                          8,
                          21000,
                          1,
                          -12.041574803149603,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 10,
                        "value": [
                          20261030,
                          10,
                          2000,
                          1,
                          1,
                          10,
                          1,
                          1000,
                          -12,
                          1,
                          3,
                          220,
                          24,
                          100,
                          30,
                          4,
                          7000,
                          1,
                          -3.0980391997148637,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          -0.5,
                          1,
                          0,
                          1,
                          3,
                          700,
                          24,
                          100,
                          110,
                          6,
                          9000,
                          1,
                          -3.0980391997148637,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          -0.5,
                          1,
                          0,
                          1,
                          3,
                          2200,
                          24,
                          100,
                          330,
                          5,
                          11000,
                          1,
                          -3.0980391997148637,
                          4,
                          0,
                          0,
                          0.25,
                          1,
                          0.75,
                          -1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          -0.5,
                          1,
                          0,
                          1,
                          3,
                          7000,
                          24,
                          100,
                          900,
                          7,
                          13000,
                          1,
                          -3.0980391997148637,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          1,
                          1,
                          0,
                          4,
                          0,
                          0,
                          0.25,
                          -1,
                          0.75,
                          -0.5,
                          1,
                          0
                        ]
                      },
                      {
                        "key": 0,
                        "value": [
                          20261030,
                          10,
                          1000,
                          1,
                          1,
                          0,
                          1,
                          700,
                          -12,
                          0,
                          5,
                          60,
                          0,
                          20,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          60,
                          0,
                          6,
                          0,
                          0,
                          4000,
                          0,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0,
                          2,
                          0,
                          0,
                          1,
                          0
                        ]
                      }
                    ]
                  },
                  "hint": "This instance's preset bank.",
                  "id": "obj-288",
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
                    1220.0,
                    1330.0,
                    224.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "embed": 1,
                    "precision": 9
                  },
                  "text": "coll @embed 1 @precision 9",
                  "varname": "bank"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-289",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1625.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend bankdata"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-290",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1625.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend bankindex"
                }
              },
              {
                "box": {
                  "annotation": "Refresh imported bank.",
                  "hint": "Refresh imported bank.",
                  "id": "obj-291",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1625.0,
                    185.0,
                    22.0
                  ],
                  "text": "bankloaded"
                }
              },
              {
                "box": {
                  "annotation": "Finish bank scan.",
                  "hint": "Finish bank scan.",
                  "id": "obj-292",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1625.0,
                    185.0,
                    22.0
                  ],
                  "text": "bankdone"
                }
              },
              {
                "box": {
                  "annotation": "Record edits for saving.",
                  "hint": "Record edits for saving.",
                  "id": "obj-293",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    1500.0,
                    1330.0,
                    100.0,
                    22.0
                  ],
                  "save": [
                    "#N",
                    "thispatcher",
                    ";",
                    "#Q",
                    "end",
                    ";"
                  ],
                  "text": "thispatcher",
                  "varname": "patch_control"
                }
              },
              {
                "box": {
                  "annotation": "Mono audio input.",
                  "comment": "Mono signal input",
                  "hint": "Mono audio input.",
                  "id": "obj-294",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    20.0,
                    920.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Preset numbers or control/state messages.",
                  "comment": "Preset / band / control messages",
                  "hint": "Preset numbers or control/state messages.",
                  "id": "obj-295",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    920.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-296",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    350.0,
                    980.0,
                    160.0,
                    22.0
                  ],
                  "text": "route read write"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-297",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1680.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend readbank"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-298",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1680.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend writebank"
                }
              },
              {
                "box": {
                  "annotation": "Open this local subpatch.",
                  "hint": "Open this local subpatch.",
                  "id": "obj-299",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "signal",
                    "bang",
                    "bang",
                    ""
                  ],
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 1,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      34.0,
                      103.0,
                      1660.0,
                      980.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "annotation": "Section guide.",
                          "fontname": "Arial",
                          "fontsize": 15.0,
                          "hint": "Section guide.",
                          "id": "obj-1",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            20.0,
                            15.0,
                            1110.0,
                            23.0
                          ],
                          "presentation": 1,
                          "presentation_rect": [
                            20.0,
                            15.0,
                            1110.0,
                            23.0
                          ],
                          "text": "Input → biquad → smooth ON/OFF gate → dB output trim. OFF has no dry path.",
                          "textcolor": [
                            0.91,
                            0.94,
                            0.96,
                            1.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local input.",
                          "comment": "",
                          "hint": "Local input.",
                          "id": "obj-2",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            65.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local input.",
                          "comment": "",
                          "hint": "Local input.",
                          "id": "obj-3",
                          "index": 2,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            1000.0,
                            65.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Route messages by selector.",
                          "hint": "Route messages by selector.",
                          "id": "obj-4",
                          "maxclass": "newobj",
                          "numinlets": 14,
                          "numoutlets": 14,
                          "outlettype": [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            ""
                          ],
                          "patching_rect": [
                            240.0,
                            115.0,
                            880.0,
                            22.0
                          ],
                          "text": "route freq gain q depth ampdepth wet motion amotion type clear maxfreq snapshot level"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-5",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            20.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 60."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-6",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            160.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ -36."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            300.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            440.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-9",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            580.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-10",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            720.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-11",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            860.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-12",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            1000.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-13",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-14",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-15",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ 60. 13000."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-16",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-17",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-18",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ -36. 36."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Convert dB to linear gain.",
                          "hint": "Convert dB to linear gain.",
                          "id": "obj-19",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            410.0,
                            145.0,
                            22.0
                          ],
                          "text": "dbtoa~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-20",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            440.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ 0.5 200."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Calculate biquad coefficients.",
                          "hint": "Calculate biquad coefficients.",
                          "id": "obj-21",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 5,
                          "outlettype": [
                            "signal",
                            "signal",
                            "signal",
                            "signal",
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            465.0,
                            225.0,
                            22.0
                          ],
                          "text": "filtercoeff~ peaknotch 1"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Second-order audio filter.",
                          "hint": "Second-order audio filter.",
                          "id": "obj-22",
                          "maxclass": "newobj",
                          "numinlets": 6,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            535.0,
                            210.0,
                            22.0
                          ],
                          "text": "biquad~ 1. 0. 0. 0. 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Clear filter history.",
                          "hint": "Clear filter history.",
                          "id": "obj-23",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            265.0,
                            535.0,
                            70.0,
                            22.0
                          ],
                          "text": "clear"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-24",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Shape smooth fades.",
                          "hint": "Shape smooth fades.",
                          "id": "obj-25",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "cos~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-26",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~ -0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-27",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            410.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-29",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            610.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-32",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            20.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-33",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            260.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-34",
                          "index": 3,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            500.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-35",
                          "index": 4,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            800.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Trigger in right-to-left order.",
                          "hint": "Trigger in right-to-left order.",
                          "id": "obj-36",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 7,
                          "outlettype": [
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang"
                          ],
                          "patching_rect": [
                            650.0,
                            535.0,
                            180.0,
                            22.0
                          ],
                          "text": "t b b b b b b b"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Collect values into a list.",
                          "hint": "Collect values into a list.",
                          "id": "obj-37",
                          "maxclass": "newobj",
                          "numinlets": 7,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            650.0,
                            745.0,
                            220.0,
                            22.0
                          ],
                          "text": "pack 60. -36. 0. 0.5 0. 0. -24."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-38",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            600.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-39",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            705.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-40",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            810.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-41",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            915.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-42",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1020.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-54",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1150.0,
                            650.0,
                            160.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-55",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1340.0,
                            650.0,
                            160.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "id": "level_ramp",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            900.0,
                            410.0,
                            150.0,
                            22.0
                          ],
                          "text": "line~ -24."
                        }
                      },
                      {
                        "box": {
                          "id": "level_linear",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            900.0,
                            450.0,
                            150.0,
                            22.0
                          ],
                          "text": "dbtoa~"
                        }
                      },
                      {
                        "box": {
                          "id": "channel_out",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            700.0,
                            490.0,
                            150.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-32",
                            0
                          ],
                          "source": [
                            "channel_out",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "channel_out",
                            1
                          ],
                          "source": [
                            "level_linear",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "level_linear",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "level_ramp",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "level_ramp",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-24",
                            0
                          ],
                          "source": [
                            "obj-10",
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
                            "obj-10",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-13",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-33",
                            0
                          ],
                          "source": [
                            "obj-11",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-40",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-16",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-12",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-42",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-12",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-14",
                            1
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
                            "obj-15",
                            0
                          ],
                          "source": [
                            "obj-14",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-17",
                            1
                          ],
                          "source": [
                            "obj-16",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-18",
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
                            "obj-19",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-18",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-18",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            1
                          ],
                          "source": [
                            "obj-19",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
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
                            "obj-21",
                            2
                          ],
                          "order": 1,
                          "source": [
                            "obj-20",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-41",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-20",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            5
                          ],
                          "source": [
                            "obj-21",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            4
                          ],
                          "source": [
                            "obj-21",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            3
                          ],
                          "source": [
                            "obj-21",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            2
                          ],
                          "source": [
                            "obj-21",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            1
                          ],
                          "source": [
                            "obj-21",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-29",
                            0
                          ],
                          "source": [
                            "obj-22",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            0
                          ],
                          "source": [
                            "obj-23",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-25",
                            0
                          ],
                          "source": [
                            "obj-24",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-26",
                            0
                          ],
                          "source": [
                            "obj-25",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-27",
                            0
                          ],
                          "source": [
                            "obj-26",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-29",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-27",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-27",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "channel_out",
                            0
                          ],
                          "source": [
                            "obj-29",
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
                            "obj-3",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "source": [
                            "obj-36",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "source": [
                            "obj-36",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-40",
                            0
                          ],
                          "source": [
                            "obj-36",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-41",
                            0
                          ],
                          "source": [
                            "obj-36",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-42",
                            0
                          ],
                          "source": [
                            "obj-36",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "source": [
                            "obj-36",
                            5
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "source": [
                            "obj-36",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-37",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            0
                          ],
                          "source": [
                            "obj-38",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            1
                          ],
                          "source": [
                            "obj-39",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "level_ramp",
                            0
                          ],
                          "source": [
                            "obj-4",
                            12
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-10",
                            0
                          ],
                          "source": [
                            "obj-4",
                            5
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
                            "obj-4",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-12",
                            0
                          ],
                          "source": [
                            "obj-4",
                            7
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-15",
                            2
                          ],
                          "source": [
                            "obj-4",
                            10
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            0
                          ],
                          "source": [
                            "obj-4",
                            8
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-23",
                            0
                          ],
                          "source": [
                            "obj-4",
                            9
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "source": [
                            "obj-4",
                            11
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
                            "obj-4",
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
                          "source": [
                            "obj-4",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-7",
                            0
                          ],
                          "source": [
                            "obj-4",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-8",
                            0
                          ],
                          "source": [
                            "obj-4",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-9",
                            0
                          ],
                          "source": [
                            "obj-4",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            2
                          ],
                          "source": [
                            "obj-40",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            3
                          ],
                          "source": [
                            "obj-41",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            4
                          ],
                          "source": [
                            "obj-42",
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
                            "obj-5",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            5
                          ],
                          "source": [
                            "obj-54",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            6
                          ],
                          "source": [
                            "obj-55",
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
                            "obj-6",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-20",
                            0
                          ],
                          "source": [
                            "obj-7",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-13",
                            0
                          ],
                          "source": [
                            "obj-8",
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
                            "obj-9",
                            0
                          ]
                        }
                      }
                    ],
                    "bgcolor": [
                      0.075,
                      0.09,
                      0.115,
                      1.0
                    ],
                    "editing_bgcolor": [
                      0.16,
                      0.17,
                      0.19,
                      1.0
                    ]
                  },
                  "patching_rect": [
                    20.0,
                    1060.0,
                    185.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "editing_bgcolor": [
                      0.16,
                      0.17,
                      0.19,
                      1.0
                    ],
                    "locked_bgcolor": [
                      0.075,
                      0.09,
                      0.115,
                      1.0
                    ]
                  },
                  "text": "p Filter_1",
                  "varname": "stage0"
                }
              },
              {
                "box": {
                  "annotation": "Report completed transition.",
                  "hint": "Report completed transition.",
                  "id": "obj-300",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1680.0,
                    185.0,
                    22.0
                  ],
                  "text": "finished 1"
                }
              },
              {
                "box": {
                  "annotation": "Report completed transition.",
                  "hint": "Report completed transition.",
                  "id": "obj-301",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1680.0,
                    185.0,
                    22.0
                  ],
                  "text": "wetdone 1"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-302",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1735.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend live 1"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-303",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1140.0,
                    100.0,
                    22.0
                  ],
                  "text": "route list"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-304",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1170.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend motion"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-305",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1200.0,
                    100.0,
                    22.0
                  ],
                  "text": "route list"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-306",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    20.0,
                    1230.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend amotion"
                }
              },
              {
                "box": {
                  "annotation": "Open this local subpatch.",
                  "hint": "Open this local subpatch.",
                  "id": "obj-307",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "signal",
                    "bang",
                    "bang",
                    ""
                  ],
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 1,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      70.0,
                      70.0,
                      1800.0,
                      980.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "annotation": "Section guide.",
                          "fontname": "Arial",
                          "fontsize": 15.0,
                          "hint": "Section guide.",
                          "id": "obj-1",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            20.0,
                            15.0,
                            1110.0,
                            24.0
                          ],
                          "presentation": 1,
                          "presentation_rect": [
                            20.0,
                            15.0,
                            1110.0,
                            24.0
                          ],
                          "text": "Input → biquad → smooth ON/OFF gate → dB output trim. OFF has no dry path.",
                          "textcolor": [
                            0.91,
                            0.94,
                            0.96,
                            1.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local input.",
                          "comment": "",
                          "hint": "Local input.",
                          "id": "obj-2",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            65.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local input.",
                          "comment": "",
                          "hint": "Local input.",
                          "id": "obj-3",
                          "index": 2,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            1000.0,
                            65.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Route messages by selector.",
                          "hint": "Route messages by selector.",
                          "id": "obj-4",
                          "maxclass": "newobj",
                          "numinlets": 14,
                          "numoutlets": 14,
                          "outlettype": [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            ""
                          ],
                          "patching_rect": [
                            240.0,
                            115.0,
                            880.0,
                            22.0
                          ],
                          "text": "route freq gain q depth ampdepth wet motion amotion type clear maxfreq snapshot level"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-5",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            20.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 60."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-6",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            160.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ -36."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            300.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            440.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-9",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            580.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-10",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            720.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-11",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            860.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-12",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            1000.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-13",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-14",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-15",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ 60. 13000."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-16",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-17",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-18",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ -36. 36."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Convert dB to linear gain.",
                          "hint": "Convert dB to linear gain.",
                          "id": "obj-19",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            410.0,
                            145.0,
                            22.0
                          ],
                          "text": "dbtoa~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-20",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            440.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ 0.5 200."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Calculate biquad coefficients.",
                          "hint": "Calculate biquad coefficients.",
                          "id": "obj-21",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 5,
                          "outlettype": [
                            "signal",
                            "signal",
                            "signal",
                            "signal",
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            465.0,
                            225.0,
                            22.0
                          ],
                          "text": "filtercoeff~ peaknotch 1"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Second-order audio filter.",
                          "hint": "Second-order audio filter.",
                          "id": "obj-22",
                          "maxclass": "newobj",
                          "numinlets": 6,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            535.0,
                            210.0,
                            22.0
                          ],
                          "text": "biquad~ 1. 0. 0. 0. 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Clear filter history.",
                          "hint": "Clear filter history.",
                          "id": "obj-23",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            265.0,
                            535.0,
                            70.0,
                            23.0
                          ],
                          "text": "clear"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-24",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Shape smooth fades.",
                          "hint": "Shape smooth fades.",
                          "id": "obj-25",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "cos~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-26",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~ -0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-27",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            410.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-29",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            610.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-32",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            20.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-33",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            260.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-34",
                          "index": 3,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            500.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-35",
                          "index": 4,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            800.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Trigger in right-to-left order.",
                          "hint": "Trigger in right-to-left order.",
                          "id": "obj-36",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 7,
                          "outlettype": [
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang"
                          ],
                          "patching_rect": [
                            650.0,
                            535.0,
                            180.0,
                            22.0
                          ],
                          "text": "t b b b b b b b"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Collect values into a list.",
                          "hint": "Collect values into a list.",
                          "id": "obj-37",
                          "maxclass": "newobj",
                          "numinlets": 7,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            650.0,
                            745.0,
                            220.0,
                            22.0
                          ],
                          "text": "pack 60. -36. 0. 0.5 0. 0. -24."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-38",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            600.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-39",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            705.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-40",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            810.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-41",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            915.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-42",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1020.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-54",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1150.0,
                            650.0,
                            160.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-55",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1340.0,
                            650.0,
                            160.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "id": "level_ramp",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            900.0,
                            410.0,
                            150.0,
                            22.0
                          ],
                          "text": "line~ -24."
                        }
                      },
                      {
                        "box": {
                          "id": "level_linear",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            900.0,
                            450.0,
                            150.0,
                            22.0
                          ],
                          "text": "dbtoa~"
                        }
                      },
                      {
                        "box": {
                          "id": "channel_out",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            700.0,
                            490.0,
                            150.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-32",
                            0
                          ],
                          "source": [
                            "channel_out",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "channel_out",
                            1
                          ],
                          "source": [
                            "level_linear",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "level_linear",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "level_ramp",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "level_ramp",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-24",
                            0
                          ],
                          "source": [
                            "obj-10",
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
                            "obj-10",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-13",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-33",
                            0
                          ],
                          "source": [
                            "obj-11",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-40",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-16",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-12",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-42",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-12",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-14",
                            1
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
                            "obj-15",
                            0
                          ],
                          "source": [
                            "obj-14",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-17",
                            1
                          ],
                          "source": [
                            "obj-16",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-18",
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
                            "obj-19",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-18",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-18",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            1
                          ],
                          "source": [
                            "obj-19",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
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
                            "obj-21",
                            2
                          ],
                          "order": 1,
                          "source": [
                            "obj-20",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-41",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-20",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            5
                          ],
                          "source": [
                            "obj-21",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            4
                          ],
                          "source": [
                            "obj-21",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            3
                          ],
                          "source": [
                            "obj-21",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            2
                          ],
                          "source": [
                            "obj-21",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            1
                          ],
                          "source": [
                            "obj-21",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-29",
                            0
                          ],
                          "source": [
                            "obj-22",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            0
                          ],
                          "source": [
                            "obj-23",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-25",
                            0
                          ],
                          "source": [
                            "obj-24",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-26",
                            0
                          ],
                          "source": [
                            "obj-25",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-27",
                            0
                          ],
                          "source": [
                            "obj-26",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-29",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-27",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-27",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "channel_out",
                            0
                          ],
                          "source": [
                            "obj-29",
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
                            "obj-3",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "source": [
                            "obj-36",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "source": [
                            "obj-36",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-40",
                            0
                          ],
                          "source": [
                            "obj-36",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-41",
                            0
                          ],
                          "source": [
                            "obj-36",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-42",
                            0
                          ],
                          "source": [
                            "obj-36",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "source": [
                            "obj-36",
                            5
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "source": [
                            "obj-36",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-37",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            0
                          ],
                          "source": [
                            "obj-38",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            1
                          ],
                          "source": [
                            "obj-39",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "level_ramp",
                            0
                          ],
                          "source": [
                            "obj-4",
                            12
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-10",
                            0
                          ],
                          "source": [
                            "obj-4",
                            5
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
                            "obj-4",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-12",
                            0
                          ],
                          "source": [
                            "obj-4",
                            7
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-15",
                            2
                          ],
                          "source": [
                            "obj-4",
                            10
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            0
                          ],
                          "source": [
                            "obj-4",
                            8
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-23",
                            0
                          ],
                          "source": [
                            "obj-4",
                            9
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "source": [
                            "obj-4",
                            11
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
                            "obj-4",
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
                          "source": [
                            "obj-4",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-7",
                            0
                          ],
                          "source": [
                            "obj-4",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-8",
                            0
                          ],
                          "source": [
                            "obj-4",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-9",
                            0
                          ],
                          "source": [
                            "obj-4",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            2
                          ],
                          "source": [
                            "obj-40",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            3
                          ],
                          "source": [
                            "obj-41",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            4
                          ],
                          "source": [
                            "obj-42",
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
                            "obj-5",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            5
                          ],
                          "source": [
                            "obj-54",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            6
                          ],
                          "source": [
                            "obj-55",
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
                            "obj-6",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-20",
                            0
                          ],
                          "source": [
                            "obj-7",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-13",
                            0
                          ],
                          "source": [
                            "obj-8",
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
                            "obj-9",
                            0
                          ]
                        }
                      }
                    ],
                    "bgcolor": [
                      0.075,
                      0.09,
                      0.115,
                      1.0
                    ],
                    "editing_bgcolor": [
                      0.16,
                      0.17,
                      0.19,
                      1.0
                    ]
                  },
                  "patching_rect": [
                    300.0,
                    1060.0,
                    185.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "editing_bgcolor": [
                      0.16,
                      0.17,
                      0.19,
                      1.0
                    ],
                    "locked_bgcolor": [
                      0.075,
                      0.09,
                      0.115,
                      1.0
                    ]
                  },
                  "text": "p Filter_2",
                  "varname": "stage1"
                }
              },
              {
                "box": {
                  "annotation": "Report completed transition.",
                  "hint": "Report completed transition.",
                  "id": "obj-308",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1735.0,
                    185.0,
                    22.0
                  ],
                  "text": "finished 2"
                }
              },
              {
                "box": {
                  "annotation": "Report completed transition.",
                  "hint": "Report completed transition.",
                  "id": "obj-309",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1735.0,
                    185.0,
                    22.0
                  ],
                  "text": "wetdone 2"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-310",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1735.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend live 2"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-311",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    300.0,
                    1140.0,
                    100.0,
                    22.0
                  ],
                  "text": "route list"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-312",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    300.0,
                    1170.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend motion"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-313",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    300.0,
                    1200.0,
                    100.0,
                    22.0
                  ],
                  "text": "route list"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-314",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    300.0,
                    1230.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend amotion"
                }
              },
              {
                "box": {
                  "annotation": "Open this local subpatch.",
                  "hint": "Open this local subpatch.",
                  "id": "obj-315",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "signal",
                    "bang",
                    "bang",
                    ""
                  ],
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 1,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      70.0,
                      70.0,
                      1800.0,
                      980.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "annotation": "Section guide.",
                          "fontname": "Arial",
                          "fontsize": 15.0,
                          "hint": "Section guide.",
                          "id": "obj-1",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            20.0,
                            15.0,
                            1110.0,
                            24.0
                          ],
                          "presentation": 1,
                          "presentation_rect": [
                            20.0,
                            15.0,
                            1110.0,
                            24.0
                          ],
                          "text": "Input → biquad → smooth ON/OFF gate → dB output trim. OFF has no dry path.",
                          "textcolor": [
                            0.91,
                            0.94,
                            0.96,
                            1.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local input.",
                          "comment": "",
                          "hint": "Local input.",
                          "id": "obj-2",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            65.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local input.",
                          "comment": "",
                          "hint": "Local input.",
                          "id": "obj-3",
                          "index": 2,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            1000.0,
                            65.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Route messages by selector.",
                          "hint": "Route messages by selector.",
                          "id": "obj-4",
                          "maxclass": "newobj",
                          "numinlets": 14,
                          "numoutlets": 14,
                          "outlettype": [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            ""
                          ],
                          "patching_rect": [
                            240.0,
                            115.0,
                            880.0,
                            22.0
                          ],
                          "text": "route freq gain q depth ampdepth wet motion amotion type clear maxfreq snapshot level"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-5",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            20.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 60."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-6",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            160.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ -36."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            300.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            440.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-9",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            580.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-10",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            720.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-11",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            860.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-12",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            1000.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-13",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-14",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-15",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ 60. 13000."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-16",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-17",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-18",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ -36. 36."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Convert dB to linear gain.",
                          "hint": "Convert dB to linear gain.",
                          "id": "obj-19",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            410.0,
                            145.0,
                            22.0
                          ],
                          "text": "dbtoa~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-20",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            440.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ 0.5 200."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Calculate biquad coefficients.",
                          "hint": "Calculate biquad coefficients.",
                          "id": "obj-21",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 5,
                          "outlettype": [
                            "signal",
                            "signal",
                            "signal",
                            "signal",
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            465.0,
                            225.0,
                            22.0
                          ],
                          "text": "filtercoeff~ peaknotch 1"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Second-order audio filter.",
                          "hint": "Second-order audio filter.",
                          "id": "obj-22",
                          "maxclass": "newobj",
                          "numinlets": 6,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            535.0,
                            210.0,
                            22.0
                          ],
                          "text": "biquad~ 1. 0. 0. 0. 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Clear filter history.",
                          "hint": "Clear filter history.",
                          "id": "obj-23",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            265.0,
                            535.0,
                            70.0,
                            23.0
                          ],
                          "text": "clear"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-24",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Shape smooth fades.",
                          "hint": "Shape smooth fades.",
                          "id": "obj-25",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "cos~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-26",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~ -0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-27",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            410.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-29",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            610.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-32",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            20.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-33",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            260.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-34",
                          "index": 3,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            500.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-35",
                          "index": 4,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            800.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Trigger in right-to-left order.",
                          "hint": "Trigger in right-to-left order.",
                          "id": "obj-36",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 7,
                          "outlettype": [
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang"
                          ],
                          "patching_rect": [
                            650.0,
                            535.0,
                            180.0,
                            22.0
                          ],
                          "text": "t b b b b b b b"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Collect values into a list.",
                          "hint": "Collect values into a list.",
                          "id": "obj-37",
                          "maxclass": "newobj",
                          "numinlets": 7,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            650.0,
                            745.0,
                            220.0,
                            22.0
                          ],
                          "text": "pack 60. -36. 0. 0.5 0. 0. -24."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-38",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            600.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-39",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            705.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-40",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            810.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-41",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            915.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-42",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1020.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-54",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1150.0,
                            650.0,
                            160.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-55",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1340.0,
                            650.0,
                            160.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "id": "level_ramp",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            900.0,
                            410.0,
                            150.0,
                            22.0
                          ],
                          "text": "line~ -24."
                        }
                      },
                      {
                        "box": {
                          "id": "level_linear",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            900.0,
                            450.0,
                            150.0,
                            22.0
                          ],
                          "text": "dbtoa~"
                        }
                      },
                      {
                        "box": {
                          "id": "channel_out",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            700.0,
                            490.0,
                            150.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-32",
                            0
                          ],
                          "source": [
                            "channel_out",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "channel_out",
                            1
                          ],
                          "source": [
                            "level_linear",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "level_linear",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "level_ramp",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "level_ramp",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-24",
                            0
                          ],
                          "source": [
                            "obj-10",
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
                            "obj-10",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-13",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-33",
                            0
                          ],
                          "source": [
                            "obj-11",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-40",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-16",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-12",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-42",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-12",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-14",
                            1
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
                            "obj-15",
                            0
                          ],
                          "source": [
                            "obj-14",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-17",
                            1
                          ],
                          "source": [
                            "obj-16",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-18",
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
                            "obj-19",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-18",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-18",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            1
                          ],
                          "source": [
                            "obj-19",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
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
                            "obj-21",
                            2
                          ],
                          "order": 1,
                          "source": [
                            "obj-20",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-41",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-20",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            5
                          ],
                          "source": [
                            "obj-21",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            4
                          ],
                          "source": [
                            "obj-21",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            3
                          ],
                          "source": [
                            "obj-21",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            2
                          ],
                          "source": [
                            "obj-21",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            1
                          ],
                          "source": [
                            "obj-21",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-29",
                            0
                          ],
                          "source": [
                            "obj-22",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            0
                          ],
                          "source": [
                            "obj-23",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-25",
                            0
                          ],
                          "source": [
                            "obj-24",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-26",
                            0
                          ],
                          "source": [
                            "obj-25",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-27",
                            0
                          ],
                          "source": [
                            "obj-26",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-29",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-27",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-27",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "channel_out",
                            0
                          ],
                          "source": [
                            "obj-29",
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
                            "obj-3",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "source": [
                            "obj-36",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "source": [
                            "obj-36",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-40",
                            0
                          ],
                          "source": [
                            "obj-36",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-41",
                            0
                          ],
                          "source": [
                            "obj-36",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-42",
                            0
                          ],
                          "source": [
                            "obj-36",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "source": [
                            "obj-36",
                            5
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "source": [
                            "obj-36",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-37",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            0
                          ],
                          "source": [
                            "obj-38",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            1
                          ],
                          "source": [
                            "obj-39",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "level_ramp",
                            0
                          ],
                          "source": [
                            "obj-4",
                            12
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-10",
                            0
                          ],
                          "source": [
                            "obj-4",
                            5
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
                            "obj-4",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-12",
                            0
                          ],
                          "source": [
                            "obj-4",
                            7
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-15",
                            2
                          ],
                          "source": [
                            "obj-4",
                            10
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            0
                          ],
                          "source": [
                            "obj-4",
                            8
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-23",
                            0
                          ],
                          "source": [
                            "obj-4",
                            9
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "source": [
                            "obj-4",
                            11
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
                            "obj-4",
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
                          "source": [
                            "obj-4",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-7",
                            0
                          ],
                          "source": [
                            "obj-4",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-8",
                            0
                          ],
                          "source": [
                            "obj-4",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-9",
                            0
                          ],
                          "source": [
                            "obj-4",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            2
                          ],
                          "source": [
                            "obj-40",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            3
                          ],
                          "source": [
                            "obj-41",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            4
                          ],
                          "source": [
                            "obj-42",
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
                            "obj-5",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            5
                          ],
                          "source": [
                            "obj-54",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            6
                          ],
                          "source": [
                            "obj-55",
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
                            "obj-6",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-20",
                            0
                          ],
                          "source": [
                            "obj-7",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-13",
                            0
                          ],
                          "source": [
                            "obj-8",
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
                            "obj-9",
                            0
                          ]
                        }
                      }
                    ],
                    "bgcolor": [
                      0.075,
                      0.09,
                      0.115,
                      1.0
                    ],
                    "editing_bgcolor": [
                      0.16,
                      0.17,
                      0.19,
                      1.0
                    ]
                  },
                  "patching_rect": [
                    580.0,
                    1060.0,
                    185.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "editing_bgcolor": [
                      0.16,
                      0.17,
                      0.19,
                      1.0
                    ],
                    "locked_bgcolor": [
                      0.075,
                      0.09,
                      0.115,
                      1.0
                    ]
                  },
                  "text": "p Filter_3",
                  "varname": "stage2"
                }
              },
              {
                "box": {
                  "annotation": "Report completed transition.",
                  "hint": "Report completed transition.",
                  "id": "obj-316",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1790.0,
                    185.0,
                    22.0
                  ],
                  "text": "finished 3"
                }
              },
              {
                "box": {
                  "annotation": "Report completed transition.",
                  "hint": "Report completed transition.",
                  "id": "obj-317",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1790.0,
                    185.0,
                    22.0
                  ],
                  "text": "wetdone 3"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-318",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1790.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend live 3"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-319",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    580.0,
                    1140.0,
                    100.0,
                    22.0
                  ],
                  "text": "route list"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-320",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    580.0,
                    1170.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend motion"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-321",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    580.0,
                    1200.0,
                    100.0,
                    22.0
                  ],
                  "text": "route list"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-322",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    580.0,
                    1230.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend amotion"
                }
              },
              {
                "box": {
                  "annotation": "Open this local subpatch.",
                  "hint": "Open this local subpatch.",
                  "id": "obj-323",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "signal",
                    "bang",
                    "bang",
                    ""
                  ],
                  "patcher": {
                    "fileversion": 1,
                    "appversion": {
                      "major": 9,
                      "minor": 2,
                      "revision": 1,
                      "architecture": "x64",
                      "modernui": 1
                    },
                    "classnamespace": "box",
                    "rect": [
                      70.0,
                      70.0,
                      1800.0,
                      980.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "annotation": "Section guide.",
                          "fontname": "Arial",
                          "fontsize": 15.0,
                          "hint": "Section guide.",
                          "id": "obj-1",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            20.0,
                            15.0,
                            1110.0,
                            24.0
                          ],
                          "presentation": 1,
                          "presentation_rect": [
                            20.0,
                            15.0,
                            1110.0,
                            24.0
                          ],
                          "text": "Input → biquad → smooth ON/OFF gate → dB output trim. OFF has no dry path.",
                          "textcolor": [
                            0.91,
                            0.94,
                            0.96,
                            1.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local input.",
                          "comment": "",
                          "hint": "Local input.",
                          "id": "obj-2",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            65.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local input.",
                          "comment": "",
                          "hint": "Local input.",
                          "id": "obj-3",
                          "index": 2,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            1000.0,
                            65.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Route messages by selector.",
                          "hint": "Route messages by selector.",
                          "id": "obj-4",
                          "maxclass": "newobj",
                          "numinlets": 14,
                          "numoutlets": 14,
                          "outlettype": [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            ""
                          ],
                          "patching_rect": [
                            240.0,
                            115.0,
                            880.0,
                            22.0
                          ],
                          "text": "route freq gain q depth ampdepth wet motion amotion type clear maxfreq snapshot level"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-5",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            20.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 60."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-6",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            160.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ -36."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            300.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            440.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-9",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            580.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-10",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            720.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-11",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            860.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Smooth signal transition.",
                          "hint": "Smooth signal transition.",
                          "id": "obj-12",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            1000.0,
                            180.0,
                            125.0,
                            22.0
                          ],
                          "text": "line~ 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-13",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-14",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-15",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ 60. 13000."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-16",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-17",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-18",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ -36. 36."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Convert dB to linear gain.",
                          "hint": "Convert dB to linear gain.",
                          "id": "obj-19",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            230.0,
                            410.0,
                            145.0,
                            22.0
                          ],
                          "text": "dbtoa~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Limit signal range.",
                          "hint": "Limit signal range.",
                          "id": "obj-20",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            440.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "clip~ 0.5 200."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Calculate biquad coefficients.",
                          "hint": "Calculate biquad coefficients.",
                          "id": "obj-21",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 5,
                          "outlettype": [
                            "signal",
                            "signal",
                            "signal",
                            "signal",
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            465.0,
                            225.0,
                            22.0
                          ],
                          "text": "filtercoeff~ peaknotch 1"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Second-order audio filter.",
                          "hint": "Second-order audio filter.",
                          "id": "obj-22",
                          "maxclass": "newobj",
                          "numinlets": 6,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            535.0,
                            210.0,
                            22.0
                          ],
                          "text": "biquad~ 1. 0. 0. 0. 0."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Clear filter history.",
                          "hint": "Clear filter history.",
                          "id": "obj-23",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            265.0,
                            535.0,
                            70.0,
                            23.0
                          ],
                          "text": "clear"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-24",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            245.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Shape smooth fades.",
                          "hint": "Shape smooth fades.",
                          "id": "obj-25",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            300.0,
                            145.0,
                            22.0
                          ],
                          "text": "cos~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-26",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            355.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~ -0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Add signals.",
                          "hint": "Add signals.",
                          "id": "obj-27",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            650.0,
                            410.0,
                            145.0,
                            22.0
                          ],
                          "text": "+~ 0.5"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Multiply signals.",
                          "hint": "Multiply signals.",
                          "id": "obj-29",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            20.0,
                            610.0,
                            145.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-32",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            20.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-33",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            260.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-34",
                          "index": 3,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            500.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Local output.",
                          "comment": "",
                          "hint": "Local output.",
                          "id": "obj-35",
                          "index": 4,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            800.0,
                            850.0,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "annotation": "Trigger in right-to-left order.",
                          "hint": "Trigger in right-to-left order.",
                          "id": "obj-36",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 7,
                          "outlettype": [
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang",
                            "bang"
                          ],
                          "patching_rect": [
                            650.0,
                            535.0,
                            180.0,
                            22.0
                          ],
                          "text": "t b b b b b b b"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Collect values into a list.",
                          "hint": "Collect values into a list.",
                          "id": "obj-37",
                          "maxclass": "newobj",
                          "numinlets": 7,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            650.0,
                            745.0,
                            220.0,
                            22.0
                          ],
                          "text": "pack 60. -36. 0. 0.5 0. 0. -24."
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-38",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            600.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-39",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            705.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-40",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            810.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-41",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            915.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-42",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1020.0,
                            655.0,
                            100.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-54",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1150.0,
                            650.0,
                            160.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "annotation": "Read a signal value.",
                          "hint": "Read a signal value.",
                          "id": "obj-55",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            1340.0,
                            650.0,
                            160.0,
                            22.0
                          ],
                          "text": "snapshot~"
                        }
                      },
                      {
                        "box": {
                          "id": "level_ramp",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "signal",
                            "bang"
                          ],
                          "patching_rect": [
                            900.0,
                            410.0,
                            150.0,
                            22.0
                          ],
                          "text": "line~ -24."
                        }
                      },
                      {
                        "box": {
                          "id": "level_linear",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            900.0,
                            450.0,
                            150.0,
                            22.0
                          ],
                          "text": "dbtoa~"
                        }
                      },
                      {
                        "box": {
                          "id": "channel_out",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "signal"
                          ],
                          "patching_rect": [
                            700.0,
                            490.0,
                            150.0,
                            22.0
                          ],
                          "text": "*~"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-32",
                            0
                          ],
                          "source": [
                            "channel_out",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "channel_out",
                            1
                          ],
                          "source": [
                            "level_linear",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "level_linear",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "level_ramp",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "level_ramp",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-24",
                            0
                          ],
                          "source": [
                            "obj-10",
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
                            "obj-10",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-13",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-33",
                            0
                          ],
                          "source": [
                            "obj-11",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-40",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-11",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-16",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-12",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-42",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-12",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-14",
                            1
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
                            "obj-15",
                            0
                          ],
                          "source": [
                            "obj-14",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-17",
                            1
                          ],
                          "source": [
                            "obj-16",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-18",
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
                            "obj-19",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-18",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-18",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            1
                          ],
                          "source": [
                            "obj-19",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
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
                            "obj-21",
                            2
                          ],
                          "order": 1,
                          "source": [
                            "obj-20",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-41",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-20",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            5
                          ],
                          "source": [
                            "obj-21",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            4
                          ],
                          "source": [
                            "obj-21",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            3
                          ],
                          "source": [
                            "obj-21",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            2
                          ],
                          "source": [
                            "obj-21",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            1
                          ],
                          "source": [
                            "obj-21",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-29",
                            0
                          ],
                          "source": [
                            "obj-22",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-22",
                            0
                          ],
                          "source": [
                            "obj-23",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-25",
                            0
                          ],
                          "source": [
                            "obj-24",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-26",
                            0
                          ],
                          "source": [
                            "obj-25",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-27",
                            0
                          ],
                          "source": [
                            "obj-26",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-29",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "obj-27",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-27",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "channel_out",
                            0
                          ],
                          "source": [
                            "obj-29",
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
                            "obj-3",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "source": [
                            "obj-36",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-39",
                            0
                          ],
                          "source": [
                            "obj-36",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-40",
                            0
                          ],
                          "source": [
                            "obj-36",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-41",
                            0
                          ],
                          "source": [
                            "obj-36",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-42",
                            0
                          ],
                          "source": [
                            "obj-36",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-54",
                            0
                          ],
                          "source": [
                            "obj-36",
                            5
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-55",
                            0
                          ],
                          "source": [
                            "obj-36",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-37",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            0
                          ],
                          "source": [
                            "obj-38",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            1
                          ],
                          "source": [
                            "obj-39",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "level_ramp",
                            0
                          ],
                          "source": [
                            "obj-4",
                            12
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-10",
                            0
                          ],
                          "source": [
                            "obj-4",
                            5
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
                            "obj-4",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-12",
                            0
                          ],
                          "source": [
                            "obj-4",
                            7
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-15",
                            2
                          ],
                          "source": [
                            "obj-4",
                            10
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-21",
                            0
                          ],
                          "source": [
                            "obj-4",
                            8
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-23",
                            0
                          ],
                          "source": [
                            "obj-4",
                            9
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "source": [
                            "obj-4",
                            11
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
                            "obj-4",
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
                          "source": [
                            "obj-4",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-7",
                            0
                          ],
                          "source": [
                            "obj-4",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-8",
                            0
                          ],
                          "source": [
                            "obj-4",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-9",
                            0
                          ],
                          "source": [
                            "obj-4",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            2
                          ],
                          "source": [
                            "obj-40",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            3
                          ],
                          "source": [
                            "obj-41",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            4
                          ],
                          "source": [
                            "obj-42",
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
                            "obj-5",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            5
                          ],
                          "source": [
                            "obj-54",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            6
                          ],
                          "source": [
                            "obj-55",
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
                            "obj-6",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-20",
                            0
                          ],
                          "source": [
                            "obj-7",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-13",
                            0
                          ],
                          "source": [
                            "obj-8",
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
                            "obj-9",
                            0
                          ]
                        }
                      }
                    ],
                    "bgcolor": [
                      0.075,
                      0.09,
                      0.115,
                      1.0
                    ],
                    "editing_bgcolor": [
                      0.16,
                      0.17,
                      0.19,
                      1.0
                    ]
                  },
                  "patching_rect": [
                    860.0,
                    1060.0,
                    185.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "editing_bgcolor": [
                      0.16,
                      0.17,
                      0.19,
                      1.0
                    ],
                    "locked_bgcolor": [
                      0.075,
                      0.09,
                      0.115,
                      1.0
                    ]
                  },
                  "text": "p Filter_4",
                  "varname": "stage3"
                }
              },
              {
                "box": {
                  "annotation": "Report completed transition.",
                  "hint": "Report completed transition.",
                  "id": "obj-324",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1790.0,
                    185.0,
                    22.0
                  ],
                  "text": "finished 4"
                }
              },
              {
                "box": {
                  "annotation": "Report completed transition.",
                  "hint": "Report completed transition.",
                  "id": "obj-325",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1845.0,
                    185.0,
                    22.0
                  ],
                  "text": "wetdone 4"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-326",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1415.0,
                    1845.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend live 4"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-327",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    860.0,
                    1140.0,
                    100.0,
                    22.0
                  ],
                  "text": "route list"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-328",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    860.0,
                    1170.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend motion"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-329",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    860.0,
                    1200.0,
                    100.0,
                    22.0
                  ],
                  "text": "route list"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-330",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    860.0,
                    1230.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend amotion"
                }
              },
              {
                "box": {
                  "annotation": "Measure absolute amplitude.",
                  "hint": "Measure absolute amplitude.",
                  "id": "obj-333",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    380.0,
                    1290.0,
                    70.0,
                    22.0
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "annotation": "Smooth peak envelope.",
                  "hint": "Smooth peak envelope.",
                  "id": "obj-334",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    380.0,
                    1350.0,
                    140.0,
                    22.0
                  ],
                  "text": "slide~ 1 13230"
                }
              },
              {
                "box": {
                  "annotation": "Select larger signal.",
                  "hint": "Select larger signal.",
                  "id": "obj-335",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    550.0,
                    1350.0,
                    230.0,
                    22.0
                  ],
                  "text": "maximum~ 0."
                }
              },
              {
                "box": {
                  "annotation": "Calculate protection gain.",
                  "hint": "Calculate protection gain.",
                  "id": "obj-336",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    550.0,
                    1410.0,
                    165.0,
                    22.0
                  ],
                  "text": "!/~ 0.501187"
                }
              },
              {
                "box": {
                  "annotation": "Smoothed output ceiling.",
                  "hint": "Smoothed output ceiling.",
                  "id": "obj-337",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    970.0,
                    1300.0,
                    205.0,
                    22.0
                  ],
                  "text": "line~ 0.501187",
                  "varname": "ceiling_ramp"
                }
              },
              {
                "box": {
                  "annotation": "Select smaller signal.",
                  "hint": "Select smaller signal.",
                  "id": "obj-338",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    800.0,
                    1410.0,
                    135.0,
                    22.0
                  ],
                  "text": "minimum~ 1."
                }
              },
              {
                "box": {
                  "annotation": "Multiply signals.",
                  "hint": "Multiply signals.",
                  "id": "obj-339",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    20.0,
                    1410.0,
                    50.0,
                    22.0
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "annotation": "Limit signal range.",
                  "hint": "Limit signal range.",
                  "id": "obj-340",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    20.0,
                    1470.0,
                    275.0,
                    22.0
                  ],
                  "text": "clip~ -0.891251 0.891251"
                }
              },
              {
                "box": {
                  "annotation": "Processed mono audio.",
                  "comment": "Processed mono signal",
                  "hint": "Processed mono audio.",
                  "id": "obj-341",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    1530.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Read audio-engine state.",
                  "hint": "Read audio-engine state.",
                  "id": "obj-342",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "int",
                    "float",
                    "int",
                    "int"
                  ],
                  "patching_rect": [
                    380.0,
                    1470.0,
                    110.0,
                    22.0
                  ],
                  "text": "dspstate~"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-343",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1610.0,
                    1845.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend sr"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-344",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1805.0,
                    1845.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend dsp"
                }
              },
              {
                "box": {
                  "annotation": "Scale a value.",
                  "hint": "Scale a value.",
                  "id": "obj-345",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    550.0,
                    1470.0,
                    85.0,
                    22.0
                  ],
                  "text": "* 0.3"
                }
              },
              {
                "box": {
                  "annotation": "Initialize on opening.",
                  "hint": "Initialize on opening.",
                  "id": "obj-346",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    1220.0,
                    20.0,
                    85.0,
                    22.0
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "annotation": "Schedule low-priority control.",
                  "hint": "Schedule low-priority control.",
                  "id": "obj-347",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1330.0,
                    20.0,
                    85.0,
                    22.0
                  ],
                  "text": "deferlow"
                }
              },
              {
                "box": {
                  "annotation": "Reset to silent startup.",
                  "hint": "Reset to silent startup.",
                  "id": "obj-348",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1440.0,
                    20.0,
                    60.0,
                    22.0
                  ],
                  "text": "boot"
                }
              },
              {
                "box": {
                  "annotation": "Refresh display.",
                  "hint": "Refresh display.",
                  "id": "obj-349",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    1220.0,
                    1440.0,
                    100.0,
                    22.0
                  ],
                  "text": "qmetro 50"
                }
              },
              {
                "box": {
                  "annotation": "Recall preset 1.",
                  "hint": "Recall preset 1.",
                  "id": "obj-350",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1340.0,
                    1440.0,
                    40.0,
                    22.0
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "annotation": "Sample current values.",
                  "hint": "Sample current values.",
                  "id": "obj-351",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1490.0,
                    90.0,
                    22.0
                  ],
                  "text": "snapshot"
                }
              },
              {
                "box": {
                  "annotation": "Read a signal value.",
                  "hint": "Read a signal value.",
                  "id": "obj-352",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    1020.0,
                    1480.0,
                    110.0,
                    22.0
                  ],
                  "text": "snapshot~"
                }
              },
              {
                "box": {
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-353",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1900.0,
                    185.0,
                    22.0
                  ],
                  "text": "prepend reduction"
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "hint": "Route messages by selector.",
                  "id": "obj-354",
                  "linecount": 4,
                  "maxclass": "newobj",
                  "numinlets": 99,
                  "numoutlets": 99,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1590.0,
                    1202.0,
                    62.0
                  ],
                  "text": "route graph_gate eqgraph livefreq0 livegain0 liveq0 bandstatus0 enabled0 type0 q0 freq0 gain0 depth0 ampdepth0 period0 curve0 acurve0 loop0 livefreq1 livegain1 liveq1 bandstatus1 enabled1 type1 q1 freq1 gain1 depth1 ampdepth1 period1 curve1 acurve1 loop1 livefreq2 livegain2 liveq2 bandstatus2 enabled2 type2 q2 freq2 gain2 depth2 ampdepth2 period2 curve2 acurve2 loop2 livefreq3 livegain3 liveq3 bandstatus3 enabled3 type3 q3 freq3 gain3 depth3 ampdepth3 period3 curve3 acurve3 loop3 amp interp fade selected normalize reduction preset1 preset2 preset3 preset4 preset5 preset6 preset7 preset8 preset9 preset10 slot status bank patch_control stage0 stage1 stage2 stage3 amp_ramp ceiling_ramp response gainout gainout_ramp gainout_slider presetstatus level0 level1 level2 level3 copy_feedback"
                }
              },
              {
                "box": {
                  "annotation": "Show diagnostics in Max Console.",
                  "hint": "Show diagnostics in Max Console.",
                  "id": "obj-355",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1220.0,
                    1650.0,
                    225.0,
                    22.0
                  ],
                  "text": "print FilterBankv6_unrouted"
                }
              },
              {
                "box": {
                  "annotation": "Combined response from native filter coefficients.",
                  "border": 0,
                  "filename": "ec_filterbank_v6_display.js",
                  "hint": "Combined response from native filter coefficients.",
                  "id": "obj-356",
                  "ignoreclick": 1,
                  "maxclass": "jsui",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    20.0,
                    80.0,
                    1120.0,
                    135.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    9.0,
                    57.142857142857146,
                    1017.0504201680674,
                    121.00840336134455
                  ],
                  "varname": "response"
                }
              },
              {
                "box": {
                  "annotation": "Global output: -36 to +12 dB; 2 s fade.",
                  "bgcolor": [
                    0.14,
                    0.19,
                    0.25,
                    1.0
                  ],
                  "fontsize": 13.0,
                  "format": 6,
                  "hint": "Global output: -36 to +12 dB; 2 s fade.",
                  "id": "obj-377",
                  "maxclass": "flonum",
                  "maximum": 12.0,
                  "minimum": -36.0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1068.0,
                    729.0,
                    62.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    956.0,
                    713.0,
                    62.0,
                    23.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "varname": "gainout"
                }
              },
              {
                "box": {
                  "annotation": "Global Gain Out",
                  "fontface": 1,
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "hint": "Global Gain Out",
                  "id": "obj-378",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    850.0,
                    704.0,
                    208.0,
                    21.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    742.8571428571429,
                    693.0,
                    208.0,
                    21.0
                  ],
                  "text": "Global Gain Out",
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
                  "annotation": "Add a command prefix.",
                  "hint": "Add a command prefix.",
                  "id": "obj-379",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    2320.0,
                    160.0,
                    22.0
                  ],
                  "text": "prepend gainout"
                }
              },
              {
                "box": {
                  "annotation": "Global-gain fade: 2000 ms.",
                  "hint": "Global-gain fade: 2000 ms.",
                  "id": "obj-380",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    210.0,
                    1320.0,
                    160.0,
                    22.0
                  ],
                  "text": "line~ -12.",
                  "varname": "gainout_ramp"
                }
              },
              {
                "box": {
                  "annotation": "Convert dB to linear gain.",
                  "hint": "Convert dB to linear gain.",
                  "id": "obj-381",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    210.0,
                    1350.0,
                    160.0,
                    22.0
                  ],
                  "text": "dbtoa~",
                  "varname": "gainout_linear"
                }
              },
              {
                "box": {
                  "annotation": "Apply global output gain.",
                  "hint": "Apply global output gain.",
                  "id": "obj-382",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    20.0,
                    1350.0,
                    160.0,
                    22.0
                  ],
                  "text": "*~",
                  "varname": "gainout_output"
                }
              },
              {
                "box": {
                  "annotation": "Global output: -36 to +12 dB; 2 s fade.",
                  "channels": 1,
                  "coldcolor": [
                    0.12,
                    0.9,
                    0.76,
                    1.0
                  ],
                  "display_range": [
                    -36.0,
                    12.0
                  ],
                  "focusbordercolor": [
                    1.0,
                    0.8,
                    0.18,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Global output: -36 to +12 dB; 2 s fade.",
                  "hotcolor": [
                    1.0,
                    0.48,
                    0.1,
                    1.0
                  ],
                  "id": "obj-383",
                  "inactivecoldcolor": [
                    0.12,
                    0.5,
                    0.43,
                    1.0
                  ],
                  "inactivewarmcolor": [
                    0.55,
                    0.48,
                    0.16,
                    1.0
                  ],
                  "interp": 2000.0,
                  "interval": 50,
                  "lastchannelcount": 0,
                  "livemode": 1,
                  "maxclass": "live.gain~",
                  "metering": 0,
                  "mode": 1,
                  "numinlets": 1,
                  "numoutlets": 4,
                  "orientation": 1,
                  "outlettype": [
                    "signal",
                    "",
                    "float",
                    "list"
                  ],
                  "overloadcolor": [
                    1.0,
                    0.16,
                    0.2,
                    1.0
                  ],
                  "parameter_enable": 1,
                  "patching_rect": [
                    850.0,
                    728.0,
                    208.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    742.8571428571429,
                    718.0,
                    208.0,
                    34.0
                  ],
                  "saved_attribute_attributes": {
                    "focusbordercolor": {
                      "expression": ""
                    },
                    "slidercolor": {
                      "expression": ""
                    },
                    "textcolor": {
                      "expression": ""
                    },
                    "tribordercolor": {
                      "expression": ""
                    },
                    "tricolor": {
                      "expression": ""
                    },
                    "trioncolor": {
                      "expression": ""
                    },
                    "valueof": {
                      "parameter_initial": [
                        -12.0
                      ],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Global Gain Out",
                      "parameter_mmax": 12.0,
                      "parameter_mmin": -36.0,
                      "parameter_modmode": 0,
                      "parameter_shortname": "GainOut",
                      "parameter_type": 0,
                      "parameter_unitstyle": 4
                    }
                  },
                  "showname": 0,
                  "slidercolor": [
                    0.24,
                    0.3,
                    0.38,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "thickness": 8,
                  "tribordercolor": [
                    0.02,
                    0.04,
                    0.06,
                    1.0
                  ],
                  "tricolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "trioncolor": [
                    1.0,
                    0.8,
                    0.18,
                    1.0
                  ],
                  "varname": "gainout_slider",
                  "warmcolor": [
                    0.95,
                    0.82,
                    0.2,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Last recalled or stored preset.",
                  "fontname": "Arial",
                  "fontsize": 10.0,
                  "hint": "Last recalled or stored preset.",
                  "id": "obj-387",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    20.0,
                    760.0,
                    320.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    737.0,
                    346.0,
                    18.0
                  ],
                  "text": "Loaded: none",
                  "textcolor": [
                    0.65,
                    0.71,
                    0.77,
                    1.0
                  ],
                  "varname": "presetstatus"
                }
              },
              {
                "box": {
                  "annotation": "Set global gain, dB; fixed 2 s fade.",
                  "bgcolor": [
                    1.0,
                    0.8,
                    0.18,
                    1.0
                  ],
                  "bgoncolor": [
                    1.0,
                    0.92,
                    0.55,
                    1.0
                  ],
                  "fontface": 1,
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Set global gain, dB; fixed 2 s fade.",
                  "id": "obj-388",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1068.0,
                    755.0,
                    62.0,
                    21.0
                  ],
                  "text": "0 dB",
                  "textcolor": [
                    0.04,
                    0.06,
                    0.09,
                    1.0
                  ],
                  "texton": "0 dB",
                  "textoncolor": [
                    0.04,
                    0.06,
                    0.09,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Set global gain, dB; fixed 2 s fade.",
                  "hint": "Set global gain, dB; fixed 2 s fade.",
                  "id": "obj-389",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    2350.0,
                    120.0,
                    22.0
                  ],
                  "text": "gainout 0."
                }
              },
              {
                "box": {
                  "annotation": "Section guide.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Section guide.",
                  "id": "obj-391",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1220.0,
                    2390.0,
                    853.0,
                    19.0
                  ],
                  "text": "Global Gain Out: live.gain~ dB outlet controls the fixed 2000 ms native ramp. Its pre-fader meter monitors protected output; signal outlet unused to avoid a second gain stage."
                }
              },
              {
                "box": {
                  "annotation": "Full state message.",
                  "comment": "Full state message",
                  "hint": "Full state message.",
                  "id": "state_out",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    350.0,
                    1530.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Send native coefficients to the display.",
                  "fontsize": 11.0,
                  "hint": "Send native coefficients to the display.",
                  "id": "native_coeffs",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    1885.0,
                    120.0,
                    21.0
                  ],
                  "text": "prepend coeffs"
                }
              },
              {
                "box": {
                  "id": "parallel_sum0",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1550.0,
                    1800.0,
                    150.0,
                    22.0
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "parallel_sum1",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1550.0,
                    1840.0,
                    150.0,
                    22.0
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "parallel_sum2",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1550.0,
                    1880.0,
                    150.0,
                    22.0
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "annotation": "Input level; zero when audio is off.",
                  "bgcolor": [
                    0.03,
                    0.04,
                    0.05,
                    1.0
                  ],
                  "hint": "Input level; zero when audio is off.",
                  "id": "input_meter0",
                  "maxclass": "meter~",
                  "numinlets": 1,
                  "numleds": 20,
                  "numoutlets": 1,
                  "offcolor": [
                    0.12,
                    0.15,
                    0.17,
                    1.0
                  ],
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    1400.0,
                    2010.0,
                    240.0,
                    12.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    167.0,
                    180.0,
                    76.0,
                    12.0
                  ],
                  "varname": "input_meter0"
                }
              },
              {
                "box": {
                  "annotation": "Output trim −24 to +12 dB; Glide sets fade.",
                  "channels": 1,
                  "coldcolor": [
                    0.3058823529411765,
                    1.0,
                    0.0,
                    1.0
                  ],
                  "display_range": [
                    -24.0,
                    12.0
                  ],
                  "focusbordercolor": [
                    0.050980392156862744,
                    0.8705882352941177,
                    0.03137254901960784,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Output trim −24 to +12 dB; Glide sets fade.",
                  "hotcolor": [
                    1.0,
                    0.48,
                    0.1,
                    1.0
                  ],
                  "id": "level0",
                  "inactivecoldcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "inactivewarmcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "interp": 20.0,
                  "interval": 50,
                  "lastchannelcount": 0,
                  "livemode": 1,
                  "maxclass": "live.gain~",
                  "metering": 0,
                  "mode": 1,
                  "modulationcolor": [
                    0.0,
                    1.0,
                    0.0784313725490196,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 4,
                  "orientation": 1,
                  "outlettype": [
                    "signal",
                    "",
                    "float",
                    "list"
                  ],
                  "overloadcolor": [
                    1.0,
                    0.16,
                    0.2,
                    1.0
                  ],
                  "parameter_enable": 1,
                  "patching_rect": [
                    1400.0,
                    2062.0,
                    240.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    630.0,
                    240.0,
                    34.0
                  ],
                  "saved_attribute_attributes": {
                    "focusbordercolor": {
                      "expression": ""
                    },
                    "modulationcolor": {
                      "expression": ""
                    },
                    "slidercolor": {
                      "expression": ""
                    },
                    "textcolor": {
                      "expression": ""
                    },
                    "tribordercolor": {
                      "expression": ""
                    },
                    "tricolor": {
                      "expression": ""
                    },
                    "trioncolor": {
                      "expression": ""
                    },
                    "valueof": {
                      "parameter_initial": [
                        -24.0
                      ],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Filter 1 Output",
                      "parameter_mmax": 12.0,
                      "parameter_mmin": -24.0,
                      "parameter_modmode": 0,
                      "parameter_shortname": "F1 Out",
                      "parameter_type": 0,
                      "parameter_unitstyle": 4
                    }
                  },
                  "showname": 0,
                  "slidercolor": [
                    0.239,
                    0.302,
                    0.38,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "thickness": 8,
                  "tribordercolor": [
                    0.9450980392156862,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "tricolor": [
                    0.9647058823529412,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ],
                  "trioncolor": [
                    0.9450980392156862,
                    0.00784313725490196,
                    0.24705882352941178,
                    1.0
                  ],
                  "varname": "level0",
                  "warmcolor": [
                    0.8705882352941177,
                    0.8901960784313725,
                    0.8666666666666667,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "level_cmd0",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1400.0,
                    2110.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend band 1 level"
                }
              },
              {
                "box": {
                  "annotation": "Channel output trim.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Channel output trim.",
                  "id": "level_label0",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    396.0,
                    172.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    19.0,
                    609.0,
                    240.0,
                    19.0
                  ],
                  "text": "OUTPUT → Global Gain Out / dB",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base frequency: 60–13000 Hz.",
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base frequency: 60–13000 Hz.",
                  "id": "label_obj-385_1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    16.0,
                    273.0,
                    185.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    281.5,
                    275.0,
                    96.0,
                    22.0
                  ],
                  "text": "FILTER TYPE",
                  "textcolor": [
                    0.8745098039215686,
                    0.8823529411764706,
                    0.8901960784313725,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Base filter gain: -36 to +36 dB.",
                  "id": "label_obj-2_1",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    81.0,
                    329.0,
                    80.0,
                    47.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    274.0,
                    331.0,
                    232.0,
                    20.0
                  ],
                  "text": "FREQ / GAIN MOTION",
                  "textcolor": [
                    0.3058823529411765,
                    0.8156862745098039,
                    0.0784313725490196,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Input level; zero when audio is off.",
                  "bgcolor": [
                    0.03,
                    0.04,
                    0.05,
                    1.0
                  ],
                  "hint": "Input level; zero when audio is off.",
                  "id": "input_meter1",
                  "maxclass": "meter~",
                  "numinlets": 1,
                  "numleds": 20,
                  "numoutlets": 1,
                  "offcolor": [
                    0.12,
                    0.15,
                    0.17,
                    1.0
                  ],
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    1660.0,
                    2010.0,
                    240.0,
                    12.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    418.0,
                    180.0,
                    78.0,
                    12.0
                  ],
                  "varname": "input_meter1"
                }
              },
              {
                "box": {
                  "annotation": "Output trim −24 to +12 dB; Glide sets fade.",
                  "channels": 1,
                  "coldcolor": [
                    0.0,
                    0.9803921568627451,
                    0.0784313725490196,
                    1.0
                  ],
                  "display_range": [
                    -24.0,
                    12.0
                  ],
                  "focusbordercolor": [
                    1.0,
                    0.8,
                    0.18,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Output trim −24 to +12 dB; Glide sets fade.",
                  "hotcolor": [
                    1.0,
                    0.48,
                    0.1,
                    1.0
                  ],
                  "id": "level1",
                  "inactivecoldcolor": [
                    0.12,
                    0.5,
                    0.43,
                    1.0
                  ],
                  "inactivewarmcolor": [
                    0.55,
                    0.48,
                    0.16,
                    1.0
                  ],
                  "interp": 20.0,
                  "interval": 50,
                  "lastchannelcount": 0,
                  "livemode": 1,
                  "maxclass": "live.gain~",
                  "metering": 0,
                  "mode": 1,
                  "numinlets": 1,
                  "numoutlets": 4,
                  "orientation": 1,
                  "outlettype": [
                    "signal",
                    "",
                    "float",
                    "list"
                  ],
                  "overloadcolor": [
                    1.0,
                    0.16,
                    0.2,
                    1.0
                  ],
                  "parameter_enable": 1,
                  "patching_rect": [
                    1660.0,
                    2060.0,
                    240.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    630.0,
                    240.0,
                    34.0
                  ],
                  "saved_attribute_attributes": {
                    "focusbordercolor": {
                      "expression": ""
                    },
                    "slidercolor": {
                      "expression": ""
                    },
                    "textcolor": {
                      "expression": ""
                    },
                    "tribordercolor": {
                      "expression": ""
                    },
                    "tricolor": {
                      "expression": ""
                    },
                    "trioncolor": {
                      "expression": ""
                    },
                    "valueof": {
                      "parameter_initial": [
                        -24.0
                      ],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Filter 2 Output",
                      "parameter_mmax": 12.0,
                      "parameter_mmin": -24.0,
                      "parameter_modmode": 0,
                      "parameter_shortname": "F2 Out",
                      "parameter_type": 0,
                      "parameter_unitstyle": 4
                    }
                  },
                  "showname": 0,
                  "slidercolor": [
                    0.239,
                    0.302,
                    0.38,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "thickness": 8,
                  "tribordercolor": [
                    0.9647058823529412,
                    0.027450980392156862,
                    0.027450980392156862,
                    1.0
                  ],
                  "tricolor": [
                    0.9254901960784314,
                    0.023529411764705882,
                    0.023529411764705882,
                    1.0
                  ],
                  "trioncolor": [
                    0.9647058823529412,
                    0.01568627450980392,
                    0.01568627450980392,
                    1.0
                  ],
                  "varname": "level1",
                  "warmcolor": [
                    0.95,
                    0.82,
                    0.2,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "level_cmd1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1660.0,
                    2110.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend band 2 level"
                }
              },
              {
                "box": {
                  "annotation": "Channel output trim.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Channel output trim.",
                  "id": "level_label1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    396.0,
                    172.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    272.0,
                    609.0,
                    240.0,
                    19.0
                  ],
                  "text": "OUTPUT → Global Gain Out / dB",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base frequency: 60–13000 Hz.",
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base frequency: 60–13000 Hz.",
                  "id": "label_obj-385_2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    16.0,
                    273.0,
                    185.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    534.5,
                    275.0,
                    96.0,
                    22.0
                  ],
                  "text": "FILTER TYPE",
                  "textcolor": [
                    0.8745098039215686,
                    0.8823529411764706,
                    0.8901960784313725,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Base filter gain: -36 to +36 dB.",
                  "id": "label_obj-2_2",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    81.0,
                    329.0,
                    80.0,
                    47.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    527.0,
                    331.0,
                    232.0,
                    20.0
                  ],
                  "text": "FREQ / GAIN MOTION",
                  "textcolor": [
                    0.3058823529411765,
                    0.8156862745098039,
                    0.0784313725490196,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Input level; zero when audio is off.",
                  "bgcolor": [
                    0.03,
                    0.04,
                    0.05,
                    1.0
                  ],
                  "hint": "Input level; zero when audio is off.",
                  "id": "input_meter2",
                  "maxclass": "meter~",
                  "numinlets": 1,
                  "numleds": 20,
                  "numoutlets": 1,
                  "offcolor": [
                    0.12,
                    0.15,
                    0.17,
                    1.0
                  ],
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    1920.0,
                    2010.0,
                    240.0,
                    12.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    670.0,
                    180.0,
                    77.0,
                    12.0
                  ],
                  "varname": "input_meter2"
                }
              },
              {
                "box": {
                  "annotation": "Output trim −24 to +12 dB; Glide sets fade.",
                  "channels": 1,
                  "coldcolor": [
                    0.0,
                    1.0,
                    0.2235294117647059,
                    1.0
                  ],
                  "display_range": [
                    -24.0,
                    12.0
                  ],
                  "focusbordercolor": [
                    1.0,
                    0.8,
                    0.18,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Output trim −24 to +12 dB; Glide sets fade.",
                  "hotcolor": [
                    1.0,
                    0.48,
                    0.1,
                    1.0
                  ],
                  "id": "level2",
                  "inactivecoldcolor": [
                    0.12,
                    0.5,
                    0.43,
                    1.0
                  ],
                  "inactivewarmcolor": [
                    0.55,
                    0.48,
                    0.16,
                    1.0
                  ],
                  "interp": 20.0,
                  "interval": 50,
                  "lastchannelcount": 0,
                  "livemode": 1,
                  "maxclass": "live.gain~",
                  "metering": 0,
                  "mode": 1,
                  "numinlets": 1,
                  "numoutlets": 4,
                  "orientation": 1,
                  "outlettype": [
                    "signal",
                    "",
                    "float",
                    "list"
                  ],
                  "overloadcolor": [
                    1.0,
                    0.16,
                    0.2,
                    1.0
                  ],
                  "parameter_enable": 1,
                  "patching_rect": [
                    1920.0,
                    2060.0,
                    240.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    630.0,
                    240.0,
                    34.0
                  ],
                  "saved_attribute_attributes": {
                    "focusbordercolor": {
                      "expression": ""
                    },
                    "slidercolor": {
                      "expression": ""
                    },
                    "textcolor": {
                      "expression": ""
                    },
                    "tribordercolor": {
                      "expression": ""
                    },
                    "tricolor": {
                      "expression": ""
                    },
                    "trioncolor": {
                      "expression": ""
                    },
                    "valueof": {
                      "parameter_initial": [
                        -24.0
                      ],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Filter 3 Output",
                      "parameter_mmax": 12.0,
                      "parameter_mmin": -24.0,
                      "parameter_modmode": 0,
                      "parameter_shortname": "F3 Out",
                      "parameter_type": 0,
                      "parameter_unitstyle": 4
                    }
                  },
                  "showname": 0,
                  "slidercolor": [
                    0.239,
                    0.302,
                    0.38,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "thickness": 8,
                  "tribordercolor": [
                    0.9254901960784314,
                    0.023529411764705882,
                    0.023529411764705882,
                    1.0
                  ],
                  "tricolor": [
                    0.9647058823529412,
                    0.01568627450980392,
                    0.01568627450980392,
                    1.0
                  ],
                  "trioncolor": [
                    0.9647058823529412,
                    0.0196078431372549,
                    0.0196078431372549,
                    1.0
                  ],
                  "varname": "level2",
                  "warmcolor": [
                    0.95,
                    0.82,
                    0.2,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "level_cmd2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1920.0,
                    2110.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend band 3 level"
                }
              },
              {
                "box": {
                  "annotation": "Channel output trim.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Channel output trim.",
                  "id": "level_label2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    396.0,
                    172.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    525.0,
                    609.0,
                    240.0,
                    19.0
                  ],
                  "text": "OUTPUT → Global Gain Out / dB",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base frequency: 60–13000 Hz.",
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 14.0,
                  "hint": "Base frequency: 60–13000 Hz.",
                  "id": "label_obj-385_3",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    16.0,
                    273.0,
                    185.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    787.5,
                    275.0,
                    96.0,
                    22.0
                  ],
                  "text": "FILTER TYPE",
                  "textcolor": [
                    0.8745098039215686,
                    0.8823529411764706,
                    0.8901960784313725,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Base filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Base filter gain: -36 to +36 dB.",
                  "id": "label_obj-2_3",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    81.0,
                    329.0,
                    80.0,
                    47.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    780.0,
                    331.0,
                    232.0,
                    20.0
                  ],
                  "text": "FREQ / GAIN MOTION",
                  "textcolor": [
                    0.3058823529411765,
                    0.8156862745098039,
                    0.0784313725490196,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Input level; zero when audio is off.",
                  "bgcolor": [
                    0.03,
                    0.04,
                    0.05,
                    1.0
                  ],
                  "hint": "Input level; zero when audio is off.",
                  "id": "input_meter3",
                  "maxclass": "meter~",
                  "numinlets": 1,
                  "numleds": 20,
                  "numoutlets": 1,
                  "offcolor": [
                    0.12,
                    0.15,
                    0.17,
                    1.0
                  ],
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    2180.0,
                    2010.0,
                    240.0,
                    12.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    923.0,
                    180.0,
                    79.0,
                    12.0
                  ],
                  "varname": "input_meter3"
                }
              },
              {
                "box": {
                  "annotation": "Output trim −24 to +12 dB; Glide sets fade.",
                  "channels": 1,
                  "coldcolor": [
                    0.0,
                    1.0,
                    0.12549019607843137,
                    1.0
                  ],
                  "display_range": [
                    -24.0,
                    12.0
                  ],
                  "focusbordercolor": [
                    1.0,
                    0.8,
                    0.18,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Output trim −24 to +12 dB; Glide sets fade.",
                  "hotcolor": [
                    1.0,
                    0.48,
                    0.1,
                    1.0
                  ],
                  "id": "level3",
                  "inactivecoldcolor": [
                    0.12,
                    0.5,
                    0.43,
                    1.0
                  ],
                  "inactivewarmcolor": [
                    0.55,
                    0.48,
                    0.16,
                    1.0
                  ],
                  "interp": 20.0,
                  "interval": 50,
                  "lastchannelcount": 0,
                  "livemode": 1,
                  "maxclass": "live.gain~",
                  "metering": 0,
                  "mode": 1,
                  "numinlets": 1,
                  "numoutlets": 4,
                  "orientation": 1,
                  "outlettype": [
                    "signal",
                    "",
                    "float",
                    "list"
                  ],
                  "overloadcolor": [
                    1.0,
                    0.16,
                    0.2,
                    1.0
                  ],
                  "parameter_enable": 1,
                  "patching_rect": [
                    2180.0,
                    2060.0,
                    240.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    630.0,
                    240.0,
                    34.0
                  ],
                  "saved_attribute_attributes": {
                    "focusbordercolor": {
                      "expression": ""
                    },
                    "slidercolor": {
                      "expression": ""
                    },
                    "textcolor": {
                      "expression": ""
                    },
                    "tribordercolor": {
                      "expression": ""
                    },
                    "tricolor": {
                      "expression": ""
                    },
                    "trioncolor": {
                      "expression": ""
                    },
                    "valueof": {
                      "parameter_initial": [
                        -24.0
                      ],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Filter 4 Output",
                      "parameter_mmax": 12.0,
                      "parameter_mmin": -24.0,
                      "parameter_modmode": 0,
                      "parameter_shortname": "F4 Out",
                      "parameter_type": 0,
                      "parameter_unitstyle": 4
                    }
                  },
                  "showname": 0,
                  "slidercolor": [
                    0.239,
                    0.302,
                    0.38,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "thickness": 8,
                  "tribordercolor": [
                    1.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "tricolor": [
                    1.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "trioncolor": [
                    1.0,
                    0.0,
                    0.0,
                    1.0
                  ],
                  "varname": "level3",
                  "warmcolor": [
                    0.95,
                    0.82,
                    0.2,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "level_cmd3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    2180.0,
                    2110.0,
                    150.0,
                    22.0
                  ],
                  "text": "prepend band 4 level"
                }
              },
              {
                "box": {
                  "annotation": "Channel output trim.",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Channel output trim.",
                  "id": "level_label3",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    396.0,
                    172.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    778.0,
                    609.0,
                    240.0,
                    19.0
                  ],
                  "text": "OUTPUT → Global Gain Out / dB",
                  "textcolor": [
                    0.306,
                    0.816,
                    0.078,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "id": "meter_audio_off",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    1380.0,
                    2180.0,
                    100.0,
                    22.0
                  ],
                  "text": "== 0"
                }
              },
              {
                "box": {
                  "id": "meter_reset_order",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    "int"
                  ],
                  "patching_rect": [
                    1500.0,
                    2180.0,
                    100.0,
                    22.0
                  ],
                  "text": "t b i"
                }
              },
              {
                "box": {
                  "id": "meter_silence_gate",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1620.0,
                    2180.0,
                    100.0,
                    22.0
                  ],
                  "text": "gate 1 1"
                }
              },
              {
                "box": {
                  "id": "meter_zero",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1740.0,
                    2180.0,
                    100.0,
                    22.0
                  ],
                  "text": "0."
                }
              },
              {
                "box": {
                  "id": "meter_reset_note",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1380.0,
                    2220.0,
                    600.0,
                    33.0
                  ],
                  "text": "DSP OFF: reset four input meters now and on each existing 50 ms UI tick. DSP ON: close reset gate; signal metering resumes. No control state is changed."
                }
              },
              {
                "box": {
                  "id": "clear_filter0",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "clear",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "patching_rect": [
                    1220.0,
                    2390.0,
                    50.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    181.0,
                    197.0,
                    50.0,
                    22.0
                  ],
                  "bgcolor": [
                    0.25,
                    0.29,
                    0.34,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "hint": "Clear this filter only: OFF, Peak, 60 Hz, Q 0.5, Filter gain -36 dB, Output -24 dB, both motion depths 0, Full Trip 100 ms, Loop OFF, both curves flat at 0. The channel fades out before resetting its biquad memory. Other filters, Global Gain Out and stored presets are retained.",
                  "annotation": "Clear this filter to valid minimum values."
                }
              },
              {
                "box": {
                  "id": "clear_cmd0",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend band 1",
                  "patching_rect": [
                    1220.0,
                    2425.0,
                    110.0,
                    22.0
                  ],
                  "hint": "Address only this filter."
                }
              },
              {
                "box": {
                  "id": "clear_filter1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "clear",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "patching_rect": [
                    1400.0,
                    2390.0,
                    50.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    434.0,
                    197.0,
                    50.0,
                    22.0
                  ],
                  "bgcolor": [
                    0.25,
                    0.29,
                    0.34,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "hint": "Clear this filter only: OFF, Peak, 60 Hz, Q 0.5, Filter gain -36 dB, Output -24 dB, both motion depths 0, Full Trip 100 ms, Loop OFF, both curves flat at 0. The channel fades out before resetting its biquad memory. Other filters, Global Gain Out and stored presets are retained.",
                  "annotation": "Clear this filter to valid minimum values."
                }
              },
              {
                "box": {
                  "id": "clear_cmd1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend band 2",
                  "patching_rect": [
                    1400.0,
                    2425.0,
                    110.0,
                    22.0
                  ],
                  "hint": "Address only this filter."
                }
              },
              {
                "box": {
                  "id": "clear_filter2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "clear",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "patching_rect": [
                    1580.0,
                    2390.0,
                    50.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    687.0,
                    197.0,
                    50.0,
                    22.0
                  ],
                  "bgcolor": [
                    0.25,
                    0.29,
                    0.34,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "hint": "Clear this filter only: OFF, Peak, 60 Hz, Q 0.5, Filter gain -36 dB, Output -24 dB, both motion depths 0, Full Trip 100 ms, Loop OFF, both curves flat at 0. The channel fades out before resetting its biquad memory. Other filters, Global Gain Out and stored presets are retained.",
                  "annotation": "Clear this filter to valid minimum values."
                }
              },
              {
                "box": {
                  "id": "clear_cmd2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend band 3",
                  "patching_rect": [
                    1580.0,
                    2425.0,
                    110.0,
                    22.0
                  ],
                  "hint": "Address only this filter."
                }
              },
              {
                "box": {
                  "id": "clear_filter3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "clear",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "patching_rect": [
                    1760.0,
                    2390.0,
                    50.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    940.0,
                    197.0,
                    50.0,
                    22.0
                  ],
                  "bgcolor": [
                    0.25,
                    0.29,
                    0.34,
                    1.0
                  ],
                  "textcolor": [
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  "hint": "Clear this filter only: OFF, Peak, 60 Hz, Q 0.5, Filter gain -36 dB, Output -24 dB, both motion depths 0, Full Trip 100 ms, Loop OFF, both curves flat at 0. The channel fades out before resetting its biquad memory. Other filters, Global Gain Out and stored presets are retained.",
                  "annotation": "Clear this filter to valid minimum values."
                }
              },
              {
                "box": {
                  "id": "clear_cmd3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend band 4",
                  "patching_rect": [
                    1760.0,
                    2425.0,
                    110.0,
                    22.0
                  ],
                  "hint": "Address only this filter."
                }
              },
              {
                "box": {
                  "annotation": "Source filter, 1-4.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Choose the source filter, 1-4. Click copy to to perform the copy. The two numbers must differ.",
                  "id": "copy_source",
                  "maxclass": "number",
                  "maximum": 4,
                  "minimum": 1,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1220.0,
                    2490.0,
                    42.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    330.0,
                    712.0,
                    42.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "copy_source"
                }
              },
              {
                "box": {
                  "id": "copy_init_source",
                  "maxclass": "newobj",
                  "text": "loadmess set 1",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1220.0,
                    2455.0,
                    100.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Destination filter, 1-4.",
                  "bgcolor": [
                    0.07,
                    0.085,
                    0.11,
                    1.0
                  ],
                  "fontsize": 12.0,
                  "hint": "Choose the destination filter, 1-4. Click copy to to perform the copy. The two numbers must differ.",
                  "id": "copy_destination",
                  "maxclass": "number",
                  "maximum": 4,
                  "minimum": 1,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    1458.0,
                    2490.0,
                    42.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    449.0,
                    712.0,
                    42.0,
                    23.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "varname": "copy_destination"
                }
              },
              {
                "box": {
                  "id": "copy_init_destination",
                  "maxclass": "newobj",
                  "text": "loadmess set 2",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1458.0,
                    2455.0,
                    100.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "copy_action",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "mode": 0,
                  "text": "copy to",
                  "texton": "copy to",
                  "fontsize": 12.0,
                  "patching_rect": [
                    1320.0,
                    2490.0,
                    67.0,
                    23.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    376.0,
                    712.0,
                    67.0,
                    23.0
                  ],
                  "bgcolor": [
                    0.776,
                    0.502,
                    0.18,
                    1.0
                  ],
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "hint": "Copy all source filter settings to the destination: type, ON/OFF, frequency, gain, Q, output, both motion depths, duration, curves and playback state. Active motion restarts. Equal source/destination is rejected.",
                  "annotation": "Copy source filter settings to a different filter."
                }
              },
              {
                "box": {
                  "id": "copy_feedback",
                  "varname": "copy_feedback",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "text": "Copy filter settings",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.91,
                    0.94,
                    0.96,
                    1.0
                  ],
                  "patching_rect": [
                    1550.0,
                    2490.0,
                    197.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    330.0,
                    691.0,
                    186.0,
                    19.0
                  ],
                  "hint": "Choose two different filters, then click copy to. This line confirms the copy or reports invalid numbers.",
                  "annotation": "Copy result."
                }
              },
              {
                "box": {
                  "id": "copy_source_store",
                  "maxclass": "newobj",
                  "text": "int 1",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    1220.0,
                    2530.0,
                    55.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "copy_pair",
                  "maxclass": "newobj",
                  "text": "pack 1 2",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1320.0,
                    2565.0,
                    75.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "copy_command",
                  "maxclass": "newobj",
                  "text": "prepend copyband",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1320.0,
                    2600.0,
                    130.0,
                    22.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "level_cmd0",
                    0
                  ],
                  "source": [
                    "level0",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level_cmd1",
                    0
                  ],
                  "source": [
                    "level1",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level_cmd2",
                    0
                  ],
                  "source": [
                    "level2",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level_cmd3",
                    0
                  ],
                  "source": [
                    "level3",
                    1
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
                    "level_cmd0",
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
                    "level_cmd1",
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
                    "level_cmd2",
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
                    "level_cmd3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "meter_reset_order",
                    0
                  ],
                  "source": [
                    "meter_audio_off",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "meter_silence_gate",
                    0
                  ],
                  "source": [
                    "meter_reset_order",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "meter_silence_gate",
                    1
                  ],
                  "source": [
                    "meter_reset_order",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "meter_zero",
                    0
                  ],
                  "source": [
                    "meter_silence_gate",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "input_meter0",
                    0
                  ],
                  "order": 3,
                  "source": [
                    "meter_zero",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "input_meter1",
                    0
                  ],
                  "order": 2,
                  "source": [
                    "meter_zero",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "input_meter2",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "meter_zero",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "input_meter3",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "meter_zero",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-356",
                    0
                  ],
                  "source": [
                    "native_coeffs",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-101",
                    0
                  ],
                  "source": [
                    "obj-100",
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
                    "obj-101",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-103",
                    0
                  ],
                  "source": [
                    "obj-102",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-104",
                    0
                  ],
                  "source": [
                    "obj-102",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-311",
                    0
                  ],
                  "source": [
                    "obj-102",
                    1
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
                    "obj-103",
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
                    "obj-104",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-107",
                    0
                  ],
                  "source": [
                    "obj-106",
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
                    "obj-107",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-109",
                    0
                  ],
                  "source": [
                    "obj-108",
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
                    "obj-109",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-111",
                    0
                  ],
                  "source": [
                    "obj-110",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-112",
                    0
                  ],
                  "source": [
                    "obj-110",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-313",
                    0
                  ],
                  "source": [
                    "obj-110",
                    1
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
                    "obj-111",
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
                    "obj-112",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-114",
                    0
                  ],
                  "source": [
                    "obj-113",
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
                    "obj-114",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-117",
                    0
                  ],
                  "source": [
                    "obj-116",
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
                    "obj-117",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-119",
                    0
                  ],
                  "source": [
                    "obj-118",
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
                    "obj-119",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-129",
                    0
                  ],
                  "source": [
                    "obj-128",
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
                    "obj-129",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-131",
                    0
                  ],
                  "source": [
                    "obj-130",
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
                    "obj-131",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-134",
                    0
                  ],
                  "source": [
                    "obj-133",
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
                    "obj-134",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-137",
                    0
                  ],
                  "source": [
                    "obj-136",
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
                    "obj-137",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-140",
                    0
                  ],
                  "source": [
                    "obj-139",
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
                    "obj-140",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-143",
                    0
                  ],
                  "source": [
                    "obj-142",
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
                    "obj-143",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-146",
                    0
                  ],
                  "source": [
                    "obj-145",
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
                    "obj-146",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-149",
                    0
                  ],
                  "source": [
                    "obj-148",
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
                    "obj-149",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-152",
                    0
                  ],
                  "source": [
                    "obj-151",
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
                    "obj-152",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-155",
                    0
                  ],
                  "source": [
                    "obj-154",
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
                    "obj-155",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-157",
                    0
                  ],
                  "source": [
                    "obj-156",
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
                    "obj-157",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-159",
                    0
                  ],
                  "source": [
                    "obj-158",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-160",
                    0
                  ],
                  "source": [
                    "obj-158",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-319",
                    0
                  ],
                  "source": [
                    "obj-158",
                    1
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
                    "obj-159",
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
                    "obj-16",
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
                    "obj-160",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-163",
                    0
                  ],
                  "source": [
                    "obj-162",
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
                    "obj-163",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-165",
                    0
                  ],
                  "source": [
                    "obj-164",
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
                    "obj-165",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-167",
                    0
                  ],
                  "source": [
                    "obj-166",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-168",
                    0
                  ],
                  "source": [
                    "obj-166",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-321",
                    0
                  ],
                  "source": [
                    "obj-166",
                    1
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
                    "obj-167",
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
                    "obj-168",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-170",
                    0
                  ],
                  "source": [
                    "obj-169",
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
                    "obj-17",
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
                    "obj-170",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-173",
                    0
                  ],
                  "source": [
                    "obj-172",
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
                    "obj-173",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-175",
                    0
                  ],
                  "source": [
                    "obj-174",
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
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-19",
                    0
                  ],
                  "source": [
                    "obj-18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-185",
                    0
                  ],
                  "source": [
                    "obj-184",
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
                    "obj-185",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-187",
                    0
                  ],
                  "source": [
                    "obj-186",
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
                    "obj-187",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-190",
                    0
                  ],
                  "source": [
                    "obj-189",
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
                    "obj-19",
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
                    "obj-190",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-193",
                    0
                  ],
                  "source": [
                    "obj-192",
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
                    "obj-193",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-196",
                    0
                  ],
                  "source": [
                    "obj-195",
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
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-199",
                    0
                  ],
                  "source": [
                    "obj-198",
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
                    "obj-199",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-202",
                    0
                  ],
                  "source": [
                    "obj-201",
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
                    "obj-202",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-205",
                    0
                  ],
                  "source": [
                    "obj-204",
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
                    "obj-205",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-208",
                    0
                  ],
                  "source": [
                    "obj-207",
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
                    "obj-208",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-22",
                    0
                  ],
                  "source": [
                    "obj-21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-211",
                    0
                  ],
                  "source": [
                    "obj-210",
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
                    "obj-211",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-213",
                    0
                  ],
                  "source": [
                    "obj-212",
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
                    "obj-213",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-215",
                    0
                  ],
                  "source": [
                    "obj-214",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-216",
                    0
                  ],
                  "source": [
                    "obj-214",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-327",
                    0
                  ],
                  "source": [
                    "obj-214",
                    1
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
                    "obj-215",
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
                    "obj-216",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-219",
                    0
                  ],
                  "source": [
                    "obj-218",
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
                    "obj-219",
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
                    "obj-22",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-221",
                    0
                  ],
                  "source": [
                    "obj-220",
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
                    "obj-221",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-223",
                    0
                  ],
                  "source": [
                    "obj-222",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-224",
                    0
                  ],
                  "source": [
                    "obj-222",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-329",
                    0
                  ],
                  "source": [
                    "obj-222",
                    1
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
                    "obj-223",
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
                    "obj-224",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-226",
                    0
                  ],
                  "source": [
                    "obj-225",
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
                    "obj-226",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-229",
                    0
                  ],
                  "source": [
                    "obj-228",
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
                    "obj-229",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-231",
                    0
                  ],
                  "source": [
                    "obj-230",
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
                    "obj-231",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-238",
                    0
                  ],
                  "source": [
                    "obj-237",
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
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-25",
                    0
                  ],
                  "source": [
                    "obj-24",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-241",
                    0
                  ],
                  "source": [
                    "obj-240",
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
                    "obj-241",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-244",
                    0
                  ],
                  "source": [
                    "obj-243",
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
                    "obj-244",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-246",
                    0
                  ],
                  "source": [
                    "obj-245",
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
                    "obj-246",
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
                    "obj-25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-257",
                    0
                  ],
                  "source": [
                    "obj-256",
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
                    "obj-257",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-259",
                    0
                  ],
                  "source": [
                    "obj-258",
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
                    "obj-259",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-261",
                    0
                  ],
                  "source": [
                    "obj-260",
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
                    "obj-261",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-263",
                    0
                  ],
                  "source": [
                    "obj-262",
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
                    "obj-263",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-265",
                    0
                  ],
                  "source": [
                    "obj-264",
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
                    "obj-265",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-267",
                    0
                  ],
                  "source": [
                    "obj-266",
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
                    "obj-267",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-269",
                    0
                  ],
                  "source": [
                    "obj-268",
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
                    "obj-269",
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
                    "obj-27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-271",
                    0
                  ],
                  "source": [
                    "obj-270",
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
                    "obj-271",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-273",
                    0
                  ],
                  "source": [
                    "obj-272",
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
                    "obj-273",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-275",
                    0
                  ],
                  "source": [
                    "obj-274",
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
                    "obj-275",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-278",
                    0
                  ],
                  "source": [
                    "obj-277",
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
                    "obj-278",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-280",
                    0
                  ],
                  "source": [
                    "obj-279",
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
                    "obj-28",
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
                    "obj-280",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-282",
                    0
                  ],
                  "source": [
                    "obj-281",
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
                    "obj-282",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-284",
                    0
                  ],
                  "source": [
                    "obj-283",
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
                    "obj-284",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-286",
                    0
                  ],
                  "source": [
                    "obj-285",
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
                    "obj-286",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-289",
                    0
                  ],
                  "source": [
                    "obj-288",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-290",
                    0
                  ],
                  "source": [
                    "obj-288",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-291",
                    0
                  ],
                  "source": [
                    "obj-288",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-292",
                    0
                  ],
                  "source": [
                    "obj-288",
                    3
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
                    "obj-289",
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
                    "obj-290",
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
                    "obj-291",
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
                    "obj-292",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "input_meter0",
                    0
                  ],
                  "order": 3,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "input_meter1",
                    0
                  ],
                  "order": 2,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "input_meter2",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "input_meter3",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-251",
                    0
                  ],
                  "order": 5,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-299",
                    0
                  ],
                  "order": 9,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-307",
                    0
                  ],
                  "order": 8,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-315",
                    0
                  ],
                  "order": 6,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-323",
                    0
                  ],
                  "order": 4,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-342",
                    0
                  ],
                  "order": 7,
                  "source": [
                    "obj-294",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-296",
                    0
                  ],
                  "source": [
                    "obj-295",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-297",
                    0
                  ],
                  "source": [
                    "obj-296",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-298",
                    0
                  ],
                  "source": [
                    "obj-296",
                    1
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
                    "obj-296",
                    2
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
                    "obj-297",
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
                    "obj-298",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level0",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-299",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-300",
                    0
                  ],
                  "source": [
                    "obj-299",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-301",
                    0
                  ],
                  "source": [
                    "obj-299",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-302",
                    0
                  ],
                  "source": [
                    "obj-299",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "parallel_sum0",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-299",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-354",
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
                    "state_out",
                    0
                  ],
                  "source": [
                    "obj-3",
                    1
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
                    "obj-30",
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
                    "obj-300",
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
                    "obj-301",
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
                    "obj-302",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-304",
                    0
                  ],
                  "source": [
                    "obj-303",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-299",
                    1
                  ],
                  "source": [
                    "obj-304",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-306",
                    0
                  ],
                  "source": [
                    "obj-305",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-299",
                    1
                  ],
                  "source": [
                    "obj-306",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level1",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-307",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-308",
                    0
                  ],
                  "source": [
                    "obj-307",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-309",
                    0
                  ],
                  "source": [
                    "obj-307",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-310",
                    0
                  ],
                  "source": [
                    "obj-307",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "parallel_sum0",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "obj-307",
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
                    "obj-308",
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
                    "obj-309",
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
                    "obj-31",
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
                    "obj-310",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-312",
                    0
                  ],
                  "source": [
                    "obj-311",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-307",
                    1
                  ],
                  "source": [
                    "obj-312",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-314",
                    0
                  ],
                  "source": [
                    "obj-313",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-307",
                    1
                  ],
                  "source": [
                    "obj-314",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level2",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-315",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-316",
                    0
                  ],
                  "source": [
                    "obj-315",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-317",
                    0
                  ],
                  "source": [
                    "obj-315",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-318",
                    0
                  ],
                  "source": [
                    "obj-315",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "parallel_sum1",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "obj-315",
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
                    "obj-316",
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
                    "obj-317",
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
                    "obj-318",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-320",
                    0
                  ],
                  "source": [
                    "obj-319",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-315",
                    1
                  ],
                  "source": [
                    "obj-320",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-322",
                    0
                  ],
                  "source": [
                    "obj-321",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-315",
                    1
                  ],
                  "source": [
                    "obj-322",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level3",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-323",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-324",
                    0
                  ],
                  "source": [
                    "obj-323",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-325",
                    0
                  ],
                  "source": [
                    "obj-323",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-326",
                    0
                  ],
                  "source": [
                    "obj-323",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "parallel_sum2",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "obj-323",
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
                    "obj-324",
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
                    "obj-325",
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
                    "obj-326",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-328",
                    0
                  ],
                  "source": [
                    "obj-327",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-323",
                    1
                  ],
                  "source": [
                    "obj-328",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-330",
                    0
                  ],
                  "source": [
                    "obj-329",
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
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-323",
                    1
                  ],
                  "source": [
                    "obj-330",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-334",
                    0
                  ],
                  "source": [
                    "obj-333",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-335",
                    0
                  ],
                  "source": [
                    "obj-334",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-336",
                    0
                  ],
                  "source": [
                    "obj-335",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-338",
                    0
                  ],
                  "source": [
                    "obj-336",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-336",
                    1
                  ],
                  "source": [
                    "obj-337",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-339",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "obj-338",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-352",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-338",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-340",
                    0
                  ],
                  "source": [
                    "obj-339",
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
                    "obj-34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-255",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-340",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-341",
                    0
                  ],
                  "order": 2,
                  "source": [
                    "obj-340",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-383",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-340",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "meter_audio_off",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-342",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-343",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-342",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-344",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-342",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-345",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-342",
                    1
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
                    "obj-343",
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
                    "obj-344",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-334",
                    2
                  ],
                  "source": [
                    "obj-345",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-347",
                    0
                  ],
                  "source": [
                    "obj-346",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-342",
                    0
                  ],
                  "order": 2,
                  "source": [
                    "obj-347",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-348",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-347",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-350",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-347",
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
                  "source": [
                    "obj-348",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "meter_silence_gate",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "obj-349",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-351",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-349",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-352",
                    0
                  ],
                  "order": 2,
                  "source": [
                    "obj-349",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-349",
                    0
                  ],
                  "source": [
                    "obj-350",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-299",
                    1
                  ],
                  "order": 3,
                  "source": [
                    "obj-351",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-307",
                    1
                  ],
                  "order": 2,
                  "source": [
                    "obj-351",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-315",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "obj-351",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-323",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "obj-351",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-353",
                    0
                  ],
                  "source": [
                    "obj-352",
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
                    "obj-353",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level0",
                    0
                  ],
                  "source": [
                    "obj-354",
                    93
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level1",
                    0
                  ],
                  "source": [
                    "obj-354",
                    94
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level2",
                    0
                  ],
                  "source": [
                    "obj-354",
                    95
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "level3",
                    0
                  ],
                  "source": [
                    "obj-354",
                    96
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-102",
                    0
                  ],
                  "source": [
                    "obj-354",
                    29
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
                    "obj-354",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-110",
                    0
                  ],
                  "source": [
                    "obj-354",
                    30
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-113",
                    0
                  ],
                  "source": [
                    "obj-354",
                    31
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-121",
                    0
                  ],
                  "source": [
                    "obj-354",
                    32
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-123",
                    0
                  ],
                  "source": [
                    "obj-354",
                    33
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-125",
                    0
                  ],
                  "source": [
                    "obj-354",
                    34
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-126",
                    0
                  ],
                  "source": [
                    "obj-354",
                    35
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-13",
                    0
                  ],
                  "source": [
                    "obj-354",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-130",
                    0
                  ],
                  "source": [
                    "obj-354",
                    36
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-133",
                    0
                  ],
                  "source": [
                    "obj-354",
                    37
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-136",
                    0
                  ],
                  "source": [
                    "obj-354",
                    38
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-139",
                    0
                  ],
                  "source": [
                    "obj-354",
                    39
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
                    "obj-354",
                    5
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-142",
                    0
                  ],
                  "source": [
                    "obj-354",
                    40
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-145",
                    0
                  ],
                  "source": [
                    "obj-354",
                    41
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-148",
                    0
                  ],
                  "source": [
                    "obj-354",
                    42
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-151",
                    0
                  ],
                  "source": [
                    "obj-354",
                    43
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-158",
                    0
                  ],
                  "source": [
                    "obj-354",
                    44
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-166",
                    0
                  ],
                  "source": [
                    "obj-354",
                    45
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-169",
                    0
                  ],
                  "source": [
                    "obj-354",
                    46
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-177",
                    0
                  ],
                  "source": [
                    "obj-354",
                    47
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-179",
                    0
                  ],
                  "source": [
                    "obj-354",
                    48
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-18",
                    0
                  ],
                  "source": [
                    "obj-354",
                    6
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-181",
                    0
                  ],
                  "source": [
                    "obj-354",
                    49
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-182",
                    0
                  ],
                  "source": [
                    "obj-354",
                    50
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-186",
                    0
                  ],
                  "source": [
                    "obj-354",
                    51
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-189",
                    0
                  ],
                  "source": [
                    "obj-354",
                    52
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-192",
                    0
                  ],
                  "source": [
                    "obj-354",
                    53
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-195",
                    0
                  ],
                  "source": [
                    "obj-354",
                    54
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-198",
                    0
                  ],
                  "source": [
                    "obj-354",
                    55
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-201",
                    0
                  ],
                  "source": [
                    "obj-354",
                    56
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-204",
                    0
                  ],
                  "source": [
                    "obj-354",
                    57
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-207",
                    0
                  ],
                  "source": [
                    "obj-354",
                    58
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-21",
                    0
                  ],
                  "source": [
                    "obj-354",
                    7
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-214",
                    0
                  ],
                  "source": [
                    "obj-354",
                    59
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-222",
                    0
                  ],
                  "source": [
                    "obj-354",
                    60
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-225",
                    0
                  ],
                  "source": [
                    "obj-354",
                    61
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-237",
                    0
                  ],
                  "source": [
                    "obj-354",
                    63
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-24",
                    0
                  ],
                  "source": [
                    "obj-354",
                    8
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-240",
                    0
                  ],
                  "source": [
                    "obj-354",
                    64
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-243",
                    0
                  ],
                  "source": [
                    "obj-354",
                    65
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-245",
                    0
                  ],
                  "source": [
                    "obj-354",
                    66
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-249",
                    0
                  ],
                  "source": [
                    "obj-354",
                    67
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-256",
                    0
                  ],
                  "source": [
                    "obj-354",
                    68
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-258",
                    0
                  ],
                  "source": [
                    "obj-354",
                    69
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-260",
                    0
                  ],
                  "source": [
                    "obj-354",
                    70
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-262",
                    0
                  ],
                  "source": [
                    "obj-354",
                    71
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-264",
                    0
                  ],
                  "source": [
                    "obj-354",
                    72
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-266",
                    0
                  ],
                  "source": [
                    "obj-354",
                    73
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-268",
                    0
                  ],
                  "source": [
                    "obj-354",
                    74
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-27",
                    0
                  ],
                  "source": [
                    "obj-354",
                    9
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-270",
                    0
                  ],
                  "source": [
                    "obj-354",
                    75
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-272",
                    0
                  ],
                  "source": [
                    "obj-354",
                    76
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-274",
                    0
                  ],
                  "source": [
                    "obj-354",
                    77
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-277",
                    0
                  ],
                  "source": [
                    "obj-354",
                    78
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-288",
                    0
                  ],
                  "source": [
                    "obj-354",
                    80
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-293",
                    0
                  ],
                  "source": [
                    "obj-354",
                    81
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-299",
                    1
                  ],
                  "source": [
                    "obj-354",
                    82
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-30",
                    0
                  ],
                  "source": [
                    "obj-354",
                    10
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-307",
                    1
                  ],
                  "source": [
                    "obj-354",
                    83
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-315",
                    1
                  ],
                  "source": [
                    "obj-354",
                    84
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-323",
                    1
                  ],
                  "source": [
                    "obj-354",
                    85
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-33",
                    0
                  ],
                  "source": [
                    "obj-354",
                    11
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-337",
                    0
                  ],
                  "source": [
                    "obj-354",
                    87
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-355",
                    0
                  ],
                  "source": [
                    "obj-354",
                    98
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-356",
                    0
                  ],
                  "source": [
                    "obj-354",
                    88
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-36",
                    0
                  ],
                  "source": [
                    "obj-354",
                    12
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-377",
                    0
                  ],
                  "source": [
                    "obj-354",
                    89
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-380",
                    0
                  ],
                  "source": [
                    "obj-354",
                    90
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-383",
                    0
                  ],
                  "source": [
                    "obj-354",
                    91
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-387",
                    0
                  ],
                  "source": [
                    "obj-354",
                    92
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-39",
                    0
                  ],
                  "source": [
                    "obj-354",
                    13
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-46",
                    0
                  ],
                  "source": [
                    "obj-354",
                    14
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
                    "obj-354",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-54",
                    0
                  ],
                  "source": [
                    "obj-354",
                    15
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-57",
                    0
                  ],
                  "source": [
                    "obj-354",
                    16
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "source": [
                    "obj-354",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-65",
                    0
                  ],
                  "source": [
                    "obj-354",
                    17
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-67",
                    0
                  ],
                  "source": [
                    "obj-354",
                    18
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-69",
                    0
                  ],
                  "source": [
                    "obj-354",
                    19
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-70",
                    0
                  ],
                  "source": [
                    "obj-354",
                    20
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-74",
                    0
                  ],
                  "source": [
                    "obj-354",
                    21
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-77",
                    0
                  ],
                  "source": [
                    "obj-354",
                    22
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-80",
                    0
                  ],
                  "source": [
                    "obj-354",
                    23
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-83",
                    0
                  ],
                  "source": [
                    "obj-354",
                    24
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-86",
                    0
                  ],
                  "source": [
                    "obj-354",
                    25
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-89",
                    0
                  ],
                  "source": [
                    "obj-354",
                    26
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-9",
                    0
                  ],
                  "source": [
                    "obj-354",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-92",
                    0
                  ],
                  "source": [
                    "obj-354",
                    27
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-95",
                    0
                  ],
                  "source": [
                    "obj-354",
                    28
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-37",
                    0
                  ],
                  "source": [
                    "obj-36",
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
                    "obj-37",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-379",
                    0
                  ],
                  "source": [
                    "obj-377",
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
                    "obj-379",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-381",
                    0
                  ],
                  "source": [
                    "obj-380",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-382",
                    1
                  ],
                  "source": [
                    "obj-381",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-333",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-382",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-339",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-382",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-379",
                    0
                  ],
                  "source": [
                    "obj-383",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-389",
                    0
                  ],
                  "source": [
                    "obj-388",
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
                    "obj-389",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-40",
                    0
                  ],
                  "source": [
                    "obj-39",
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
                  "source": [
                    "obj-4",
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
                    "obj-40",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
                    0
                  ],
                  "source": [
                    "obj-42",
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
                    "obj-43",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-45",
                    0
                  ],
                  "source": [
                    "obj-44",
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
                    "obj-45",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-303",
                    0
                  ],
                  "source": [
                    "obj-46",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-47",
                    0
                  ],
                  "source": [
                    "obj-46",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-48",
                    0
                  ],
                  "source": [
                    "obj-46",
                    3
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
                    "obj-47",
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
                    "obj-48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-51",
                    0
                  ],
                  "source": [
                    "obj-50",
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
                    "obj-51",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-53",
                    0
                  ],
                  "source": [
                    "obj-52",
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
                    "obj-53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-305",
                    0
                  ],
                  "source": [
                    "obj-54",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-55",
                    0
                  ],
                  "source": [
                    "obj-54",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-56",
                    0
                  ],
                  "source": [
                    "obj-54",
                    3
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
                    "obj-55",
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
                    "obj-56",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-58",
                    0
                  ],
                  "source": [
                    "obj-57",
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
                    "obj-58",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "native_coeffs",
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
                    "obj-61",
                    0
                  ],
                  "source": [
                    "obj-60",
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
                    "obj-61",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-63",
                    0
                  ],
                  "source": [
                    "obj-62",
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
                    "obj-63",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-73",
                    0
                  ],
                  "source": [
                    "obj-72",
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
                    "obj-73",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-75",
                    0
                  ],
                  "source": [
                    "obj-74",
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
                    "obj-75",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-78",
                    0
                  ],
                  "source": [
                    "obj-77",
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
                    "obj-78",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-81",
                    0
                  ],
                  "source": [
                    "obj-80",
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
                    "obj-81",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-84",
                    0
                  ],
                  "source": [
                    "obj-83",
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
                    "obj-84",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-87",
                    0
                  ],
                  "source": [
                    "obj-86",
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
                    "obj-87",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-90",
                    0
                  ],
                  "source": [
                    "obj-89",
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
                    "obj-90",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-93",
                    0
                  ],
                  "source": [
                    "obj-92",
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
                    "obj-93",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-96",
                    0
                  ],
                  "source": [
                    "obj-95",
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
                    "obj-96",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-99",
                    0
                  ],
                  "source": [
                    "obj-98",
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
                    "obj-99",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "parallel_sum1",
                    0
                  ],
                  "source": [
                    "parallel_sum0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "parallel_sum2",
                    0
                  ],
                  "source": [
                    "parallel_sum1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-253",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "parallel_sum2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-382",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "parallel_sum2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "clear_filter0",
                    0
                  ],
                  "destination": [
                    "clear_cmd0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "clear_cmd0",
                    0
                  ],
                  "destination": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "clear_filter1",
                    0
                  ],
                  "destination": [
                    "clear_cmd1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "clear_cmd1",
                    0
                  ],
                  "destination": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "clear_filter2",
                    0
                  ],
                  "destination": [
                    "clear_cmd2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "clear_cmd2",
                    0
                  ],
                  "destination": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "clear_filter3",
                    0
                  ],
                  "destination": [
                    "clear_cmd3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "clear_cmd3",
                    0
                  ],
                  "destination": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "copy_init_source",
                    0
                  ],
                  "destination": [
                    "copy_source",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "copy_init_destination",
                    0
                  ],
                  "destination": [
                    "copy_destination",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "copy_source",
                    0
                  ],
                  "destination": [
                    "copy_source_store",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "copy_destination",
                    0
                  ],
                  "destination": [
                    "copy_pair",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "copy_action",
                    0
                  ],
                  "destination": [
                    "copy_source_store",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "copy_source_store",
                    0
                  ],
                  "destination": [
                    "copy_pair",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "copy_pair",
                    0
                  ],
                  "destination": [
                    "copy_command",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "copy_command",
                    0
                  ],
                  "destination": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-354",
                    97
                  ],
                  "destination": [
                    "copy_feedback",
                    0
                  ]
                }
              }
            ],
            "bgcolor": [
              0.075,
              0.09,
              0.115,
              1.0
            ],
            "editing_bgcolor": [
              0.16,
              0.17,
              0.19,
              1.0
            ]
          },
          "patching_rect": [
            49.0,
            245.0,
            99.0,
            22.0
          ],
          "saved_object_attributes": {
            "editing_bgcolor": [
              0.16,
              0.17,
              0.19,
              1.0
            ],
            "locked_bgcolor": [
              0.075,
              0.09,
              0.115,
              1.0
            ]
          },
          "text": "p Filter_Bank_v6"
        }
      },
      {
        "box": {
          "annotation": "Initialize on opening.",
          "hidden": 1,
          "hint": "Initialize on opening.",
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            583.0,
            244.0,
            80.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "annotation": "Schedule low-priority control.",
          "hidden": 1,
          "hint": "Schedule low-priority control.",
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            583.0,
            273.0,
            80.0,
            22.0
          ],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "annotation": "Open connected patcher.",
          "hidden": 1,
          "hint": "Open connected patcher.",
          "id": "obj-29",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            583.0,
            300.0,
            60.0,
            22.0
          ],
          "text": "open"
        }
      },
      {
        "box": {
          "annotation": "Open connected patcher.",
          "hidden": 1,
          "hint": "Open connected patcher.",
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            583.0,
            329.0,
            80.0,
            22.0
          ],
          "text": "pcontrol"
        }
      },
      {
        "box": {
          "annotation": "FILTER BANK v6",
          "fontname": "Arial",
          "fontsize": 24.0,
          "hint": "FILTER BANK v6",
          "id": "obj-101",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            15.0,
            8.0,
            280.0,
            33.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            16.0,
            1400.0,
            33.0
          ],
          "text": "FILTER BANK v6",
          "textcolor": [
            0.91,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "TEST SIGNAL",
          "fontname": "Arial",
          "fontsize": 16.0,
          "hint": "TEST SIGNAL",
          "id": "obj-103",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            49.0,
            46.0,
            112.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            112.0,
            300.0,
            24.0
          ],
          "text": "TEST SIGNAL",
          "textcolor": [
            0.32,
            0.77,
            0.75,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Double-click to edit",
          "fontname": "Arial",
          "fontsize": 13.0,
          "hint": "Double-click to edit",
          "id": "obj-105",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            60.0,
            221.0,
            118.0,
            21.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            303.0,
            260.0,
            21.0
          ],
          "text": "Open editor",
          "textcolor": [
            0.32,
            0.77,
            0.75,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Your stereo output fader",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Your stereo output fader",
          "id": "obj-106",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            126.0,
            333.0,
            73.0,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            117.0,
            410.0,
            190.0,
            33.0
          ],
          "text": "OUTPUT\nGAIN",
          "textcolor": [
            0.65,
            0.71,
            0.77,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Output on / off",
          "fontname": "Arial",
          "fontsize": 13.0,
          "hint": "Output on / off",
          "id": "obj-107",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470.0,
            377.0,
            91.0,
            21.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            536.0,
            200.0,
            21.0
          ],
          "text": "Output on / off",
          "textcolor": [
            0.91,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "PRESETS / FILTERS",
          "fontname": "Arial",
          "fontsize": 13.0,
          "hint": "PRESETS / FILTERS",
          "id": "filter_commands_title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            298.0,
            46.0,
            133.0,
            21.0
          ],
          "text": "PRESETS / FILTERS",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Choose a command; description is display-only.",
          "bgcolor": [
            0.16,
            0.2,
            0.25,
            1
          ],
          "bgfillcolor_color": [
            0.16,
            0.2,
            0.25,
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
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Choose a command; description is display-only.",
          "id": "filter_commands",
          "items": [
            "Choose a command...",
            ",",
            "1 Peak boost / cut",
            ",",
            "2 Lowpass dark / bright",
            ",",
            "3 Bandpass sweeping band",
            ",",
            "4 Ultra-narrow whistle",
            ",",
            "5 Highpass body / hiss",
            ",",
            "6 Resonant singing band",
            ",",
            "7 Notch moving hollow",
            ",",
            "8 Recall preset 8",
            ",",
            "9 Recall preset 9",
            ",",
            "10 Recall preset 10",
            ",",
            "recall 1 Peak boost / cut",
            ",",
            "filter 1 Target filter 1",
            ",",
            "filter 2 Target filter 2",
            ",",
            "filter 3 Target filter 3",
            ",",
            "filter 4 Target filter 4",
            ",",
            "selected 1 Target filter 1 (alias)",
            ",",
            "freq 3000 2000 3000 Hz in 2 s",
            ",",
            "line 1000 1000 1000 Hz in 1 s (alias)",
            ",",
            "gain 0 1000 0 dB in 1 s",
            ",",
            "gain 12 1000 +12 dB in 1 s",
            ",",
            "q 6 1000 Q 6 in 1 s",
            ",",
            "q 200 2000 Ultra Q 200 in 2 s",
            ",",
            "uitype peak Peak boost / cut (reset levels)",
            ",",
            "uitype lowpass Lowpass (reset levels)",
            ",",
            "uitype bandpass Bandpass (reset levels)",
            ",",
            "uitype ultra Ultra-narrow bandpass (reset levels)",
            ",",
            "enable 1 0 Filter 1 OFF",
            ",",
            "enable 1 1 Enable filter 1",
            ",",
            "filters 0 All filters OFF",
            ",",
            "filters 1 Enable first filter",
            ",",
            "filters 2 Enable first two",
            ",",
            "filters 3 Enable first three",
            ",",
            "filters 4 Enable all four",
            ",",
            "fade 1500 On/off fade 1.5 s",
            ",",
            "interp 1000 Parameter glide 1 s",
            ",",
            "band 2 q 2 2000 Filter 2 Q 2 in 2 s",
            ",",
            "uitype highpass Pass above cutoff (reset levels)",
            ",",
            "uitype resonant Resonant bandpass (reset levels)",
            ",",
            "uitype notch Reject center band (reset levels)",
            ",",
            "band 2 level -12 2000 Filter 2 output -12 dB in 2 s"
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
            294.0,
            82.0,
            186.0,
            22.0
          ],
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ],
          "varname": "filter_commands"
        }
      },
      {
        "box": {
          "annotation": "Open this local subpatch.",
          "bgcolor": [
            0.067,
            0.122,
            0.761,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Open this local subpatch.",
          "id": "filter_commands_only",
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
              "minor": 2,
              "revision": 1,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100.0,
              100.0,
              470.0,
              280.0
            ],
            "boxes": [
              {
                "box": {
                  "annotation": "Local input.",
                  "comment": "",
                  "hint": "Local input.",
                  "id": "in",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    25.0,
                    25.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Private local data table.",
                  "coll_data": {
                    "count": 40,
                    "data": [
                      {
                        "key": 1,
                        "value": [
                          1
                        ]
                      },
                      {
                        "key": 2,
                        "value": [
                          2
                        ]
                      },
                      {
                        "key": 3,
                        "value": [
                          3
                        ]
                      },
                      {
                        "key": 4,
                        "value": [
                          4
                        ]
                      },
                      {
                        "key": 5,
                        "value": [
                          5
                        ]
                      },
                      {
                        "key": 6,
                        "value": [
                          6
                        ]
                      },
                      {
                        "key": 7,
                        "value": [
                          7
                        ]
                      },
                      {
                        "key": 8,
                        "value": [
                          8
                        ]
                      },
                      {
                        "key": 9,
                        "value": [
                          9
                        ]
                      },
                      {
                        "key": 10,
                        "value": [
                          10
                        ]
                      },
                      {
                        "key": 11,
                        "value": [
                          "recall",
                          1
                        ]
                      },
                      {
                        "key": 12,
                        "value": [
                          "filter",
                          1
                        ]
                      },
                      {
                        "key": 13,
                        "value": [
                          "filter",
                          2
                        ]
                      },
                      {
                        "key": 14,
                        "value": [
                          "filter",
                          3
                        ]
                      },
                      {
                        "key": 15,
                        "value": [
                          "filter",
                          4
                        ]
                      },
                      {
                        "key": 16,
                        "value": [
                          "selected",
                          1
                        ]
                      },
                      {
                        "key": 17,
                        "value": [
                          "freq",
                          3000,
                          2000
                        ]
                      },
                      {
                        "key": 18,
                        "value": [
                          "line",
                          1000,
                          1000
                        ]
                      },
                      {
                        "key": 19,
                        "value": [
                          "gain",
                          0,
                          1000
                        ]
                      },
                      {
                        "key": 20,
                        "value": [
                          "gain",
                          12,
                          1000
                        ]
                      },
                      {
                        "key": 21,
                        "value": [
                          "q",
                          6,
                          1000
                        ]
                      },
                      {
                        "key": 22,
                        "value": [
                          "q",
                          200,
                          2000
                        ]
                      },
                      {
                        "key": 23,
                        "value": [
                          "uitype",
                          "peak"
                        ]
                      },
                      {
                        "key": 24,
                        "value": [
                          "uitype",
                          "lowpass"
                        ]
                      },
                      {
                        "key": 25,
                        "value": [
                          "uitype",
                          "bandpass"
                        ]
                      },
                      {
                        "key": 26,
                        "value": [
                          "uitype",
                          "ultra"
                        ]
                      },
                      {
                        "key": 27,
                        "value": [
                          "enable",
                          1,
                          0
                        ]
                      },
                      {
                        "key": 28,
                        "value": [
                          "enable",
                          1,
                          1
                        ]
                      },
                      {
                        "key": 29,
                        "value": [
                          "filters",
                          0
                        ]
                      },
                      {
                        "key": 30,
                        "value": [
                          "filters",
                          1
                        ]
                      },
                      {
                        "key": 31,
                        "value": [
                          "filters",
                          2
                        ]
                      },
                      {
                        "key": 32,
                        "value": [
                          "filters",
                          3
                        ]
                      },
                      {
                        "key": 33,
                        "value": [
                          "filters",
                          4
                        ]
                      },
                      {
                        "key": 34,
                        "value": [
                          "fade",
                          1500
                        ]
                      },
                      {
                        "key": 35,
                        "value": [
                          "interp",
                          1000
                        ]
                      },
                      {
                        "key": 36,
                        "value": [
                          "band",
                          2,
                          "q",
                          2,
                          2000
                        ]
                      },
                      {
                        "key": 37,
                        "value": [
                          "uitype",
                          "highpass"
                        ]
                      },
                      {
                        "key": 38,
                        "value": [
                          "uitype",
                          "resonant"
                        ]
                      },
                      {
                        "key": 39,
                        "value": [
                          "uitype",
                          "notch"
                        ]
                      },
                      {
                        "key": 40,
                        "value": [
                          "band",
                          2,
                          "level",
                          -12,
                          2000
                        ]
                      }
                    ]
                  },
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Private local data table.",
                  "id": "table",
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
                    25.0,
                    85.0,
                    225.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "embed": 1,
                    "precision": 9
                  },
                  "text": "coll @embed 1 @precision 9",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Route messages by selector.",
                  "id": "strip",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25.0,
                    130.0,
                    80.0,
                    22.0
                  ],
                  "text": "route list",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Local output.",
                  "comment": "",
                  "hint": "Local output.",
                  "id": "out",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25.0,
                    190.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Private lookup: menu index in; command only out.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Private lookup: menu index in; command only out.",
                  "id": "note",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    170.0,
                    135.0,
                    280.0,
                    55.0
                  ],
                  "text": "Private lookup: menu index in; command only out.\nDescriptions never enter the control inlet.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "table",
                    0
                  ],
                  "source": [
                    "in",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "strip",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "strip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "strip",
                    0
                  ],
                  "source": [
                    "table",
                    0
                  ]
                }
              }
            ],
            "bgcolor": [
              0.075,
              0.09,
              0.115,
              1.0
            ],
            "editing_bgcolor": [
              0.16,
              0.17,
              0.19,
              1.0
            ]
          },
          "patching_rect": [
            294.0,
            112.0,
            177.0,
            22.0
          ],
          "saved_object_attributes": {
            "editing_bgcolor": [
              0.16,
              0.17,
              0.19,
              1.0
            ],
            "locked_bgcolor": [
              0.075,
              0.09,
              0.115,
              1.0
            ]
          },
          "text": "p Presets_Filters",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Last command sent.",
          "bgcolor": [
            0.1,
            0.13,
            0.17,
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
            0.1,
            0.13,
            0.17,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "fontname": "Arial",
          "fontsize": 12.0,
          "gradient": 1,
          "hint": "Last command sent.",
          "id": "filter_commands_sent",
          "ignoreclick": 1,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            306.0,
            142.0,
            169.0,
            22.0
          ],
          "text": "1",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "MOTION / GLOBALS / STORAGE",
          "fontname": "Arial",
          "fontsize": 11.0,
          "hint": "MOTION / GLOBALS / STORAGE",
          "id": "motion_commands_title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            486.0,
            46.0,
            206.0,
            19.0
          ],
          "text": "MOTION / GLOBALS / STORAGE",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Choose a command; description is display-only.",
          "bgcolor": [
            0.16,
            0.2,
            0.25,
            1
          ],
          "bgfillcolor_color": [
            0.16,
            0.2,
            0.25,
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
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Choose a command; description is display-only.",
          "id": "motion_commands",
          "items": [
            "Choose a command...",
            ",",
            "once One motion trip",
            ",",
            "once 2 One trip on filter 2",
            ",",
            "loop 1 Repeat both curves",
            ",",
            "loop 0 Stop both curves",
            ",",
            "depth 200 Frequency depth +/-200 Hz",
            ",",
            "hz 200 Frequency depth (alias)",
            ",",
            "ampdepth 6 Gain depth +/-6 dB",
            ",",
            "period 4000 Full trip 4 s",
            ",",
            "sweep 200 4000 Set depth/time and loop",
            ",",
            "resetcurve Flatten frequency; stop motion",
            ",",
            "resetamp Flatten gain curve",
            ",",
            "triangle Frequency triangle",
            ",",
            "amptriangle Gain triangle",
            ",",
            "band 3 ampdepth 10 Filter 3 gain depth 10 dB",
            ",",
            "band 4 loop 1 Loop filter 4",
            ",",
            "stop Stop selected motion",
            ",",
            "stop 2 Stop filter 2 motion",
            ",",
            "stopall Stop all motion",
            ",",
            "level -6 1000 Selected output -6 dB in 1 s",
            ",",
            "filters 0 All outputs OFF",
            ",",
            "gainout 0. Unity output in 2 s",
            ",",
            "gainout -6. Output -6 dB in 2 s",
            ",",
            "normalize 1 Peak ceiling -6 dBFS",
            ",",
            "normalize 0 Peak ceiling -1 dBFS",
            ",",
            "slot 4 Choose store slot 4",
            ",",
            "store Store in chosen slot",
            ",",
            "store 4 Store all settings in slot 4",
            ",",
            "write Export preset bank",
            ",",
            "read Import preset bank",
            ",",
            "writebank Export bank (alias)",
            ",",
            "readbank Import bank (alias)",
            ",",
            "dumpstate Capture full state message",
            ",",
            "restorestate Restore last capture",
            ",",
            "boot Reset to silent startup"
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
            486.0,
            82.0,
            169.0,
            22.0
          ],
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ],
          "varname": "motion_commands"
        }
      },
      {
        "box": {
          "annotation": "Open this local subpatch.",
          "bgcolor": [
            0.067,
            0.122,
            0.761,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Open this local subpatch.",
          "id": "motion_commands_only",
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
              "minor": 2,
              "revision": 1,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              100.0,
              100.0,
              470.0,
              280.0
            ],
            "boxes": [
              {
                "box": {
                  "annotation": "Local input.",
                  "comment": "",
                  "hint": "Local input.",
                  "id": "in",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    25.0,
                    25.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Private local data table.",
                  "coll_data": {
                    "count": 34,
                    "data": [
                      {
                        "key": 1,
                        "value": [
                          "once"
                        ]
                      },
                      {
                        "key": 2,
                        "value": [
                          "once",
                          2
                        ]
                      },
                      {
                        "key": 3,
                        "value": [
                          "loop",
                          1
                        ]
                      },
                      {
                        "key": 4,
                        "value": [
                          "loop",
                          0
                        ]
                      },
                      {
                        "key": 5,
                        "value": [
                          "depth",
                          200
                        ]
                      },
                      {
                        "key": 6,
                        "value": [
                          "hz",
                          200
                        ]
                      },
                      {
                        "key": 7,
                        "value": [
                          "ampdepth",
                          6
                        ]
                      },
                      {
                        "key": 8,
                        "value": [
                          "period",
                          4000
                        ]
                      },
                      {
                        "key": 9,
                        "value": [
                          "sweep",
                          200,
                          4000
                        ]
                      },
                      {
                        "key": 10,
                        "value": [
                          "resetcurve"
                        ]
                      },
                      {
                        "key": 11,
                        "value": [
                          "resetamp"
                        ]
                      },
                      {
                        "key": 12,
                        "value": [
                          "triangle"
                        ]
                      },
                      {
                        "key": 13,
                        "value": [
                          "amptriangle"
                        ]
                      },
                      {
                        "key": 14,
                        "value": [
                          "band",
                          3,
                          "ampdepth",
                          10
                        ]
                      },
                      {
                        "key": 15,
                        "value": [
                          "band",
                          4,
                          "loop",
                          1
                        ]
                      },
                      {
                        "key": 16,
                        "value": [
                          "stop"
                        ]
                      },
                      {
                        "key": 17,
                        "value": [
                          "stop",
                          2
                        ]
                      },
                      {
                        "key": 18,
                        "value": [
                          "stopall"
                        ]
                      },
                      {
                        "key": 19,
                        "value": [
                          "level",
                          -6,
                          1000
                        ]
                      },
                      {
                        "key": 20,
                        "value": [
                          "filters",
                          0
                        ]
                      },
                      {
                        "key": 21,
                        "value": [
                          "gainout",
                          0
                        ]
                      },
                      {
                        "key": 22,
                        "value": [
                          "gainout",
                          -6
                        ]
                      },
                      {
                        "key": 23,
                        "value": [
                          "normalize",
                          1
                        ]
                      },
                      {
                        "key": 24,
                        "value": [
                          "normalize",
                          0
                        ]
                      },
                      {
                        "key": 25,
                        "value": [
                          "slot",
                          4
                        ]
                      },
                      {
                        "key": 26,
                        "value": [
                          "store"
                        ]
                      },
                      {
                        "key": 27,
                        "value": [
                          "store",
                          4
                        ]
                      },
                      {
                        "key": 28,
                        "value": [
                          "write"
                        ]
                      },
                      {
                        "key": 29,
                        "value": [
                          "read"
                        ]
                      },
                      {
                        "key": 30,
                        "value": [
                          "writebank"
                        ]
                      },
                      {
                        "key": 31,
                        "value": [
                          "readbank"
                        ]
                      },
                      {
                        "key": 32,
                        "value": [
                          "dumpstate"
                        ]
                      },
                      {
                        "key": 33,
                        "value": [
                          "restorestate"
                        ]
                      },
                      {
                        "key": 34,
                        "value": [
                          "boot"
                        ]
                      }
                    ]
                  },
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Private local data table.",
                  "id": "table",
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
                    25.0,
                    85.0,
                    225.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "embed": 1,
                    "precision": 9
                  },
                  "text": "coll @embed 1 @precision 9",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Route messages by selector.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Route messages by selector.",
                  "id": "strip",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25.0,
                    130.0,
                    80.0,
                    22.0
                  ],
                  "text": "route list",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Local output.",
                  "comment": "",
                  "hint": "Local output.",
                  "id": "out",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25.0,
                    190.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Private lookup: menu index in; command only out.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Private lookup: menu index in; command only out.",
                  "id": "note",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    170.0,
                    135.0,
                    274.0,
                    33.0
                  ],
                  "text": "Private lookup: menu index in; command only out.\nDescriptions never enter the control inlet.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "table",
                    0
                  ],
                  "source": [
                    "in",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "strip",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "strip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "strip",
                    0
                  ],
                  "source": [
                    "table",
                    0
                  ]
                }
              }
            ],
            "bgcolor": [
              0.075,
              0.09,
              0.115,
              1.0
            ],
            "editing_bgcolor": [
              0.16,
              0.17,
              0.19,
              1.0
            ]
          },
          "patching_rect": [
            486.0,
            112.0,
            164.0,
            22.0
          ],
          "saved_object_attributes": {
            "editing_bgcolor": [
              0.16,
              0.17,
              0.19,
              1.0
            ],
            "locked_bgcolor": [
              0.075,
              0.09,
              0.115,
              1.0
            ]
          },
          "text": "p Motion_Global_Commands",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Last command sent.",
          "bgcolor": [
            0.1,
            0.13,
            0.17,
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
            0.1,
            0.13,
            0.17,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_type": "gradient",
          "fontname": "Arial",
          "fontsize": 12.0,
          "gradient": 1,
          "hint": "Last command sent.",
          "id": "motion_commands_sent",
          "ignoreclick": 1,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            499.0,
            142.0,
            156.0,
            22.0
          ],
          "text": "symbol resetcurve",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "FULL STATE MESSAGE",
          "fontname": "Arial",
          "fontsize": 14.0,
          "hint": "FULL STATE MESSAGE",
          "id": "state_title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            313.0,
            166.0,
            162.0,
            22.0
          ],
          "text": "FULL STATE MESSAGE",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Capture current state and all presets.",
          "bgcolor": [
            0.067,
            0.122,
            0.761,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Capture current state and all presets.",
          "id": "capture",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            313.0,
            186.0,
            126.0,
            28.0
          ],
          "text": "Capture current state",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Capture current state and all presets.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hidden": 1,
          "hint": "Capture current state and all presets.",
          "id": "capture_cmd",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            368.0,
            192.0,
            70.0,
            22.0
          ],
          "text": "dumpstate",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Trigger in right-to-left order.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hidden": 1,
          "hint": "Trigger in right-to-left order.",
          "id": "capture_changed",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            329.0,
            300.0,
            22.0,
            22.0
          ],
          "text": "t b",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Mark captured message for saving.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hidden": 1,
          "hint": "Mark captured message for saving.",
          "id": "capture_dirty",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            329.0,
            324.0,
            31.0,
            22.0
          ],
          "text": "dirty",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Local patcher operations.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hidden": 1,
          "hint": "Local patcher operations.",
          "id": "home_patch",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            329.0,
            351.0,
            67.0,
            22.0
          ],
          "save": [
            "#N",
            "thispatcher",
            ";",
            "#Q",
            "end",
            ";"
          ],
          "text": "thispatcher",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Double-click for guide and playable examples.",
          "bgcolor": [
            0.671,
            0.035,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Double-click for guide and playable examples.",
          "id": "primer",
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
              "minor": 2,
              "revision": 1,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              34.0,
              113.0,
              348.0,
              903.0
            ],
            "openinpresentation": 1,
            "visible": 1,
            "boxes": [
              {
                "box": {
                  "annotation": "FILTER BANK / PRIMER",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "FILTER BANK / PRIMER",
                  "id": "title",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    20.0,
                    474.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    10.0,
                    142.0,
                    20.0
                  ],
                  "text": "FILTER BANK / PRIMER",
                  "textcolor": [
                    0.36,
                    0.84,
                    0.78,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Use your own input. Left inlet = audio; right inlet = commands.",
                  "fontname": "Arial",
                  "fontsize": 13.0,
                  "hint": "Use your own input. Left inlet = audio; right inlet = commands.",
                  "id": "intro",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    60.0,
                    365.0,
                    50.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 3,
                  "presentation_rect": [
                    24.0,
                    34.0,
                    291.0,
                    50.0
                  ],
                  "text": "Audio left; commands right.\nExamples control only the connected\nFilter Bank.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "GET A SOUND",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "GET A SOUND",
                  "id": "s1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    122.0,
                    344.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    83.0,
                    90.0,
                    20.0
                  ],
                  "text": "GET A SOUND",
                  "textcolor": [
                    0.36,
                    0.84,
                    0.78,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "1. Enable Max Audio and this demo's Output switch.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "1. Enable Max Audio and this demo's Output switch.",
                  "id": "s1body",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    154.0,
                    307.0,
                    60.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 4,
                  "presentation_rect": [
                    24.0,
                    104.0,
                    307.0,
                    60.0
                  ],
                  "text": "1. Enable Max Audio; raise listening level.\n2. Choose presets 1–7 for filter demos.\n3. Watch Filter 1 and the response graph.\n4. Stop motion to return to base settings.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "BIQUAD BASICS",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "BIQUAD BASICS",
                  "id": "s2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    490.0,
                    122.0,
                    349.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    595.0,
                    102.0,
                    20.0
                  ],
                  "text": "BIQUAD BASICS",
                  "textcolor": [
                    0.36,
                    0.84,
                    0.78,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "A biquad is a second-order filter: two poles and two zeros.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "A biquad is a second-order filter: two poles and two zeros.",
                  "id": "s2body",
                  "linecount": 4,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    490.0,
                    154.0,
                    316.0,
                    60.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 4,
                  "presentation_rect": [
                    24.0,
                    620.0,
                    316.0,
                    60.0
                  ],
                  "text": "Biquad: two poles and two zeros.\nFrequency locates the peak or cutoff.\nHigher Q is narrower and rings longer.\nPeak gain: boost/cut; 0 dB is flat.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "FILTER MODES",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "FILTER MODES",
                  "id": "s3",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    278.0,
                    342.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    195.0,
                    96.0,
                    20.0
                  ],
                  "text": "FILTER MODES",
                  "textcolor": [
                    0.36,
                    0.84,
                    0.78,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Seven modes; Ultra runs in parallel.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Seven modes; Ultra runs in parallel.",
                  "id": "s3body",
                  "linecount": 8,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    311.0,
                    303.0,
                    114.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 8,
                  "presentation_rect": [
                    24.0,
                    219.0,
                    303.0,
                    114.0
                  ],
                  "text": "1 Peak: boost / cut at 1200 Hz.\n2 Lowpass: dark to bright cutoff sweep.\n3 Bandpass: a moving band of sound.\n4 Ultra: a narrow, whistle-like band.\n5 Highpass: remove bass, then mids.\n6 Resonant: a strongly resonating band.\n7 Notch: a broad, moving rejection dip.\nOne active filter per demo; motion loops.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "TWO CURVES / ONE CLOCK",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "TWO CURVES / ONE CLOCK",
                  "id": "s4",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    490.0,
                    278.0,
                    344.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    683.0,
                    170.0,
                    20.0
                  ],
                  "text": "TWO CURVES / ONE CLOCK",
                  "textcolor": [
                    0.36,
                    0.84,
                    0.78,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "FREQUENCY curve × Hz depth offsets the base frequency.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "FREQUENCY curve × Hz depth offsets the base frequency.",
                  "id": "s4body",
                  "linecount": 5,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    490.0,
                    311.0,
                    324.0,
                    74.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 5,
                  "presentation_rect": [
                    24.0,
                    702.0,
                    324.0,
                    74.0
                  ],
                  "text": "Frequency curve × Hz depth = Hz offset.\nGain curve × dB depth = gain offset.\nFull Trip spans both curves once.\nOnce plays one trip; Loop repeats.\nFlat curves or zero depth: no motion.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "SAVE / MOVE A SOUND",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "SAVE / MOVE A SOUND",
                  "id": "s5",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    461.0,
                    341.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    363.0,
                    142.0,
                    20.0
                  ],
                  "text": "STORE / CAPTURE",
                  "textcolor": [
                    0.36,
                    0.84,
                    0.78,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Store saves settings into a slot 1–10. Save the patch.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Store saves settings into a slot 1–10. Save the patch.",
                  "id": "s5body",
                  "linecount": 5,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    494.0,
                    301.0,
                    74.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 5,
                  "presentation_rect": [
                    24.0,
                    388.0,
                    301.0,
                    74.0
                  ],
                  "text": "Store saves a preset slot; save the patch.\nCapture writes a full state message.\nOpen captured-restore-state to view it.\nClick its message to restore this copy.\nCopy it to another bank’s right inlet.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "RANGES / OUTPUT",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "RANGES / OUTPUT",
                  "id": "s6",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    490.0,
                    461.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    22.0,
                    797.0,
                    119.0,
                    20.0
                  ],
                  "text": "RANGES / OUTPUT",
                  "textcolor": [
                    0.36,
                    0.84,
                    0.78,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Frequency: 60–13000 Hz. Filter gain: -36 to +36 dB.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Frequency: 60–13000 Hz. Filter gain: -36 to +36 dB.",
                  "id": "s6body",
                  "linecount": 5,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    490.0,
                    494.0,
                    305.0,
                    74.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 5,
                  "presentation_rect": [
                    22.0,
                    818.0,
                    305.0,
                    74.0
                  ],
                  "text": "Frequency: 60–13000 Hz. Filter gain: ±36 dB.\nOutput faders: -24 to +12 dB; Glide sets fade.\nGlobal Gain Out: -36 to +12 dB; 2 s fade.\nInput meters stay active while OFF.\nProtection limits peaks; no makeup gain.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Section guide.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Section guide.",
                  "id": "scope",
                  "linecount": 6,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    657.0,
                    540.0,
                    87.0
                  ],
                  "presentation": 1,
                  "presentation_linecount": 6,
                  "presentation_rect": [
                    24.0,
                    489.0,
                    301.0,
                    87.0
                  ],
                  "text": "State includes settings, curves and presets.\nRunning curves restart from the beginning.\nAudio-engine settings and delay history\nare excluded, as are the demo controls.\nCopy the whole Filter_Bank_v6 object\nfor independent controls and presets.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Cycling ’74 references: biquad~ / filtercoeff~ / function / umenu",
                  "fontname": "Arial",
                  "fontsize": 11.0,
                  "hint": "Cycling ’74 references: biquad~ / filtercoeff~ / function / umenu",
                  "id": "sources",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    744.0,
                    892.0,
                    19.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    576.0,
                    313.0,
                    19.0
                  ],
                  "text": "Reference: Cycling ’74 filter documentation.",
                  "textcolor": [
                    0.68,
                    0.73,
                    0.8,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Commands to Filter Bank",
                  "comment": "Commands to Filter Bank",
                  "hint": "Commands to Filter Bank",
                  "id": "out",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24.0,
                    860.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Set up one audible peak.",
                  "bgcolor": [
                    0.6705882352941176,
                    0.03529411764705882,
                    0.8901960784313725,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Set up one audible peak.",
                  "id": "button_peak",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    24.0,
                    252.0,
                    192.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    169.0,
                    126.0,
                    18.0
                  ],
                  "text": "One peak",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Local control message.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Local control message.",
                  "id": "message_peak",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1000.0,
                    252.0,
                    858.0,
                    22.0
                  ],
                  "text": "stopall, filters 1, filter 1, type peak, freq 1000 1000, gain 12 1000, q 6 1000, depth 200, ampdepth 6, triangle, amptriangle, period 4000, gainout 0., level -6 1000",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Loop frequency and gain.",
                  "bgcolor": [
                    0.671,
                    0.035,
                    0.89,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Loop frequency and gain.",
                  "id": "button_motion",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    240.0,
                    252.0,
                    192.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    173.0,
                    169.0,
                    151.0,
                    18.0
                  ],
                  "text": "Motion",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Select target filter: 1–4.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Select target filter: 1–4.",
                  "id": "message_motion",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1000.0,
                    252.0,
                    650.0,
                    22.0
                  ],
                  "text": "filter 1, triangle, amptriangle, depth 200, ampdepth 6, period 4000, loop 1",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Set up four parallel Ultra bands.",
                  "bgcolor": [
                    0.671,
                    0.035,
                    0.89,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Set up four parallel Ultra bands.",
                  "id": "button_ultra",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    24.0,
                    425.0,
                    192.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    342.0,
                    190.0,
                    18.0
                  ],
                  "text": "Four Ultra",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Local control message.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Local control message.",
                  "id": "message_ultra",
                  "linecount": 3,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1000.0,
                    425.0,
                    657.0,
                    49.0
                  ],
                  "text": "stopall, filters 4, band 1 type ultra, band 1 freq 220, band 1 gain 12, band 2 type ultra, band 2 freq 700, band 2 gain 12, band 3 type ultra, band 3 freq 2200, band 3 gain 12, band 4 type ultra, band 4 freq 7000, band 4 gain 12, gainout 0., band 1 level -6 1000, band 2 level -6 1000, band 3 level -6 1000, band 4 level -6 1000",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Stop all motion.",
                  "bgcolor": [
                    0.671,
                    0.035,
                    0.89,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Stop all motion.",
                  "id": "button_stop",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    490.0,
                    425.0,
                    192.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    22.0,
                    775.0,
                    190.0,
                    18.0
                  ],
                  "text": "Stop motion",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Stop all four motion loops.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Stop all four motion loops.",
                  "id": "message_stop",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1000.0,
                    425.0,
                    650.0,
                    22.0
                  ],
                  "text": "stopall",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Fill the home-page state message.",
                  "bgcolor": [
                    0.671,
                    0.035,
                    0.89,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Fill the home-page state message.",
                  "id": "button_capture",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    24.0,
                    612.0,
                    192.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    24.0,
                    467.0,
                    190.0,
                    18.0
                  ],
                  "text": "Capture state",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Capture current state and all presets.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Capture current state and all presets.",
                  "id": "message_capture",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1000.0,
                    612.0,
                    650.0,
                    22.0
                  ],
                  "text": "dumpstate",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Fade this Filter Bank to silence.",
                  "bgcolor": [
                    0.671,
                    0.035,
                    0.89,
                    1.0
                  ],
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Fade this Filter Bank to silence.",
                  "id": "button_quiet",
                  "maxclass": "textbutton",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    490.0,
                    612.0,
                    192.0,
                    26.0
                  ],
                  "text": "Quiet",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              },
              {
                "box": {
                  "annotation": "Local control message.",
                  "fontname": "Arial",
                  "fontsize": 12.0,
                  "hint": "Local control message.",
                  "id": "message_quiet",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1000.0,
                    612.0,
                    650.0,
                    22.0
                  ],
                  "text": "stopall, filters 0",
                  "textcolor": [
                    0.92,
                    0.94,
                    0.96,
                    1.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "message_capture",
                    0
                  ],
                  "source": [
                    "button_capture",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "message_motion",
                    0
                  ],
                  "source": [
                    "button_motion",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "message_peak",
                    0
                  ],
                  "source": [
                    "button_peak",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "message_quiet",
                    0
                  ],
                  "source": [
                    "button_quiet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "message_stop",
                    0
                  ],
                  "source": [
                    "button_stop",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "message_ultra",
                    0
                  ],
                  "source": [
                    "button_ultra",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "message_capture",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "message_motion",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "message_peak",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "message_quiet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "message_stop",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "out",
                    0
                  ],
                  "source": [
                    "message_ultra",
                    0
                  ]
                }
              }
            ],
            "bgcolor": [
              0.075,
              0.09,
              0.115,
              1.0
            ],
            "editing_bgcolor": [
              0.16,
              0.17,
              0.19,
              1.0
            ]
          },
          "patching_rect": [
            534.0,
            206.0,
            148.0,
            22.0
          ],
          "saved_object_attributes": {
            "editing_bgcolor": [
              0.16,
              0.17,
              0.19,
              1.0
            ],
            "locked_bgcolor": [
              0.075,
              0.09,
              0.115,
              1.0
            ]
          },
          "text": "p Filter_Bank_Primer",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Double-click for basics and playable examples.",
          "bgcolor": [
            0.671,
            0.035,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Double-click for basics and playable examples.",
          "id": "primer_caption",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            534.0,
            167.0,
            135.0,
            33.0
          ],
          "text": "Basics +\nexamples",
          "textcolor": [
            0.07450980392156863,
            0.07450980392156863,
            0.07450980392156863,
            1.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "capture_cmd",
            0
          ],
          "hidden": 1,
          "source": [
            "capture",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "capture_dirty",
            0
          ],
          "hidden": 1,
          "source": [
            "capture_changed",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            1
          ],
          "hidden": 1,
          "source": [
            "capture_cmd",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "home_patch",
            0
          ],
          "hidden": 1,
          "source": [
            "capture_dirty",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "filter_commands_only",
            0
          ],
          "hidden": 1,
          "source": [
            "filter_commands",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "filter_commands_sent",
            1
          ],
          "order": 0,
          "source": [
            "filter_commands_only",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            1
          ],
          "hidden": 1,
          "midpoints": [
            303.5,
            227.5703125,
            138.5,
            227.5703125
          ],
          "order": 1,
          "source": [
            "filter_commands_only",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "motion_commands_only",
            0
          ],
          "hidden": 1,
          "source": [
            "motion_commands",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "motion_commands_sent",
            1
          ],
          "order": 0,
          "source": [
            "motion_commands_only",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            1
          ],
          "hidden": 1,
          "midpoints": [
            495.5,
            230.73828125,
            138.5,
            230.73828125
          ],
          "order": 1,
          "source": [
            "motion_commands_only",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            2
          ],
          "source": [
            "obj-1",
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
          "hidden": 1,
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-13",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-33",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-2",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-28",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-29",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-30",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            1
          ],
          "midpoints": [
            78.5,
            307.5,
            211.4765625,
            307.5,
            211.4765625,
            235.5,
            138.5,
            235.5
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
            "obj-5",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-30",
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
            "obj-33",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-35",
            0
          ],
          "source": [
            "obj-34",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            1
          ],
          "midpoints": [
            58.5,
            173.59375,
            83.0,
            173.59375
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
            "obj-5",
            0
          ],
          "source": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "capture_changed",
            0
          ],
          "hidden": 1,
          "order": 0,
          "source": [
            "obj-5",
            1
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
            "obj-5",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-6",
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
            "obj-31",
            1
          ],
          "order": 0,
          "source": [
            "obj-6",
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
          "order": 1,
          "source": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            1
          ],
          "hidden": 1,
          "source": [
            "primer",
            0
          ]
        }
      }
    ],
    "parameters": {
      "obj-5::level0": [
        "Filter 1 Output",
        "F1 Out",
        0
      ],
      "obj-5::level1": [
        "Filter 2 Output",
        "F2 Out",
        0
      ],
      "obj-5::level2": [
        "Filter 3 Output",
        "F3 Out",
        0
      ],
      "obj-5::level3": [
        "Filter 4 Output",
        "F4 Out",
        0
      ],
      "obj-5::obj-383": [
        "Global Gain Out",
        "GainOut",
        0
      ],
      "obj-6": [
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
    "autosave": 0,
    "bgcolor": [
      0.075,
      0.09,
      0.115,
      1.0
    ],
    "editing_bgcolor": [
      0.16,
      0.17,
      0.19,
      1.0
    ]
  }
}
