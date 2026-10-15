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
    "rect": [
      70.0,
      90.0,
      900.0,
      630.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontname": "Arial",
    "default_fontsize": 13.0,
    "default_fontface": 0,
    "gridonopen": 0,
    "gridsize": [
      15.0,
      15.0
    ],
    "gridsnaponopen": 0,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "boxes": [
      {
        "box": {
          "id": "head",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            18.0,
            840.0,
            35.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "02 / NATIVE BUFFER CONTROL",
          "fontname": "Arial",
          "fontsize": 22.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "scope",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            65.0,
            835.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Optional comparison: one stock buffer~, no JavaScript, dynamic patching, playback, embedded coll, or automatic loading.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "steps",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            120.0,
            835.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Open and close untouched. Then reopen, choose one audio file, wait for mb_native_complete: bang, move the marked comment, save, and close.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "meaning",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            181.0,
            835.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "A native-control crash would show that the loader script is not required for that reproduction. A pass does not prove the loader is safe.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "choose",
          "maxclass": "button",
          "patching_rect": [
            25.0,
            255.0,
            26.0,
            26.0
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
          "id": "choose-label",
          "maxclass": "comment",
          "patching_rect": [
            68.0,
            253.0,
            670.0,
            28.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Choose one test file or one of your samples",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "dialog",
          "maxclass": "newobj",
          "patching_rect": [
            25.0,
            304.0,
            105.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "text": "opendialog",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            "symbol",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "read",
          "maxclass": "newobj",
          "patching_rect": [
            25.0,
            354.0,
            145.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "prepend replace",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "buffer",
          "maxclass": "newobj",
          "patching_rect": [
            25.0,
            410.0,
            250.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "text": "buffer~ #0-mb-native-control",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            "float",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "done",
          "maxclass": "newobj",
          "patching_rect": [
            350.0,
            410.0,
            210.0,
            25.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "print mb_native_complete",
          "fontname": "Arial",
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "moveme",
          "maxclass": "comment",
          "patching_rect": [
            430.0,
            304.0,
            395.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "MOVE THIS COMMENT before saving.",
          "fontname": "Arial",
          "fontsize": 14.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            485.0,
            835.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Double-click the buffer~ after loading to inspect it. Keep other test/help windows closed and audio off. This test does not load an entire folder.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "report",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            550.0,
            835.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Record: unopened / no samples / after load / during save / during close. Capture the Max crash report if it fails.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "choose",
            0
          ],
          "destination": [
            "dialog",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dialog",
            0
          ],
          "destination": [
            "read",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "read",
            0
          ],
          "destination": [
            "buffer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "buffer",
            1
          ],
          "destination": [
            "done",
            0
          ]
        }
      }
    ]
  }
}
