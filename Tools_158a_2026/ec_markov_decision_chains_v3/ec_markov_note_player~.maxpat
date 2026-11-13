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
      60.0,
      60.0,
      780.0,
      520.0
    ],
    "openinpresentation": 0,
    "default_fontsize": 13.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "gridsize": [
      15.0,
      15.0
    ],
    "boxes": [
      {
        "box": {
          "id": "a-title",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            15.0,
            730.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "ec_markov_note_player~ / sine tone from a MIDI note",
          "fontsize": 17.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "a-midi",
          "maxclass": "inlet",
          "patching_rect": [
            35.0,
            65.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "comment": "MIDI note integer from js outlet 2 (not pitch class); each note triggers the envelope"
        }
      },
      {
        "box": {
          "id": "a-level",
          "maxclass": "inlet",
          "patching_rect": [
            490.0,
            65.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "comment": "Level 0.0-0.3; default 0.12; 50 ms smoothing"
        }
      },
      {
        "box": {
          "id": "a-trigger",
          "maxclass": "newobj",
          "patching_rect": [
            35.0,
            115.0,
            60.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "a-mtof",
          "maxclass": "newobj",
          "patching_rect": [
            170.0,
            155.0,
            55.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "mtof"
        }
      },
      {
        "box": {
          "id": "a-fpack",
          "maxclass": "newobj",
          "patching_rect": [
            170.0,
            195.0,
            85.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "pack 0. 10"
        }
      },
      {
        "box": {
          "id": "a-fline",
          "maxclass": "newobj",
          "patching_rect": [
            170.0,
            235.0,
            55.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 2,
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "a-osc",
          "maxclass": "newobj",
          "patching_rect": [
            170.0,
            280.0,
            65.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "cycle~"
        }
      },
      {
        "box": {
          "id": "a-env",
          "maxclass": "message",
          "patching_rect": [
            25.0,
            195.0,
            137.0,
            25.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "0. 5 1. 10 0. 235"
        }
      },
      {
        "box": {
          "id": "a-eline",
          "maxclass": "newobj",
          "patching_rect": [
            35.0,
            235.0,
            55.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 2,
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "a-voice",
          "maxclass": "newobj",
          "patching_rect": [
            170.0,
            325.0,
            45.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "a-clip",
          "maxclass": "newobj",
          "patching_rect": [
            490.0,
            115.0,
            90.0,
            23.0
          ],
          "numinlets": 3,
          "numoutlets": 1,
          "text": "clip 0. 0.3"
        }
      },
      {
        "box": {
          "id": "a-vpack",
          "maxclass": "newobj",
          "patching_rect": [
            490.0,
            155.0,
            90.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "pack 0. 50"
        }
      },
      {
        "box": {
          "id": "a-vline",
          "maxclass": "newobj",
          "patching_rect": [
            490.0,
            195.0,
            90.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 2,
          "text": "line~ 0.12"
        }
      },
      {
        "box": {
          "id": "a-outgain",
          "maxclass": "newobj",
          "patching_rect": [
            170.0,
            365.0,
            45.0,
            23.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "a-out",
          "maxclass": "outlet",
          "patching_rect": [
            170.0,
            410.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Mono audio signal: connect to the master mixer or dac~"
        }
      },
      {
        "box": {
          "id": "a-note",
          "maxclass": "comment",
          "patching_rect": [
            300.0,
            280.0,
            445.0,
            105.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Extracted from the builder: same sine and envelope.\n250 ms note; 10 ms frequency ramp; 50 ms level ramp.\nDefault level: 0.12. Level range: 0.0-0.3.\nOne voice; each new note retriggers it.\nSilent until a MIDI note arrives. No arguments required.",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "a-source",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            460.0,
            730.0,
            42.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Connect the SECOND outlet of the editor or exported model to the LEFT inlet here.\nThis abstraction produces audio; the master patch controls DSP and speaker routing.",
          "fontsize": 12.0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "a-midi",
            0
          ],
          "destination": [
            "a-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-trigger",
            1
          ],
          "destination": [
            "a-mtof",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-mtof",
            0
          ],
          "destination": [
            "a-fpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-fpack",
            0
          ],
          "destination": [
            "a-fline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-fline",
            0
          ],
          "destination": [
            "a-osc",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-trigger",
            0
          ],
          "destination": [
            "a-env",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-env",
            0
          ],
          "destination": [
            "a-eline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-osc",
            0
          ],
          "destination": [
            "a-voice",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-eline",
            0
          ],
          "destination": [
            "a-voice",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-level",
            0
          ],
          "destination": [
            "a-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-clip",
            0
          ],
          "destination": [
            "a-vpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-vpack",
            0
          ],
          "destination": [
            "a-vline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-vline",
            0
          ],
          "destination": [
            "a-outgain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-voice",
            0
          ],
          "destination": [
            "a-outgain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "a-outgain",
            0
          ],
          "destination": [
            "a-out",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
