{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "rect": [
      80,
      80,
      1000,
      630
    ],
    "openinpresentation": 0,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            15,
            950,
            30
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 18,
          "text": "Two independent instances: different pitches, gains, spectra and preset boxes"
        }
      },
      {
        "box": {
          "id": "labelA",
          "maxclass": "comment",
          "patching_rect": [
            20,
            65,
            450,
            25
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12,
          "text": "INSTANCE A"
        }
      },
      {
        "box": {
          "id": "msgA0",
          "maxclass": "message",
          "patching_rect": [
            20,
            105,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "note-in 48 100"
        }
      },
      {
        "box": {
          "id": "msgA1",
          "maxclass": "message",
          "patching_rect": [
            20,
            140,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "gain 0.1"
        }
      },
      {
        "box": {
          "id": "msgA2",
          "maxclass": "message",
          "patching_rect": [
            20,
            175,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "trigger"
        }
      },
      {
        "box": {
          "id": "msgA3",
          "maxclass": "message",
          "patching_rect": [
            20,
            210,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "msgA4",
          "maxclass": "message",
          "patching_rect": [
            20,
            245,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "dump"
        }
      },
      {
        "box": {
          "id": "sA",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            310,
            450,
            28
          ],
          "numinlets": 2,
          "numoutlets": 15,
          "fontsize": 12,
          "text": "ec_cnmat_sinusoids_lowcpu_abs~",
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
            "signal",
            "signal",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "mA",
          "maxclass": "meter~",
          "patching_rect": [
            420,
            365,
            25,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "pA",
          "maxclass": "message",
          "patching_rect": [
            20,
            460,
            450,
            60
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": ""
        }
      },
      {
        "box": {
          "id": "logA",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            550,
            180,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "print instance_A"
        }
      },
      {
        "box": {
          "id": "labelB",
          "maxclass": "comment",
          "patching_rect": [
            510,
            65,
            450,
            25
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12,
          "text": "INSTANCE B"
        }
      },
      {
        "box": {
          "id": "msgB0",
          "maxclass": "message",
          "patching_rect": [
            510,
            105,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "note-in 67 100"
        }
      },
      {
        "box": {
          "id": "msgB1",
          "maxclass": "message",
          "patching_rect": [
            510,
            140,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "gain 0.1"
        }
      },
      {
        "box": {
          "id": "msgB2",
          "maxclass": "message",
          "patching_rect": [
            510,
            175,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "trigger"
        }
      },
      {
        "box": {
          "id": "msgB3",
          "maxclass": "message",
          "patching_rect": [
            510,
            210,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "msgB4",
          "maxclass": "message",
          "patching_rect": [
            510,
            245,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "dump"
        }
      },
      {
        "box": {
          "id": "sB",
          "maxclass": "newobj",
          "patching_rect": [
            510,
            310,
            450,
            28
          ],
          "numinlets": 2,
          "numoutlets": 15,
          "fontsize": 12,
          "text": "ec_cnmat_sinusoids_lowcpu_abs~",
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
            "signal",
            "signal",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "mB",
          "maxclass": "meter~",
          "patching_rect": [
            910,
            365,
            25,
            70
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "pB",
          "maxclass": "message",
          "patching_rect": [
            510,
            460,
            450,
            60
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": ""
        }
      },
      {
        "box": {
          "id": "logB",
          "maxclass": "newobj",
          "patching_rect": [
            510,
            550,
            180,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "fontsize": 12,
          "text": "print instance_B"
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "patching_rect": [
            20,
            595,
            950,
            35
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12,
          "text": "Enable DSP in Max\u2019s Audio Status or your parent patch. No audio device is opened by this test. Change A and confirm B\u2019s presentation, stored shapes and output gain remain unchanged."
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "msgA0",
            0
          ],
          "destination": [
            "sA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgA1",
            0
          ],
          "destination": [
            "sA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgA2",
            0
          ],
          "destination": [
            "sA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgA3",
            0
          ],
          "destination": [
            "sA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgA4",
            0
          ],
          "destination": [
            "sA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sA",
            12
          ],
          "destination": [
            "mA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sA",
            13
          ],
          "destination": [
            "pA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pA",
            0
          ],
          "destination": [
            "sA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sA",
            14
          ],
          "destination": [
            "logA",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgB0",
            0
          ],
          "destination": [
            "sB",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgB1",
            0
          ],
          "destination": [
            "sB",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgB2",
            0
          ],
          "destination": [
            "sB",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgB3",
            0
          ],
          "destination": [
            "sB",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msgB4",
            0
          ],
          "destination": [
            "sB",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sB",
            12
          ],
          "destination": [
            "mB",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sB",
            13
          ],
          "destination": [
            "pB",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pB",
            0
          ],
          "destination": [
            "sB",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sB",
            14
          ],
          "destination": [
            "logB",
            0
          ]
        }
      }
    ]
  }
}
