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
      100.0,
      100.0,
      840.0,
      610.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 13.0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "gridsize": [
      15.0,
      15.0
    ],
    "gridsnaponopen": 0,
    "objectsnaponopen": 1,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            15.0,
            760.0,
            32.0
          ],
          "text": "multibuf_js_v2 | native-buffer host",
          "fontsize": 20.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "desc",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            52.0,
            760.0,
            40.0
          ],
          "text": "Version 2.0.0. No user arguments. Keep this abstraction and multibuf_js_v2.js together.",
          "fontsize": 13.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "in-command",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            35.0,
            112.0,
            30.0,
            30.0
          ],
          "outlettype": [
            ""
          ],
          "comment": "Commands: /file, /folder, /clear, /mono ..."
        }
      },
      {
        "box": {
          "id": "in-query",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            285.0,
            112.0,
            30.0,
            30.0
          ],
          "outlettype": [
            ""
          ],
          "comment": "Query: dump, length, buffer name, or 1-based index"
        }
      },
      {
        "box": {
          "id": "in-verbose",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            535.0,
            112.0,
            30.0,
            30.0
          ],
          "outlettype": [
            ""
          ],
          "comment": "Verbose printing: 0 off / 1 on (default 0)"
        }
      },
      {
        "box": {
          "id": "command-defer",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            35.0,
            165.0,
            80.0,
            23.0
          ],
          "text": "deferlow",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "js",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 3,
          "patching_rect": [
            35.0,
            210.0,
            380.0,
            23.0
          ],
          "text": "js multibuf_js_v2.js #0",
          "outlettype": [
            "",
            "",
            ""
          ],
          "varname": "mb_js"
        }
      },
      {
        "box": {
          "id": "runtime",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            495.0,
            235.0,
            230.0,
            23.0
          ],
          "text": "p runtime_buffers",
          "outlettype": [
            ""
          ],
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
              80.0,
              80.0,
              780.0,
              520.0
            ],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 13.0,
            "default_fontname": "Arial",
            "gridonopen": 0,
            "gridsize": [
              15.0,
              15.0
            ],
            "gridsnaponopen": 0,
            "objectsnaponopen": 1,
            "enablehscroll": 1,
            "enablevscroll": 1,
            "boxes": [
              {
                "box": {
                  "id": "feedback",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25.0,
                    20.0,
                    30.0,
                    30.0
                  ],
                  "varname": "mb_feedback",
                  "comment": "Private native completion callbacks"
                }
              }
            ],
            "lines": []
          },
          "varname": "mb_runtime"
        }
      },
      {
        "box": {
          "id": "callback-defer",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            495.0,
            280.0,
            80.0,
            23.0
          ],
          "text": "deferlow",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "runtime-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            495.0,
            321.0,
            295.0,
            57.0
          ],
          "text": "Runtime buffers are created here. Do not edit or save these generated boxes as an instrument preset.",
          "fontsize": 12.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "out-names",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            35.0,
            380.0,
            30.0,
            30.0
          ],
          "comment": "Names of successful loads / query results"
        }
      },
      {
        "box": {
          "id": "out-success",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            285.0,
            380.0,
            30.0,
            30.0
          ],
          "comment": "One bang per successful file load, not per folder"
        }
      },
      {
        "box": {
          "id": "out-status",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            535.0,
            410.0,
            30.0,
            30.0
          ],
          "comment": "Status: loaded, done, error, menu, settings ..."
        }
      },
      {
        "box": {
          "id": "labels",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25.0,
            440.0,
            770.0,
            22.0
          ],
          "text": "Names / query output                     Successful-file bang                         Structured status",
          "fontsize": 12.0,
          "fontface": 0
        }
      },
      {
        "box": {
          "id": "lifecycle-freebang",
          "maxclass": "newobj",
          "text": "freebang",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            35.0,
            486.0,
            78.0,
            23.0
          ]
        }
      },
      {
        "box": {
          "id": "lifecycle-shutdown",
          "maxclass": "message",
          "text": "_mbshutdown",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            35.0,
            526.0,
            116.0,
            23.0
          ]
        }
      },
      {
        "box": {
          "id": "lifecycle-note",
          "maxclass": "comment",
          "text": "Direct shutdown signal: cancel JS tasks; Max frees native buffers. Do not defer or replace freebang with closebang.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            185.0,
            486.0,
            590.0,
            62.0
          ],
          "fontsize": 12.0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "in-command",
            0
          ],
          "destination": [
            "command-defer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "command-defer",
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
            "in-query",
            0
          ],
          "destination": [
            "js",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "in-verbose",
            0
          ],
          "destination": [
            "js",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "runtime",
            0
          ],
          "destination": [
            "callback-defer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "callback-defer",
            0
          ],
          "destination": [
            "js",
            1
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
            "out-names",
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
            "out-success",
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
            "out-status",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lifecycle-freebang",
            0
          ],
          "destination": [
            "lifecycle-shutdown",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lifecycle-shutdown",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      }
    ],
    "description": "Load sample files into native buffer~ objects named after their filenames.",
    "digest": "JavaScript-managed filename-based sample buffers."
  }
}
