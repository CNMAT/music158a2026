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
      1020,
      790
    ],
    "bgcolor": [
      0.92,
      0.92,
      0.92,
      1
    ],
    "boxes": [
      {
        "box": {
          "id": "heading",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            15,
            950,
            30
          ],
          "fontsize": 20,
          "text": "SINUSOID SYNTH STOPS \u2014 ORGAN-INSPIRED WORKSPACE",
          "presentation": 1,
          "presentation_rect": [
            20,
            15,
            950,
            30
          ]
        }
      },
      {
        "box": {
          "id": "intro",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            55,
            950,
            50
          ],
          "text": "Draw any combination below, then APPLY. Named registrations apply in one click. Recipes replace all three 256-slot memories; the visible count stays as set. Opening this workspace changes no sound.",
          "presentation": 1,
          "presentation_rect": [
            20,
            55,
            950,
            50
          ]
        }
      },
      {
        "box": {
          "id": "intro2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            110,
            950,
            40
          ],
          "text": "Every rank contributes its own harmonics. These are editable synthetic recipes, not recordings or exact reconstructions. Source Base Hz is the 8-foot reference; 16/32-foot suboctaves are not included.",
          "presentation": 1,
          "presentation_rect": [
            20,
            110,
            950,
            40
          ]
        }
      },
      {
        "box": {
          "id": "js",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "patching_rect": [
            20,
            840,
            270,
            22
          ],
          "text": "js ec_sinusoid_synth_stops_14.js"
        }
      },
      {
        "box": {
          "id": "basein",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            310,
            840,
            30,
            30
          ],
          "index": 1
        }
      },
      {
        "box": {
          "id": "driftin",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            370,
            840,
            30,
            30
          ],
          "index": 2
        }
      },
      {
        "box": {
          "id": "out",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            950,
            30,
            30
          ],
          "index": 1
        }
      },
      {
        "box": {
          "id": "toggle0",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            170,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            170,
            24,
            22
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
            55,
            170,
            435,
            22
          ],
          "text": "Principal 8\u2032",
          "presentation": 1,
          "presentation_rect": [
            55,
            170,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd0",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            500,
            850,
            120,
            22
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
          "patching_rect": [
            500,
            920,
            85,
            22
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
          "patching_rect": [
            20,
            206,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            206,
            24,
            22
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
            55,
            206,
            435,
            22
          ],
          "text": "Octava 4\u2032",
          "presentation": 1,
          "presentation_rect": [
            55,
            206,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            565,
            850,
            120,
            22
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
          "patching_rect": [
            565,
            920,
            85,
            22
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
          "patching_rect": [
            20,
            242,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            242,
            24,
            22
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
            55,
            242,
            435,
            22
          ],
          "text": "Doublette 2\u2032",
          "presentation": 1,
          "presentation_rect": [
            55,
            242,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            630,
            850,
            120,
            22
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
          "patching_rect": [
            630,
            920,
            85,
            22
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
          "patching_rect": [
            20,
            278,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            278,
            24,
            22
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
            55,
            278,
            435,
            22
          ],
          "text": "Open Flute 8\u2032",
          "presentation": 1,
          "presentation_rect": [
            55,
            278,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            695,
            850,
            120,
            22
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
          "patching_rect": [
            695,
            920,
            85,
            22
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
          "patching_rect": [
            20,
            314,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            314,
            24,
            22
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
            55,
            314,
            435,
            22
          ],
          "text": "Bourdon 8\u2032 (odd harmonics)",
          "presentation": 1,
          "presentation_rect": [
            55,
            314,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            760,
            850,
            120,
            22
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
          "patching_rect": [
            760,
            920,
            85,
            22
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
          "patching_rect": [
            20,
            350,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            350,
            24,
            22
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
            55,
            350,
            435,
            22
          ],
          "text": "Gamba 8\u2032",
          "presentation": 1,
          "presentation_rect": [
            55,
            350,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            825,
            850,
            120,
            22
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
          "patching_rect": [
            825,
            920,
            85,
            22
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
          "patching_rect": [
            20,
            386,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            386,
            24,
            22
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
            55,
            386,
            435,
            22
          ],
          "text": "Trumpet 8\u2032",
          "presentation": 1,
          "presentation_rect": [
            55,
            386,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            890,
            850,
            120,
            22
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
          "patching_rect": [
            890,
            920,
            85,
            22
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
          "patching_rect": [
            505,
            170,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            505,
            170,
            24,
            22
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
            540,
            170,
            435,
            22
          ],
          "text": "Nazard 2 2/3\u2032 (ratio 3)",
          "presentation": 1,
          "presentation_rect": [
            540,
            170,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            500,
            880,
            120,
            22
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
          "patching_rect": [
            500,
            950,
            85,
            22
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
          "patching_rect": [
            505,
            206,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            505,
            206,
            24,
            22
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
            540,
            206,
            435,
            22
          ],
          "text": "Tierce 1 3/5\u2032 (ratio 5)",
          "presentation": 1,
          "presentation_rect": [
            540,
            206,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            565,
            880,
            120,
            22
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
          "patching_rect": [
            565,
            950,
            85,
            22
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
          "patching_rect": [
            505,
            242,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            505,
            242,
            24,
            22
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
            540,
            242,
            435,
            22
          ],
          "text": "Larigot 1 1/3\u2032 (ratio 6)",
          "presentation": 1,
          "presentation_rect": [
            540,
            242,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            630,
            880,
            120,
            22
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
          "patching_rect": [
            630,
            950,
            85,
            22
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
          "patching_rect": [
            505,
            278,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            505,
            278,
            24,
            22
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
            540,
            278,
            435,
            22
          ],
          "text": "Quint Mixture III (4, 6, 8)",
          "presentation": 1,
          "presentation_rect": [
            540,
            278,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd10",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            695,
            880,
            120,
            22
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
          "patching_rect": [
            695,
            950,
            85,
            22
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
          "patching_rect": [
            505,
            314,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            505,
            314,
            24,
            22
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
            540,
            314,
            435,
            22
          ],
          "text": "Celeste-inspired II (paired strings)",
          "presentation": 1,
          "presentation_rect": [
            540,
            314,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            760,
            880,
            120,
            22
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
          "patching_rect": [
            760,
            950,
            85,
            22
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
          "patching_rect": [
            505,
            350,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            505,
            350,
            24,
            22
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
            540,
            350,
            435,
            22
          ],
          "text": "Flute 4\u2032",
          "presentation": 1,
          "presentation_rect": [
            540,
            350,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd12",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            825,
            880,
            120,
            22
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
          "patching_rect": [
            825,
            950,
            85,
            22
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
          "patching_rect": [
            505,
            386,
            24,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            505,
            386,
            24,
            22
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
            540,
            386,
            435,
            22
          ],
          "text": "Flute 2\u2032",
          "presentation": 1,
          "presentation_rect": [
            540,
            386,
            435,
            22
          ]
        }
      },
      {
        "box": {
          "id": "cmd13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            890,
            880,
            120,
            22
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
          "patching_rect": [
            890,
            950,
            85,
            22
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
          "patching_rect": [
            20,
            900,
            400,
            22
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
          "patching_rect": [
            20,
            440,
            65,
            22
          ],
          "text": "apply",
          "presentation": 1,
          "presentation_rect": [
            20,
            440,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "clear",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            105,
            440,
            65,
            22
          ],
          "text": "clear",
          "presentation": 1,
          "presentation_rect": [
            105,
            440,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "beat-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            220,
            420,
            185,
            22
          ],
          "text": "CELESTE BEAT Hz",
          "presentation": 1,
          "presentation_rect": [
            220,
            420,
            185,
            22
          ]
        }
      },
      {
        "box": {
          "id": "beat",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            220,
            445,
            95,
            22
          ],
          "minimum": 0,
          "maximum": 5,
          "format": 6,
          "presentation": 1,
          "presentation_rect": [
            220,
            445,
            95,
            22
          ]
        }
      },
      {
        "box": {
          "id": "beatcmd",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            220,
            1000,
            150,
            22
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
          "patching_rect": [
            220,
            1040,
            100,
            22
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
            450,
            420,
            210,
            22
          ],
          "text": "HARMONICS PER RANK",
          "presentation": 1,
          "presentation_rect": [
            450,
            420,
            210,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tail",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            450,
            445,
            95,
            22
          ],
          "minimum": 1,
          "maximum": 256,
          "presentation": 1,
          "presentation_rect": [
            450,
            445,
            95,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tailcmd",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            450,
            1000,
            150,
            22
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
          "patching_rect": [
            450,
            1040,
            100,
            22
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
            20,
            480,
            950,
            45
          ],
          "text": "Beat/tail edits take effect on APPLY. C\u00e9leste uses seeded \u00b1 detuning plus exact anchors; partial 1 stays fixed. Set Max Drift above zero. Micro motion is controlled separately in the main patch.",
          "presentation": 1,
          "presentation_rect": [
            20,
            480,
            950,
            45
          ]
        }
      },
      {
        "box": {
          "id": "preset0",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            540,
            295,
            22
          ],
          "text": "registration PrincipalChorus",
          "presentation": 1,
          "presentation_rect": [
            20,
            540,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset1",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            340,
            540,
            295,
            22
          ],
          "text": "registration CornetV",
          "presentation": 1,
          "presentation_rect": [
            340,
            540,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset2",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            660,
            540,
            295,
            22
          ],
          "text": "registration SesquialteraII",
          "presentation": 1,
          "presentation_rect": [
            660,
            540,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset3",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            573,
            295,
            22
          ],
          "text": "registration FluteQuint",
          "presentation": 1,
          "presentation_rect": [
            20,
            573,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset4",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            340,
            573,
            295,
            22
          ],
          "text": "registration CelesteII",
          "presentation": 1,
          "presentation_rect": [
            340,
            573,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset5",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            660,
            573,
            295,
            22
          ],
          "text": "registration ReedChorus",
          "presentation": 1,
          "presentation_rect": [
            660,
            573,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset6",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            606,
            295,
            22
          ],
          "text": "registration OpenFlute",
          "presentation": 1,
          "presentation_rect": [
            20,
            606,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset7",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            340,
            606,
            295,
            22
          ],
          "text": "registration StoppedFlute",
          "presentation": 1,
          "presentation_rect": [
            340,
            606,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset8",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            660,
            606,
            295,
            22
          ],
          "text": "registration String8",
          "presentation": 1,
          "presentation_rect": [
            660,
            606,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset9",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            639,
            295,
            22
          ],
          "text": "registration SharpMixture",
          "presentation": 1,
          "presentation_rect": [
            20,
            639,
            295,
            22
          ]
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            685,
            950,
            45
          ],
          "text": "Select stops then APPLY.",
          "presentation": 1,
          "presentation_rect": [
            20,
            685,
            950,
            45
          ]
        }
      },
      {
        "box": {
          "id": "research",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            20,
            745,
            330,
            22
          ],
          "text": "_ec_sinusoid_synth_stops_research_14",
          "presentation": 1,
          "presentation_rect": [
            20,
            745,
            330,
            22
          ]
        }
      },
      {
        "box": {
          "id": "research-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            375,
            745,
            610,
            22
          ],
          "text": "Double-click for research, ratios, recipe details, references and next transform ideas.",
          "presentation": 1,
          "presentation_rect": [
            375,
            745,
            610,
            22
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "basein",
            0
          ],
          "destination": [
            "js",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "driftin",
            0
          ],
          "destination": [
            "js",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            0
          ],
          "destination": [
            "out",
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
            "cmd0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd0",
            0
          ],
          "destination": [
            "js",
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
            "set0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set0",
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
            "toggle1",
            0
          ],
          "destination": [
            "cmd1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd1",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            1
          ],
          "destination": [
            "set1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set1",
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
            "toggle2",
            0
          ],
          "destination": [
            "cmd2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd2",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            2
          ],
          "destination": [
            "set2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set2",
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
            "toggle3",
            0
          ],
          "destination": [
            "cmd3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd3",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            3
          ],
          "destination": [
            "set3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set3",
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
            "toggle4",
            0
          ],
          "destination": [
            "cmd4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd4",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            4
          ],
          "destination": [
            "set4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set4",
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
            "toggle5",
            0
          ],
          "destination": [
            "cmd5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd5",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            5
          ],
          "destination": [
            "set5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set5",
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
            "toggle6",
            0
          ],
          "destination": [
            "cmd6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd6",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            6
          ],
          "destination": [
            "set6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set6",
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
            "toggle7",
            0
          ],
          "destination": [
            "cmd7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd7",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            7
          ],
          "destination": [
            "set7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set7",
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
            "toggle8",
            0
          ],
          "destination": [
            "cmd8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd8",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            8
          ],
          "destination": [
            "set8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set8",
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
            "toggle9",
            0
          ],
          "destination": [
            "cmd9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd9",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            9
          ],
          "destination": [
            "set9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set9",
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
            "toggle10",
            0
          ],
          "destination": [
            "cmd10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd10",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            10
          ],
          "destination": [
            "set10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set10",
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
            "toggle11",
            0
          ],
          "destination": [
            "cmd11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd11",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            11
          ],
          "destination": [
            "set11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set11",
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
            "toggle12",
            0
          ],
          "destination": [
            "cmd12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd12",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            12
          ],
          "destination": [
            "set12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set12",
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
            "toggle13",
            0
          ],
          "destination": [
            "cmd13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cmd13",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "feedback",
            13
          ],
          "destination": [
            "set13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "set13",
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
            "js",
            1
          ],
          "destination": [
            "feedback",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "apply",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clear",
            0
          ],
          "destination": [
            "js",
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
            "beatcmd",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "beatcmd",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "beatload",
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
            "tail",
            0
          ],
          "destination": [
            "tailcmd",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tailcmd",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tailload",
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
            "preset0",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset1",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset2",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset3",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset4",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset5",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset6",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset7",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset8",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset9",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            2
          ],
          "destination": [
            "status",
            0
          ]
        }
      }
    ],
    "openinpresentation": 1
  }
}