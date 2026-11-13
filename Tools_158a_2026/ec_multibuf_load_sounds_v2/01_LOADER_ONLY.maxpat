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
      960.0,
      740.0
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
            890.0,
            35.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "01 / LOADER ONLY — save and close isolation",
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
            880.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Uses the v2 engine and abstraction; loading behavior is unchanged. No preview, menu, embedded coll, or automatic sample loading in this test patch.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "step1",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            120.0,
            880.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "A. Open, touch nothing, then close. Record whether Max asks to save or crashes.",
          "fontname": "Arial",
          "fontsize": 14.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "step2",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            157.0,
            880.0,
            45.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "B. Reopen. Load the four test samples; wait for done. Move the marked comment, save, then close without /clear.",
          "fontname": "Arial",
          "fontsize": 14.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "step3",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            212.0,
            880.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "C. Reopen the saved file and close immediately, without loading. Test your own folder only after A–C pass.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "samples",
          "maxclass": "message",
          "patching_rect": [
            25.0,
            275.0,
            180.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "/folder ./test_samples",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "version",
          "maxclass": "message",
          "patching_rect": [
            25.0,
            315.0,
            95.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "/version",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "message",
          "patching_rect": [
            25.0,
            355.0,
            95.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "/status",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "details",
          "maxclass": "message",
          "patching_rect": [
            135.0,
            355.0,
            95.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "/dumpinfo",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "verbose",
          "maxclass": "message",
          "patching_rect": [
            25.0,
            395.0,
            110.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "/verbose 1",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "stop",
          "maxclass": "message",
          "patching_rect": [
            25.0,
            435.0,
            90.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "/stop",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "clear",
          "maxclass": "message",
          "patching_rect": [
            135.0,
            435.0,
            90.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "/clear",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "choose",
          "maxclass": "button",
          "patching_rect": [
            310.0,
            275.0,
            24.0,
            24.0
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
            346.0,
            274.0,
            535.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Choose your folder (after the small test passes)",
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
            310.0,
            315.0,
            130.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "text": "opendialog fold",
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
          "id": "folder",
          "maxclass": "newobj",
          "patching_rect": [
            310.0,
            355.0,
            132.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "prepend /folder",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "loader",
          "maxclass": "newobj",
          "patching_rect": [
            310.0,
            490.0,
            330.0,
            26.0
          ],
          "numinlets": 3,
          "numoutlets": 3,
          "text": "multibuf_js_v2",
          "fontname": "Arial",
          "fontsize": 13.0,
          "outlettype": [
            "",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "names",
          "maxclass": "newobj",
          "patching_rect": [
            260.0,
            551.0,
            160.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "print mb_test_names",
          "fontname": "Arial",
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "success",
          "maxclass": "newobj",
          "patching_rect": [
            455.0,
            551.0,
            170.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "print mb_test_success",
          "fontname": "Arial",
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "report",
          "maxclass": "newobj",
          "patching_rect": [
            655.0,
            551.0,
            165.0,
            24.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "print mb_test_status",
          "fontname": "Arial",
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "moveme",
          "maxclass": "comment",
          "patching_rect": [
            500.0,
            395.0,
            360.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "MOVE THIS COMMENT before the save test.",
          "fontname": "Arial",
          "fontsize": 14.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "caution",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            608.0,
            880.0,
            44.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Run only one test/help window at a time. Keep audio OFF. Save the TOP-LEVEL test, not runtime_buffers. Loading does not create a saved sample preset.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "failure",
          "maxclass": "comment",
          "patching_rect": [
            25.0,
            665.0,
            880.0,
            44.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "At the first failure, record the step and retain the Max .ips crash report. No automatic clean, save, close, quit, or retry commands are sent.",
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
            "samples",
            0
          ],
          "destination": [
            "loader",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "version",
            0
          ],
          "destination": [
            "loader",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "status",
            0
          ],
          "destination": [
            "loader",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "details",
            0
          ],
          "destination": [
            "loader",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "verbose",
            0
          ],
          "destination": [
            "loader",
            0
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
            "loader",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clear",
            0
          ],
          "destination": [
            "loader",
            0
          ]
        }
      },
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
            "folder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "folder",
            0
          ],
          "destination": [
            "loader",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loader",
            0
          ],
          "destination": [
            "names",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loader",
            1
          ],
          "destination": [
            "success",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "loader",
            2
          ],
          "destination": [
            "report",
            0
          ]
        }
      }
    ],
    "dependency_cache": [
      {
        "name": "multibuf_js_v2.maxpat",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "multibuf_js_v2.js",
        "type": "TEXT",
        "implicit": 1
      }
    ]
  }
}
