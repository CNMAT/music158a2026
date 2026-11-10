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
      70,
      70,
      1210,
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
          "text": "ec_tapdelay16_v4~ | sources / optional taps / bounded timing curves"
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
          "comment": "MC audio input (use mc.pack~ N, or a mono signal with sources 1)",
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
          "comment": "Control messages: sources / taps / spacing / curve / stop / start / delaydrift / dump / bang or cycle",
          "text": ""
        }
      },
      {
        "box": {
          "id": "js",
          "maxclass": "newobj",
          "patching_rect": [
            390,
            230,
            400,
            22
          ],
          "text": "js ec_tapdelay16_v4_control.js #0_tapdelay_history",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            "bang"
          ]
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
          "text": "mcs.gen~ ec_tapdelay16_v4_engine"
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
          "comment": "16-channel MC tap bus; unused channels are silent",
          "text": "",
          "index": 1
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
          "comment": "Mono tap sum with optional normalization",
          "text": "",
          "index": 2
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "outlet",
          "patching_rect": [
            890,
            460,
            65,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Settings / integer base_times / warnings / cycle status",
          "text": "",
          "index": 4
        }
      },
      {
        "box": {
          "id": "defer",
          "maxclass": "newobj",
          "patching_rect": [
            880,
            135,
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
            230,
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
            1100,
            80
          ],
          "text": "Arguments: sources spacing_ms curve. Named settings: @sources, @taps, @spacing, @curve. Omitted taps follows sources; taps auto restores the link. Sources 0 / omitted uses connected input channels, one-to-one. Tap 1 stays at 0 ms. Output bus keeps 16 slots. See the v4 help patch for defaults, limits and all curves. All base delays are rounded to integer ms. Outlet 3 is now cycle-done bang; status moves to outlet 4. A control bang or cycle waits exactly the last rounded base delay, independently of audio / DSP."
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
          "text": "t b b b",
          "patching_rect": [
            880,
            180,
            100,
            22
          ],
          "numinlets": 1,
          "numoutlets": 3
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
      },
      {
        "box": {
          "id": "args",
          "maxclass": "newobj",
          "patching_rect": [
            740,
            30,
            110,
            22
          ],
          "text": "patcherargs",
          "numinlets": 1,
          "numoutlets": 2
        }
      },
      {
        "box": {
          "id": "posroute",
          "maxclass": "newobj",
          "patching_rect": [
            540,
            75,
            125,
            22
          ],
          "text": "route done bang",
          "numinlets": 1,
          "numoutlets": 3
        }
      },
      {
        "box": {
          "id": "pos",
          "maxclass": "newobj",
          "patching_rect": [
            540,
            120,
            170,
            22
          ],
          "text": "prepend creationargs",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "attrroute",
          "maxclass": "newobj",
          "patching_rect": [
            880,
            75,
            90,
            22
          ],
          "text": "route done",
          "numinlets": 1,
          "numoutlets": 2
        }
      },
      {
        "box": {
          "id": "attr",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            120,
            170,
            22
          ],
          "text": "prepend creationattr",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "cycle_done",
          "maxclass": "outlet",
          "patching_rect": [
            600,
            460,
            65,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "index": 3,
          "comment": "Virtual cycle-done bang: waits the final base_times value after bang / cycle at control inlet"
        }
      },
      {
        "box": {
          "id": "integer_status_route",
          "maxclass": "newobj",
          "patching_rect": [
            850,
            285,
            140,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "text": "route base_times"
        }
      },
      {
        "box": {
          "id": "integer_times",
          "maxclass": "newobj",
          "patching_rect": [
            850,
            330,
            140,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "vexpr int($f1)"
        }
      },
      {
        "box": {
          "id": "integer_tag",
          "maxclass": "newobj",
          "patching_rect": [
            850,
            385,
            170,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "prepend base_times"
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
      },
      {
        "patchline": {
          "source": [
            "args",
            0
          ],
          "destination": [
            "posroute",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "posroute",
            2
          ],
          "destination": [
            "pos",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pos",
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
            "args",
            1
          ],
          "destination": [
            "attrroute",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "attrroute",
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
            "attrroute",
            1
          ],
          "destination": [
            "attr",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "attr",
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
            "loadorder",
            2
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
            4
          ],
          "destination": [
            "cycle_done",
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
            "integer_status_route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "integer_status_route",
            0
          ],
          "destination": [
            "integer_times",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "integer_times",
            0
          ],
          "destination": [
            "integer_tag",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "integer_tag",
            0
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
            "integer_status_route",
            1
          ],
          "destination": [
            "status",
            0
          ]
        }
      }
    ]
  }
}
