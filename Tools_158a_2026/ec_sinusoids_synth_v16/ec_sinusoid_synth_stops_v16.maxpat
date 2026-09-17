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
      1020.0,
      790.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "fontsize": 20.0,
          "id": "heading",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            15.0,
            950.0,
            29.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            15.0,
            950.0,
            29.0
          ],
          "text": "SINUSOID SYNTH STOPS \u2014 ORGAN-INSPIRED WORKSPACE"
        }
      },
      {
        "box": {
          "id": "intro",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            55.0,
            1079.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            55.0,
            1079.0,
            20.0
          ],
          "text": "Draw any combination below, then APPLY. Named registrations apply in one click. Recipes replace all three 256-slot memories; the visible count stays as set. Opening this workspace changes no sound."
        }
      },
      {
        "box": {
          "id": "intro2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            110.0,
            1069.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            110.0,
            1069.0,
            20.0
          ],
          "text": "Every rank contributes its own harmonics. These are editable synthetic recipes, not recordings or exact reconstructions. Source Base Hz is the 8-foot reference; 16/32-foot suboctaves are not included."
        }
      },
      {
        "box": {
          "id": "js",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            20.0,
            840.0,
            270.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "ec_sinusoid_synth_stops_v16.js",
            "parameter_enable": 0
          },
          "text": "js ec_sinusoid_synth_stops_v16.js"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "basein",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            310.0,
            840.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "driftin",
          "index": 2,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            370.0,
            840.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "out",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            950.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "toggle0",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            20.0,
            170.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            170.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label0",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            55.0,
            170.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            170.0,
            435.0,
            20.0
          ],
          "text": "Principal 8\u2032"
        }
      },
      {
        "box": {
          "id": "cmd0",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            500.0,
            850.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 0"
        }
      },
      {
        "box": {
          "id": "set0",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            500.0,
            920.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle1",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            20.0,
            206.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            206.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            55.0,
            206.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            206.0,
            435.0,
            20.0
          ],
          "text": "Octava 4\u2032"
        }
      },
      {
        "box": {
          "id": "cmd1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            565.0,
            850.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 1"
        }
      },
      {
        "box": {
          "id": "set1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            565.0,
            920.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle2",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            20.0,
            242.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            242.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            55.0,
            242.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            242.0,
            435.0,
            20.0
          ],
          "text": "Doublette 2\u2032"
        }
      },
      {
        "box": {
          "id": "cmd2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            630.0,
            850.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 2"
        }
      },
      {
        "box": {
          "id": "set2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            630.0,
            920.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle3",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            20.0,
            278.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            278.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            55.0,
            278.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            278.0,
            435.0,
            20.0
          ],
          "text": "Open Flute 8\u2032"
        }
      },
      {
        "box": {
          "id": "cmd3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            695.0,
            850.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 3"
        }
      },
      {
        "box": {
          "id": "set3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            695.0,
            920.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle4",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            20.0,
            314.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            314.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            55.0,
            314.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            314.0,
            435.0,
            20.0
          ],
          "text": "Bourdon 8\u2032 (odd harmonics)"
        }
      },
      {
        "box": {
          "id": "cmd4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            760.0,
            850.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 4"
        }
      },
      {
        "box": {
          "id": "set4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            760.0,
            920.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle5",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            20.0,
            350.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            350.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            55.0,
            350.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            350.0,
            435.0,
            20.0
          ],
          "text": "Gamba 8\u2032"
        }
      },
      {
        "box": {
          "id": "cmd5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            825.0,
            850.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 5"
        }
      },
      {
        "box": {
          "id": "set5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            825.0,
            920.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle6",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            20.0,
            386.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            386.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label6",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            55.0,
            386.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            55.0,
            386.0,
            435.0,
            20.0
          ],
          "text": "Trumpet 8\u2032"
        }
      },
      {
        "box": {
          "id": "cmd6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            890.0,
            850.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 6"
        }
      },
      {
        "box": {
          "id": "set6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            890.0,
            920.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle7",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            505.0,
            170.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            505.0,
            170.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label7",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            540.0,
            170.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            540.0,
            170.0,
            435.0,
            20.0
          ],
          "text": "Nazard 2 2/3\u2032 (ratio 3)"
        }
      },
      {
        "box": {
          "id": "cmd7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            500.0,
            880.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 7"
        }
      },
      {
        "box": {
          "id": "set7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            500.0,
            950.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle8",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            505.0,
            206.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            505.0,
            206.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label8",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            540.0,
            206.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            540.0,
            206.0,
            435.0,
            20.0
          ],
          "text": "Tierce 1 3/5\u2032 (ratio 5)"
        }
      },
      {
        "box": {
          "id": "cmd8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            565.0,
            880.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 8"
        }
      },
      {
        "box": {
          "id": "set8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            565.0,
            950.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle9",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            505.0,
            242.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            505.0,
            242.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label9",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            540.0,
            242.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            540.0,
            242.0,
            435.0,
            20.0
          ],
          "text": "Larigot 1 1/3\u2032 (ratio 6)"
        }
      },
      {
        "box": {
          "id": "cmd9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            630.0,
            880.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 9"
        }
      },
      {
        "box": {
          "id": "set9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            630.0,
            950.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle10",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            505.0,
            278.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            505.0,
            278.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label10",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            540.0,
            278.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            540.0,
            278.0,
            435.0,
            20.0
          ],
          "text": "Quint Mixture III (4, 6, 8)"
        }
      },
      {
        "box": {
          "id": "cmd10",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            695.0,
            880.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 10"
        }
      },
      {
        "box": {
          "id": "set10",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            695.0,
            950.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle11",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            505.0,
            314.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            505.0,
            314.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label11",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            540.0,
            314.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            540.0,
            314.0,
            435.0,
            20.0
          ],
          "text": "Celeste-inspired II (paired strings)"
        }
      },
      {
        "box": {
          "id": "cmd11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            760.0,
            880.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 11"
        }
      },
      {
        "box": {
          "id": "set11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            760.0,
            950.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle12",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            505.0,
            350.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            505.0,
            350.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label12",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            540.0,
            350.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            540.0,
            350.0,
            435.0,
            20.0
          ],
          "text": "Flute 4\u2032"
        }
      },
      {
        "box": {
          "id": "cmd12",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            825.0,
            880.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 12"
        }
      },
      {
        "box": {
          "id": "set12",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            825.0,
            950.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "toggle13",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            505.0,
            386.0,
            24.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            505.0,
            386.0,
            24.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label13",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            540.0,
            386.0,
            435.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            540.0,
            386.0,
            435.0,
            20.0
          ],
          "text": "Flute 2\u2032"
        }
      },
      {
        "box": {
          "id": "cmd13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            890.0,
            880.0,
            120.0,
            22.0
          ],
          "text": "prepend stop 13"
        }
      },
      {
        "box": {
          "id": "set13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            890.0,
            950.0,
            85.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "feedback",
          "maxclass": "newobj",
          "numinlets": 15,
          "numoutlets": 15,
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
            ""
          ],
          "patching_rect": [
            20.0,
            900.0,
            400.0,
            22.0
          ],
          "text": "route 0 1 2 3 4 5 6 7 8 9 10 11 12 13"
        }
      },
      {
        "box": {
          "id": "apply",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            440.0,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            440.0,
            65.0,
            22.0
          ],
          "text": "apply"
        }
      },
      {
        "box": {
          "id": "clear",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            105.0,
            440.0,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            105.0,
            440.0,
            65.0,
            22.0
          ],
          "text": "clear"
        }
      },
      {
        "box": {
          "id": "beat-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            220.0,
            420.0,
            185.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            220.0,
            420.0,
            185.0,
            20.0
          ],
          "text": "CELESTE BEAT Hz"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "beat",
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
            220.0,
            445.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            220.0,
            445.0,
            95.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "beatcmd",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            220.0,
            1000.0,
            150.0,
            22.0
          ],
          "text": "prepend beathz"
        }
      },
      {
        "box": {
          "id": "beatload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            220.0,
            1040.0,
            100.0,
            22.0
          ],
          "text": "loadmess 0.2"
        }
      },
      {
        "box": {
          "id": "tail-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            450.0,
            420.0,
            210.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            450.0,
            420.0,
            210.0,
            20.0
          ],
          "text": "HARMONICS PER RANK"
        }
      },
      {
        "box": {
          "id": "tail",
          "maxclass": "number",
          "maximum": 256,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            450.0,
            445.0,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            450.0,
            445.0,
            95.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tailcmd",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            450.0,
            1000.0,
            150.0,
            22.0
          ],
          "text": "prepend tail"
        }
      },
      {
        "box": {
          "id": "tailload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            450.0,
            1040.0,
            100.0,
            22.0
          ],
          "text": "loadmess 24"
        }
      },
      {
        "box": {
          "id": "beat-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            480.0,
            1024.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            480.0,
            1024.0,
            20.0
          ],
          "text": "Beat/tail edits take effect on APPLY. C\u00e9leste uses seeded \u00b1 detuning plus exact anchors; partial 1 stays fixed. Set Max Drift above zero. Micro motion is controlled separately in the main patch."
        }
      },
      {
        "box": {
          "id": "preset0",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            540.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            540.0,
            295.0,
            22.0
          ],
          "text": "registration PrincipalChorus"
        }
      },
      {
        "box": {
          "id": "preset1",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            340.0,
            540.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            340.0,
            540.0,
            295.0,
            22.0
          ],
          "text": "registration CornetV"
        }
      },
      {
        "box": {
          "id": "preset2",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            660.0,
            540.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            660.0,
            540.0,
            295.0,
            22.0
          ],
          "text": "registration SesquialteraII"
        }
      },
      {
        "box": {
          "id": "preset3",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            573.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            573.0,
            295.0,
            22.0
          ],
          "text": "registration FluteQuint"
        }
      },
      {
        "box": {
          "id": "preset4",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            340.0,
            573.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            340.0,
            573.0,
            295.0,
            22.0
          ],
          "text": "registration CelesteII"
        }
      },
      {
        "box": {
          "id": "preset5",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            660.0,
            573.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            660.0,
            573.0,
            295.0,
            22.0
          ],
          "text": "registration ReedChorus"
        }
      },
      {
        "box": {
          "id": "preset6",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            606.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            606.0,
            295.0,
            22.0
          ],
          "text": "registration OpenFlute"
        }
      },
      {
        "box": {
          "id": "preset7",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            340.0,
            606.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            340.0,
            606.0,
            295.0,
            22.0
          ],
          "text": "registration StoppedFlute"
        }
      },
      {
        "box": {
          "id": "preset8",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            660.0,
            606.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            660.0,
            606.0,
            295.0,
            22.0
          ],
          "text": "registration String8"
        }
      },
      {
        "box": {
          "id": "preset9",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            639.0,
            295.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            639.0,
            295.0,
            22.0
          ],
          "text": "registration SharpMixture"
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            685.0,
            950.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            685.0,
            950.0,
            22.0
          ],
          "text": "\"Select stops then APPLY, or click a named registration. No sound is changed on opening.\""
        }
      },
      {
        "box": {
          "id": "research",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            745.0,
            330.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            745.0,
            216.0,
            22.0
          ],
          "text": "ec_sinusoid_synth_stops_research_v16"
        }
      },
      {
        "box": {
          "id": "research-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            375.0,
            745.0,
            610.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            375.0,
            745.0,
            610.0,
            20.0
          ],
          "text": "Double-click for research, ratios, recipe details, references and next transform ideas."
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_0_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20.0,
            138.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_0_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_0_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            30.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_0_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            62.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_0_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            94.0,
            225.0,
            22.0
          ],
          "text": "send Stop_0_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_1_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            126.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_1_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_1_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            158.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_1_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            190.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_1_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            222.0,
            225.0,
            22.0
          ],
          "text": "send Stop_1_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_2_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            254.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_2_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_2_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            286.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_2_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            318.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_2_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            350.0,
            225.0,
            22.0
          ],
          "text": "send Stop_2_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_3_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            382.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_3_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_3_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            414.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_3_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            446.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_3_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            478.0,
            225.0,
            22.0
          ],
          "text": "send Stop_3_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_4_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            510.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_4_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_4_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            542.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_4_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            574.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_4_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            606.0,
            225.0,
            22.0
          ],
          "text": "send Stop_4_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_5_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            638.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_5_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_5_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            670.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_5_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            702.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_5_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            734.0,
            225.0,
            22.0
          ],
          "text": "send Stop_5_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_6_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            766.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_6_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_6_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            798.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_6_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            830.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_6_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            862.0,
            225.0,
            22.0
          ],
          "text": "send Stop_6_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_7_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            505.0,
            138.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_7_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_7_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            894.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_7_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            926.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_7_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            958.0,
            225.0,
            22.0
          ],
          "text": "send Stop_7_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_8_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            990.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_8_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_8_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1022.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_8_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1054.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_8_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            1086.0,
            225.0,
            22.0
          ],
          "text": "send Stop_8_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_9_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1118.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_9_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_9_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1150.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_9_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1182.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_9_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            1214.0,
            225.0,
            22.0
          ],
          "text": "send Stop_9_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_10_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1246.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_10_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_10_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1278.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_10_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1310.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_10_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            1342.0,
            225.0,
            22.0
          ],
          "text": "send Stop_10_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_11_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1374.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_11_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_11_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1406.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_11_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1438.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_11_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            1470.0,
            225.0,
            22.0
          ],
          "text": "send Stop_11_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_12_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1502.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_12_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_12_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1534.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_12_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1566.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_12_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            1598.0,
            225.0,
            22.0
          ],
          "text": "send Stop_12_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_13_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1630.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_13_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_13_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1662.0,
            225.0,
            22.0
          ],
          "text": "clip 0 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_13_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1694.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_13_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            1726.0,
            225.0,
            22.0
          ],
          "text": "send Stop_13_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_Beat_Hz_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1758.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_Beat_Hz_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_Beat_Hz_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1790.0,
            225.0,
            22.0
          ],
          "text": "clip 0 5",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_Beat_Hz_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            1822.0,
            225.0,
            22.0
          ],
          "text": "send Stop_Beat_Hz_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_Tail_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            557.0,
            445.0,
            210.0,
            22.0
          ],
          "text": "receive Stop_Tail_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_Tail_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1854.0,
            225.0,
            22.0
          ],
          "text": "clip 1 256",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_Tail_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1886.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stop_Tail_v16-state",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1129.0,
            1918.0,
            225.0,
            22.0
          ],
          "text": "send Stop_Tail_state_v16"
        }
      },
      {
        "box": {
          "id": "v16-recv-Stops_Apply_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1950.0,
            210.0,
            22.0
          ],
          "text": "receive Stops_Apply_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stops_Apply_v16-bang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            1982.0,
            225.0,
            22.0
          ],
          "text": "t b",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stops_Clear_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            2014.0,
            210.0,
            22.0
          ],
          "text": "receive Stops_Clear_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Stops_Clear_v16-bang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            2046.0,
            225.0,
            22.0
          ],
          "text": "t b",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Registration_v16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20.0,
            808.0,
            210.0,
            22.0
          ],
          "text": "receive Registration_v16",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Registration_v16-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            2078.0,
            225.0,
            22.0
          ],
          "text": "clip 0 9",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Registration_v16-int",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1129.0,
            2110.0,
            225.0,
            22.0
          ],
          "text": "i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "v16-recv-Registration_v16-select",
          "maxclass": "newobj",
          "numinlets": 11,
          "numoutlets": 11,
          "patching_rect": [
            1129.0,
            2142.0,
            225.0,
            22.0
          ],
          "text": "sel 0 1 2 3 4 5 6 7 8 9",
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
            ""
          ]
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
            "apply",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            1
          ],
          "source": [
            "basein",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "beatcmd",
            0
          ],
          "source": [
            "beat",
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
            "beatcmd",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "beat",
            0
          ],
          "source": [
            "beatload",
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
            "clear",
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
            "cmd0",
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
            "cmd1",
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
            "cmd10",
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
            "cmd11",
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
            "cmd12",
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
            "cmd13",
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
            "cmd2",
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
            "cmd3",
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
            "cmd4",
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
            "cmd5",
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
            "cmd6",
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
            "cmd7",
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
            "cmd8",
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
            "cmd9",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            2
          ],
          "source": [
            "driftin",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set0",
            0
          ],
          "source": [
            "feedback",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set1",
            0
          ],
          "source": [
            "feedback",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set10",
            0
          ],
          "source": [
            "feedback",
            10
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set11",
            0
          ],
          "source": [
            "feedback",
            11
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set12",
            0
          ],
          "source": [
            "feedback",
            12
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set13",
            0
          ],
          "source": [
            "feedback",
            13
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set2",
            0
          ],
          "source": [
            "feedback",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set3",
            0
          ],
          "source": [
            "feedback",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set4",
            0
          ],
          "source": [
            "feedback",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set5",
            0
          ],
          "source": [
            "feedback",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set6",
            0
          ],
          "source": [
            "feedback",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set7",
            0
          ],
          "source": [
            "feedback",
            7
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set8",
            0
          ],
          "source": [
            "feedback",
            8
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set9",
            0
          ],
          "source": [
            "feedback",
            9
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "feedback",
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
            "out",
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
            2
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
            "preset0",
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
            "preset1",
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
            "preset2",
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
            "preset3",
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
            "preset4",
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
            "preset5",
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
            "preset6",
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
            "preset7",
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
            "preset8",
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
            "preset9",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle0",
            0
          ],
          "source": [
            "set0",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle1",
            0
          ],
          "source": [
            "set1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle10",
            0
          ],
          "source": [
            "set10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle11",
            0
          ],
          "source": [
            "set11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle12",
            0
          ],
          "source": [
            "set12",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle13",
            0
          ],
          "source": [
            "set13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle2",
            0
          ],
          "source": [
            "set2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle3",
            0
          ],
          "source": [
            "set3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle4",
            0
          ],
          "source": [
            "set4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle5",
            0
          ],
          "source": [
            "set5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle6",
            0
          ],
          "source": [
            "set6",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle7",
            0
          ],
          "source": [
            "set7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle8",
            0
          ],
          "source": [
            "set8",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "toggle9",
            0
          ],
          "source": [
            "set9",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "tailcmd",
            0
          ],
          "source": [
            "tail",
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
            "tailcmd",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "tail",
            0
          ],
          "source": [
            "tailload",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd0",
            0
          ],
          "source": [
            "toggle0",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd1",
            0
          ],
          "source": [
            "toggle1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd10",
            0
          ],
          "source": [
            "toggle10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd11",
            0
          ],
          "source": [
            "toggle11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd12",
            0
          ],
          "source": [
            "toggle12",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd13",
            0
          ],
          "source": [
            "toggle13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd2",
            0
          ],
          "source": [
            "toggle2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd3",
            0
          ],
          "source": [
            "toggle3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd4",
            0
          ],
          "source": [
            "toggle4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd5",
            0
          ],
          "source": [
            "toggle5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd6",
            0
          ],
          "source": [
            "toggle6",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd7",
            0
          ],
          "source": [
            "toggle7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd8",
            0
          ],
          "source": [
            "toggle8",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd9",
            0
          ],
          "source": [
            "toggle9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_0_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_0_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_0_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_0_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_0_v16-int",
            0
          ],
          "destination": [
            "toggle0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle0",
            0
          ],
          "destination": [
            "v16-recv-Stop_0_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_1_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_1_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_1_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_1_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_1_v16-int",
            0
          ],
          "destination": [
            "toggle1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle1",
            0
          ],
          "destination": [
            "v16-recv-Stop_1_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_2_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_2_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_2_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_2_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_2_v16-int",
            0
          ],
          "destination": [
            "toggle2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle2",
            0
          ],
          "destination": [
            "v16-recv-Stop_2_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_3_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_3_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_3_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_3_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_3_v16-int",
            0
          ],
          "destination": [
            "toggle3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle3",
            0
          ],
          "destination": [
            "v16-recv-Stop_3_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_4_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_4_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_4_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_4_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_4_v16-int",
            0
          ],
          "destination": [
            "toggle4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle4",
            0
          ],
          "destination": [
            "v16-recv-Stop_4_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_5_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_5_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_5_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_5_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_5_v16-int",
            0
          ],
          "destination": [
            "toggle5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle5",
            0
          ],
          "destination": [
            "v16-recv-Stop_5_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_6_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_6_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_6_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_6_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_6_v16-int",
            0
          ],
          "destination": [
            "toggle6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle6",
            0
          ],
          "destination": [
            "v16-recv-Stop_6_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_7_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_7_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_7_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_7_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_7_v16-int",
            0
          ],
          "destination": [
            "toggle7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle7",
            0
          ],
          "destination": [
            "v16-recv-Stop_7_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_8_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_8_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_8_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_8_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_8_v16-int",
            0
          ],
          "destination": [
            "toggle8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle8",
            0
          ],
          "destination": [
            "v16-recv-Stop_8_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_9_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_9_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_9_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_9_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_9_v16-int",
            0
          ],
          "destination": [
            "toggle9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle9",
            0
          ],
          "destination": [
            "v16-recv-Stop_9_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_10_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_10_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_10_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_10_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_10_v16-int",
            0
          ],
          "destination": [
            "toggle10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle10",
            0
          ],
          "destination": [
            "v16-recv-Stop_10_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_11_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_11_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_11_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_11_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_11_v16-int",
            0
          ],
          "destination": [
            "toggle11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle11",
            0
          ],
          "destination": [
            "v16-recv-Stop_11_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_12_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_12_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_12_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_12_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_12_v16-int",
            0
          ],
          "destination": [
            "toggle12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle12",
            0
          ],
          "destination": [
            "v16-recv-Stop_12_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_13_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_13_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_13_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_13_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_13_v16-int",
            0
          ],
          "destination": [
            "toggle13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "toggle13",
            0
          ],
          "destination": [
            "v16-recv-Stop_13_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_Beat_Hz_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_Beat_Hz_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_Beat_Hz_v16-clip",
            0
          ],
          "destination": [
            "beat",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "beat",
            0
          ],
          "destination": [
            "v16-recv-Stop_Beat_Hz_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_Tail_v16",
            0
          ],
          "destination": [
            "v16-recv-Stop_Tail_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_Tail_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Stop_Tail_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stop_Tail_v16-int",
            0
          ],
          "destination": [
            "tail",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tail",
            0
          ],
          "destination": [
            "v16-recv-Stop_Tail_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stops_Apply_v16",
            0
          ],
          "destination": [
            "v16-recv-Stops_Apply_v16-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stops_Apply_v16-bang",
            0
          ],
          "destination": [
            "apply",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stops_Clear_v16",
            0
          ],
          "destination": [
            "v16-recv-Stops_Clear_v16-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Stops_Clear_v16-bang",
            0
          ],
          "destination": [
            "clear",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16",
            0
          ],
          "destination": [
            "v16-recv-Registration_v16-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-clip",
            0
          ],
          "destination": [
            "v16-recv-Registration_v16-int",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-int",
            0
          ],
          "destination": [
            "v16-recv-Registration_v16-select",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            0
          ],
          "destination": [
            "preset0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            1
          ],
          "destination": [
            "preset1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            2
          ],
          "destination": [
            "preset2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            3
          ],
          "destination": [
            "preset3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            4
          ],
          "destination": [
            "preset4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            5
          ],
          "destination": [
            "preset5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            6
          ],
          "destination": [
            "preset6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            7
          ],
          "destination": [
            "preset7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            8
          ],
          "destination": [
            "preset8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v16-recv-Registration_v16-select",
            9
          ],
          "destination": [
            "preset9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            0
          ],
          "destination": [
            "v16-recv-Stop_0_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            1
          ],
          "destination": [
            "v16-recv-Stop_1_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            2
          ],
          "destination": [
            "v16-recv-Stop_2_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            3
          ],
          "destination": [
            "v16-recv-Stop_3_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            4
          ],
          "destination": [
            "v16-recv-Stop_4_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            5
          ],
          "destination": [
            "v16-recv-Stop_5_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            6
          ],
          "destination": [
            "v16-recv-Stop_6_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            7
          ],
          "destination": [
            "v16-recv-Stop_7_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            8
          ],
          "destination": [
            "v16-recv-Stop_8_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            9
          ],
          "destination": [
            "v16-recv-Stop_9_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            10
          ],
          "destination": [
            "v16-recv-Stop_10_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            11
          ],
          "destination": [
            "v16-recv-Stop_11_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            12
          ],
          "destination": [
            "v16-recv-Stop_12_v16-state",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            13
          ],
          "destination": [
            "v16-recv-Stop_13_v16-state",
            0
          ],
          "order": 1
        }
      }
    ],
    "bgcolor": [
      0.92,
      0.92,
      0.92,
      1.0
    ]
  }
}
