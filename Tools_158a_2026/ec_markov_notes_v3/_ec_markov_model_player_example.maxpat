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
    "default_fontsize": 13.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "autosave": 0,
    "rect": [
      60.0,
      60.0,
      900.0,
      670.0
    ],
    "openinpresentation": 0,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            18.0,
            850.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "FROZEN PLAYER / MASTER PATCH EXAMPLE",
          "fontsize": 19.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "intro",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            60.0,
            850.0,
            50.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "This example uses a supplied demonstration model (PCs 0, 4, 7).\nReplace the filename in the js object with YOUR exported .js file. Keep that file beside the master patch."
        }
      },
      {
        "box": {
          "id": "clock",
          "maxclass": "toggle",
          "patching_rect": [
            24.0,
            135.0,
            26.0,
            26.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "clock-label",
          "maxclass": "comment",
          "patching_rect": [
            62.0,
            135.0,
            155.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Run example clock"
        }
      },
      {
        "box": {
          "id": "metro",
          "maxclass": "newobj",
          "patching_rect": [
            24.0,
            183.0,
            95.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "metro 400"
        }
      },
      {
        "box": {
          "id": "defer",
          "maxclass": "newobj",
          "patching_rect": [
            24.0,
            228.0,
            85.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "manual",
          "maxclass": "button",
          "patching_rect": [
            180.0,
            226.0,
            26.0,
            26.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "manual-label",
          "maxclass": "comment",
          "patching_rect": [
            218.0,
            227.0,
            180.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "One selection"
        }
      },
      {
        "box": {
          "id": "reset",
          "maxclass": "message",
          "patching_rect": [
            430.0,
            135.0,
            60.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "reset"
        }
      },
      {
        "box": {
          "id": "reset-desc",
          "maxclass": "comment",
          "patching_rect": [
            510.0,
            135.0,
            350.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Restore exported start, seed and octave"
        }
      },
      {
        "box": {
          "id": "start",
          "maxclass": "message",
          "patching_rect": [
            430.0,
            175.0,
            80.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "start 4"
        }
      },
      {
        "box": {
          "id": "start-desc",
          "maxclass": "comment",
          "patching_rect": [
            530.0,
            175.0,
            320.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Silent start from active pitch class 4"
        }
      },
      {
        "box": {
          "id": "seed",
          "maxclass": "message",
          "patching_rect": [
            430.0,
            215.0,
            85.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "seed 123"
        }
      },
      {
        "box": {
          "id": "seed-desc",
          "maxclass": "comment",
          "patching_rect": [
            530.0,
            215.0,
            320.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Set a repeatable random generator"
        }
      },
      {
        "box": {
          "id": "octave",
          "maxclass": "message",
          "patching_rect": [
            430.0,
            255.0,
            85.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "octave 4"
        }
      },
      {
        "box": {
          "id": "octave-desc",
          "maxclass": "comment",
          "patching_rect": [
            530.0,
            255.0,
            320.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "MIDI register; leaves pitch classes fixed"
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "message",
          "patching_rect": [
            430.0,
            295.0,
            65.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "status"
        }
      },
      {
        "box": {
          "id": "dump",
          "maxclass": "message",
          "patching_rect": [
            530.0,
            295.0,
            65.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "dump"
        }
      },
      {
        "box": {
          "id": "player",
          "maxclass": "newobj",
          "patching_rect": [
            24.0,
            350.0,
            430.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "text": "js example_markov_frozen.js"
        }
      },
      {
        "box": {
          "id": "pc",
          "maxclass": "number",
          "patching_rect": [
            24.0,
            430.0,
            65.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 2
        }
      },
      {
        "box": {
          "id": "pc-label",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            470.0,
            230.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "LEFT: pitch class 0..11\nConnect to your pitch logic."
        }
      },
      {
        "box": {
          "id": "midi",
          "maxclass": "number",
          "patching_rect": [
            220.0,
            430.0,
            65.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 2
        }
      },
      {
        "box": {
          "id": "midi-label",
          "maxclass": "comment",
          "patching_rect": [
            220.0,
            470.0,
            240.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "MIDDLE: MIDI note number\nConnect to your instrument."
        }
      },
      {
        "box": {
          "id": "print",
          "maxclass": "newobj",
          "patching_rect": [
            500.0,
            430.0,
            220.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "print frozen_markov"
        }
      },
      {
        "box": {
          "id": "diagnostics",
          "maxclass": "comment",
          "patching_rect": [
            500.0,
            470.0,
            350.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "RIGHT: step / empty / status / error\nInspect with print or route."
        }
      },
      {
        "box": {
          "id": "bottom",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            550.0,
            850.0,
            88.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "The js object is the reusable module. Copy it into a master patch and use your existing clock.\nOne bang selects one successor. The starting state itself makes no sound.\nZero-weight rows produce no note. Transitions remain probabilistic unless each row has one destination.\nThis patch displays note numbers; your master patch supplies its own instrument and note duration.",
          "fontsize": 13.0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "clock",
            0
          ],
          "destination": [
            "metro",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "metro",
            0
          ],
          "destination": [
            "defer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "defer",
            0
          ],
          "destination": [
            "player",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "manual",
            0
          ],
          "destination": [
            "player",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "reset",
            0
          ],
          "destination": [
            "player",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start",
            0
          ],
          "destination": [
            "player",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "seed",
            0
          ],
          "destination": [
            "player",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "octave",
            0
          ],
          "destination": [
            "player",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "status",
            0
          ],
          "destination": [
            "player",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dump",
            0
          ],
          "destination": [
            "player",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "player",
            0
          ],
          "destination": [
            "pc",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "player",
            1
          ],
          "destination": [
            "midi",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "player",
            2
          ],
          "destination": [
            "print",
            0
          ]
        }
      }
    ],
    "dependency_cache": [
      {
        "name": "example_markov_frozen.js",
        "type": "TEXT",
        "implicit": 1
      }
    ]
  }
}
