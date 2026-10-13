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
      80,
      80,
      1120,
      870
    ],
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            30,
            15,
            780,
            22
          ],
          "text": "ec_tapdelay64_v3~ | MC input / round robin / 64 taps / 10000 ms"
        }
      },
      {
        "box": {
          "id": "in",
          "maxclass": "inlet",
          "patching_rect": [
            30,
            65,
            60,
            22
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "multichannelsignal"
          ],
          "comment": "MC audio input: use mc.pack~ N; channel order defines input numbers",
          "text": ""
        }
      },
      {
        "box": {
          "id": "ctl",
          "maxclass": "inlet",
          "patching_rect": [
            390,
            65,
            60,
            22
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "comment": "Delay lists, spacing/count pairs and controls",
          "text": ""
        }
      },
      {
        "box": {
          "id": "js",
          "maxclass": "newobj",
          "patching_rect": [
            390,
            120,
            345,
            22
          ],
          "text": "js ec_tapdelay64_v3_control.js #1 #0_tapdelay_history"
        }
      },
      {
        "box": {
          "id": "gen",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            230,
            280,
            22
          ],
          "text": "mcs.gen~ ec_tapdelay64_v3_engine"
        }
      },
      {
        "box": {
          "id": "sum",
          "maxclass": "newobj",
          "patching_rect": [
            390,
            285,
            230,
            22
          ],
          "text": "mc.mixdown~ 1 @autogain 0"
        }
      },
      {
        "box": {
          "id": "unpack",
          "maxclass": "newobj",
          "patching_rect": [
            390,
            330,
            140,
            22
          ],
          "text": "mc.unpack~ 1"
        }
      },
      {
        "box": {
          "id": "norm",
          "maxclass": "newobj",
          "patching_rect": [
            650,
            285,
            100,
            22
          ],
          "text": "line~ 0.25"
        }
      },
      {
        "box": {
          "id": "mul",
          "maxclass": "newobj",
          "patching_rect": [
            390,
            385,
            50,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "wet",
          "maxclass": "outlet",
          "patching_rect": [
            30,
            460,
            65,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "64-channel MC taps, unused channels silent",
          "text": ""
        }
      },
      {
        "box": {
          "id": "mono",
          "maxclass": "outlet",
          "patching_rect": [
            390,
            460,
            65,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Mono sum including tap 1 at 0 ms; compensation applies here only",
          "text": ""
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "outlet",
          "patching_rect": [
            720,
            460,
            65,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Settings / warnings",
          "text": ""
        }
      },
      {
        "box": {
          "id": "load",
          "maxclass": "newobj",
          "patching_rect": [
            740,
            65,
            80,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "defer",
          "maxclass": "newobj",
          "patching_rect": [
            740,
            100,
            80,
            22
          ],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "init",
          "maxclass": "message",
          "patching_rect": [
            740,
            135,
            80,
            22
          ],
          "text": "initialize"
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "patching_rect": [
            30,
            525,
            860,
            65
          ],
          "text": "Argument: input count 1\u201364; omitted/0 = input N to tap N. Defaults: 250 4, smooth 50, master 1, normalize 1. Use argument 1 for the original mono-to-all-taps behavior. Drift defaults to delaydrift 0 250. stop cancels audio; a spacing/count pair restarts."
        }
      },
      {
        "box": {
          "id": "history",
          "maxclass": "newobj",
          "text": "buffer~ #0_tapdelay_history 1 1",
          "patching_rect": [
            30,
            620,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "channelcount",
          "maxclass": "newobj",
          "text": "mc.channelcount~",
          "patching_rect": [
            30,
            120,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "channelmsg",
          "maxclass": "newobj",
          "text": "prepend audiochannels",
          "patching_rect": [
            30,
            160,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "dspstate",
          "maxclass": "newobj",
          "text": "dspstate~",
          "patching_rect": [
            390,
            620,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "ratemsg",
          "maxclass": "newobj",
          "text": "prepend audiorate",
          "patching_rect": [
            650,
            665,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "dspstart",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            390,
            665,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "dspdefer",
          "maxclass": "newobj",
          "text": "deferlow",
          "patching_rect": [
            390,
            710,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "loadorder",
          "maxclass": "newobj",
          "text": "t b b",
          "patching_rect": [
            740,
            180,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "dspmsg",
          "maxclass": "newobj",
          "text": "prepend dspactive",
          "patching_rect": [
            650,
            710,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vectormsg",
          "maxclass": "newobj",
          "text": "prepend audiovector",
          "patching_rect": [
            650,
            750,
            220,
            22
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
            "gen",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ctl",
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
            0
          ],
          "destination": [
            "gen",
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
            "norm",
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
      },
      {
        "patchline": {
          "source": [
            "gen",
            0
          ],
          "destination": [
            "wet",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "gen",
            0
          ],
          "destination": [
            "sum",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "sum",
            0
          ],
          "destination": [
            "unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            0
          ],
          "destination": [
            "mul",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "norm",
            0
          ],
          "destination": [
            "mul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mul",
            0
          ],
          "destination": [
            "mono",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load",
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
            "init",
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
            "defer",
            0
          ],
          "destination": [
            "loadorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loadorder",
            1
          ],
          "destination": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loadorder",
            0
          ],
          "destination": [
            "dspstate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "in",
            0
          ],
          "destination": [
            "channelcount",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "channelcount",
            0
          ],
          "destination": [
            "channelmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "channelmsg",
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
            "dspstate",
            1
          ],
          "destination": [
            "ratemsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ratemsg",
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
            "dspstate",
            0
          ],
          "destination": [
            "dspstart",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "dspstart",
            0
          ],
          "destination": [
            "dspdefer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dspdefer",
            0
          ],
          "destination": [
            "channelcount",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            3
          ],
          "destination": [
            "history",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dspstate",
            0
          ],
          "destination": [
            "dspmsg",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "dspstate",
            2
          ],
          "destination": [
            "vectormsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dspmsg",
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
            "vectormsg",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      }
    ]
  }
}
