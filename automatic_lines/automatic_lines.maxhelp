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
    "rect": [100.0, 100.0, 900.0, 620.0],
    "openrect": [100.0, 100.0, 900.0, 620.0],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [15.0, 15.0],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "description": "Independent internally interpolated random control ramps",
    "digest": "Create 1 to 20 independent random up-and-down control lines",
    "tags": "random line ramp control multivoice",
    "boxes": [
      {
        "box": {
          "id": "obj-title",
          "maxclass": "comment",
          "text": "automatic_lines.js",
          "fontsize": 24.0,
          "fontface": 1,
          "patching_rect": [30.0, 20.0, 310.0, 34.0]
        }
      },
      {
        "box": {
          "id": "obj-subtitle",
          "maxclass": "comment",
          "text": "Independent random control ramps plus an updating list of all current values",
          "fontsize": 14.0,
          "textcolor": [0.35, 0.35, 0.35, 1.0],
          "patching_rect": [30.0, 57.0, 700.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-about",
          "maxclass": "comment",
          "text": "Creation arguments: voices (1–20), minimum ramp time, global wait time at 0.0, and maximum ramp time—all times in milliseconds. Each voice has a float outlet; one additional rightmost outlet sends the complete current-value list.",
          "linecount": 2,
          "patching_rect": [30.0, 88.0, 825.0, 38.0]
        }
      },
      {
        "box": {
          "id": "obj-controls-label",
          "maxclass": "comment",
          "text": "CONTROL MESSAGES",
          "fontface": 1,
          "patching_rect": [30.0, 153.0, 150.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-bang",
          "maxclass": "button",
          "patching_rect": [30.0, 183.0, 24.0, 24.0]
        }
      },
      {
        "box": {
          "id": "obj-bang-label",
          "maxclass": "comment",
          "text": "bang restarts all voices",
          "patching_rect": [61.0, 185.0, 155.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-start",
          "maxclass": "message",
          "text": "start",
          "patching_rect": [30.0, 222.0, 42.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-stop",
          "maxclass": "message",
          "text": "stop",
          "patching_rect": [82.0, 222.0, 39.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-restart",
          "maxclass": "message",
          "text": "restart",
          "patching_rect": [131.0, 222.0, 51.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-range",
          "maxclass": "message",
          "text": "range 250 1200",
          "patching_rect": [30.0, 261.0, 107.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-range-label",
          "maxclass": "comment",
          "text": "new timing boundaries",
          "patching_rect": [146.0, 263.0, 145.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-waittime",
          "maxclass": "message",
          "text": "waittime 1000",
          "patching_rect": [30.0, 297.0, 90.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-waittime-label",
          "maxclass": "comment",
          "text": "changes the global wait for future cycles",
          "patching_rect": [129.0, 299.0, 230.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-js-label",
          "maxclass": "comment",
          "text": "4 voice outlets + 1 list outlet • 500–2000 ms ramps • 1000 ms wait",
          "fontface": 1,
          "patching_rect": [375.0, 153.0, 250.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-js",
          "maxclass": "newobj",
          "text": "js automatic_lines.js 4 500 1000 2000",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["float", "float", "float", "float", "list"],
          "patching_rect": [375.0, 183.0, 238.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-direct-note",
          "maxclass": "comment",
          "text": "The first four outlets below are connected directly to displays:",
          "patching_rect": [375.0, 220.0, 350.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-v1-label",
          "maxclass": "comment",
          "text": "VOICE 1",
          "fontface": 1,
          "patching_rect": [375.0, 260.0, 70.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-v2-label",
          "maxclass": "comment",
          "text": "VOICE 2",
          "fontface": 1,
          "patching_rect": [500.0, 260.0, 70.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-v3-label",
          "maxclass": "comment",
          "text": "VOICE 3",
          "fontface": 1,
          "patching_rect": [625.0, 260.0, 70.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-v4-label",
          "maxclass": "comment",
          "text": "VOICE 4",
          "fontface": 1,
          "patching_rect": [750.0, 260.0, 70.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-float1",
          "maxclass": "flonum",
          "format": 6,
          "minimum": 0.0,
          "maximum": 1.0,
          "patching_rect": [375.0, 295.0, 72.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-float2",
          "maxclass": "flonum",
          "format": 6,
          "minimum": 0.0,
          "maximum": 1.0,
          "patching_rect": [500.0, 295.0, 72.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-float3",
          "maxclass": "flonum",
          "format": 6,
          "minimum": 0.0,
          "maximum": 1.0,
          "patching_rect": [625.0, 295.0, 72.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-float4",
          "maxclass": "flonum",
          "format": 6,
          "minimum": 0.0,
          "maximum": 1.0,
          "patching_rect": [750.0, 295.0, 72.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-operation-title",
          "maxclass": "comment",
          "text": "OPERATION",
          "fontface": 1,
          "patching_rect": [375.0, 350.0, 100.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-list-title",
          "maxclass": "comment",
          "text": "RIGHTMOST OUTLET — CURRENT VALUES LIST",
          "fontface": 1,
          "patching_rect": [500.0, 470.0, 280.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-list-display",
          "maxclass": "message",
          "text": "0. 0. 0. 0.",
          "patching_rect": [500.0, 500.0, 300.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-list-note",
          "maxclass": "comment",
          "text": "One item per voice, updated at the same interval as the dedicated float outlets.",
          "linecount": 2,
          "patching_rect": [500.0, 532.0, 315.0, 36.0]
        }
      },
      {
        "box": {
          "id": "obj-operation",
          "maxclass": "comment",
          "text": "Each voice rises to a random destination and returns to 0.0 using the same random ramp time for both legs. It then remains at 0.0 for the global wait before starting a new cycle. Set the wait argument to 0 for continuous looping.",
          "linecount": 4,
          "patching_rect": [375.0, 378.0, 430.0, 66.0]
        }
      },
      {
        "box": {
          "id": "obj-usage-title",
          "maxclass": "comment",
          "text": "USAGE",
          "fontface": 1,
          "patching_rect": [30.0, 360.0, 80.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-usage",
          "maxclass": "comment",
          "text": "Keep the .js file in the same folder as this helpfile, or place it in Max's search path. Change the first creation argument to set the outlet count. Max fixes the outlet count when the js object is instantiated, so the number of voices cannot be changed while it runs.",
          "linecount": 5,
          "patching_rect": [30.0, 388.0, 285.0, 82.0]
        }
      },
      {
        "box": {
          "id": "obj-example-title",
          "maxclass": "comment",
          "text": "CREATION EXAMPLES",
          "fontface": 1,
          "patching_rect": [30.0, 495.0, 150.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-example1",
          "maxclass": "comment",
          "text": "js automatic_lines.js 1 100 0 800       → continuous, 100–800 ms ramps",
          "patching_rect": [30.0, 523.0, 390.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-example2",
          "maxclass": "comment",
          "text": "js automatic_lines.js 20 2000 1000 10000 → 20 outlets, 1-second waits",
          "patching_rect": [30.0, 549.0, 430.0, 20.0]
        }
      }
    ],
    "lines": [
      {"patchline": {"source": ["obj-bang", 0], "destination": ["obj-js", 0]}},
      {"patchline": {"source": ["obj-start", 0], "destination": ["obj-js", 0]}},
      {"patchline": {"source": ["obj-stop", 0], "destination": ["obj-js", 0]}},
      {"patchline": {"source": ["obj-restart", 0], "destination": ["obj-js", 0]}},
      {"patchline": {"source": ["obj-range", 0], "destination": ["obj-js", 0]}},
      {"patchline": {"source": ["obj-waittime", 0], "destination": ["obj-js", 0]}},
      {"patchline": {"source": ["obj-js", 0], "destination": ["obj-float1", 0]}},
      {"patchline": {"source": ["obj-js", 1], "destination": ["obj-float2", 0]}},
      {"patchline": {"source": ["obj-js", 2], "destination": ["obj-float3", 0]}},
      {"patchline": {"source": ["obj-js", 3], "destination": ["obj-float4", 0]}},
      {"patchline": {"source": ["obj-js", 4], "destination": ["obj-list-display", 0]}}
    ],
    "autosave": 0
  }
}
