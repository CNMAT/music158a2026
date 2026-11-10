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
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "default_fontface": 0,
    "openinpresentation": 0,
    "bglocked": 0,
    "gridonopen": 0,
    "gridsize": [
      15.0,
      15.0
    ],
    "rect": [
      70,
      70,
      1120,
      590
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            25,
            15,
            1070,
            30
          ],
          "text": "ROUND ROBIN — 3 inputs / 8 taps",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 21.0
        }
      },
      {
        "box": {
          "id": "usage",
          "maxclass": "comment",
          "patching_rect": [
            25,
            56,
            1070,
            36
          ],
          "text": "Turn DSP on in the main help. Click one input; the assigned tap meters flash. These examples do not connect to your speakers.",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "inlabel0",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            109,
            105,
            22
          ],
          "text": "Input 1",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "bang0",
          "maxclass": "button",
          "patching_rect": [
            25.0,
            144,
            26,
            26
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "click0",
          "maxclass": "newobj",
          "patching_rect": [
            25.0,
            193,
            65,
            22
          ],
          "text": "click~",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "inlabel1",
          "maxclass": "comment",
          "patching_rect": [
            381.6666666666667,
            109,
            105,
            22
          ],
          "text": "Input 2",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "bang1",
          "maxclass": "button",
          "patching_rect": [
            381.6666666666667,
            144,
            26,
            26
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "click1",
          "maxclass": "newobj",
          "patching_rect": [
            381.6666666666667,
            193,
            65,
            22
          ],
          "text": "click~",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "inlabel2",
          "maxclass": "comment",
          "patching_rect": [
            738.3333333333334,
            109,
            105,
            22
          ],
          "text": "Input 3",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "bang2",
          "maxclass": "button",
          "patching_rect": [
            738.3333333333334,
            144,
            26,
            26
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "click2",
          "maxclass": "newobj",
          "patching_rect": [
            738.3333333333334,
            193,
            65,
            22
          ],
          "text": "click~",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "pack",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            250,
            1070,
            22
          ],
          "text": "mc.pack~ 3",
          "numinlets": 3,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "engine",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            315,
            580,
            22
          ],
          "text": "ec_tapdelay16_v4~ 3 250 linear @taps 8",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "multichannelsignal",
            "signal",
            "bang",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "dump",
          "maxclass": "message",
          "patching_rect": [
            725,
            315,
            60,
            22
          ],
          "text": "dump",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "print",
          "maxclass": "newobj",
          "patching_rect": [
            825,
            315,
            220,
            22
          ],
          "text": "print round_robin_v4",
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "split",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            386,
            1070,
            22
          ],
          "text": "mc.unpack~ 8 @replicate 0",
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
          ]
        }
      },
      {
        "box": {
          "id": "tap0",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            431,
            130,
            36
          ],
          "text": "Tap 1 ← input 1",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "meter0",
          "maxclass": "meter~",
          "patching_rect": [
            25.0,
            482,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "tap1",
          "maxclass": "comment",
          "patching_rect": [
            158.75,
            431,
            130,
            36
          ],
          "text": "Tap 2 ← input 2",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "meter1",
          "maxclass": "meter~",
          "patching_rect": [
            158.75,
            482,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "tap2",
          "maxclass": "comment",
          "patching_rect": [
            292.5,
            431,
            130,
            36
          ],
          "text": "Tap 3 ← input 3",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "meter2",
          "maxclass": "meter~",
          "patching_rect": [
            292.5,
            482,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "tap3",
          "maxclass": "comment",
          "patching_rect": [
            426.25,
            431,
            130,
            36
          ],
          "text": "Tap 4 ← input 1",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "meter3",
          "maxclass": "meter~",
          "patching_rect": [
            426.25,
            482,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "tap4",
          "maxclass": "comment",
          "patching_rect": [
            560.0,
            431,
            130,
            36
          ],
          "text": "Tap 5 ← input 2",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "meter4",
          "maxclass": "meter~",
          "patching_rect": [
            560.0,
            482,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "tap5",
          "maxclass": "comment",
          "patching_rect": [
            693.75,
            431,
            130,
            36
          ],
          "text": "Tap 6 ← input 3",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "meter5",
          "maxclass": "meter~",
          "patching_rect": [
            693.75,
            482,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "tap6",
          "maxclass": "comment",
          "patching_rect": [
            827.5,
            431,
            130,
            36
          ],
          "text": "Tap 7 ← input 1",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "meter6",
          "maxclass": "meter~",
          "patching_rect": [
            827.5,
            482,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "tap7",
          "maxclass": "comment",
          "patching_rect": [
            961.25,
            431,
            130,
            36
          ],
          "text": "Tap 8 ← input 2",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "meter7",
          "maxclass": "meter~",
          "patching_rect": [
            961.25,
            482,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "foot",
          "maxclass": "comment",
          "patching_rect": [
            25,
            538,
            1070,
            36
          ],
          "text": "Times: 0, 250, 500, 750, 1000, 1250, 1500, 1750 ms. Explicit @taps 8 repeats inputs 1, 2, 3 across all eight taps.",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "cycle_trigger0",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            170,
            50,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "text": "t b b",
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "cycle_trigger1",
          "maxclass": "newobj",
          "patching_rect": [
            155,
            170,
            50,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "text": "t b b",
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "cycle_trigger2",
          "maxclass": "newobj",
          "patching_rect": [
            285,
            170,
            50,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "text": "t b b",
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "done",
          "maxclass": "button",
          "patching_rect": [
            625,
            313,
            26,
            26
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "donelabel",
          "maxclass": "comment",
          "patching_rect": [
            610,
            344,
            100,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Cycle done"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "click0",
            0
          ],
          "destination": [
            "pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "click1",
            0
          ],
          "destination": [
            "pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "click2",
            0
          ],
          "destination": [
            "pack",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pack",
            0
          ],
          "destination": [
            "engine",
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
            "engine",
            1
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            3
          ],
          "destination": [
            "print",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            0
          ],
          "destination": [
            "split",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "split",
            0
          ],
          "destination": [
            "meter0",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "split",
            1
          ],
          "destination": [
            "meter1",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "split",
            2
          ],
          "destination": [
            "meter2",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "split",
            3
          ],
          "destination": [
            "meter3",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "split",
            4
          ],
          "destination": [
            "meter4",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "split",
            5
          ],
          "destination": [
            "meter5",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "split",
            6
          ],
          "destination": [
            "meter6",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "split",
            7
          ],
          "destination": [
            "meter7",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "bang0",
            0
          ],
          "destination": [
            "cycle_trigger0",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "cycle_trigger0",
            1
          ],
          "destination": [
            "engine",
            1
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "cycle_trigger0",
            0
          ],
          "destination": [
            "click0",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "bang1",
            0
          ],
          "destination": [
            "cycle_trigger1",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "cycle_trigger1",
            1
          ],
          "destination": [
            "engine",
            1
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "cycle_trigger1",
            0
          ],
          "destination": [
            "click1",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "bang2",
            0
          ],
          "destination": [
            "cycle_trigger2",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "cycle_trigger2",
            1
          ],
          "destination": [
            "engine",
            1
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "cycle_trigger2",
            0
          ],
          "destination": [
            "click2",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            2
          ],
          "destination": [
            "done",
            0
          ],
          "hidden": 1
        }
      }
    ]
  }
}
