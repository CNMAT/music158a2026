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
      1794.0,
      154.0,
      805.0,
      610.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "bgcolor": [
            0.043137254901960784,
            0.26666666666666666,
            0.796078431372549,
            1.0
          ],
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            354.0,
            759.0,
            113.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            507.0,
            450.0,
            113.0,
            22.0
          ],
          "text": "send gain-envelope"
        }
      },
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
          "text": "p hundredths",
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
              440.0,
              220.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "in",
                  "maxclass": "inlet",
                  "index": 1,
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "list"
                  ],
                  "patching_rect": [
                    30.0,
                    20.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "truncate",
                  "maxclass": "newobj",
                  "text": "vexpr int($f1 * 100.) / 100.",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30.0,
                    75.0,
                    220.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "out",
                  "maxclass": "outlet",
                  "index": 1,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    30.0,
                    125.0,
                    30.0,
                    30.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "in",
                    0
                  ],
                  "destination": [
                    "truncate",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "truncate",
                    0
                  ],
                  "destination": [
                    "out",
                    0
                  ]
                }
              }
            ]
          }
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
          "text": "0. 0. 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27 0. 21.27"
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
            "obj-4",
            0
          ],
          "source": [
            "obj-output-t",
            2
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
  }
}
