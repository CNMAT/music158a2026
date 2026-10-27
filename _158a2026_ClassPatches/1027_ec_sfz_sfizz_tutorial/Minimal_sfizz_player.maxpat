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
      1020.0,
      740.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 13.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "gridsize": [
      15.0,
      15.0
    ],
    "toolbarvisible": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "patching_rect": [
            20.0,
            18.0,
            960.0,
            35.0
          ],
          "text": "MINIMUM NATIVE MAX PATCH  /  MIDI -> sfizz~ -> audio",
          "fontsize": 21.0,
          "fontface": 1,
          "presentation": 1,
          "presentation_rect": [
            20.0,
            18.0,
            960.0,
            35.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "patching_rect": [
            20.0,
            65.0,
            960.0,
            42.0
          ],
          "text": "This independent example shows the actual event path. Stop the main patch before using it. It loads 02a_range.sfz.",
          "fontsize": 14.0,
          "fontface": 0,
          "presentation": 1,
          "presentation_rect": [
            20.0,
            65.0,
            960.0,
            42.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "patching_rect": [
            20.0,
            112.0,
            960.0,
            44.0
          ],
          "text": "1. Click read to load.  2. Turn audio on.  3. Click a pitch.  4. Compare note-on and note-off in the message monitor.",
          "fontsize": 14.0,
          "fontface": 0,
          "presentation": 1,
          "presentation_rect": [
            20.0,
            112.0,
            960.0,
            44.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "message",
          "patching_rect": [
            20.0,
            185.0,
            180.0,
            24.0
          ],
          "text": "read 02a_range.sfz"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "message",
          "patching_rect": [
            20.0,
            255.0,
            45.0,
            24.0
          ],
          "text": "48"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "message",
          "patching_rect": [
            85.0,
            255.0,
            45.0,
            24.0
          ],
          "text": "60"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "message",
          "patching_rect": [
            150.0,
            255.0,
            45.0,
            24.0
          ],
          "text": "64"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "message",
          "patching_rect": [
            215.0,
            255.0,
            45.0,
            24.0
          ],
          "text": "67"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "message",
          "patching_rect": [
            280.0,
            255.0,
            45.0,
            24.0
          ],
          "text": "72"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "newobj",
          "patching_rect": [
            20.0,
            310.0,
            170.0,
            24.0
          ],
          "text": "makenote 100 400",
          "numinlets": 3,
          "numoutlets": 2
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "patching_rect": [
            20.0,
            365.0,
            100.0,
            24.0
          ],
          "text": "pack 0 0",
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "newobj",
          "patching_rect": [
            20.0,
            415.0,
            205.0,
            24.0
          ],
          "text": "prepend midievent 144",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "patching_rect": [
            20.0,
            505.0,
            190.0,
            24.0
          ],
          "text": "sfizz~ @volume -12",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "message",
          "patching_rect": [
            300.0,
            415.0,
            250.0,
            24.0
          ],
          "text": "midievent 144 60 100"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "ezdac~",
          "patching_rect": [
            20.0,
            585.0,
            45.0,
            45.0
          ],
          "numinlets": 2,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "comment",
          "patching_rect": [
            300.0,
            300.0,
            670.0,
            70.0
          ],
          "text": "makenote outputs velocity FIRST, then pitch.\npack stores velocity in its right inlet before pitch triggers the list.",
          "fontsize": 14.0,
          "fontface": 0,
          "presentation": 1,
          "presentation_rect": [
            300.0,
            300.0,
            670.0,
            70.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "comment",
          "patching_rect": [
            580.0,
            397.0,
            405.0,
            110.0
          ],
          "text": "midievent 144 60 100 = note 60 on\nmidievent 144 60 0 = note 60 off\nAn alternative is makenote directly into the two sfizz~ inlets:\npitch to left; velocity to right.",
          "fontsize": 14.0,
          "fontface": 0,
          "presentation": 1,
          "presentation_rect": [
            580.0,
            397.0,
            405.0,
            110.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "message",
          "patching_rect": [
            300.0,
            505.0,
            90.0,
            24.0
          ],
          "text": "readagain"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "comment",
          "patching_rect": [
            410.0,
            500.0,
            550.0,
            50.0
          ],
          "text": "Double-click sfizz~ to view/edit its file.\nAfter a disk edit, readagain reloads the last SFZ.",
          "fontsize": 14.0,
          "fontface": 0,
          "presentation": 1,
          "presentation_rect": [
            410.0,
            500.0,
            550.0,
            50.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "message",
          "patching_rect": [
            300.0,
            585.0,
            195.0,
            24.0
          ],
          "text": "midievent 176 64 127"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "message",
          "patching_rect": [
            510.0,
            585.0,
            180.0,
            24.0
          ],
          "text": "midievent 176 64 0"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "message",
          "patching_rect": [
            300.0,
            640.0,
            650.0,
            24.0
          ],
          "text": "midievent 176 64 0, midievent 176 123 0, midievent 176 120 0"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "comment",
          "patching_rect": [
            300.0,
            685.0,
            680.0,
            27.0
          ],
          "text": "Pedal down / up above. Panic below: pedal up, all notes off, all sound off.",
          "fontsize": 13.0,
          "fontface": 0,
          "presentation": 1,
          "presentation_rect": [
            300.0,
            685.0,
            680.0,
            27.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "patching_rect": [
            20.0,
            665.0,
            90.0,
            24.0
          ],
          "text": "closebang",
          "numinlets": 1,
          "numoutlets": 1
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "obj-5",
            0
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-6",
            0
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-7",
            0
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-8",
            0
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-9",
            0
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-10",
            1
          ],
          "destination": [
            "obj-11",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-10",
            0
          ],
          "destination": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-11",
            0
          ],
          "destination": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-12",
            0
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-12",
            0
          ],
          "destination": [
            "obj-14",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-4",
            0
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-13",
            0
          ],
          "destination": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-13",
            1
          ],
          "destination": [
            "obj-15",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-18",
            0
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-20",
            0
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-21",
            0
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            0
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-24",
            0
          ],
          "destination": [
            "obj-22",
            0
          ]
        }
      }
    ]
  }
}