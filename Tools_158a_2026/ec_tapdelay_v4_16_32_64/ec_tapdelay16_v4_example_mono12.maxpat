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
      1080,
      590
    ],
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            25,
            20,
            1000,
            30
          ],
          "fontsize": 20.0,
          "text": "ONE MONO INPUT / 12 TAPS — ec_tapdelay16_v4~"
        }
      },
      {
        "box": {
          "id": "intro",
          "maxclass": "comment",
          "patching_rect": [
            25,
            60,
            980,
            42
          ],
          "text": "Turn audio on, then click the trigger. All twelve taps share one input-history buffer.\nUse the regular help patch when the inputs are twelve independent sounds."
        }
      },
      {
        "box": {
          "id": "trigger",
          "maxclass": "button",
          "patching_rect": [
            25,
            120,
            30,
            30
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "triggerlabel",
          "maxclass": "comment",
          "patching_rect": [
            65,
            122,
            150,
            22
          ],
          "text": "TRIGGER + CYCLE"
        }
      },
      {
        "box": {
          "id": "triggerorder",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            165,
            45,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "click",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            205,
            50,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "text": "click~"
        }
      },
      {
        "box": {
          "id": "pack",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            240,
            90,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "multichannelsignal"
          ],
          "text": "mc.pack~ 1"
        }
      },
      {
        "box": {
          "id": "engine",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            290,
            710,
            22
          ],
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "multichannelsignal",
            "signal",
            "",
            ""
          ],
          "text": "ec_tapdelay16_v4~ @sources 1 @taps 12 @spacing 250 @curve linear @delaydrift 0"
        }
      },
      {
        "box": {
          "id": "menu",
          "maxclass": "umenu",
          "patching_rect": [
            250,
            120,
            160,
            22
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
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
          ]
        }
      },
      {
        "box": {
          "id": "menulabel",
          "maxclass": "comment",
          "patching_rect": [
            250,
            92,
            160,
            22
          ],
          "text": "CURVE"
        }
      },
      {
        "box": {
          "id": "curve",
          "maxclass": "newobj",
          "patching_rect": [
            250,
            165,
            100,
            22
          ],
          "text": "prepend curve"
        }
      },
      {
        "box": {
          "id": "driftoff",
          "maxclass": "message",
          "patching_rect": [
            470,
            120,
            90,
            22
          ],
          "text": "delaydrift 0"
        }
      },
      {
        "box": {
          "id": "drifton",
          "maxclass": "message",
          "patching_rect": [
            575,
            120,
            135,
            22
          ],
          "text": "delaydrift 20 250"
        }
      },
      {
        "box": {
          "id": "dump",
          "maxclass": "message",
          "patching_rect": [
            470,
            165,
            50,
            22
          ],
          "text": "dump"
        }
      },
      {
        "box": {
          "id": "stop",
          "maxclass": "message",
          "patching_rect": [
            535,
            165,
            50,
            22
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "start",
          "maxclass": "message",
          "patching_rect": [
            600,
            165,
            50,
            22
          ],
          "text": "start"
        }
      },
      {
        "box": {
          "id": "unpack",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            355,
            600,
            22
          ],
          "numinlets": 1,
          "numoutlets": 12,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal"
          ],
          "text": "mc.unpack~ 12 @replicate 0"
        }
      },
      {
        "box": {
          "id": "tap0",
          "maxclass": "comment",
          "patching_rect": [
            25,
            388,
            45,
            22
          ],
          "text": "1"
        }
      },
      {
        "box": {
          "id": "meter0",
          "maxclass": "meter~",
          "patching_rect": [
            25,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap1",
          "maxclass": "comment",
          "patching_rect": [
            78,
            388,
            45,
            22
          ],
          "text": "2"
        }
      },
      {
        "box": {
          "id": "meter1",
          "maxclass": "meter~",
          "patching_rect": [
            78,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap2",
          "maxclass": "comment",
          "patching_rect": [
            131,
            388,
            45,
            22
          ],
          "text": "3"
        }
      },
      {
        "box": {
          "id": "meter2",
          "maxclass": "meter~",
          "patching_rect": [
            131,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap3",
          "maxclass": "comment",
          "patching_rect": [
            184,
            388,
            45,
            22
          ],
          "text": "4"
        }
      },
      {
        "box": {
          "id": "meter3",
          "maxclass": "meter~",
          "patching_rect": [
            184,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap4",
          "maxclass": "comment",
          "patching_rect": [
            237,
            388,
            45,
            22
          ],
          "text": "5"
        }
      },
      {
        "box": {
          "id": "meter4",
          "maxclass": "meter~",
          "patching_rect": [
            237,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap5",
          "maxclass": "comment",
          "patching_rect": [
            290,
            388,
            45,
            22
          ],
          "text": "6"
        }
      },
      {
        "box": {
          "id": "meter5",
          "maxclass": "meter~",
          "patching_rect": [
            290,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap6",
          "maxclass": "comment",
          "patching_rect": [
            343,
            388,
            45,
            22
          ],
          "text": "7"
        }
      },
      {
        "box": {
          "id": "meter6",
          "maxclass": "meter~",
          "patching_rect": [
            343,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap7",
          "maxclass": "comment",
          "patching_rect": [
            396,
            388,
            45,
            22
          ],
          "text": "8"
        }
      },
      {
        "box": {
          "id": "meter7",
          "maxclass": "meter~",
          "patching_rect": [
            396,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap8",
          "maxclass": "comment",
          "patching_rect": [
            449,
            388,
            45,
            22
          ],
          "text": "9"
        }
      },
      {
        "box": {
          "id": "meter8",
          "maxclass": "meter~",
          "patching_rect": [
            449,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap9",
          "maxclass": "comment",
          "patching_rect": [
            502,
            388,
            45,
            22
          ],
          "text": "10"
        }
      },
      {
        "box": {
          "id": "meter9",
          "maxclass": "meter~",
          "patching_rect": [
            502,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap10",
          "maxclass": "comment",
          "patching_rect": [
            555,
            388,
            45,
            22
          ],
          "text": "11"
        }
      },
      {
        "box": {
          "id": "meter10",
          "maxclass": "meter~",
          "patching_rect": [
            555,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "tap11",
          "maxclass": "comment",
          "patching_rect": [
            608,
            388,
            45,
            22
          ],
          "text": "12"
        }
      },
      {
        "box": {
          "id": "meter11",
          "maxclass": "meter~",
          "patching_rect": [
            608,
            418,
            35,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "gain",
          "maxclass": "newobj",
          "patching_rect": [
            755,
            350,
            55,
            22
          ],
          "text": "*~ 0.2"
        }
      },
      {
        "box": {
          "id": "dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            755,
            400,
            45,
            45
          ],
          "numinlets": 2,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "daclabel",
          "maxclass": "comment",
          "patching_rect": [
            815,
            401,
            210,
            40
          ],
          "text": "AUDIO ON / OFF\nMono preview to stereo 1 / 2"
        }
      },
      {
        "box": {
          "id": "done",
          "maxclass": "button",
          "patching_rect": [
            900,
            290,
            30,
            30
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "donelabel",
          "maxclass": "comment",
          "patching_rect": [
            850,
            245,
            190,
            40
          ],
          "text": "LAST TAP DONE\nVirtual base-time wait"
        }
      },
      {
        "box": {
          "id": "print",
          "maxclass": "newobj",
          "patching_rect": [
            775,
            490,
            240,
            22
          ],
          "text": "print tapdelay16_mono12"
        }
      },
      {
        "box": {
          "id": "footer",
          "maxclass": "comment",
          "patching_rect": [
            25,
            525,
            1020,
            42
          ],
          "text": "Tap 1 = 0 ms. Linear base times: 0, 250, …, 2750 ms. Completion bangs after 2750 ms.\nFixed 16-channel MC output; unpack exposes taps 1–12. No outlets are rebuilt during startup."
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "unpack",
            0
          ],
          "destination": [
            "meter0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            1
          ],
          "destination": [
            "meter1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            2
          ],
          "destination": [
            "meter2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            3
          ],
          "destination": [
            "meter3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            4
          ],
          "destination": [
            "meter4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            5
          ],
          "destination": [
            "meter5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            6
          ],
          "destination": [
            "meter6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            7
          ],
          "destination": [
            "meter7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            8
          ],
          "destination": [
            "meter8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            9
          ],
          "destination": [
            "meter9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            10
          ],
          "destination": [
            "meter10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            11
          ],
          "destination": [
            "meter11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "trigger",
            0
          ],
          "destination": [
            "triggerorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "triggerorder",
            1
          ],
          "destination": [
            "engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "triggerorder",
            0
          ],
          "destination": [
            "click",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "click",
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
            "menu",
            1
          ],
          "destination": [
            "curve",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "curve",
            0
          ],
          "destination": [
            "engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
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
            "engine",
            1
          ],
          "destination": [
            "gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gain",
            0
          ],
          "destination": [
            "dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gain",
            0
          ],
          "destination": [
            "dac",
            1
          ]
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
          ]
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
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "driftoff",
            0
          ],
          "destination": [
            "engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "drifton",
            0
          ],
          "destination": [
            "engine",
            1
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
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stop",
            0
          ],
          "destination": [
            "engine",
            1
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
            "engine",
            1
          ]
        }
      }
    ],
    "autosave": 0
  }
}
