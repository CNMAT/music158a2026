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
      50.0,
      70.0,
      750.0,
      360.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
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
          "id": "obj-1",
          "maxclass": "inlet",
          "patching_rect": [
            40.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "comment": "Midicents / bang / messages",
          "index": 1
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "inlet",
          "patching_rect": [
            360.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "comment": "Node weights / configuration",
          "index": 2
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "patching_rect": [
            125.0,
            145.0,
            235.0,
            22.0
          ],
          "text": "js ec_scale_tuning_mapper.js",
          "numinlets": 2,
          "numoutlets": 4,
          "varname": "engine"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "outlet",
          "patching_rect": [
            40.0,
            260.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Midicents",
          "index": 1
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "comment",
          "patching_rect": [
            40.0,
            300.0,
            165.0,
            25.0
          ],
          "text": "Midicents",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "outlet",
          "patching_rect": [
            215.0,
            260.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Hz",
          "index": 2
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "comment",
          "patching_rect": [
            215.0,
            300.0,
            165.0,
            25.0
          ],
          "text": "Hz",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "outlet",
          "patching_rect": [
            390.0,
            260.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Tone / MIDI metadata",
          "index": 3
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "comment",
          "patching_rect": [
            390.0,
            300.0,
            165.0,
            25.0
          ],
          "text": "Tone / MIDI metadata",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "outlet",
          "patching_rect": [
            565.0,
            260.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Status",
          "index": 4
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "comment",
          "patching_rect": [
            565.0,
            300.0,
            165.0,
            25.0
          ],
          "text": "Status",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 12.0,
          "fontface": 0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "obj-1",
            0
          ],
          "destination": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            0
          ],
          "destination": [
            "obj-3",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-3",
            0
          ],
          "destination": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-3",
            1
          ],
          "destination": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-3",
            2
          ],
          "destination": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-3",
            3
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      }
    ]
  }
}
