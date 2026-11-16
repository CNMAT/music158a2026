{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      140.0,
      100.0,
      1190.0,
      820.0
    ],
    "openinpresentation": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "boxes": [
      {
        "box": {
          "id": "box-001",
          "maxclass": "comment",
          "patching_rect": [
            38.0,
            18.0,
            1060.0,
            39.0
          ],
          "presentation": 1,
          "presentation_rect": [
            38.0,
            18.0,
            1060.0,
            39.0
          ],
          "text": "RAND_LIST.JS  |  EIGHT-STAGE INTERACTIVE TUTORIAL",
          "fontsize": 24.0,
          "fontface": 1,
          "textcolor": [
            0.11,
            0.17,
            0.29,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-002",
          "maxclass": "comment",
          "patching_rect": [
            42.0,
            71.0,
            1080.0,
            44.0
          ],
          "presentation": 1,
          "presentation_rect": [
            42.0,
            71.0,
            1080.0,
            44.0
          ],
          "text": "Double-click a lesson (p object) to open it. Each lesson has an independent [js rand_list.js], numbered click-through commands, a BANG button and live list/status monitors.",
          "fontsize": 12.0,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-003",
          "maxclass": "comment",
          "patching_rect": [
            42.0,
            114.0,
            1060.0,
            27.0
          ],
          "presentation": 1,
          "presentation_rect": [
            42.0,
            114.0,
            1060.0,
            27.0
          ],
          "text": "RECOMMENDED: follow stages 01-08. Return here between lessons; there is no shared mutable state across lessons.",
          "fontsize": 12,
          "fontface": 1,
          "textcolor": [
            0.1,
            0.52,
            0.4,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-004",
          "maxclass": "comment",
          "patching_rect": [
            46.0,
            175.0,
            495.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            46.0,
            175.0,
            495.0,
            29.0
          ],
          "text": "01  RESET + FIRST BANG",
          "fontsize": 16,
          "fontface": 1,
          "textcolor": [
            0.15,
            0.42,
            0.78,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-005",
          "maxclass": "newobj",
          "patching_rect": [
            54.0,
            215.0,
            250.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            215.0,
            250.0,
            29.0
          ],
          "text": "p 01_Reset_and_Bang",
          "fontsize": 14.0,
          "bgcolor": [
            0.15,
            0.42,
            0.78,
            1.0
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              140.0,
              100.0,
              1090.0,
              775.0
            ],
            "openinpresentation": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "box-001",
                  "maxclass": "comment",
                  "patching_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "text": "01  RESETDEFAULTS AND BANG",
                  "fontsize": 24.0,
                  "fontface": 1,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-002",
                  "maxclass": "comment",
                  "patching_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "text": "Reset the generator, hear the exact base list, then generate fresh binary lists. These steps are intentionally separate.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-003",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "text": "CLICK THE STEP MESSAGES IN ORDER",
                  "fontsize": 15.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-004",
                  "maxclass": "newobj",
                  "patching_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "text": "js rand_list.js",
                  "fontsize": 17.0,
                  "bgcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "saved_object_attributes": {
                    "filename": "rand_list.js",
                    "parameter_enable": 0
                  }
                }
              },
              {
                "box": {
                  "id": "box-005",
                  "maxclass": "comment",
                  "patching_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "text": "BANG = EXECUTE / ADVANCE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-006",
                  "maxclass": "message",
                  "patching_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "text": "bang",
                  "fontsize": 20.0,
                  "fontface": 1,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-007",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "text": "ONE INSTANCE, TWO OUTLETS",
                  "fontsize": 13.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-008",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "text": "LEFT OUTLET   Resulting integer list",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-009",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "text": "(click bang to see a list)",
                  "fontsize": 14.0,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-010",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "text": "RIGHT OUTLET   Status / diagnostic message",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-011",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "text": "(status)",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-012",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    324.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-013",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    408.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-014",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    465.0,
                    250.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_list_01",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-015",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    497.0,
                    260.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_status_01",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-016",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "text": "For long state reports, open the Max Console.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-017",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "text": "Every stage uses its own [js rand_list.js] instance.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-018",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "text": "01",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-019",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-020",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "text": "Restore the current script defaults.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-021",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "text": "02",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-022",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    190.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    190.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-023",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    192.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    192.0,
                    405.0,
                    37.0
                  ],
                  "text": "The FIRST bang outputs 1 0 0 0 0 0.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-024",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "text": "03",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-025",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    236.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    236.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-026",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    238.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    238.0,
                    405.0,
                    37.0
                  ],
                  "text": "The SECOND bang generates six random 0/1 values.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-027",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "text": "04",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-028",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-029",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "text": "Repeat: each bang gives a new 0/1 list.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-030",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "text": "05",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-031",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "text": "getstate",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-032",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "text": "Read the internal range, length and modes.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-033",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "text": "06",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-034",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "text": "init",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-035",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "text": "Reseed; it does NOT restore the default range.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-036",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "text": "07",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-037",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-038",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "text": "Generate using the settings already active.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-039",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "text": "WHAT TO NOTICE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-040",
                  "maxclass": "comment",
                  "patching_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "text": "CURRENT UPLOAD: resetdefaults sets length 6, range 0..1, repeats allowed, no filters, cycle OFF, and stores [1 0 0 0 0 0]. The first bang echoes that list unchanged.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-041",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "box-006",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-012",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-012",
                    0
                  ],
                  "destination": [
                    "box-009",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-013",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-013",
                    0
                  ],
                  "destination": [
                    "box-011",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-014",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-015",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-019",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-022",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-025",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-028",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-031",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-034",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-037",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "rand_list.js",
                "type": "TEXT",
                "implicit": 1
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "box-006",
          "maxclass": "comment",
          "patching_rect": [
            324.0,
            217.0,
            220.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            324.0,
            217.0,
            220.0,
            24.0
          ],
          "text": "Double-click to open this lesson.",
          "fontsize": 11.0,
          "textcolor": [
            0.4,
            0.44,
            0.5,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-007",
          "maxclass": "comment",
          "patching_rect": [
            54.0,
            254.0,
            505.0,
            43.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            254.0,
            505.0,
            43.0
          ],
          "text": "Reset the generator, hear the exact base list, then generate fresh binary lists. These steps are intentionally separate.",
          "fontsize": 11,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-008",
          "maxclass": "comment",
          "patching_rect": [
            598.0,
            175.0,
            495.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            598.0,
            175.0,
            495.0,
            29.0
          ],
          "text": "02  LENGTH + RANGE + REPEATS",
          "fontsize": 16,
          "fontface": 1,
          "textcolor": [
            0.1,
            0.52,
            0.4,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-009",
          "maxclass": "newobj",
          "patching_rect": [
            606.0,
            215.0,
            250.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            606.0,
            215.0,
            250.0,
            29.0
          ],
          "text": "p 02_Length_Range_Repeats",
          "fontsize": 14.0,
          "bgcolor": [
            0.1,
            0.52,
            0.4,
            1.0
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              140.0,
              100.0,
              1090.0,
              775.0
            ],
            "openinpresentation": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "box-001",
                  "maxclass": "comment",
                  "patching_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "text": "02  BUILD A RANDOM LIST",
                  "fontsize": 24.0,
                  "fontface": 1,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-002",
                  "maxclass": "comment",
                  "patching_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "text": "Set the number of slots and the inclusive pool of possible integers. Compare sampling with and without repetitions.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-003",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "text": "CLICK THE STEP MESSAGES IN ORDER",
                  "fontsize": 15.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-004",
                  "maxclass": "newobj",
                  "patching_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "text": "js rand_list.js",
                  "fontsize": 17.0,
                  "bgcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "saved_object_attributes": {
                    "filename": "rand_list.js",
                    "parameter_enable": 0
                  }
                }
              },
              {
                "box": {
                  "id": "box-005",
                  "maxclass": "comment",
                  "patching_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "text": "BANG = EXECUTE / ADVANCE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-006",
                  "maxclass": "message",
                  "patching_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "text": "bang",
                  "fontsize": 20.0,
                  "fontface": 1,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-007",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "text": "ONE INSTANCE, TWO OUTLETS",
                  "fontsize": 13.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-008",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "text": "LEFT OUTLET   Resulting integer list",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-009",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "text": "(click bang to see a list)",
                  "fontsize": 14.0,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-010",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "text": "RIGHT OUTLET   Status / diagnostic message",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-011",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "text": "(status)",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-012",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    324.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-013",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    408.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-014",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    465.0,
                    250.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_list_02",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-015",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    497.0,
                    260.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_status_02",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-016",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "text": "For long state reports, open the Max Console.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-017",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "text": "Every stage uses its own [js rand_list.js] instance.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-018",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "text": "01",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-019",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-020",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "text": "Begin from a known state.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-021",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "text": "02",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-022",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    190.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    190.0,
                    117.0,
                    27.0
                  ],
                  "text": "length 6",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-023",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    192.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    192.0,
                    405.0,
                    37.0
                  ],
                  "text": "Set the number of values in the list.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-024",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "text": "03",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-025",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    236.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    236.0,
                    117.0,
                    27.0
                  ],
                  "text": "range 1 15",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-026",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    238.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    238.0,
                    405.0,
                    37.0
                  ],
                  "text": "Allow integers 1 through 15, inclusive.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-027",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "text": "04",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-028",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    282.0,
                    126.39999999999999,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    282.0,
                    126.39999999999999,
                    27.0
                  ],
                  "text": "allowrepeats 1",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-029",
                  "maxclass": "comment",
                  "patching_rect": [
                    204.39999999999998,
                    284.0,
                    395.6,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    204.39999999999998,
                    284.0,
                    395.6,
                    37.0
                  ],
                  "text": "Duplicates are permitted.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-030",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "text": "05",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-031",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "text": "generate",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-032",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "text": "Arm FULL generation; bypass the held reset output.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-033",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "text": "06",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-034",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-035",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "text": "Generate with repetitions permitted.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-036",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "text": "07",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-037",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    420.0,
                    126.39999999999999,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    420.0,
                    126.39999999999999,
                    27.0
                  ],
                  "text": "allowrepeats 0",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-038",
                  "maxclass": "comment",
                  "patching_rect": [
                    204.39999999999998,
                    422.0,
                    395.6,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    204.39999999999998,
                    422.0,
                    395.6,
                    37.0
                  ],
                  "text": "Demand six DIFFERENT numbers.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-039",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "text": "08",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-040",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-041",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "text": "Generate six distinct numbers.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-042",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "text": "09",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-043",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    512.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    512.0,
                    117.0,
                    27.0
                  ],
                  "text": "range 1 3",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-044",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    514.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    514.0,
                    405.0,
                    37.0
                  ],
                  "text": "Make the unique pool too small.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-045",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    561.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    561.0,
                    27.0,
                    22.0
                  ],
                  "text": "10",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-046",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    558.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    558.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-047",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    560.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    560.0,
                    405.0,
                    37.0
                  ],
                  "text": "Inspect the error/status outlet: 6 unique values are impossible.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-048",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "text": "WHAT TO NOTICE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-049",
                  "maxclass": "comment",
                  "patching_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "text": "Changing a parameter does not itself output a list. The next bang uses the new settings. With allowrepeats 0, list length cannot exceed the available pool size.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-050",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "box-006",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-012",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-012",
                    0
                  ],
                  "destination": [
                    "box-009",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-013",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-013",
                    0
                  ],
                  "destination": [
                    "box-011",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-014",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-015",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-019",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-022",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-025",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-028",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-031",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-034",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-037",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-040",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-043",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-046",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "rand_list.js",
                "type": "TEXT",
                "implicit": 1
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "box-010",
          "maxclass": "comment",
          "patching_rect": [
            876.0,
            217.0,
            220.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            876.0,
            217.0,
            220.0,
            24.0
          ],
          "text": "Double-click to open this lesson.",
          "fontsize": 11.0,
          "textcolor": [
            0.4,
            0.44,
            0.5,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-011",
          "maxclass": "comment",
          "patching_rect": [
            606.0,
            254.0,
            505.0,
            43.0
          ],
          "presentation": 1,
          "presentation_rect": [
            606.0,
            254.0,
            505.0,
            43.0
          ],
          "text": "Set the number of slots and the inclusive pool of possible integers. Compare sampling with and without repetitions.",
          "fontsize": 11,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-012",
          "maxclass": "comment",
          "patching_rect": [
            46.0,
            310.0,
            495.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            46.0,
            310.0,
            495.0,
            29.0
          ],
          "text": "03  SORTING + FILTERS",
          "fontsize": 16,
          "fontface": 1,
          "textcolor": [
            0.37,
            0.28,
            0.62,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-013",
          "maxclass": "newobj",
          "patching_rect": [
            54.0,
            350.0,
            250.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            350.0,
            250.0,
            29.0
          ],
          "text": "p 03_Sort_and_Filters",
          "fontsize": 14.0,
          "bgcolor": [
            0.37,
            0.28,
            0.62,
            1.0
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              140.0,
              100.0,
              1090.0,
              775.0
            ],
            "openinpresentation": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "box-001",
                  "maxclass": "comment",
                  "patching_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "text": "03  SORT, PARITY AND FILTERS",
                  "fontsize": 24.0,
                  "fontface": 1,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-002",
                  "maxclass": "comment",
                  "patching_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "text": "A filter restricts candidate values; sorting rearranges a newly generated list after selection. The two operations do different jobs.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-003",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "text": "CLICK THE STEP MESSAGES IN ORDER",
                  "fontsize": 15.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-004",
                  "maxclass": "newobj",
                  "patching_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "text": "js rand_list.js",
                  "fontsize": 17.0,
                  "bgcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "saved_object_attributes": {
                    "filename": "rand_list.js",
                    "parameter_enable": 0
                  }
                }
              },
              {
                "box": {
                  "id": "box-005",
                  "maxclass": "comment",
                  "patching_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "text": "BANG = EXECUTE / ADVANCE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-006",
                  "maxclass": "message",
                  "patching_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "text": "bang",
                  "fontsize": 20.0,
                  "fontface": 1,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-007",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "text": "ONE INSTANCE, TWO OUTLETS",
                  "fontsize": 13.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-008",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "text": "LEFT OUTLET   Resulting integer list",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-009",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "text": "(click bang to see a list)",
                  "fontsize": 14.0,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-010",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "text": "RIGHT OUTLET   Status / diagnostic message",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-011",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "text": "(status)",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-012",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    324.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-013",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    408.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-014",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    465.0,
                    250.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_list_03",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-015",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    497.0,
                    260.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_status_03",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-016",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "text": "For long state reports, open the Max Console.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-017",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "text": "Every stage uses its own [js rand_list.js] instance.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-018",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "text": "01",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-019",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-020",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "text": "Clear settings from previous experiments.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-021",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    192.9090909090909,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    192.9090909090909,
                    27.0,
                    22.0
                  ],
                  "text": "02",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-022",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    189.9090909090909,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    189.9090909090909,
                    117.0,
                    27.0
                  ],
                  "text": "range 1 15",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-023",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    191.9090909090909,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    191.9090909090909,
                    405.0,
                    37.0
                  ],
                  "text": "Use an easy-to-inspect integer pool.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-024",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    238.8181818181818,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    238.8181818181818,
                    27.0,
                    22.0
                  ],
                  "text": "03",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-025",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    235.8181818181818,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    235.8181818181818,
                    117.0,
                    27.0
                  ],
                  "text": "parity odd",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-026",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    237.8181818181818,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    237.8181818181818,
                    405.0,
                    37.0
                  ],
                  "text": "Restrict the pool to odd numbers only.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-027",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    284.72727272727275,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    284.72727272727275,
                    27.0,
                    22.0
                  ],
                  "text": "04",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-028",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    281.72727272727275,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    281.72727272727275,
                    117.0,
                    27.0
                  ],
                  "text": "filtermin 5",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-029",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    283.72727272727275,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    283.72727272727275,
                    405.0,
                    37.0
                  ],
                  "text": "Exclude all candidates below 5.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-030",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    330.6363636363636,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    330.6363636363636,
                    27.0,
                    22.0
                  ],
                  "text": "05",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-031",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    327.6363636363636,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    327.6363636363636,
                    117.0,
                    27.0
                  ],
                  "text": "filtermax 11",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-032",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    329.6363636363636,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    329.6363636363636,
                    405.0,
                    37.0
                  ],
                  "text": "Exclude all candidates above 11.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-033",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    376.5454545454545,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    376.5454545454545,
                    27.0,
                    22.0
                  ],
                  "text": "06",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-034",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    373.5454545454545,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    373.5454545454545,
                    117.0,
                    27.0
                  ],
                  "text": "sort asc",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-035",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    375.5454545454545,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    375.5454545454545,
                    405.0,
                    37.0
                  ],
                  "text": "Sort low to high after generation.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-036",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    422.45454545454544,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    422.45454545454544,
                    27.0,
                    22.0
                  ],
                  "text": "07",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-037",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    419.45454545454544,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    419.45454545454544,
                    117.0,
                    27.0
                  ],
                  "text": "generate",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-038",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    421.45454545454544,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    421.45454545454544,
                    405.0,
                    37.0
                  ],
                  "text": "Arm fresh generation; bypass held reset output.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-039",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    468.3636363636364,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    468.3636363636364,
                    27.0,
                    22.0
                  ],
                  "text": "08",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-040",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    465.3636363636364,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    465.3636363636364,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-041",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    467.3636363636364,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    467.3636363636364,
                    405.0,
                    37.0
                  ],
                  "text": "Expected values drawn only from 5, 7, 9, 11.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-042",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    514.2727272727273,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    514.2727272727273,
                    27.0,
                    22.0
                  ],
                  "text": "09",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-043",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    511.27272727272725,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    511.27272727272725,
                    117.0,
                    27.0
                  ],
                  "text": "sort desc",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-044",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    513.2727272727273,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    513.2727272727273,
                    405.0,
                    37.0
                  ],
                  "text": "Try descending order.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-045",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    560.1818181818181,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    560.1818181818181,
                    27.0,
                    22.0
                  ],
                  "text": "10",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-046",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    557.1818181818181,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    557.1818181818181,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-047",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    559.1818181818181,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    559.1818181818181,
                    405.0,
                    37.0
                  ],
                  "text": "Compare the new order.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-048",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    606.090909090909,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    606.090909090909,
                    27.0,
                    22.0
                  ],
                  "text": "11",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-049",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    603.090909090909,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    603.090909090909,
                    117.0,
                    27.0
                  ],
                  "text": "clearfilter",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-050",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    605.090909090909,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    605.090909090909,
                    405.0,
                    37.0
                  ],
                  "text": "Remove parity and both filter limits; keep the range.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-051",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "text": "WHAT TO NOTICE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-052",
                  "maxclass": "comment",
                  "patching_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "text": "Try parity even and bang; or send sort none and bang. IMPORTANT: clearfilter also resets parity to any, but does NOT reset range or sort.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-053",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "box-006",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-012",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-012",
                    0
                  ],
                  "destination": [
                    "box-009",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-013",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-013",
                    0
                  ],
                  "destination": [
                    "box-011",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-014",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-015",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-019",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-022",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-025",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-028",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-031",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-034",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-037",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-040",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-043",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-046",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-049",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "rand_list.js",
                "type": "TEXT",
                "implicit": 1
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "box-014",
          "maxclass": "comment",
          "patching_rect": [
            324.0,
            352.0,
            220.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            324.0,
            352.0,
            220.0,
            24.0
          ],
          "text": "Double-click to open this lesson.",
          "fontsize": 11.0,
          "textcolor": [
            0.4,
            0.44,
            0.5,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-015",
          "maxclass": "comment",
          "patching_rect": [
            54.0,
            389.0,
            505.0,
            43.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            389.0,
            505.0,
            43.0
          ],
          "text": "A filter restricts candidate values; sorting rearranges a newly generated list after selection. The two operations do different jobs.",
          "fontsize": 11,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-016",
          "maxclass": "comment",
          "patching_rect": [
            598.0,
            310.0,
            495.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            598.0,
            310.0,
            495.0,
            29.0
          ],
          "text": "04  LISTFEED + GETLAST",
          "fontsize": 16,
          "fontface": 1,
          "textcolor": [
            0.15,
            0.42,
            0.78,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-017",
          "maxclass": "newobj",
          "patching_rect": [
            606.0,
            350.0,
            250.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            606.0,
            350.0,
            250.0,
            29.0
          ],
          "text": "p 04_Listfeed_and_Getlast",
          "fontsize": 14.0,
          "bgcolor": [
            0.15,
            0.42,
            0.78,
            1.0
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              140.0,
              100.0,
              1090.0,
              775.0
            ],
            "openinpresentation": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "box-001",
                  "maxclass": "comment",
                  "patching_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "text": "04  SUPPLY AND RETRIEVE A LIST",
                  "fontsize": 24.0,
                  "fontface": 1,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-002",
                  "maxclass": "comment",
                  "patching_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "text": "An explicit list becomes internal state. The input commands are deferred: watch when outlet 1 actually changes.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-003",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "text": "CLICK THE STEP MESSAGES IN ORDER",
                  "fontsize": 15.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-004",
                  "maxclass": "newobj",
                  "patching_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "text": "js rand_list.js",
                  "fontsize": 17.0,
                  "bgcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "saved_object_attributes": {
                    "filename": "rand_list.js",
                    "parameter_enable": 0
                  }
                }
              },
              {
                "box": {
                  "id": "box-005",
                  "maxclass": "comment",
                  "patching_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "text": "BANG = EXECUTE / ADVANCE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-006",
                  "maxclass": "message",
                  "patching_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "text": "bang",
                  "fontsize": 20.0,
                  "fontface": 1,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-007",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "text": "ONE INSTANCE, TWO OUTLETS",
                  "fontsize": 13.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-008",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "text": "LEFT OUTLET   Resulting integer list",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-009",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "text": "(click bang to see a list)",
                  "fontsize": 14.0,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-010",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "text": "RIGHT OUTLET   Status / diagnostic message",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-011",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "text": "(status)",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-012",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    324.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-013",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    408.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-014",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    465.0,
                    250.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_list_04",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-015",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    497.0,
                    260.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_status_04",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-016",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "text": "For long state reports, open the Max Console.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-017",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "text": "Every stage uses its own [js rand_list.js] instance.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-018",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "text": "01",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-019",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-020",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "text": "Establish known settings.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-021",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "text": "02",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-022",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    190.0,
                    172.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    190.0,
                    172.0,
                    27.0
                  ],
                  "text": "listfeed 10 20 30 40",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-023",
                  "maxclass": "comment",
                  "patching_rect": [
                    250.0,
                    192.0,
                    350.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    250.0,
                    192.0,
                    350.0,
                    37.0
                  ],
                  "text": "Store a FOUR-slot base and update listLength to 4.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-024",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "text": "03",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-025",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    236.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    236.0,
                    117.0,
                    27.0
                  ],
                  "text": "getstate",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-026",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    238.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    238.0,
                    405.0,
                    37.0
                  ],
                  "text": "Look for length 4, lastlength 4, holdfirstbang 1.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-027",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "text": "04",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-028",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-029",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "text": "Only NOW is 10 20 30 40 output.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-030",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "text": "05",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-031",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "text": "getlast",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-032",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "text": "ARM a replay of the stored list.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-033",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "text": "06",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-034",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-035",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "text": "Output the same four values, unchanged.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-036",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "text": "07",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-037",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "text": "range 0 17",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-038",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "text": "Update the pool for subsequent random generation.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-039",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "text": "08",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-040",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-041",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "text": "With no mode armed, this is a fresh four-number list.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-042",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "text": "WHAT TO NOTICE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-043",
                  "maxclass": "comment",
                  "patching_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "text": "Neither listfeed nor getlast immediately emits the stored list; each arms an unchanged output for the next bang. Feeding a list changes its length but not the random range.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-044",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "box-006",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-012",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-012",
                    0
                  ],
                  "destination": [
                    "box-009",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-013",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-013",
                    0
                  ],
                  "destination": [
                    "box-011",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-014",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-015",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-019",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-022",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-025",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-028",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-031",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-034",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-037",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-040",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "rand_list.js",
                "type": "TEXT",
                "implicit": 1
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "box-018",
          "maxclass": "comment",
          "patching_rect": [
            876.0,
            352.0,
            220.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            876.0,
            352.0,
            220.0,
            24.0
          ],
          "text": "Double-click to open this lesson.",
          "fontsize": 11.0,
          "textcolor": [
            0.4,
            0.44,
            0.5,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-019",
          "maxclass": "comment",
          "patching_rect": [
            606.0,
            389.0,
            505.0,
            43.0
          ],
          "presentation": 1,
          "presentation_rect": [
            606.0,
            389.0,
            505.0,
            43.0
          ],
          "text": "An explicit list becomes internal state. The input commands are deferred: watch when outlet 1 actually changes.",
          "fontsize": 11,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-020",
          "maxclass": "comment",
          "patching_rect": [
            46.0,
            445.0,
            495.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            46.0,
            445.0,
            495.0,
            29.0
          ],
          "text": "05  EXPLICIT MUTATE MASK",
          "fontsize": 16,
          "fontface": 1,
          "textcolor": [
            0.37,
            0.28,
            0.62,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-021",
          "maxclass": "newobj",
          "patching_rect": [
            54.0,
            485.0,
            250.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            485.0,
            250.0,
            29.0
          ],
          "text": "p 05_Explicit_Mutate_Mask",
          "fontsize": 14.0,
          "bgcolor": [
            0.37,
            0.28,
            0.62,
            1.0
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              140.0,
              100.0,
              1090.0,
              775.0
            ],
            "openinpresentation": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "box-001",
                  "maxclass": "comment",
                  "patching_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "text": "05  ONE-SHOT MASKED MUTATION",
                  "fontsize": 24.0,
                  "fontface": 1,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-002",
                  "maxclass": "comment",
                  "patching_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "text": "Use 0 to KEEP a slot and n to REPLACE it. The mutation runs on the next bang; the explicit mask is then consumed.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-003",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "text": "CLICK THE STEP MESSAGES IN ORDER",
                  "fontsize": 15.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-004",
                  "maxclass": "newobj",
                  "patching_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "text": "js rand_list.js",
                  "fontsize": 17.0,
                  "bgcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "saved_object_attributes": {
                    "filename": "rand_list.js",
                    "parameter_enable": 0
                  }
                }
              },
              {
                "box": {
                  "id": "box-005",
                  "maxclass": "comment",
                  "patching_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "text": "BANG = EXECUTE / ADVANCE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-006",
                  "maxclass": "message",
                  "patching_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "text": "bang",
                  "fontsize": 20.0,
                  "fontface": 1,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-007",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "text": "ONE INSTANCE, TWO OUTLETS",
                  "fontsize": 13.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-008",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "text": "LEFT OUTLET   Resulting integer list",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-009",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "text": "(click bang to see a list)",
                  "fontsize": 14.0,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-010",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "text": "RIGHT OUTLET   Status / diagnostic message",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-011",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "text": "(status)",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-012",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    324.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-013",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    408.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-014",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    465.0,
                    250.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_list_05",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-015",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    497.0,
                    260.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_status_05",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-016",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "text": "For long state reports, open the Max Console.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-017",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "text": "Every stage uses its own [js rand_list.js] instance.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-018",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "text": "01",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-019",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-020",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "text": "Start clean.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-021",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "text": "02",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-022",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    190.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    190.0,
                    117.0,
                    27.0
                  ],
                  "text": "range 1 15",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-023",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    192.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    192.0,
                    405.0,
                    37.0
                  ],
                  "text": "Choose useful replacement values.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-024",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "text": "03",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-025",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    236.0,
                    172.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    236.0,
                    172.0,
                    27.0
                  ],
                  "text": "listfeed 1 2 3 4 5 6",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-026",
                  "maxclass": "comment",
                  "patching_rect": [
                    250.0,
                    238.0,
                    350.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    250.0,
                    238.0,
                    350.0,
                    37.0
                  ],
                  "text": "Store the six-number original list.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-027",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "text": "04",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-028",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    282.0,
                    156.79999999999998,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    282.0,
                    156.79999999999998,
                    27.0
                  ],
                  "text": "mutate n 0 0 n 0 0",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-029",
                  "maxclass": "comment",
                  "patching_rect": [
                    234.79999999999998,
                    284.0,
                    365.20000000000005,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    234.79999999999998,
                    284.0,
                    365.20000000000005,
                    37.0
                  ],
                  "text": "Arm replacements at positions 1 and 4 only.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-030",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "text": "05",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-031",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-032",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "text": "Positions 2, 3, 5 and 6 remain unchanged.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-033",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "text": "06",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-034",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-035",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "text": "The one-shot mutate has ended: now FULL generation.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-036",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "text": "07",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-037",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    420.0,
                    172.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    420.0,
                    172.0,
                    27.0
                  ],
                  "text": "listfeed 1 2 3 4 5 6",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-038",
                  "maxclass": "comment",
                  "patching_rect": [
                    250.0,
                    422.0,
                    350.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    250.0,
                    422.0,
                    350.0,
                    37.0
                  ],
                  "text": "Restore the original list.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-039",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "text": "08",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-040",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    466.0,
                    156.79999999999998,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    466.0,
                    156.79999999999998,
                    27.0
                  ],
                  "text": "mutate 0 n 0 0 0 n",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-041",
                  "maxclass": "comment",
                  "patching_rect": [
                    234.79999999999998,
                    468.0,
                    365.20000000000005,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    234.79999999999998,
                    468.0,
                    365.20000000000005,
                    37.0
                  ],
                  "text": "Arm a DIFFERENT mask.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-042",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "text": "09",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-043",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    512.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    512.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-044",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    514.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    514.0,
                    405.0,
                    37.0
                  ],
                  "text": "Only positions 2 and 6 are newly sampled.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-045",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "text": "WHAT TO NOTICE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.37,
                    0.28,
                    0.62,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-046",
                  "maxclass": "comment",
                  "patching_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "text": "Arming a mutate mask cancels the listfeed held-first-bang. Its first following bang performs the requested mutation, not a replay. Mutations do not sort the resulting slots.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-047",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "box-006",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-012",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-012",
                    0
                  ],
                  "destination": [
                    "box-009",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-013",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-013",
                    0
                  ],
                  "destination": [
                    "box-011",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-014",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-015",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-019",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-022",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-025",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-028",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-031",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-034",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-037",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-040",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-043",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "rand_list.js",
                "type": "TEXT",
                "implicit": 1
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "box-022",
          "maxclass": "comment",
          "patching_rect": [
            324.0,
            487.0,
            220.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            324.0,
            487.0,
            220.0,
            24.0
          ],
          "text": "Double-click to open this lesson.",
          "fontsize": 11.0,
          "textcolor": [
            0.4,
            0.44,
            0.5,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-023",
          "maxclass": "comment",
          "patching_rect": [
            54.0,
            524.0,
            505.0,
            43.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            524.0,
            505.0,
            43.0
          ],
          "text": "Use 0 to KEEP a slot and n to REPLACE it. The mutation runs on the next bang; the explicit mask is then consumed.",
          "fontsize": 11,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-024",
          "maxclass": "comment",
          "patching_rect": [
            598.0,
            445.0,
            495.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            598.0,
            445.0,
            495.0,
            29.0
          ],
          "text": "06  ROUND-ROBIN MUTATE",
          "fontsize": 16,
          "fontface": 1,
          "textcolor": [
            0.1,
            0.52,
            0.4,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-025",
          "maxclass": "newobj",
          "patching_rect": [
            606.0,
            485.0,
            250.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            606.0,
            485.0,
            250.0,
            29.0
          ],
          "text": "p 06_Round_Robin_Mutate",
          "fontsize": 14.0,
          "bgcolor": [
            0.1,
            0.52,
            0.4,
            1.0
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              140.0,
              100.0,
              1090.0,
              775.0
            ],
            "openinpresentation": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "box-001",
                  "maxclass": "comment",
                  "patching_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "text": "06  CYCLIC MUTATION",
                  "fontsize": 24.0,
                  "fontface": 1,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-002",
                  "maxclass": "comment",
                  "patching_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "text": "mutate1, mutate2, mutate3 and mutatecycle n arm repeated, positional changes. One bang advances one group.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-003",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "text": "CLICK THE STEP MESSAGES IN ORDER",
                  "fontsize": 15.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-004",
                  "maxclass": "newobj",
                  "patching_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "text": "js rand_list.js",
                  "fontsize": 17.0,
                  "bgcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "saved_object_attributes": {
                    "filename": "rand_list.js",
                    "parameter_enable": 0
                  }
                }
              },
              {
                "box": {
                  "id": "box-005",
                  "maxclass": "comment",
                  "patching_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "text": "BANG = EXECUTE / ADVANCE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-006",
                  "maxclass": "message",
                  "patching_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "text": "bang",
                  "fontsize": 20.0,
                  "fontface": 1,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-007",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "text": "ONE INSTANCE, TWO OUTLETS",
                  "fontsize": 13.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-008",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "text": "LEFT OUTLET   Resulting integer list",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-009",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "text": "(click bang to see a list)",
                  "fontsize": 14.0,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-010",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "text": "RIGHT OUTLET   Status / diagnostic message",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-011",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "text": "(status)",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-012",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    324.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-013",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    408.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-014",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    465.0,
                    250.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_list_06",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-015",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    497.0,
                    260.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_status_06",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-016",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "text": "For long state reports, open the Max Console.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-017",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "text": "Every stage uses its own [js rand_list.js] instance.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-018",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "text": "01",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-019",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-020",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "text": "Start clean with range 0..1.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-021",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "text": "02",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-022",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    190.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    190.0,
                    117.0,
                    27.0
                  ],
                  "text": "range 0 17",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-023",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    192.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    192.0,
                    405.0,
                    37.0
                  ],
                  "text": "Expand replacement choices.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-024",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "text": "03",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-025",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    236.0,
                    172.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    236.0,
                    172.0,
                    27.0
                  ],
                  "text": "listfeed 1 2 3 4 5 6",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-026",
                  "maxclass": "comment",
                  "patching_rect": [
                    250.0,
                    238.0,
                    350.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    250.0,
                    238.0,
                    350.0,
                    37.0
                  ],
                  "text": "Install a recognizable starting list.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-027",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "text": "04",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-028",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "text": "mutate2",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-029",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "text": "Arm two-slot groups; NO list output yet.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-030",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "text": "05",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-031",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-032",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "text": "Change slots 1 and 2.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-033",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "text": "06",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-034",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    374.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-035",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    376.0,
                    405.0,
                    37.0
                  ],
                  "text": "Change slots 3 and 4 (preserve others).",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-036",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "text": "07",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-037",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "text": "cyclepos 6",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-038",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "text": "Set next starting slot to SIX (1-based).",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-039",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "text": "08",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-040",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-041",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "text": "Change slots 6 and 1, wrapping around.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-042",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "text": "09",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-043",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    512.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    512.0,
                    117.0,
                    27.0
                  ],
                  "text": "stopcycle",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-044",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    514.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    514.0,
                    405.0,
                    37.0
                  ],
                  "text": "Stop the round-robin algorithm.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-045",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    561.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    561.0,
                    27.0,
                    22.0
                  ],
                  "text": "10",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-046",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    558.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    558.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-047",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    560.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    560.0,
                    405.0,
                    37.0
                  ],
                  "text": "Back to full-list generation.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-048",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "text": "WHAT TO NOTICE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.1,
                    0.52,
                    0.4,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-049",
                  "maxclass": "comment",
                  "patching_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "text": "mutate1 advances one slot per bang. mutate2 advances two; mutate3 advances three. mutatecycle 4 is the generic form. This mutation is CUMULATIVE: slots changed earlier remain changed.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-050",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "box-006",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-012",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-012",
                    0
                  ],
                  "destination": [
                    "box-009",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-013",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-013",
                    0
                  ],
                  "destination": [
                    "box-011",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-014",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-015",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-019",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-022",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-025",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-028",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-031",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-034",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-037",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-040",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-043",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-046",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "rand_list.js",
                "type": "TEXT",
                "implicit": 1
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "box-026",
          "maxclass": "comment",
          "patching_rect": [
            876.0,
            487.0,
            220.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            876.0,
            487.0,
            220.0,
            24.0
          ],
          "text": "Double-click to open this lesson.",
          "fontsize": 11.0,
          "textcolor": [
            0.4,
            0.44,
            0.5,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-027",
          "maxclass": "comment",
          "patching_rect": [
            606.0,
            524.0,
            505.0,
            43.0
          ],
          "presentation": 1,
          "presentation_rect": [
            606.0,
            524.0,
            505.0,
            43.0
          ],
          "text": "mutate1, mutate2, mutate3 and mutatecycle n arm repeated, positional changes. One bang advances one group.",
          "fontsize": 11,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-028",
          "maxclass": "comment",
          "patching_rect": [
            46.0,
            580.0,
            495.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            46.0,
            580.0,
            495.0,
            29.0
          ],
          "text": "07  ROTATE EXISTING VALUES",
          "fontsize": 16,
          "fontface": 1,
          "textcolor": [
            0.85,
            0.22,
            0.27,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-029",
          "maxclass": "newobj",
          "patching_rect": [
            54.0,
            620.0,
            250.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            620.0,
            250.0,
            29.0
          ],
          "text": "p 07_Rotate_Existing_List",
          "fontsize": 14.0,
          "bgcolor": [
            0.85,
            0.22,
            0.27,
            1.0
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              140.0,
              100.0,
              1090.0,
              775.0
            ],
            "openinpresentation": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "box-001",
                  "maxclass": "comment",
                  "patching_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "text": "07  ROTATE AN EXISTING LIST",
                  "fontsize": 24.0,
                  "fontface": 1,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-002",
                  "maxclass": "comment",
                  "patching_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "text": "rotate1...rotate16 rotate the ACTUAL values of a fixed source list, not a mask, and do not generate random numbers.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-003",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "text": "CLICK THE STEP MESSAGES IN ORDER",
                  "fontsize": 15.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-004",
                  "maxclass": "newobj",
                  "patching_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "text": "js rand_list.js",
                  "fontsize": 17.0,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "saved_object_attributes": {
                    "filename": "rand_list.js",
                    "parameter_enable": 0
                  }
                }
              },
              {
                "box": {
                  "id": "box-005",
                  "maxclass": "comment",
                  "patching_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "text": "BANG = EXECUTE / ADVANCE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-006",
                  "maxclass": "message",
                  "patching_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "text": "bang",
                  "fontsize": 20.0,
                  "fontface": 1,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-007",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "text": "ONE INSTANCE, TWO OUTLETS",
                  "fontsize": 13.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-008",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "text": "LEFT OUTLET   Resulting integer list",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-009",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "text": "(click bang to see a list)",
                  "fontsize": 14.0,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-010",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "text": "RIGHT OUTLET   Status / diagnostic message",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-011",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "text": "(status)",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-012",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    324.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-013",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    408.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-014",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    465.0,
                    250.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_list_07",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-015",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    497.0,
                    260.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_status_07",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-016",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "text": "For long state reports, open the Max Console.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-017",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "text": "Every stage uses its own [js rand_list.js] instance.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-018",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "text": "01",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-019",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-020",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "text": "Exit any earlier rotation mode.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-021",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "text": "02",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-022",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    190.0,
                    164.4,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    190.0,
                    164.4,
                    27.0
                  ],
                  "text": "rotate1 1 0 0 0 0 0",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-023",
                  "maxclass": "comment",
                  "patching_rect": [
                    242.4,
                    192.0,
                    357.6,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    242.4,
                    192.0,
                    357.6,
                    37.0
                  ],
                  "text": "Arm 1-position right rotation; NO output.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-024",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "text": "03",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-025",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    236.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    236.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-026",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    238.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    238.0,
                    405.0,
                    37.0
                  ],
                  "text": "First bang emits ORIGINAL list: 1 0 0 0 0 0.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-027",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "text": "04",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-028",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-029",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "text": "One position right: 0 1 0 0 0 0.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-030",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "text": "05",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-031",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    328.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-032",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    330.0,
                    405.0,
                    37.0
                  ],
                  "text": "Another position right: 0 0 1 0 0 0.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-033",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "text": "06",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-034",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    374.0,
                    164.4,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    374.0,
                    164.4,
                    27.0
                  ],
                  "text": "rotate2 1 2 3 0 0 0",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-035",
                  "maxclass": "comment",
                  "patching_rect": [
                    242.4,
                    376.0,
                    357.6,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    242.4,
                    376.0,
                    357.6,
                    37.0
                  ],
                  "text": "Arm a NEW 2-position rotation source.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-036",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "text": "07",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-037",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-038",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "text": "First bang again emits ORIGINAL: 1 2 3 0 0 0.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-039",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "text": "08",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-040",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-041",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "text": "Second bang moves each value two slots right.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-042",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "text": "09",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-043",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    512.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    512.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-044",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    514.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    514.0,
                    403.2,
                    37.0
                  ],
                  "text": "Exit rotation mode and restore defaults.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-045",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "text": "WHAT TO NOTICE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-046",
                  "maxclass": "comment",
                  "patching_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "text": "Once rotation is active, it takes precedence over normal bang behavior. Source list stays fixed while each output is a rotated copy. Use resetdefaults or init to exit rotation mode.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-047",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "box-006",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-012",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-012",
                    0
                  ],
                  "destination": [
                    "box-009",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-013",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-013",
                    0
                  ],
                  "destination": [
                    "box-011",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-014",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-015",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-019",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-022",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-025",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-028",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-031",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-034",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-037",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-040",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-043",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "rand_list.js",
                "type": "TEXT",
                "implicit": 1
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "box-030",
          "maxclass": "comment",
          "patching_rect": [
            324.0,
            622.0,
            220.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            324.0,
            622.0,
            220.0,
            24.0
          ],
          "text": "Double-click to open this lesson.",
          "fontsize": 11.0,
          "textcolor": [
            0.4,
            0.44,
            0.5,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-031",
          "maxclass": "comment",
          "patching_rect": [
            54.0,
            659.0,
            505.0,
            43.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            659.0,
            505.0,
            43.0
          ],
          "text": "rotate1...rotate16 rotate the ACTUAL values of a fixed source list, not a mask, and do not generate random numbers.",
          "fontsize": 11,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-032",
          "maxclass": "comment",
          "patching_rect": [
            598.0,
            580.0,
            495.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            598.0,
            580.0,
            495.0,
            29.0
          ],
          "text": "08  SEED + MAKE + STATE",
          "fontsize": 16,
          "fontface": 1,
          "textcolor": [
            0.15,
            0.42,
            0.78,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-033",
          "maxclass": "newobj",
          "patching_rect": [
            606.0,
            620.0,
            250.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            606.0,
            620.0,
            250.0,
            29.0
          ],
          "text": "p 08_Seed_Make_and_State",
          "fontsize": 14.0,
          "bgcolor": [
            0.15,
            0.42,
            0.78,
            1.0
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 0,
              "revision": 0,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              140.0,
              100.0,
              1090.0,
              775.0
            ],
            "openinpresentation": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "box-001",
                  "maxclass": "comment",
                  "patching_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    30.0,
                    18.0,
                    1010.0,
                    35.0
                  ],
                  "text": "08  SEED, MAKE AND REPRODUCIBILITY",
                  "fontsize": 24.0,
                  "fontface": 1,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-002",
                  "maxclass": "comment",
                  "patching_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    34.0,
                    59.0,
                    1018.0,
                    45.0
                  ],
                  "text": "Understand command scheduling and repeatable pseudo-random sequences. make sets parameters and ARMS the next bang.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-003",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    108.0,
                    570.0,
                    26.0
                  ],
                  "text": "CLICK THE STEP MESSAGES IN ORDER",
                  "fontsize": 15.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-004",
                  "maxclass": "newobj",
                  "patching_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    802.0,
                    216.0,
                    167.0,
                    31.0
                  ],
                  "text": "js rand_list.js",
                  "fontsize": 17.0,
                  "bgcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "saved_object_attributes": {
                    "filename": "rand_list.js",
                    "parameter_enable": 0
                  }
                }
              },
              {
                "box": {
                  "id": "box-005",
                  "maxclass": "comment",
                  "patching_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    722.0,
                    120.0,
                    335.0,
                    25.0
                  ],
                  "text": "BANG = EXECUTE / ADVANCE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-006",
                  "maxclass": "message",
                  "patching_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    782.0,
                    153.0,
                    101.0,
                    34.0
                  ],
                  "text": "bang",
                  "fontsize": 20.0,
                  "fontface": 1,
                  "bgcolor": [
                    0.85,
                    0.22,
                    0.27,
                    1.0
                  ],
                  "textcolor": [
                    1,
                    1,
                    1,
                    1
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-007",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    267.0,
                    350.0,
                    22.0
                  ],
                  "text": "ONE INSTANCE, TWO OUTLETS",
                  "fontsize": 13.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-008",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    299.0,
                    348.0,
                    20.0
                  ],
                  "text": "LEFT OUTLET   Resulting integer list",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-009",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    324.0,
                    340.0,
                    31.0
                  ],
                  "text": "(click bang to see a list)",
                  "fontsize": 14.0,
                  "textcolor": [
                    0.11,
                    0.17,
                    0.29,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-010",
                  "maxclass": "comment",
                  "patching_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    382.0,
                    350.0,
                    20.0
                  ],
                  "text": "RIGHT OUTLET   Status / diagnostic message",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-011",
                  "maxclass": "message",
                  "patching_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    714.0,
                    408.0,
                    340.0,
                    35.0
                  ],
                  "text": "(status)",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-012",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    324.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-013",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    408.0,
                    80.0,
                    22.0
                  ],
                  "text": "prepend set",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-014",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    465.0,
                    250.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_list_08",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-015",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1150.0,
                    497.0,
                    260.0,
                    22.0
                  ],
                  "text": "print rand_list_tutorial_status_08",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-016",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    462.0,
                    350.0,
                    39.0
                  ],
                  "text": "For long state reports, open the Max Console.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-017",
                  "maxclass": "comment",
                  "patching_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    713.0,
                    516.0,
                    354.0,
                    38.0
                  ],
                  "text": "Every stage uses its own [js rand_list.js] instance.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-018",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    147.0,
                    27.0,
                    22.0
                  ],
                  "text": "01",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-019",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    144.0,
                    118.8,
                    27.0
                  ],
                  "text": "resetdefaults",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-020",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    146.0,
                    403.2,
                    37.0
                  ],
                  "text": "Start from a known state.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-021",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    193.0,
                    27.0,
                    22.0
                  ],
                  "text": "02",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-022",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    190.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    190.0,
                    118.8,
                    27.0
                  ],
                  "text": "seed 12345678",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-023",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    192.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    192.0,
                    403.2,
                    37.0
                  ],
                  "text": "Choose a repeatable RNG starting state.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-024",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    239.0,
                    27.0,
                    22.0
                  ],
                  "text": "03",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-025",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    236.0,
                    134.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    236.0,
                    134.0,
                    27.0
                  ],
                  "text": "make 6 1 15 0 1",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-026",
                  "maxclass": "comment",
                  "patching_rect": [
                    212.0,
                    238.0,
                    388.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    212.0,
                    238.0,
                    388.0,
                    37.0
                  ],
                  "text": "Arm length 6, range 1..15, UNIQUE, sorted up.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-027",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    285.0,
                    27.0,
                    22.0
                  ],
                  "text": "04",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-028",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    282.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-029",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    284.0,
                    405.0,
                    37.0
                  ],
                  "text": "Write down the resulting ordered list.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-030",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    331.0,
                    27.0,
                    22.0
                  ],
                  "text": "05",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-031",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    328.0,
                    118.8,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    328.0,
                    118.8,
                    27.0
                  ],
                  "text": "seed 12345678",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-032",
                  "maxclass": "comment",
                  "patching_rect": [
                    196.8,
                    330.0,
                    403.2,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    196.8,
                    330.0,
                    403.2,
                    37.0
                  ],
                  "text": "Return to the very same seed.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-033",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    377.0,
                    27.0,
                    22.0
                  ],
                  "text": "06",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-034",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    374.0,
                    134.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    374.0,
                    134.0,
                    27.0
                  ],
                  "text": "make 6 1 15 0 1",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-035",
                  "maxclass": "comment",
                  "patching_rect": [
                    212.0,
                    376.0,
                    388.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    212.0,
                    376.0,
                    388.0,
                    37.0
                  ],
                  "text": "Reapply the same settings.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-036",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    423.0,
                    27.0,
                    22.0
                  ],
                  "text": "07",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-037",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    420.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-038",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    422.0,
                    405.0,
                    37.0
                  ],
                  "text": "Compare: this list should match step 4.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-039",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    469.0,
                    27.0,
                    22.0
                  ],
                  "text": "08",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-040",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    466.0,
                    117.0,
                    27.0
                  ],
                  "text": "getstate",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-041",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    468.0,
                    405.0,
                    37.0
                  ],
                  "text": "Inspect length/range/seed and active flags.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-042",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    515.0,
                    27.0,
                    22.0
                  ],
                  "text": "09",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-043",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    512.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    512.0,
                    117.0,
                    27.0
                  ],
                  "text": "init",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-044",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    514.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    514.0,
                    405.0,
                    37.0
                  ],
                  "text": "Reseed with time + salt; notice status seed/burn.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-045",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    561.0,
                    27.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    561.0,
                    27.0,
                    22.0
                  ],
                  "text": "10",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-046",
                  "maxclass": "message",
                  "patching_rect": [
                    72.0,
                    558.0,
                    117.0,
                    27.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    72.0,
                    558.0,
                    117.0,
                    27.0
                  ],
                  "text": "bang",
                  "fontsize": 12.0,
                  "bgcolor": [
                    0.91,
                    0.95,
                    1.0,
                    1.0
                  ],
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "box-047",
                  "maxclass": "comment",
                  "patching_rect": [
                    195.0,
                    560.0,
                    405.0,
                    37.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    195.0,
                    560.0,
                    405.0,
                    37.0
                  ],
                  "text": "Generate a new list using retained parameters.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-048",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    625.0,
                    240.0,
                    22.0
                  ],
                  "text": "WHAT TO NOTICE",
                  "fontsize": 14.0,
                  "fontface": 1,
                  "textcolor": [
                    0.15,
                    0.42,
                    0.78,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-049",
                  "maxclass": "comment",
                  "patching_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    38.0,
                    650.0,
                    1005.0,
                    61.0
                  ],
                  "text": "make DOES NOT immediately output in this uploaded version. Its five numbers mean length, minimum, maximum, allowrepeats (0 or 1), sort (-1/0/1). init changes seed, not parameters.",
                  "fontsize": 12.0,
                  "textcolor": [
                    0.16,
                    0.19,
                    0.23,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              },
              {
                "box": {
                  "id": "box-050",
                  "maxclass": "comment",
                  "patching_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    36.0,
                    720.0,
                    991.0,
                    20.0
                  ],
                  "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                  "fontsize": 11.0,
                  "textcolor": [
                    0.4,
                    0.44,
                    0.5,
                    1.0
                  ],
                  "numinlets": 1,
                  "numoutlets": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "box-006",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-012",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-012",
                    0
                  ],
                  "destination": [
                    "box-009",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-013",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-013",
                    0
                  ],
                  "destination": [
                    "box-011",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    0
                  ],
                  "destination": [
                    "box-014",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-004",
                    1
                  ],
                  "destination": [
                    "box-015",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-019",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-022",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-025",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-028",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-031",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-034",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-037",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-040",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-043",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "box-046",
                    0
                  ],
                  "destination": [
                    "box-004",
                    0
                  ]
                }
              }
            ],
            "dependency_cache": [
              {
                "name": "rand_list.js",
                "type": "TEXT",
                "implicit": 1
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "box-034",
          "maxclass": "comment",
          "patching_rect": [
            876.0,
            622.0,
            220.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            876.0,
            622.0,
            220.0,
            24.0
          ],
          "text": "Double-click to open this lesson.",
          "fontsize": 11.0,
          "textcolor": [
            0.4,
            0.44,
            0.5,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-035",
          "maxclass": "comment",
          "patching_rect": [
            606.0,
            659.0,
            505.0,
            43.0
          ],
          "presentation": 1,
          "presentation_rect": [
            606.0,
            659.0,
            505.0,
            43.0
          ],
          "text": "Understand command scheduling and repeatable pseudo-random sequences. make sets parameters and ARMS the next bang.",
          "fontsize": 11,
          "textcolor": [
            0.16,
            0.19,
            0.23,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "box-036",
          "maxclass": "comment",
          "patching_rect": [
            42.0,
            732.0,
            1050.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            42.0,
            732.0,
            1050.0,
            32.0
          ],
          "text": "IMPORTANT: In this specific upload, rotate1...rotate16 rotate list VALUES, not a mutate mask. There is no mutatepattern function in the supplied JS.",
          "fontsize": 12,
          "fontface": 1,
          "textcolor": [
            0.85,
            0.22,
            0.27,
            1.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      }
    ],
    "lines": [],
    "dependency_cache": [
      {
        "name": "rand_list.js",
        "type": "TEXT",
        "implicit": 1
      }
    ]
  }
}
