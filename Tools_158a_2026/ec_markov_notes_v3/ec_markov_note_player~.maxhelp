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
    "openinpresentation": 0,
    "default_fontsize": 13.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "gridsize": [
      15.0,
      15.0
    ],
    "rect": [
      60.0,
      60.0,
      1020.0,
      760.0
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            16.0,
            970.0,
            32.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "ec_markov_note_player~ / extracted builder tone",
          "fontsize": 20.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "intro",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            58.0,
            970.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Click AUDIO, then NEXT or RUN. The included model selects C, E and G.\nFor your own model, replace example_markov_frozen.js in the js box with your exported filename."
        }
      },
      {
        "box": {
          "id": "run",
          "maxclass": "toggle",
          "patching_rect": [
            24.0,
            120.0,
            26.0,
            26.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "run-label",
          "maxclass": "comment",
          "patching_rect": [
            62.0,
            121.0,
            70.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "RUN"
        }
      },
      {
        "box": {
          "id": "rate",
          "maxclass": "number",
          "patching_rect": [
            160.0,
            120.0,
            75.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "minimum": 50,
          "maximum": 5000,
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "rate-label",
          "maxclass": "comment",
          "patching_rect": [
            245.0,
            121.0,
            90.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "interval ms"
        }
      },
      {
        "box": {
          "id": "metro",
          "maxclass": "newobj",
          "patching_rect": [
            24.0,
            170.0,
            100.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "metro 650"
        }
      },
      {
        "box": {
          "id": "defer",
          "maxclass": "newobj",
          "patching_rect": [
            24.0,
            210.0,
            90.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "next",
          "maxclass": "button",
          "patching_rect": [
            230.0,
            205.0,
            28.0,
            28.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "next-label",
          "maxclass": "comment",
          "patching_rect": [
            270.0,
            208.0,
            100.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "NEXT"
        }
      },
      {
        "box": {
          "id": "reset",
          "maxclass": "message",
          "patching_rect": [
            440.0,
            207.0,
            70.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "reset"
        }
      },
      {
        "box": {
          "id": "model",
          "maxclass": "newobj",
          "patching_rect": [
            24.0,
            265.0,
            430.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "text": "js example_markov_frozen.js",
          "outlettype": [
            "int",
            "int",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "pc",
          "maxclass": "number",
          "patching_rect": [
            24.0,
            325.0,
            65.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "pc-label",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            360.0,
            170.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Outlet 1: pitch class\nDisplay only here."
        }
      },
      {
        "box": {
          "id": "midi",
          "maxclass": "number",
          "patching_rect": [
            230.0,
            325.0,
            65.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "midi-label",
          "maxclass": "comment",
          "patching_rect": [
            230.0,
            360.0,
            185.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Outlet 2: MIDI note\nThis triggers the tone."
        }
      },
      {
        "box": {
          "id": "print",
          "maxclass": "newobj",
          "patching_rect": [
            440.0,
            325.0,
            175.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "print markov_model"
        }
      },
      {
        "box": {
          "id": "status-label",
          "maxclass": "comment",
          "patching_rect": [
            440.0,
            360.0,
            180.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Outlet 3: status\nShown in Max Console."
        }
      },
      {
        "box": {
          "id": "player",
          "maxclass": "newobj",
          "patching_rect": [
            230.0,
            435.0,
            270.0,
            25.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "ec_markov_note_player~",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            230.0,
            515.0,
            45.0,
            45.0
          ],
          "numinlets": 2,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "dac-label",
          "maxclass": "comment",
          "patching_rect": [
            290.0,
            522.0,
            85.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "AUDIO",
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "meter",
          "maxclass": "meter~",
          "patching_rect": [
            440.0,
            510.0,
            125.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "meter-label",
          "maxclass": "comment",
          "patching_rect": [
            440.0,
            545.0,
            165.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Mono audio output"
        }
      },
      {
        "box": {
          "id": "level-label",
          "maxclass": "comment",
          "patching_rect": [
            670.0,
            120.0,
            310.0,
            43.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "RIGHT INLET: LEVEL\nDefault 0.12; range 0.0-0.3.",
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "level",
          "maxclass": "flonum",
          "patching_rect": [
            670.0,
            175.0,
            85.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "minimum": 0.0,
          "maximum": 0.3,
          "parameter_enable": 0,
          "format": 6
        }
      },
      {
        "box": {
          "id": "mute",
          "maxclass": "message",
          "patching_rect": [
            780.0,
            175.0,
            45.0,
            25.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "0."
        }
      },
      {
        "box": {
          "id": "restore-level",
          "maxclass": "message",
          "patching_rect": [
            845.0,
            175.0,
            60.0,
            25.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "0.12"
        }
      },
      {
        "box": {
          "id": "manual-label",
          "maxclass": "comment",
          "patching_rect": [
            670.0,
            260.0,
            310.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "DIRECT NOTE TEST\nClick a MIDI note to hear one tone.",
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "test-60",
          "maxclass": "message",
          "patching_rect": [
            670.0,
            320.0,
            55.0,
            25.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "60"
        }
      },
      {
        "box": {
          "id": "test-64",
          "maxclass": "message",
          "patching_rect": [
            745.0,
            320.0,
            55.0,
            25.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "64"
        }
      },
      {
        "box": {
          "id": "test-67",
          "maxclass": "message",
          "patching_rect": [
            820.0,
            320.0,
            55.0,
            25.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "67"
        }
      },
      {
        "box": {
          "id": "defaults",
          "maxclass": "comment",
          "patching_rect": [
            670.0,
            385.0,
            310.0,
            150.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "SAME SOUND AS THE BUILDER\nSine oscillator, one voice.\nEnvelope: 250 ms total.\nPitch smoothing: 10 ms.\nLevel smoothing: 50 ms.\nEach note retriggers the envelope.\nNo creation arguments required.",
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "integration",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            605.0,
            970.0,
            100.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "IN YOUR MASTER PATCH\nPut ec_markov_note_player~.maxpat beside the master patch and create [ec_markov_note_player~].\nConnect the js model's SECOND outlet to the LEFT inlet. Connect its signal outlet to your audio routing.\nThe right inlet is optional: level starts at 0.12. You can also use the builder engine's second outlet.\nFor pitch-class output instead, insert [+ 60] before the player for octave 4. Use one note source at a time.",
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "load-rate",
          "maxclass": "newobj",
          "patching_rect": [
            24.0,
            720.0,
            105.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "loadmess 650"
        }
      },
      {
        "box": {
          "id": "load-level",
          "maxclass": "newobj",
          "patching_rect": [
            670.0,
            720.0,
            110.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "loadmess 0.12"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "run",
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
            "rate",
            0
          ],
          "destination": [
            "metro",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load-rate",
            0
          ],
          "destination": [
            "rate",
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
            "model",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "next",
            0
          ],
          "destination": [
            "model",
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
            "model",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "model",
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
            "model",
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
            "model",
            2
          ],
          "destination": [
            "print",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midi",
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
            "level",
            0
          ],
          "destination": [
            "player",
            1
          ],
          "midpoints": [
            680,
            240,
            632,
            240,
            632,
            415,
            490,
            415
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load-level",
            0
          ],
          "destination": [
            "level",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mute",
            0
          ],
          "destination": [
            "level",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "restore-level",
            0
          ],
          "destination": [
            "level",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "test-60",
            0
          ],
          "destination": [
            "player",
            0
          ],
          "midpoints": [
            680,
            350,
            645,
            350,
            645,
            585,
            205,
            585,
            205,
            420,
            240,
            420
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "test-64",
            0
          ],
          "destination": [
            "player",
            0
          ],
          "midpoints": [
            755,
            350,
            645,
            350,
            645,
            585,
            205,
            585,
            205,
            420,
            240,
            420
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "test-67",
            0
          ],
          "destination": [
            "player",
            0
          ],
          "midpoints": [
            830,
            350,
            645,
            350,
            645,
            585,
            205,
            585,
            205,
            420,
            240,
            420
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
            "dac",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "player",
            0
          ],
          "destination": [
            "dac",
            1
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "player",
            0
          ],
          "destination": [
            "meter",
            0
          ],
          "order": 2
        }
      }
    ],
    "autosave": 0,
    "dependency_cache": [
      {
        "name": "ec_markov_note_player~.maxpat",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "example_markov_frozen.js",
        "type": "TEXT",
        "implicit": 1
      }
    ]
  }
}
