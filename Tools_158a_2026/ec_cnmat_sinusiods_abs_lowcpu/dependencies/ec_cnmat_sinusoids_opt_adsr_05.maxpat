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
      100.0,
      100.0,
      1180.0,
      790.0
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            15.0,
            900.0,
            24.0
          ],
          "text": "ADSR LANE 05",
          "presentation": 1,
          "presentation_rect": [
            5.0,
            3.0,
            230.0,
            18.0
          ],
          "varname": "ec_title"
        }
      },
      {
        "box": {
          "id": "master-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            42.0,
            900.0,
            20.0
          ],
          "text": "Independent lane. Global controls in AMP_ENVELOPE_ADSR_12_VOICES set all lanes; Master editor changes do not overwrite this lane.",
          "varname": "ec_master_note"
        }
      },
      {
        "box": {
          "cantchange": 1,
          "id": "count",
          "maxclass": "number",
          "maximum": 48,
          "minimum": 3,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            50,
            82,
            58,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            29,
            23,
            27,
            20
          ],
          "varname": "ec_count",
          "fontsize": 10.0
        }
      },
      {
        "box": {
          "id": "count-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            83,
            28,
            20
          ],
          "text": "PTS",
          "presentation": 1,
          "presentation_rect": [
            5,
            24,
            23,
            18
          ],
          "varname": "ec_count_label",
          "fontsize": 10.0
        }
      },
      {
        "box": {
          "format": 6,
          "id": "duration",
          "maxclass": "flonum",
          "maximum": 3600000.0,
          "minimum": 1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            245.0,
            82.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            86,
            23,
            46,
            20
          ],
          "varname": "ec_duration",
          "fontsize": 10.0,
          "hint": "Envelope duration in milliseconds; DEL is added before the next start."
        }
      },
      {
        "box": {
          "id": "duration-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            210,
            83,
            32,
            20
          ],
          "text": "DUR",
          "presentation": 1,
          "presentation_rect": [
            58,
            24,
            27,
            18
          ],
          "varname": "ec_duration_label",
          "fontsize": 10.0
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
          "bgfillcolor_angle": 270,
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
            1
          ],
          "bgfillcolor_color2": [
            0.2901960784313726,
            0.30980392156862746,
            0.30196078431372547,
            1
          ],
          "bgfillcolor_proportion": 0.39,
          "bgfillcolor_type": "color",
          "id": "shape-menu",
          "items": [
            "Flat Zero",
            ",",
            "All on full",
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
            "Random (fixed)",
            ","
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "patching_rect": [
            560,
            82,
            290,
            22
          ],
          "saved_attribute_attributes": {
            "bgfillcolor": {
              "expression": "themecolor.live_value_bar2"
            }
          },
          "presentation": 1,
          "presentation_rect": [
            5.0,
            46.0,
            230.0,
            20.0
          ],
          "varname": "ec_shape_menu"
        }
      },
      {
        "box": {
          "id": "shape-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            560,
            56,
            190,
            20
          ],
          "text": "SHAPE LIBRARY",
          "varname": "ec_shape_label"
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
          "id": "points",
          "maxclass": "multislider",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            20.0,
            120.0,
            735.0,
            140.0
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
          "thickness": 6,
          "presentation": 1,
          "presentation_rect": [
            5.0,
            69.0,
            230.0,
            60.0
          ],
          "hint": "Edit ADSR Lane 05 values directly",
          "varname": "ec_points"
        }
      },
      {
        "box": {
          "id": "translator",
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
                  ],
                  "varname": "ec_sub_in_list"
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
                  ],
                  "varname": "ec_sub_in_duration"
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
                  "text": "t b l l b",
                  "varname": "ec_sub_trigger"
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
                  "text": "clear",
                  "varname": "ec_sub_clear"
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
                  "text": "zl.len",
                  "varname": "ec_sub_zllen"
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
                  "text": "- 1",
                  "varname": "ec_sub_minus_one"
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
                  "text": "setdomain $1",
                  "varname": "ec_sub_domain_n"
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
                  "text": "listfunnel 0",
                  "varname": "ec_sub_listfunnel"
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
                  "text": "f 1000.",
                  "varname": "ec_sub_duration_store"
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
                  "text": "t b f",
                  "varname": "ec_sub_final_trigger"
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
                  "text": "setdomain $1",
                  "varname": "ec_sub_domain_duration"
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
                  ],
                  "varname": "ec_sub_out"
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
                  "text": "Order: clear → temporary domain N−1 → index/value pairs → duration domain → bang. The final bang requests one complete #1-ec-cnmat-sinusoids-opt_function list.",
                  "textcolor": [
                    0.35,
                    0.35,
                    0.35,
                    1.0
                  ],
                  "varname": "ec_sub_comment"
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
            20.0,
            280.0,
            90.0,
            22.0
          ],
          "text": "p translator",
          "varname": "ec_translator"
        }
      },
      {
        "box": {
          "addpoints": [
            0.0,
            0.0,
            0,
            21.27659574468085,
            0.042553,
            0,
            42.5531914893617,
            0.085106,
            0,
            63.829787234042556,
            0.12766,
            0,
            85.1063829787234,
            0.170213,
            0,
            106.38297872340425,
            0.212766,
            0,
            127.65957446808511,
            0.255319,
            0,
            148.93617021276594,
            0.297872,
            0,
            170.2127659574468,
            0.340426,
            0,
            191.48936170212767,
            0.382979,
            0,
            212.7659574468085,
            0.425532,
            0,
            234.04255319148936,
            0.468085,
            0,
            255.31914893617022,
            0.510638,
            0,
            276.59574468085106,
            0.553191,
            0,
            297.8723404255319,
            0.595745,
            0,
            319.1489361702128,
            0.638298,
            0,
            340.4255319148936,
            0.680851,
            0,
            361.70212765957444,
            0.723404,
            0,
            382.97872340425533,
            0.765957,
            0,
            404.25531914893617,
            0.808511,
            0,
            425.531914893617,
            0.851064,
            0,
            446.8085106382979,
            0.893617,
            0,
            468.0851063829787,
            0.93617,
            0,
            489.36170212765956,
            0.978723,
            0,
            510.63829787234044,
            0.978723,
            0,
            531.9148936170212,
            0.93617,
            0,
            553.1914893617021,
            0.893617,
            0,
            574.468085106383,
            0.851064,
            0,
            595.7446808510638,
            0.808511,
            0,
            617.0212765957447,
            0.765957,
            0,
            638.2978723404256,
            0.723404,
            0,
            659.5744680851063,
            0.680851,
            0,
            680.8510638297872,
            0.638298,
            0,
            702.1276595744681,
            0.595745,
            0,
            723.4042553191489,
            0.553191,
            0,
            744.6808510638298,
            0.510638,
            0,
            765.9574468085107,
            0.468085,
            0,
            787.2340425531914,
            0.425532,
            0,
            808.5106382978723,
            0.382979,
            0,
            829.7872340425532,
            0.340426,
            0,
            851.063829787234,
            0.297872,
            0,
            872.3404255319149,
            0.255319,
            0,
            893.6170212765958,
            0.212766,
            0,
            914.8936170212766,
            0.170213,
            0,
            936.1702127659574,
            0.12766,
            0,
            957.4468085106383,
            0.085106,
            0,
            978.7234042553191,
            0.042553,
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
          "id": "function",
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
          "patching_rect": [
            20.0,
            320.0,
            735.0,
            140.0
          ],
          "varname": "ec_function"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.611764705882353,
            0,
            0.027471133935787612,
            1
          ],
          "bgcolor2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_angle": 270,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.611764705882353,
            0,
            0.027471133935787612,
            1
          ],
          "bgfillcolor_color1": [
            0.611764705882353,
            0,
            0.027471133935787612,
            1
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "gradient",
          "gradient": 1,
          "id": "current-envelope",
          "linecount": 8,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20,
            485,
            735,
            76
          ],
          "text": "0. 0. 0.042553 21.276596 0.085106 21.276596 0.12766 21.276596 0.170213 21.276596 0.212766 21.276596 0.255319 21.276596 0.297872 21.276596 0.340426 21.276596 0.382979 21.276596 0.425532 21.276596 0.468085 21.276596 0.510638 21.276596 0.553191 21.276596 0.595745 21.276596 0.638298 21.276596 0.680851 21.276596 0.723404 21.276596 0.765957 21.276596 0.808511 21.276596 0.851064 21.276596 0.893617 21.276596 0.93617 21.276596 0.978723 21.276596 0.978723 21.276596 0.93617 21.276596 0.893617 21.276596 0.851064 21.276596 0.808511 21.276596 0.765957 21.276596 0.723404 21.276596 0.680851 21.276596 0.638298 21.276596 0.595745 21.276596 0.553191 21.276596 0.510638 21.276596 0.468085 21.276596 0.425532 21.276596 0.382979 21.276596 0.340426 21.276596 0.297872 21.276596 0.255319 21.276596 0.212766 21.276596 0.170213 21.276596 0.12766 21.276596 0.085106 21.276596 0.042553 21.276596 0. 21.276596",
          "varname": "ec_current_envelope"
        }
      },
      {
        "box": {
          "id": "set-current",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            120.0,
            280.0,
            85.0,
            22.0
          ],
          "text": "prepend set",
          "varname": "ec_set_current"
        }
      },
      {
        "box": {
          "id": "line",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            780.0,
            485.0,
            75.0,
            22.0
          ],
          "text": "line~ 0.",
          "varname": "ec_line"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "signal-out",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            890.0,
            485.0,
            30.0,
            30.0
          ],
          "varname": "ec_signal_out"
        }
      },
      {
        "box": {
          "id": "signal-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            775.0,
            515.0,
            170.0,
            20.0
          ],
          "text": "LANE GAIN SIGNAL",
          "varname": "ec_signal_note"
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
          "id": "trigger-button",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            870,
            82,
            24.0,
            24.0
          ],
          "saved_attribute_attributes": {
            "bgcolor": {
              "expression": "themecolor.live_modulation"
            }
          },
          "presentation": 1,
          "presentation_rect": [
            5.0,
            135.0,
            20.0,
            20.0
          ],
          "varname": "ec_trigger_button"
        }
      },
      {
        "box": {
          "id": "trigger-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            84,
            65,
            20
          ],
          "text": "TRIG",
          "presentation": 1,
          "presentation_rect": [
            27.0,
            136.0,
            29.0,
            18.0
          ],
          "varname": "ec_trigger_label"
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
          "id": "memory-index",
          "maxclass": "number",
          "maximum": 9999,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            20.0,
            585.0,
            58.0,
            22.0
          ],
          "saved_attribute_attributes": {
            "bgcolor": {
              "expression": "themecolor.live_modulation"
            }
          },
          "presentation": 1,
          "presentation_rect": [
            116.0,
            135.0,
            29.0,
            20.0
          ],
          "hint": "Lane 05 independent user-memory index",
          "varname": "ec_memory_index"
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
          "id": "store-button",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            90.0,
            584.0,
            24.0,
            24.0
          ],
          "saved_attribute_attributes": {
            "bgcolor": {
              "expression": "themecolor.live_modulation"
            }
          },
          "presentation": 1,
          "presentation_rect": [
            149.0,
            135.0,
            20.0,
            20.0
          ],
          "hint": "Store Lane 05 current function (STO)",
          "varname": "ec_store_button"
        }
      },
      {
        "box": {
          "id": "recall-button",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            255,
            584,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            197.0,
            135.0,
            20.0,
            20.0
          ],
          "hint": "Recall Lane 05 selected function (RCL)",
          "varname": "ec_recall_button"
        }
      },
      {
        "box": {
          "id": "store-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            120,
            586,
            125,
            20
          ],
          "text": "STO",
          "presentation": 1,
          "presentation_rect": [
            171.0,
            136.0,
            23.0,
            18.0
          ],
          "varname": "ec_store_label"
        }
      },
      {
        "box": {
          "id": "recall-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            285,
            586,
            75,
            20
          ],
          "text": "RCL",
          "presentation": 1,
          "presentation_rect": [
            219.0,
            136.0,
            21.0,
            18.0
          ],
          "varname": "ec_recall_label"
        }
      },
      {
        "box": {
          "coll_data": {
            "count": 0,
            "data": []
          },
          "id": "user-coll",
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
            375.0,
            585.0,
            310.0,
            22.0
          ],
          "saved_object_attributes": {
            "embed": 1,
            "precision": 6
          },
          "text": "coll #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_User_Functions @embed 1",
          "varname": "ec_user_coll"
        }
      },
      {
        "box": {
          "id": "memory-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            695.0,
            586.0,
            410.0,
            20.0
          ],
          "text": "Unique memory address: #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_User_Functions",
          "varname": "ec_memory_note"
        }
      },
      {
        "box": {
          "id": "local-count",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            300.0,
            650.0,
            265.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Breakpoints",
          "varname": "ec_local_count"
        }
      },
      {
        "box": {
          "id": "local-duration",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            300.0,
            680.0,
            265.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Duration_ms",
          "varname": "ec_local_duration"
        }
      },
      {
        "box": {
          "id": "local-shape",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            300.0,
            710.0,
            265.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Shape",
          "varname": "ec_local_shape"
        }
      },
      {
        "box": {
          "id": "local-points",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            585.0,
            650.0,
            250.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Points",
          "varname": "ec_local_points"
        }
      },
      {
        "box": {
          "id": "local-index",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            585.0,
            680.0,
            270.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Store_Index",
          "varname": "ec_local_index"
        }
      },
      {
        "box": {
          "id": "local-store",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            585.0,
            710.0,
            250.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Store",
          "varname": "ec_local_store"
        }
      },
      {
        "box": {
          "id": "local-recall",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            875.0,
            650.0,
            250.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Recall",
          "varname": "ec_local_recall"
        }
      },
      {
        "box": {
          "id": "local-emit",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            875.0,
            680.0,
            250.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Emit",
          "varname": "ec_local_emit"
        }
      },
      {
        "box": {
          "id": "local-trigger",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            875.0,
            710.0,
            250.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Trigger",
          "varname": "ec_local_trigger"
        }
      },
      {
        "box": {
          "id": "points-order",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            780.0,
            120.0,
            45.0,
            22.0
          ],
          "text": "t l l",
          "varname": "ec_points_order"
        }
      },
      {
        "box": {
          "id": "points-length",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            840.0,
            120.0,
            50.0,
            22.0
          ],
          "text": "zl.len",
          "varname": "ec_points_length"
        }
      },
      {
        "box": {
          "id": "silent-count-order",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            905.0,
            120.0,
            55.0,
            22.0
          ],
          "text": "t i i i",
          "varname": "ec_silent_count_order"
        }
      },
      {
        "box": {
          "id": "set-count",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            975.0,
            120.0,
            85.0,
            22.0
          ],
          "text": "prepend set",
          "varname": "ec_set_count"
        }
      },
      {
        "box": {
          "id": "set-size",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1075.0,
            120.0,
            90.0,
            22.0
          ],
          "text": "prepend size",
          "varname": "ec_set_size"
        }
      },
      {
        "box": {
          "id": "count-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            780.0,
            160.0,
            75.0,
            22.0
          ],
          "text": "clip 3 48",
          "varname": "ec_count_clip"
        }
      },
      {
        "box": {
          "id": "count-order",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "bang",
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            870.0,
            160.0,
            70.0,
            22.0
          ],
          "text": "t b i i i",
          "varname": "ec_count_order"
        }
      },
      {
        "box": {
          "id": "shape-order",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ],
          "patching_rect": [
            780.0,
            200.0,
            45.0,
            22.0
          ],
          "text": "t i i",
          "varname": "ec_shape_order"
        }
      },
      {
        "box": {
          "id": "shape-store",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            840.0,
            200.0,
            35.0,
            22.0
          ],
          "text": "i 0",
          "varname": "ec_shape_store"
        }
      },
      {
        "box": {
          "id": "shape-key",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            890.0,
            200.0,
            70.0,
            22.0
          ],
          "text": "pack 0 48",
          "varname": "ec_shape_key"
        }
      },
      {
        "box": {
          "id": "shape-key-expr",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            975.0,
            200.0,
            150.0,
            22.0
          ],
          "text": "expr ($i1 * 100) + $i2",
          "varname": "ec_shape_key_expr"
        }
      },
      {
        "box": {
          "id": "shape-library",
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
            975.0,
            235.0,
            145.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "Patcher:/dependencies/ec_cnmat_sinusoids_opt_adsr_shapes.js",
            "parameter_enable": 0
          },
          "text": "js Patcher:/dependencies/ec_cnmat_sinusoids_opt_adsr_shapes.js #1",
          "varname": "ec_shape_library"
        }
      },
      {
        "box": {
          "id": "duration-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            780.0,
            280.0,
            125.0,
            22.0
          ],
          "text": "clip 1. 3600000.",
          "varname": "ec_duration_clip"
        }
      },
      {
        "box": {
          "id": "duration-order",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "float",
            "float"
          ],
          "patching_rect": [
            920.0,
            280.0,
            55.0,
            22.0
          ],
          "text": "t b f f",
          "varname": "ec_duration_order"
        }
      },
      {
        "box": {
          "id": "rebuild-points",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            990.0,
            280.0,
            48.0,
            22.0
          ],
          "text": "zl.reg",
          "varname": "ec_rebuild_points"
        }
      },
      {
        "box": {
          "id": "store-points",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            1050.0,
            280.0,
            48.0,
            22.0
          ],
          "text": "zl.reg",
          "varname": "ec_store_points"
        }
      },
      {
        "box": {
          "id": "store-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            780.0,
            330.0,
            45.0,
            22.0
          ],
          "text": "t b b",
          "varname": "ec_store_trigger"
        }
      },
      {
        "box": {
          "id": "index-store",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            840.0,
            330.0,
            35.0,
            22.0
          ],
          "text": "i 1",
          "varname": "ec_index_store"
        }
      },
      {
        "box": {
          "id": "store-join",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            890.0,
            330.0,
            50.0,
            22.0
          ],
          "text": "zl join",
          "varname": "ec_store_join"
        }
      },
      {
        "box": {
          "id": "index-recall",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            780.0,
            370.0,
            35.0,
            22.0
          ],
          "text": "i 1",
          "varname": "ec_index_recall"
        }
      },
      {
        "box": {
          "id": "local-recall-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            830.0,
            370.0,
            85.0,
            22.0
          ],
          "text": "clip 1 9999",
          "varname": "ec_local_recall_clip"
        }
      },
      {
        "box": {
          "id": "local-recall-order",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ],
          "patching_rect": [
            930.0,
            370.0,
            45.0,
            22.0
          ],
          "text": "t i i",
          "varname": "ec_local_recall_order"
        }
      },
      {
        "box": {
          "id": "local-index-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            990.0,
            370.0,
            85.0,
            22.0
          ],
          "text": "clip 1 9999",
          "varname": "ec_local_index_clip"
        }
      },
      {
        "box": {
          "id": "count-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            780.0,
            415.0,
            275.0,
            22.0
          ],
          "text": "send #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Breakpoints_state",
          "varname": "ec_count_state"
        }
      },
      {
        "box": {
          "id": "duration-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            780.0,
            445.0,
            275.0,
            22.0
          ],
          "text": "send #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Duration_ms_state",
          "varname": "ec_duration_state"
        }
      },
      {
        "box": {
          "id": "shape-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1065.0,
            415.0,
            250.0,
            22.0
          ],
          "text": "send #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Shape_state",
          "varname": "ec_shape_state"
        }
      },
      {
        "box": {
          "id": "index-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1065.0,
            445.0,
            280.0,
            22.0
          ],
          "text": "send #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Store_Index_state",
          "varname": "ec_index_state"
        }
      },
      {
        "box": {
          "id": "points-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1065.0,
            475.0,
            250.0,
            22.0
          ],
          "text": "send #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Points_state",
          "varname": "ec_points_state"
        }
      },
      {
        "box": {
          "id": "init-duration",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            750.0,
            105.0,
            22.0
          ],
          "text": "1000.",
          "varname": "ec_init_duration"
        }
      },
      {
        "box": {
          "id": "init-count",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            140.0,
            750.0,
            90.0,
            22.0
          ],
          "text": "48",
          "varname": "ec_init_count"
        }
      },
      {
        "box": {
          "id": "init-shape",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            245.0,
            750.0,
            85.0,
            22.0
          ],
          "text": "6",
          "varname": "ec_init_shape"
        }
      },
      {
        "box": {
          "id": "loop-toggle",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            980,
            82,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            58.0,
            135.0,
            20.0,
            20.0
          ],
          "bgcolor": [
            0.722,
            0.247,
            0.0,
            1.0
          ],
          "uncheckedcolor": [
            0.722,
            0.247,
            0.0,
            1.0
          ],
          "varname": "ec_loop_toggle"
        }
      },
      {
        "box": {
          "id": "loop-label",
          "maxclass": "comment",
          "text": "LOOP",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1010,
            84,
            70.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            80.0,
            136.0,
            33.0,
            18.0
          ],
          "varname": "ec_loop_label"
        }
      },
      {
        "box": {
          "id": "loop-gate",
          "maxclass": "newobj",
          "text": "gate",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1100,
            82,
            38.0,
            22.0
          ],
          "varname": "ec_loop_gate"
        }
      },
      {
        "box": {
          "id": "loop-defer",
          "maxclass": "newobj",
          "text": "deferlow",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1155,
            82,
            60.0,
            22.0
          ],
          "varname": "ec_loop_defer"
        }
      },
      {
        "box": {
          "id": "local-loop",
          "maxclass": "newobj",
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Loop",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            875.0,
            740.0,
            250.0,
            22.0
          ],
          "varname": "ec_local_loop"
        }
      },
      {
        "box": {
          "id": "local-loop-clip",
          "maxclass": "newobj",
          "text": "clip 0 1",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            875.0,
            770.0,
            70.0,
            22.0
          ],
          "varname": "ec_local_loop_clip"
        }
      },
      {
        "box": {
          "id": "local-loop-int",
          "maxclass": "newobj",
          "text": "i",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            955.0,
            770.0,
            35.0,
            22.0
          ],
          "varname": "ec_local_loop_int"
        }
      },
      {
        "box": {
          "id": "loop-state",
          "maxclass": "newobj",
          "text": "send #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Loop_state",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            1005.0,
            770.0,
            260.0,
            22.0
          ],
          "varname": "ec_loop_state"
        }
      },
      {
        "box": {
          "id": "shape-smoothing-engine",
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
            20.0,
            810.0,
            300.0,
            22.0
          ],
          "text": "js Patcher:/dependencies/ec_cnmat_sinusoids_opt_envelope_memory.js #1",
          "varname": "ec_shape_smoothing_engine"
        }
      },
      {
        "box": {
          "id": "shape-smoothing-ms",
          "maxclass": "flonum",
          "minimum": 0.0,
          "maximum": 600000.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            335.0,
            810.0,
            90.0,
            22.0
          ],
          "varname": "ec_shape_smoothing_ms"
        }
      },
      {
        "box": {
          "id": "shape-smoothing-init",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            440.0,
            810.0,
            95.0,
            22.0
          ],
          "text": "200.",
          "varname": "ec_shape_smoothing_init"
        }
      },
      {
        "box": {
          "id": "shape-smoothing-global",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            550.0,
            810.0,
            250.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_Smoothing_ms",
          "varname": "ec_shape_smoothing_global"
        }
      },
      {
        "box": {
          "id": "shape-smoothing-local",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            815.0,
            810.0,
            285.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Smoothing_ms",
          "varname": "ec_shape_smoothing_local"
        }
      },
      {
        "box": {
          "id": "shape-smoothing-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1115.0,
            810.0,
            300.0,
            22.0
          ],
          "text": "send #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Smoothing_ms_state",
          "varname": "ec_shape_smoothing_state"
        }
      },
      {
        "box": {
          "id": "v20-stop-receive",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1050.0,
            855.0,
            255.0,
            22.0
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Stop",
          "outlettype": [
            ""
          ],
          "varname": "ec_v20_stop_receive"
        }
      },
      {
        "box": {
          "id": "v20-stop-order",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            1050.0,
            887.0,
            80.0,
            22.0
          ],
          "text": "t b b b",
          "outlettype": [
            "",
            "",
            ""
          ],
          "varname": "ec_v20_stop_order"
        }
      },
      {
        "box": {
          "id": "v20-stop-loop-zero",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1230.0,
            920.0,
            35.0,
            22.0
          ],
          "text": "0",
          "outlettype": [
            ""
          ],
          "varname": "ec_v20_stop_loop_zero"
        }
      },
      {
        "box": {
          "id": "v20-stop-line",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1130.0,
            920.0,
            40.0,
            22.0
          ],
          "text": "stop",
          "outlettype": [
            ""
          ],
          "varname": "ec_v20_stop_line"
        }
      },
      {
        "box": {
          "id": "v20-stop-fade",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1050.0,
            920.0,
            55.0,
            22.0
          ],
          "text": "0. 5.",
          "outlettype": [
            ""
          ],
          "varname": "ec_v20_stop_fade"
        }
      },
      {
        "box": {
          "id": "ec-proxy-user-coll",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            1800,
            400,
            22
          ],
          "numinlets": 1,
          "numoutlets": 4,
          "text": "coll #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_User_Functions",
          "varname": "ec_ec_proxy_user_coll"
        }
      },
      {
        "box": {
          "id": "ec-proxy-user-coll-1",
          "maxclass": "newobj",
          "patching_rect": [
            180,
            1840,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "prepend _collkey c4",
          "varname": "ec_ec_proxy_user_coll_1"
        }
      },
      {
        "box": {
          "id": "ec-proxy-user-coll-0",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            1840,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "prepend _colldata c4",
          "varname": "ec_ec_proxy_user_coll_0"
        }
      },
      {
        "box": {
          "id": "ec-proxy-user-coll-3",
          "maxclass": "newobj",
          "patching_rect": [
            500,
            1840,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "prepend _colldone c4",
          "varname": "ec_ec_proxy_user_coll_3"
        }
      },
      {
        "box": {
          "id": "ec-proxy-user-coll-send",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            1880,
            400,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "send #1-ec-cnmat-sinusoids-opt_ec-preset-collect",
          "varname": "ec_ec_proxy_user_coll_send"
        }
      },
      {
        "box": {
          "id": "duration-ms-label",
          "maxclass": "comment",
          "patching_rect": [
            340,
            83,
            25,
            20
          ],
          "varname": "ec_duration_ms_label",
          "numinlets": 1,
          "numoutlets": 0,
          "presentation": 1,
          "presentation_rect": [
            133,
            24,
            18,
            18
          ],
          "fontsize": 10.0,
          "text": "ms"
        }
      },
      {
        "box": {
          "id": "delay-label",
          "maxclass": "comment",
          "patching_rect": [
            380,
            83,
            28,
            20
          ],
          "varname": "ec_delay_label",
          "numinlets": 1,
          "numoutlets": 0,
          "presentation": 1,
          "presentation_rect": [
            151,
            24,
            24,
            18
          ],
          "fontsize": 10.0,
          "text": "DEL"
        }
      },
      {
        "box": {
          "id": "delay-ms",
          "maxclass": "number",
          "patching_rect": [
            410,
            82,
            65,
            22
          ],
          "varname": "ec_delay_ms",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "minimum": 0,
          "maximum": 3600000,
          "presentation": 1,
          "presentation_rect": [
            176,
            23,
            44,
            20
          ],
          "fontsize": 10.0,
          "hint": "Lane 05 start delay in integer milliseconds. Default 0; applies to TRIG and loop restarts."
        }
      },
      {
        "box": {
          "id": "delay-ms-label",
          "maxclass": "comment",
          "patching_rect": [
            480,
            83,
            25,
            20
          ],
          "varname": "ec_delay_ms_label",
          "numinlets": 1,
          "numoutlets": 0,
          "presentation": 1,
          "presentation_rect": [
            221,
            24,
            18,
            18
          ],
          "fontsize": 10.0,
          "text": "ms"
        }
      },
      {
        "box": {
          "id": "local-delay",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            1050,
            370,
            22
          ],
          "varname": "ec_local_delay",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "receive #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Delay_ms"
        }
      },
      {
        "box": {
          "id": "delay-init",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            1080,
            80,
            22
          ],
          "varname": "ec_delay_init",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "id": "delay-state",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            1110,
            400,
            22
          ],
          "varname": "ec_delay_state",
          "numinlets": 1,
          "numoutlets": 0,
          "text": "send #1-ec-cnmat-sinusoids-opt_ADSR_Lane_05_Delay_ms_state"
        }
      },
      {
        "box": {
          "id": "start-delay-order",
          "maxclass": "newobj",
          "patching_rect": [
            460,
            1050,
            45,
            22
          ],
          "varname": "ec_start_delay_order",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "start-delay-cancel",
          "maxclass": "message",
          "patching_rect": [
            540,
            1050,
            40,
            22
          ],
          "varname": "ec_start_delay_cancel",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "start-delay-value",
          "maxclass": "newobj",
          "patching_rect": [
            460,
            1080,
            40,
            22
          ],
          "varname": "ec_start_delay_value",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "text": "i 0"
        }
      },
      {
        "box": {
          "id": "start-delay-select",
          "maxclass": "newobj",
          "patching_rect": [
            460,
            1110,
            45,
            22
          ],
          "varname": "ec_start_delay_select",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            ""
          ],
          "text": "sel 0"
        }
      },
      {
        "box": {
          "id": "start-delay",
          "maxclass": "newobj",
          "patching_rect": [
            540,
            1140,
            60,
            22
          ],
          "varname": "ec_start_delay",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "text": "delay 0"
        }
      },
      {
        "box": {
          "id": "delay-help",
          "maxclass": "comment",
          "patching_rect": [
            660,
            1050,
            440,
            65
          ],
          "varname": "ec_delay_help",
          "numinlets": 1,
          "numoutlets": 0,
          "text": "DEL is applied to every start, including loop restarts. Zero passes through immediately. A new trigger replaces a waiting start. Changing DEL affects the next trigger; Stop and preset recall cancel pending starts."
        }
      },
      {
        "box": {
          "id": "factory-start-load",
          "varname": "ec_factory_start_load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            750.0,
            65.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "factory-start-order",
          "varname": "ec_factory_start_order",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            440.0,
            750.0,
            100.0,
            22.0
          ],
          "text": "t b b b b b"
        }
      },
      {
        "box": {
          "id": "factory-start-no-morph",
          "varname": "ec_factory_start_no_morph",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            550.0,
            750.0,
            35.0,
            22.0
          ],
          "text": "0."
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "count-clip",
            0
          ],
          "source": [
            "count",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "count-order",
            0
          ],
          "source": [
            "count-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "count-state",
            0
          ],
          "source": [
            "count-order",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set-size",
            0
          ],
          "source": [
            "count-order",
            3
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-key",
            1
          ],
          "source": [
            "count-order",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-store",
            0
          ],
          "source": [
            "count-order",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "line",
            0
          ],
          "source": [
            "current-envelope",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "duration-clip",
            0
          ],
          "source": [
            "duration",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "duration-order",
            0
          ],
          "source": [
            "duration-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "duration-state",
            0
          ],
          "source": [
            "duration-order",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rebuild-points",
            0
          ],
          "source": [
            "duration-order",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "translator",
            1
          ],
          "source": [
            "duration-order",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set-current",
            0
          ],
          "source": [
            "function",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "user-coll",
            0
          ],
          "source": [
            "index-recall",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "store-join",
            0
          ],
          "source": [
            "index-store",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "count",
            0
          ],
          "source": [
            "init-count",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "duration",
            0
          ],
          "source": [
            "init-duration",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-menu",
            0
          ],
          "source": [
            "init-shape",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "signal-out",
            0
          ],
          "source": [
            "line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "count-clip",
            0
          ],
          "source": [
            "local-count",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "duration",
            0
          ],
          "source": [
            "local-duration",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rebuild-points",
            0
          ],
          "source": [
            "local-emit",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "local-index-clip",
            0
          ],
          "source": [
            "local-index",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "memory-index",
            0
          ],
          "source": [
            "local-index-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "points-order",
            0
          ],
          "source": [
            "local-points",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "local-recall-clip",
            0
          ],
          "source": [
            "local-recall",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "local-recall-order",
            0
          ],
          "source": [
            "local-recall-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "memory-index",
            0
          ],
          "source": [
            "local-recall-order",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "user-coll",
            0
          ],
          "source": [
            "local-recall-order",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-menu",
            0
          ],
          "source": [
            "local-shape",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "store-button",
            0
          ],
          "source": [
            "local-store",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "trigger-button",
            0
          ],
          "source": [
            "local-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "index-recall",
            1
          ],
          "order": 2,
          "source": [
            "memory-index",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "index-state",
            0
          ],
          "order": 0,
          "source": [
            "memory-index",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "index-store",
            1
          ],
          "order": 1,
          "source": [
            "memory-index",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "points-state",
            0
          ],
          "order": 1,
          "source": [
            "points",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rebuild-points",
            1
          ],
          "order": 2,
          "source": [
            "points",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "store-points",
            1
          ],
          "order": 0,
          "source": [
            "points",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "translator",
            0
          ],
          "order": 3,
          "source": [
            "points",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "silent-count-order",
            0
          ],
          "source": [
            "points-length",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "points-length",
            0
          ],
          "source": [
            "points-order",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "points",
            0
          ],
          "source": [
            "rebuild-points",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "index-recall",
            0
          ],
          "source": [
            "recall-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "count",
            0
          ],
          "source": [
            "set-count",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "current-envelope",
            0
          ],
          "source": [
            "set-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "points",
            0
          ],
          "source": [
            "set-size",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-key-expr",
            0
          ],
          "source": [
            "shape-key",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-library",
            0
          ],
          "source": [
            "shape-key-expr",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "points-order",
            0
          ],
          "source": [
            "shape-library",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-order",
            0
          ],
          "source": [
            "shape-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-state",
            0
          ],
          "source": [
            "shape-order",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-store",
            0
          ],
          "source": [
            "shape-order",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-key",
            0
          ],
          "source": [
            "shape-store",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set-count",
            0
          ],
          "source": [
            "silent-count-order",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set-size",
            0
          ],
          "source": [
            "silent-count-order",
            2
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "destination": [
            "shape-key",
            1
          ],
          "source": [
            "silent-count-order",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "store-trigger",
            0
          ],
          "source": [
            "store-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "user-coll",
            0
          ],
          "source": [
            "store-join",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "store-join",
            1
          ],
          "source": [
            "store-points",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "index-store",
            0
          ],
          "source": [
            "store-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "store-points",
            0
          ],
          "source": [
            "store-trigger",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "function",
            0
          ],
          "source": [
            "translator",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "start-delay-order",
            0
          ],
          "source": [
            "trigger-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "points-order",
            0
          ],
          "source": [
            "user-coll",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loop-toggle",
            0
          ],
          "destination": [
            "loop-gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "local-loop",
            0
          ],
          "destination": [
            "local-loop-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "local-loop-clip",
            0
          ],
          "destination": [
            "local-loop-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "local-loop-int",
            0
          ],
          "destination": [
            "loop-toggle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loop-toggle",
            0
          ],
          "destination": [
            "loop-state",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "points-order",
            0
          ],
          "destination": [
            "shape-smoothing-engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shape-smoothing-engine",
            0
          ],
          "destination": [
            "points",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "points",
            0
          ],
          "destination": [
            "shape-smoothing-engine",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "count-order",
            3
          ],
          "destination": [
            "shape-smoothing-engine",
            9
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "silent-count-order",
            2
          ],
          "destination": [
            "shape-smoothing-engine",
            9
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "shape-smoothing-ms",
            0
          ],
          "destination": [
            "shape-smoothing-engine",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shape-smoothing-ms",
            0
          ],
          "destination": [
            "shape-smoothing-state",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shape-smoothing-init",
            0
          ],
          "destination": [
            "shape-smoothing-ms",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shape-smoothing-global",
            0
          ],
          "destination": [
            "shape-smoothing-ms",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shape-smoothing-local",
            0
          ],
          "destination": [
            "shape-smoothing-ms",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "line",
            1
          ],
          "destination": [
            "loop-defer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loop-defer",
            0
          ],
          "destination": [
            "loop-gate",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loop-gate",
            0
          ],
          "destination": [
            "trigger-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v20-stop-receive",
            0
          ],
          "destination": [
            "v20-stop-order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v20-stop-order",
            2
          ],
          "destination": [
            "v20-stop-loop-zero",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v20-stop-loop-zero",
            0
          ],
          "destination": [
            "loop-toggle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v20-stop-order",
            1
          ],
          "destination": [
            "v20-stop-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v20-stop-line",
            0
          ],
          "destination": [
            "line",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v20-stop-order",
            0
          ],
          "destination": [
            "v20-stop-fade",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v20-stop-fade",
            0
          ],
          "destination": [
            "line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ec-proxy-user-coll",
            1
          ],
          "destination": [
            "ec-proxy-user-coll-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ec-proxy-user-coll-1",
            0
          ],
          "destination": [
            "ec-proxy-user-coll-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ec-proxy-user-coll",
            0
          ],
          "destination": [
            "ec-proxy-user-coll-0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ec-proxy-user-coll-0",
            0
          ],
          "destination": [
            "ec-proxy-user-coll-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ec-proxy-user-coll",
            3
          ],
          "destination": [
            "ec-proxy-user-coll-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ec-proxy-user-coll-3",
            0
          ],
          "destination": [
            "ec-proxy-user-coll-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "local-delay",
            0
          ],
          "destination": [
            "delay-ms",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "delay-init",
            0
          ],
          "destination": [
            "delay-ms",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "delay-ms",
            0
          ],
          "destination": [
            "start-delay-value",
            1
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "delay-ms",
            0
          ],
          "destination": [
            "delay-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "start-delay-order",
            1
          ],
          "destination": [
            "start-delay-cancel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start-delay-cancel",
            0
          ],
          "destination": [
            "start-delay",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start-delay-order",
            0
          ],
          "destination": [
            "start-delay-value",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start-delay-value",
            0
          ],
          "destination": [
            "start-delay-select",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start-delay-select",
            0
          ],
          "destination": [
            "current-envelope",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start-delay-select",
            1
          ],
          "destination": [
            "start-delay",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start-delay",
            0
          ],
          "destination": [
            "current-envelope",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v20-stop-line",
            0
          ],
          "destination": [
            "start-delay",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "factory-start-load",
            0
          ],
          "destination": [
            "factory-start-order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "factory-start-order",
            0
          ],
          "destination": [
            "shape-smoothing-init",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "factory-start-order",
            1
          ],
          "destination": [
            "init-shape",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "factory-start-order",
            2
          ],
          "destination": [
            "init-count",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "factory-start-order",
            3
          ],
          "destination": [
            "init-duration",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "factory-start-order",
            4
          ],
          "destination": [
            "factory-start-no-morph",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "factory-start-no-morph",
            0
          ],
          "destination": [
            "shape-smoothing-ms",
            0
          ]
        }
      }
    ],
    "openinpresentation": 1
  }
}
