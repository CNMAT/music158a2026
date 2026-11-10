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
      34.0,
      109.0,
      1185.0,
      849.0
    ],
    "default_fontsize": 13.0,
    "boxes": [
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-39",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            933.0,
            291.5,
            86.0,
            21.0
          ],
          "text": "reload values",
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
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-37",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            903.0,
            290.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-36",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            509.0,
            489.0,
            217.0,
            36.0
          ],
          "text": "change the distance factor between \ndelays with pre-designed curves"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            "int"
          ],
          "patching_rect": [
            13.0,
            705.0,
            97.0,
            23.0
          ],
          "text": "adstatus switch"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.592,
            0.031,
            0.031,
            1.0
          ],
          "id": "obj-2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            312.0,
            467.0,
            195.0,
            21.0
          ],
          "text": "change delay distance curves",
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
          "allowdrag": 0,
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.592,
            0.031,
            0.031,
            1.0
          ],
          "bgfillcolor_color1": [
            0.592,
            0.031,
            0.031,
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
          "id": "curve_menu",
          "items": [
            "linear",
            ",",
            "expand",
            ",",
            "contract",
            ",",
            "exponential",
            ",",
            "logarithmic",
            ",",
            "s_curve",
            ",",
            "reverse_s",
            ",",
            "stretch",
            ",",
            "compress"
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
            315.0,
            492.0,
            189.0,
            23.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.592,
            0.031,
            0.031,
            1.0
          ],
          "id": "curve_menu_prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            400.0,
            519.0,
            92.0,
            23.0
          ],
          "text": "prepend curve"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            777.0,
            312.0,
            89.0,
            23.0
          ],
          "text": "loadmess 100"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            429.0,
            311.0,
            82.0,
            23.0
          ],
          "text": "loadmess 50"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            589.0,
            311.0,
            82.0,
            23.0
          ],
          "text": "loadmess 20"
        }
      },
      {
        "box": {
          "data": {
            "clips": [
              {
                "absolutepath": "jongly.aif",
                "filename": "jongly.aif",
                "filekind": "audiofile",
                "id": "u125004570",
                "loop": 1,
                "content_state": {
                  "loop": 1
                }
              }
            ]
          },
          "id": "obj-25",
          "maxclass": "playlist~",
          "mode": "basic",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "",
            "dictionary"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            55.0,
            464.0,
            150.0,
            30.0
          ],
          "quality": "basic",
          "saved_attribute_attributes": {
            "candicane2": {
              "expression": ""
            },
            "candicane3": {
              "expression": ""
            },
            "candicane4": {
              "expression": ""
            },
            "candicane5": {
              "expression": ""
            },
            "candicane6": {
              "expression": ""
            },
            "candicane7": {
              "expression": ""
            },
            "candicane8": {
              "expression": ""
            }
          }
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "id": "obj-32",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            712.0,
            156.0,
            426.0,
            36.0
          ],
          "text": "Direct sound reaches zero at this distance. 2-10X source diameter 1\nBeyond sourcepres 0, the reverb continues.",
          "textcolor": [
            0.9254901960784314,
            0.9019607843137255,
            0.9019607843137255,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
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
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "bgfillcolor_color1": [
            0.039,
            0.141,
            0.89,
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
          "fontname": "Arial",
          "fontsize": 13.0,
          "gradient": 1,
          "id": "obj-31",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            627.0,
            156.0,
            84.0,
            23.0
          ],
          "text": "sourcepres 4"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "id": "obj-30",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            684.0,
            132.0,
            395.0,
            21.0
          ],
          "text": "reset distance in multiples of the radius-1 circle, launch on \"go\"",
          "textcolor": [
            0.9254901960784314,
            0.9019607843137255,
            0.9019607843137255,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
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
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "bgfillcolor_color1": [
            0.039,
            0.141,
            0.89,
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
          "fontname": "Arial",
          "fontsize": 13.0,
          "gradient": 1,
          "id": "obj-29",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            614.0,
            131.0,
            68.0,
            23.0
          ],
          "text": "distance 4"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "id": "obj-26",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            655.0,
            106.0,
            490.0,
            21.0
          ],
          "text": "Full outer → center → outer cycle in seconds. Queued changes take effect on \"go\".",
          "textcolor": [
            0.9254901960784314,
            0.9019607843137255,
            0.9019607843137255,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
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
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "bgfillcolor_color1": [
            0.039,
            0.141,
            0.89,
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
          "fontname": "Arial",
          "fontsize": 13.0,
          "gradient": 1,
          "id": "obj-21",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            597.0,
            106.0,
            56.0,
            23.0
          ],
          "text": "cycle 10"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "id": "obj-16",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            658.0,
            83.0,
            281.0,
            21.0
          ],
          "text": "number of sources <int (1-150)> launch on \"go\"",
          "textcolor": [
            0.9254901960784314,
            0.9019607843137255,
            0.9019607843137255,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
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
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "bgfillcolor_color1": [
            0.039,
            0.141,
            0.89,
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
          "fontname": "Arial",
          "fontsize": 13.0,
          "gradient": 1,
          "id": "obj-13",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            585.0,
            82.0,
            65.0,
            23.0
          ],
          "text": "sources 1"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "id": "obj-8",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            66.0,
            226.0,
            195.0,
            21.0
          ],
          "text": "bang = restart with active values",
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
          "id": "obj-18",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            14.0,
            738.0,
            41.0,
            36.0
          ],
          "text": "dac \non/off"
        }
      },
      {
        "box": {
          "channels": 8,
          "id": "obj-19",
          "lastchannelcount": 0,
          "maxclass": "live.gain~",
          "numinlets": 8,
          "numoutlets": 11,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "",
            "float",
            "list"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            55.0,
            721.0,
            479.0,
            72.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                -80
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.gain~[11]",
              "parameter_mmax": 6.0,
              "parameter_mmin": -70.0,
              "parameter_modmode": 3,
              "parameter_shortname": "live.gain~",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "varname": "live.gain~[9]"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            18.0,
            777.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 8,
          "numoutlets": 0,
          "patching_rect": [
            55.0,
            807.0,
            341.0,
            23.0
          ],
          "text": "dac~ 1 2 3 4 5 6 7 8"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "id": "obj-17",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            766.0,
            251.0,
            372.0,
            21.0
          ],
          "text": "go = apply queued settings + new launch order",
          "textcolor": [
            0.9254901960784314,
            0.9019607843137255,
            0.9019607843137255,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "id": "obj-12",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            743.0,
            226.0,
            301.0,
            21.0
          ],
          "text": "hold = stop and return all sources to outer distance",
          "textcolor": [
            0.9254901960784314,
            0.9019607843137255,
            0.9019607843137255,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "obj-5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            716.0,
            199.0,
            175.0,
            21.0
          ],
          "text": "init = reinstall preset + HOLD",
          "textcolor": [
            0.9254901960784314,
            0.9019607843137255,
            0.9019607843137255,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.592,
            0.031,
            0.031,
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
            0.592,
            0.031,
            0.031,
            1.0
          ],
          "bgfillcolor_color1": [
            0.592,
            0.031,
            0.031,
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
          "id": "obj-27",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            426.0,
            572.0,
            112.0,
            23.0
          ],
          "text": "delaydrift 300 300"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-24",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            673.0,
            312.0,
            105.0,
            21.0
          ],
          "text": "source presence",
          "textcolor": [
            0.9254901960784314,
            0.9058823529411765,
            0.9058823529411765,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-23",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            332.0,
            311.0,
            95.0,
            21.0
          ],
          "text": "room presence",
          "textcolor": [
            0.9254901960784314,
            0.9058823529411765,
            0.9058823529411765,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-22",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            526.0,
            311.0,
            57.0,
            21.0
          ],
          "text": "aperture",
          "textcolor": [
            0.9254901960784314,
            0.9058823529411765,
            0.9058823529411765,
            1.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-14",
          "maxclass": "number",
          "maximum": 120,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            526.0,
            337.0,
            50.0,
            23.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
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
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "bgfillcolor_color1": [
            0.341,
            0.039,
            0.761,
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
          "id": "obj-15",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            526.0,
            369.0,
            130.0,
            23.0
          ],
          "text": "/source/*/aperture $1"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-11",
          "maxclass": "number",
          "maximum": 120,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            335.0,
            337.0,
            50.0,
            23.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
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
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "bgfillcolor_color1": [
            0.341,
            0.039,
            0.761,
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
          "id": "obj-10",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            335.0,
            369.0,
            105.0,
            23.0
          ],
          "text": "/source/*/prer $1"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "id": "obj-9",
          "maxclass": "number",
          "maximum": 120,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            713.0,
            338.0,
            50.0,
            23.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.341,
            0.039,
            0.761,
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
            0.341,
            0.039,
            0.761,
            1.0
          ],
          "bgfillcolor_color1": [
            0.341,
            0.039,
            0.761,
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
          "id": "obj-6",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            713.0,
            370.0,
            107.0,
            23.0
          ],
          "text": "/source/*/pres $1"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.07450980392156863,
            0.5686274509803921,
            0.8705882352941177,
            1.0
          ],
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 8,
          "numoutlets": 1,
          "outlettype": [
            "multichannelsignal"
          ],
          "patching_rect": [
            55.0,
            568.0,
            268.0,
            23.0
          ],
          "text": "mc.pack~ 8"
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "spat5.osc.view",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "int",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            53.0,
            426.0,
            562.0,
            26.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.592,
            0.031,
            0.031,
            1.0
          ],
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            426.0,
            545.0,
            62.0,
            23.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.592156862745098,
            0.03137254901960784,
            0.03137254901960784,
            1.0
          ],
          "id": "full",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 8,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal"
          ],
          "patching_rect": [
            55.0,
            636.0,
            544.0,
            23.0
          ],
          "text": "mc.unpack~ 8 @replicate 0"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.592156862745098,
            0.03137254901960784,
            0.03137254901960784,
            1.0
          ],
          "id": "delay",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "multichannelsignal",
            "signal",
            "",
            ""
          ],
          "patching_rect": [
            55.0,
            605.0,
            366.0,
            23.0
          ],
          "text": "ec_tapdelay64_v4~ @sources 8 @spacing 200 @curve linear"
        }
      },
      {
        "box": {
          "channels": 1,
          "id": "obj-3",
          "lastchannelcount": 0,
          "maxclass": "live.gain~",
          "numinlets": 1,
          "numoutlets": 4,
          "orientation": 1,
          "outlettype": [
            "signal",
            "",
            "float",
            "list"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            55.0,
            505.0,
            150.0,
            41.0
          ],
          "saved_attribute_attributes": {
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
          "varname": "live.gain~"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontname": "Arial",
          "fontsize": 22.0,
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1.0,
            7.0,
            930.0,
            31.0
          ],
          "text": "ec_SPAT5 RECTILINEAR TRAJECTORY — v2.3 / ATTRIBUTES"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
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
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "bgfillcolor_color1": [
            0.039,
            0.141,
            0.89,
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
          "fontname": "Arial",
          "fontsize": 13.0,
          "gradient": 1,
          "id": "init",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            649.0,
            198.0,
            65.0,
            23.0
          ],
          "text": "init"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
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
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "bgfillcolor_color1": [
            0.039,
            0.141,
            0.89,
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
          "fontname": "Arial",
          "fontsize": 13.0,
          "gradient": 1,
          "id": "hold",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            670.0,
            225.0,
            65.0,
            23.0
          ],
          "text": "hold"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
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
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "bgfillcolor_color1": [
            0.039,
            0.141,
            0.89,
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
          "fontname": "Arial",
          "fontsize": 13.0,
          "gradient": 1,
          "id": "go",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            690.0,
            251.0,
            65.0,
            23.0
          ],
          "text": "go"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "id": "bang",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            39.0,
            224.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0392156862745098,
            0.1411764705882353,
            0.8901960784313725,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 18.0,
          "id": "js",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            38.0,
            274.0,
            683.0,
            29.0
          ],
          "saved_object_attributes": {
            "filename": "spat5_rectilinear_trajectory.js",
            "parameter_enable": 0
          },
          "text": "js spat5_rectilinear_trajectory.js @sources 8 @cycle 20 @distance 4 @sourcepres 2",
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
            0.039,
            0.141,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "status",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            154.0,
            310.0,
            133.0,
            23.0
          ],
          "text": "print trajectory_status"
        }
      },
      {
        "box": {
          "fontname": "Arial Bold",
          "fontsize": 18.0,
          "id": "args",
          "linecount": 7,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            5.0,
            43.0,
            591.0,
            147.0
          ],
          "text": "ATTRIBUTES — any order; omitted values use defaults\n@sources <int 1–150> : number of sources; default 1\n@cycle <positive int> : round-trip seconds; default 10\n@distance <int 1–10> : outer radius in 1X units; default 2\n@sourcepres <int 2–10> : direct-sound cutoff distance; default 2\nAt the sourcepres distance, direct sound is silent; reverb continues.\nExample below: 8 sources, 20 seconds, 4X distance, sourcepres 2."
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "states",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            865.0,
            460.0,
            252.0,
            65.0
          ],
          "text": "Each source launches once, then cycles continuously.\nThe launch order is weighted random, without repeats."
        }
      },
      {
        "box": {
          "bgcolor": [
            0.3411764705882353,
            0.0392156862745098,
            0.7607843137254902,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "oper",
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
            34.0,
            394.0,
            785.0,
            23.0
          ],
          "saved_object_attributes": {
            "parameter_enable": 0
          },
          "text": "spat5.oper @internals 8 @initwith \"/source/number 8, /room/number 1, /speaker/number 8, /speakers/az 0 45 90 135 180 -135 -90 -45\""
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "opentext",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            53.0,
            370.0,
            269.0,
            21.0
          ],
          "text": "Double-click Oper to view the moving source."
        }
      },
      {
        "box": {
          "bgcolor": [
            0.3411764705882353,
            0.0392156862745098,
            0.7607843137254902,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "spat",
          "maxclass": "newobj",
          "numinlets": 8,
          "numoutlets": 9,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            ""
          ],
          "patching_rect": [
            55.0,
            680.0,
            544.0,
            23.0
          ],
          "saved_object_attributes": {
            "parameter_enable": 0
          },
          "text": "spat5.spat~ @inputs 8 @outputs 8 @rooms 1 @internals 8 @initwith \"/panning/type angular\""
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "curve",
          "linecount": 5,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            877.5,
            321.0,
            227.0,
            79.0
          ],
          "text": "DISTANCE / SOURCEPRES\n0.00–0.25 : 100%\n1.00 : 50%\n1.50 : 5%\n2.00 : muted; reverb feed continues"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "scale",
          "linecount": 6,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            634.0,
            636.0,
            435.0,
            94.0
          ],
          "text": "SOURCE / SPEAKER SETUP\n8 audio inputs; 8 speakers around a horizontal circle.\nSpeaker azimuths: 0, 45, 90, 135, 180, -135, -90, -45.\nThe OSC filter removes only /speaker/number.\nmc.unpack~ 8 has fixed outlets; no startup rewiring.\nMatch source, pack, delay, unpack and SPAT counts."
        }
      },
      {
        "box": {
          "id": "speaker_count_filter",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            647.0,
            426.0,
            205.0,
            23.0
          ],
          "text": "spat5.osc.ignore /speaker/number"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "source": [
            "bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "curve_menu_prepend",
            0
          ],
          "source": [
            "curve_menu",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "delay",
            1
          ],
          "source": [
            "curve_menu_prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "full",
            0
          ],
          "source": [
            "delay",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            7
          ],
          "source": [
            "full",
            7
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            6
          ],
          "source": [
            "full",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            5
          ],
          "source": [
            "full",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            4
          ],
          "source": [
            "full",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            3
          ],
          "source": [
            "full",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            2
          ],
          "source": [
            "full",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            1
          ],
          "source": [
            "full",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            0
          ],
          "source": [
            "full",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "source": [
            "go",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "midpoints": [
            679.5,
            258.69921875,
            47.5,
            258.69921875
          ],
          "source": [
            "hold",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "midpoints": [
            658.5,
            257.23046875,
            47.5,
            257.23046875
          ],
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "oper",
            0
          ],
          "source": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "status",
            0
          ],
          "source": [
            "js",
            1
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
            "obj-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "oper",
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
            "obj-10",
            0
          ],
          "source": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "midpoints": [
            594.5,
            259.41796875,
            47.5,
            259.41796875
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
            "oper",
            0
          ],
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            7
          ],
          "source": [
            "obj-19",
            7
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            6
          ],
          "source": [
            "obj-19",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            5
          ],
          "source": [
            "obj-19",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            4
          ],
          "source": [
            "obj-19",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            3
          ],
          "source": [
            "obj-19",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            2
          ],
          "source": [
            "obj-19",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-20",
            1
          ],
          "source": [
            "obj-19",
            1
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
            "obj-19",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "midpoints": [
            606.5,
            258.66015625,
            47.5,
            258.66015625
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
            "obj-3",
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
            "delay",
            1
          ],
          "midpoints": [
            435.5,
            602.77734375,
            411.5,
            602.77734375
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
            "obj-14",
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
            "js",
            0
          ],
          "midpoints": [
            623.5,
            259.984375,
            47.5,
            259.984375
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
            7
          ],
          "order": 0,
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            6
          ],
          "order": 1,
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            5
          ],
          "order": 2,
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            4
          ],
          "order": 3,
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            3
          ],
          "order": 4,
          "source": [
            "obj-3",
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
          "order": 5,
          "source": [
            "obj-3",
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
          "order": 6,
          "source": [
            "obj-3",
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
          "order": 7,
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "midpoints": [
            636.5,
            258.9140625,
            47.5,
            258.9140625
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
            "obj-11",
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
            "obj-9",
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
            "obj-28",
            0
          ],
          "order": 1,
          "source": [
            "obj-37",
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
          "order": 2,
          "source": [
            "obj-37",
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
          "order": 0,
          "source": [
            "obj-37",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "delay",
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
            "obj-20",
            0
          ],
          "source": [
            "obj-46",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "oper",
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
            "obj-46",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-7",
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
            "obj-9",
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
          "order": 1,
          "source": [
            "oper",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "speaker_count_filter",
            0
          ],
          "midpoints": [
            43.5,
            420.0,
            656.5,
            420.0
          ],
          "order": 0,
          "source": [
            "oper",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            7
          ],
          "source": [
            "spat",
            7
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            6
          ],
          "source": [
            "spat",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            5
          ],
          "source": [
            "spat",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            4
          ],
          "source": [
            "spat",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            3
          ],
          "source": [
            "spat",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            2
          ],
          "source": [
            "spat",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            1
          ],
          "source": [
            "spat",
            1
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
            "spat",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spat",
            0
          ],
          "midpoints": [
            656.5,
            457.859375,
            27.0,
            457.859375,
            27.0,
            671.37109375,
            64.5,
            671.37109375
          ],
          "source": [
            "speaker_count_filter",
            0
          ]
        }
      }
    ],
    "parameters": {
      "obj-19": [
        "live.gain~[11]",
        "live.gain~",
        0
      ],
      "obj-3": [
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
