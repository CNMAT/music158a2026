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
    "default_fontsize": 13.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 0,
    "autosave": 0,
    "rect": [
      60.0,
      60.0,
      710.0,
      330.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            18.0,
            650.0,
            28.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "EXPORT A FROZEN MARKOV PLAYER",
          "presentation": 1,
          "presentation_rect": [
            24.0,
            18.0,
            650.0,
            28.0
          ],
          "fontsize": 18.0,
          "fontface": 1
        }
      },
      {
        "box": {
          "id": "export",
          "maxclass": "button",
          "patching_rect": [
            24.0,
            66.0,
            28.0,
            28.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "presentation": 1,
          "presentation_rect": [
            24.0,
            66.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "label",
          "maxclass": "comment",
          "patching_rect": [
            64.0,
            66.0,
            620.0,
            28.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Choose a .js filename for the model currently in the editor.",
          "presentation": 1,
          "presentation_rect": [
            64.0,
            66.0,
            620.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "instructions",
          "maxclass": "comment",
          "patching_rect": [
            24.0,
            116.0,
            650.0,
            130.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Connect this abstraction's outlet to [js ec_markov_notes.js] v3.\nStop AUTO if you want a precise starting PC, then click the button.\nSave the player beside your master patch with a unique .js filename.\nIn the master patch, create [js my_markov_model.js] and send bangs.\nOutlets: pitch class | MIDI note | status. No editor is needed at playback.",
          "presentation": 1,
          "presentation_rect": [
            24.0,
            116.0,
            650.0,
            130.0
          ],
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "in",
          "maxclass": "inlet",
          "patching_rect": [
            24.0,
            275.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "comment": "bang opens the export dialog"
        }
      },
      {
        "box": {
          "id": "name",
          "maxclass": "message",
          "patching_rect": [
            200.0,
            280.0,
            290.0,
            24.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "text": "name my_markov_model.js, bang"
        }
      },
      {
        "box": {
          "id": "dialog",
          "maxclass": "newobj",
          "patching_rect": [
            200.0,
            330.0,
            120.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "text": "savedialog TEXT"
        }
      },
      {
        "box": {
          "id": "prefix",
          "maxclass": "newobj",
          "patching_rect": [
            200.0,
            375.0,
            150.0,
            23.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "text": "prepend exportjs"
        }
      },
      {
        "box": {
          "id": "out",
          "maxclass": "outlet",
          "patching_rect": [
            200.0,
            425.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "Connect to the v3 editor JS inlet"
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
            "name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "export",
            0
          ],
          "destination": [
            "name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "name",
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
            "prefix",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "prefix",
            0
          ],
          "destination": [
            "out",
            0
          ]
        }
      }
    ]
  }
}
