{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      80.0,
      60.0,
      1340.0,
      900.0
    ],
    "openinpresentation": 1,
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
            1240.0,
            28.0
          ],
          "fontsize": 22,
          "presentation": 1,
          "presentation_rect": [
            20.0,
            15.0,
            1240.0,
            28.0
          ],
          "text": "SEND MESSAGE SPACE \u2014 v15"
        }
      },
      {
        "box": {
          "id": "intro",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            50.0,
            1250.0,
            25.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            50.0,
            1250.0,
            25.0
          ],
          "text": "Edit a number \u2192 20 ms ramp \u2192 named message \u2192 receive in the synth. Menus/counts/switches are discrete. Scroll for all controls."
        }
      },
      {
        "box": {
          "id": "intro2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            78.0,
            1250.0,
            25.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            78.0,
            1250.0,
            25.0
          ],
          "text": "Opening this window sends nothing. Click a named message to resend it. Shape indices and registration names are listed in the control reference."
        }
      },
      {
        "box": {
          "id": "group-0",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            140,
            420,
            24
          ],
          "fontsize": 16,
          "text": "CORE",
          "presentation": 1,
          "presentation_rect": [
            20,
            118,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            174,
            420,
            22
          ],
          "text": "Harmonic partial count",
          "presentation": 1,
          "presentation_rect": [
            20,
            152,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            232,
            415,
            22
          ],
          "text": "Partial_Count_v15 32",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            210,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            316,
            300,
            22
          ],
          "text": "prepend Partial_Count_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            348,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            348,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            380,
            300,
            22
          ],
          "text": "route Partial_Count_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            412,
            310,
            22
          ],
          "text": "forward Partial_Count_v15"
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            202,
            85,
            22
          ],
          "minimum": 2,
          "maximum": 256,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            180,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            450,
            170,
            22
          ],
          "text": "loadmess set 32",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            125,
            202,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            125,
            180,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            482,
            310,
            22
          ],
          "text": "receive Partial_Count_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Count_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            482,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            564,
            420,
            22
          ],
          "text": "Source base Hz",
          "presentation": 1,
          "presentation_rect": [
            20,
            252,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            622,
            415,
            22
          ],
          "text": "Source_Base_Hz_v15 55",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            310,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            706,
            300,
            22
          ],
          "text": "prepend Source_Base_Hz_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            738,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            738,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            770,
            300,
            22
          ],
          "text": "route Source_Base_Hz_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            802,
            310,
            22
          ],
          "text": "forward Source_Base_Hz_v15"
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            592,
            85,
            22
          ],
          "minimum": 1,
          "maximum": 23000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            280,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            840,
            170,
            22
          ],
          "text": "loadmess set 55",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            674,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            674,
            85,
            22
          ],
          "text": "f 55.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            674,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            592,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            280,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            592,
            190,
            22
          ],
          "text": "line 55.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            280,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            872,
            310,
            22
          ],
          "text": "receive Source_Base_Hz_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Source_Base_Hz_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            872,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            954,
            420,
            22
          ],
          "text": "Maximum drift (ERB units)",
          "presentation": 1,
          "presentation_rect": [
            20,
            352,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1012,
            415,
            22
          ],
          "text": "Max_Drift_v15 0.5",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            410,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1096,
            300,
            22
          ],
          "text": "prepend Max_Drift_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1128,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            1128,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1160,
            300,
            22
          ],
          "text": "route Max_Drift_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1192,
            310,
            22
          ],
          "text": "forward Max_Drift_v15"
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            982,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            380,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1230,
            170,
            22
          ],
          "text": "loadmess set 0.5",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1064,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            1064,
            85,
            22
          ],
          "text": "f 0.5",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            1064,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            982,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            380,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            982,
            190,
            22
          ],
          "text": "line 0.5 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            380,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1262,
            310,
            22
          ],
          "text": "receive Max_Drift_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Max_Drift_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            1262,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1344,
            420,
            22
          ],
          "text": "Output gain dB",
          "presentation": 1,
          "presentation_rect": [
            20,
            452,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1402,
            415,
            22
          ],
          "text": "Output_Gain_dB_v15 -65",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            510,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1486,
            300,
            22
          ],
          "text": "prepend Output_Gain_dB_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1518,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            1518,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1550,
            300,
            22
          ],
          "text": "route Output_Gain_dB_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1582,
            310,
            22
          ],
          "text": "forward Output_Gain_dB_v15"
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1372,
            85,
            22
          ],
          "minimum": -70,
          "maximum": 6,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            480,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1620,
            170,
            22
          ],
          "text": "loadmess set -65",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1454,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            1454,
            85,
            22
          ],
          "text": "f -65.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            1454,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            1372,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            480,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            1372,
            190,
            22
          ],
          "text": "line -65.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            480,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1652,
            310,
            22
          ],
          "text": "receive Output_Gain_dB_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Output_Gain_dB_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            1652,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1734,
            420,
            22
          ],
          "text": "Audio engine 0/1",
          "presentation": 1,
          "presentation_rect": [
            20,
            552,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1792,
            415,
            22
          ],
          "text": "Audio_On_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            610,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1876,
            300,
            22
          ],
          "text": "prepend Audio_On_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1908,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            1908,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1940,
            300,
            22
          ],
          "text": "route Audio_On_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1972,
            310,
            22
          ],
          "text": "forward Audio_On_v15"
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1762,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            580,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2010,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            125,
            1762,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            125,
            580,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2042,
            310,
            22
          ],
          "text": "receive Audio_On_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Audio_On_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            2042,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            2124,
            420,
            22
          ],
          "text": "Envelope loop 0/1",
          "presentation": 1,
          "presentation_rect": [
            20,
            652,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2182,
            415,
            22
          ],
          "text": "Envelope_Loop_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            710,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2266,
            300,
            22
          ],
          "text": "prepend Envelope_Loop_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2298,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            2298,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2330,
            300,
            22
          ],
          "text": "route Envelope_Loop_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            2362,
            310,
            22
          ],
          "text": "forward Envelope_Loop_v15"
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2152,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            680,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2400,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            125,
            2152,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            125,
            680,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2432,
            310,
            22
          ],
          "text": "receive Envelope_Loop_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Loop_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            2432,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            2514,
            420,
            22
          ],
          "text": "Trigger stored envelope",
          "presentation": 1,
          "presentation_rect": [
            20,
            752,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2572,
            415,
            22
          ],
          "text": "Envelope_Trigger_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            810,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2656,
            300,
            22
          ],
          "text": "prepend Envelope_Trigger_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2688,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            2688,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2720,
            300,
            22
          ],
          "text": "route Envelope_Trigger_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            2752,
            310,
            22
          ],
          "text": "forward Envelope_Trigger_v15"
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2542,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            780,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Envelope_Trigger_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            60,
            2542,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            60,
            780,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "group-7",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            2904,
            420,
            24
          ],
          "fontsize": 16,
          "text": "SHAPES",
          "presentation": 1,
          "presentation_rect": [
            20,
            852,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            2938,
            420,
            22
          ],
          "text": "Drift shape index 0\u201323",
          "presentation": 1,
          "presentation_rect": [
            20,
            886,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2996,
            415,
            22
          ],
          "text": "Drift_Shape_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            944,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3080,
            300,
            22
          ],
          "text": "prepend Drift_Shape_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3112,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            3112,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3144,
            300,
            22
          ],
          "text": "route Drift_Shape_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            3176,
            310,
            22
          ],
          "text": "forward Drift_Shape_v15"
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2966,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            914,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3214,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            125,
            2966,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            125,
            914,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3246,
            310,
            22
          ],
          "text": "receive Drift_Shape_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Shape_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            3246,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            3328,
            420,
            22
          ],
          "text": "Drift shape morph ms",
          "presentation": 1,
          "presentation_rect": [
            20,
            986,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3386,
            415,
            22
          ],
          "text": "Drift_Morph_ms_v15 1000",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1044,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3470,
            300,
            22
          ],
          "text": "prepend Drift_Morph_ms_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3502,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            3502,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3534,
            300,
            22
          ],
          "text": "route Drift_Morph_ms_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            3566,
            310,
            22
          ],
          "text": "forward Drift_Morph_ms_v15"
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3356,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 600000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1014,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3604,
            170,
            22
          ],
          "text": "loadmess set 1000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3438,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            3438,
            85,
            22
          ],
          "text": "f 1000.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            3438,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            3356,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            1014,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            3356,
            190,
            22
          ],
          "text": "line 1000.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            1014,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3636,
            310,
            22
          ],
          "text": "receive Drift_Morph_ms_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Morph_ms_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            3636,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            3718,
            420,
            22
          ],
          "text": "Amplitude shape index 0\u201323",
          "presentation": 1,
          "presentation_rect": [
            20,
            1086,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3776,
            415,
            22
          ],
          "text": "Amplitude_Shape_v15 3",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1144,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3860,
            300,
            22
          ],
          "text": "prepend Amplitude_Shape_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3892,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            3892,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3924,
            300,
            22
          ],
          "text": "route Amplitude_Shape_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            3956,
            310,
            22
          ],
          "text": "forward Amplitude_Shape_v15"
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3746,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1114,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3994,
            170,
            22
          ],
          "text": "loadmess set 3",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            125,
            3746,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            125,
            1114,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4026,
            310,
            22
          ],
          "text": "receive Amplitude_Shape_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Shape_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            4026,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            4108,
            420,
            22
          ],
          "text": "Amplitude shape morph ms",
          "presentation": 1,
          "presentation_rect": [
            20,
            1186,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4166,
            415,
            22
          ],
          "text": "Amplitude_Morph_ms_v15 1000",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1244,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4250,
            300,
            22
          ],
          "text": "prepend Amplitude_Morph_ms_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4282,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            4282,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4314,
            300,
            22
          ],
          "text": "route Amplitude_Morph_ms_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            4346,
            310,
            22
          ],
          "text": "forward Amplitude_Morph_ms_v15"
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4136,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 600000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1214,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4384,
            170,
            22
          ],
          "text": "loadmess set 1000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4218,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            4218,
            85,
            22
          ],
          "text": "f 1000.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            4218,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            4136,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            1214,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            4136,
            190,
            22
          ],
          "text": "line 1000.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            1214,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4416,
            310,
            22
          ],
          "text": "receive Amplitude_Morph_ms_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Morph_ms_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            4416,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            4498,
            420,
            22
          ],
          "text": "Anchor shape index 0\u201323",
          "presentation": 1,
          "presentation_rect": [
            20,
            1286,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4556,
            415,
            22
          ],
          "text": "Anchor_Shape_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1344,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4640,
            300,
            22
          ],
          "text": "prepend Anchor_Shape_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4672,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            4672,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4704,
            300,
            22
          ],
          "text": "route Anchor_Shape_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            4736,
            310,
            22
          ],
          "text": "forward Anchor_Shape_v15"
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4526,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1314,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4774,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            125,
            4526,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            125,
            1314,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4806,
            310,
            22
          ],
          "text": "receive Anchor_Shape_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Shape_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            4806,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            4888,
            420,
            22
          ],
          "text": "Anchor shape morph ms",
          "presentation": 1,
          "presentation_rect": [
            20,
            1386,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4946,
            415,
            22
          ],
          "text": "Anchor_Morph_ms_v15 1000",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1444,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5030,
            300,
            22
          ],
          "text": "prepend Anchor_Morph_ms_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5062,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            5062,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5094,
            300,
            22
          ],
          "text": "route Anchor_Morph_ms_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            5126,
            310,
            22
          ],
          "text": "forward Anchor_Morph_ms_v15"
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4916,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 600000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1414,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5164,
            170,
            22
          ],
          "text": "loadmess set 1000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4998,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            4998,
            85,
            22
          ],
          "text": "f 1000.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            4998,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            4916,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            1414,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            4916,
            190,
            22
          ],
          "text": "line 1000.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            1414,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5196,
            310,
            22
          ],
          "text": "receive Anchor_Morph_ms_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Morph_ms_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            5196,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "group-13",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            5278,
            420,
            24
          ],
          "fontsize": 16,
          "text": "RETUNING",
          "presentation": 1,
          "presentation_rect": [
            20,
            1486,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            5312,
            420,
            22
          ],
          "text": "Retuning mode 0/1/2",
          "presentation": 1,
          "presentation_rect": [
            20,
            1520,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5370,
            415,
            22
          ],
          "text": "Retuning_Mode_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1578,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5454,
            300,
            22
          ],
          "text": "prepend Retuning_Mode_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5486,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            5486,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5518,
            300,
            22
          ],
          "text": "route Retuning_Mode_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            5550,
            310,
            22
          ],
          "text": "forward Retuning_Mode_v15"
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5340,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 2,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1548,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5588,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            125,
            5340,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            125,
            1548,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5620,
            310,
            22
          ],
          "text": "receive Retuning_Mode_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retuning_Mode_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            5620,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            5702,
            420,
            22
          ],
          "text": "Target base Hz",
          "presentation": 1,
          "presentation_rect": [
            20,
            1620,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5760,
            415,
            22
          ],
          "text": "Target_Base_Hz_v15 110",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1678,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5844,
            300,
            22
          ],
          "text": "prepend Target_Base_Hz_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5876,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            5876,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5908,
            300,
            22
          ],
          "text": "route Target_Base_Hz_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            5940,
            310,
            22
          ],
          "text": "forward Target_Base_Hz_v15"
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5730,
            85,
            22
          ],
          "minimum": 1,
          "maximum": 23000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1648,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5978,
            170,
            22
          ],
          "text": "loadmess set 110",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5812,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            5812,
            85,
            22
          ],
          "text": "f 110.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            5812,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            5730,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            1648,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            5730,
            190,
            22
          ],
          "text": "line 110.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            1648,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6010,
            310,
            22
          ],
          "text": "receive Target_Base_Hz_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Target_Base_Hz_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            6010,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            6092,
            420,
            22
          ],
          "text": "Retuning glide ms",
          "presentation": 1,
          "presentation_rect": [
            20,
            1720,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6150,
            415,
            22
          ],
          "text": "Retune_ms_v15 1000",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1778,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6234,
            300,
            22
          ],
          "text": "prepend Retune_ms_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6266,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            6266,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6298,
            300,
            22
          ],
          "text": "route Retune_ms_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            6330,
            310,
            22
          ],
          "text": "forward Retune_ms_v15"
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6120,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 600000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1748,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6368,
            170,
            22
          ],
          "text": "loadmess set 1000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6202,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            6202,
            85,
            22
          ],
          "text": "f 1000.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            6202,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            6120,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            1748,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            6120,
            190,
            22
          ],
          "text": "line 1000.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            1748,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6400,
            310,
            22
          ],
          "text": "receive Retune_ms_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Retune_ms_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            6400,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            6482,
            420,
            22
          ],
          "text": "Semitone offset",
          "presentation": 1,
          "presentation_rect": [
            20,
            1820,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6540,
            415,
            22
          ],
          "text": "Semitones_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1878,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6624,
            300,
            22
          ],
          "text": "prepend Semitones_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6656,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            6656,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6688,
            300,
            22
          ],
          "text": "route Semitones_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            6720,
            310,
            22
          ],
          "text": "forward Semitones_v15"
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6510,
            85,
            22
          ],
          "minimum": -120,
          "maximum": 120,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1848,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6758,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6592,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            6592,
            85,
            22
          ],
          "text": "f 0.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            6592,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            6510,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            1848,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            6510,
            190,
            22
          ],
          "text": "line 0.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            1848,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6790,
            310,
            22
          ],
          "text": "receive Semitones_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Semitones_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            6790,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            6872,
            420,
            22
          ],
          "text": "Cent offset",
          "presentation": 1,
          "presentation_rect": [
            20,
            1920,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6930,
            415,
            22
          ],
          "text": "Cents_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1978,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7014,
            300,
            22
          ],
          "text": "prepend Cents_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7046,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            7046,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7078,
            300,
            22
          ],
          "text": "route Cents_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            7110,
            310,
            22
          ],
          "text": "forward Cents_v15"
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6900,
            85,
            22
          ],
          "minimum": -12000,
          "maximum": 12000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            1948,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7148,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6982,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            6982,
            85,
            22
          ],
          "text": "f 0.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            6982,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            6900,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            1948,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            6900,
            190,
            22
          ],
          "text": "line 0.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            1948,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7180,
            310,
            22
          ],
          "text": "receive Cents_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cents_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            7180,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            7262,
            420,
            22
          ],
          "text": "Extra shift Hz",
          "presentation": 1,
          "presentation_rect": [
            20,
            2020,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7320,
            415,
            22
          ],
          "text": "Offset_Hz_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2078,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7404,
            300,
            22
          ],
          "text": "prepend Offset_Hz_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7436,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            7436,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7468,
            300,
            22
          ],
          "text": "route Offset_Hz_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            7500,
            310,
            22
          ],
          "text": "forward Offset_Hz_v15"
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7290,
            85,
            22
          ],
          "minimum": -23000,
          "maximum": 23000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2048,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7538,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7372,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            7372,
            85,
            22
          ],
          "text": "f 0.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            7372,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            7290,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            2048,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            7290,
            190,
            22
          ],
          "text": "line 0.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            2048,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7570,
            310,
            22
          ],
          "text": "receive Offset_Hz_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Offset_Hz_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            7570,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            7652,
            420,
            22
          ],
          "text": "Model amplitude gain",
          "presentation": 1,
          "presentation_rect": [
            20,
            2120,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7710,
            415,
            22
          ],
          "text": "Model_Gain_v15 1",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2178,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7794,
            300,
            22
          ],
          "text": "prepend Model_Gain_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7826,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            7826,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7858,
            300,
            22
          ],
          "text": "route Model_Gain_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            7890,
            310,
            22
          ],
          "text": "forward Model_Gain_v15"
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7680,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 4,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2148,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7928,
            170,
            22
          ],
          "text": "loadmess set 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            7762,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            7762,
            85,
            22
          ],
          "text": "f 1.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            7762,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            7680,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            2148,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            7680,
            190,
            22
          ],
          "text": "line 1.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            2148,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            7960,
            310,
            22
          ],
          "text": "receive Model_Gain_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Model_Gain_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            7960,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            8042,
            420,
            22
          ],
          "text": "Minimum frequency Hz",
          "presentation": 1,
          "presentation_rect": [
            20,
            2220,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8100,
            415,
            22
          ],
          "text": "Minimum_Hz_v15 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2278,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8184,
            300,
            22
          ],
          "text": "prepend Minimum_Hz_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8216,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            8216,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8248,
            300,
            22
          ],
          "text": "route Minimum_Hz_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            8280,
            310,
            22
          ],
          "text": "forward Minimum_Hz_v15"
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8070,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2248,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8318,
            170,
            22
          ],
          "text": "loadmess set 20",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8152,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            8152,
            85,
            22
          ],
          "text": "f 20.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            8152,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            8070,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            2248,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            8070,
            190,
            22
          ],
          "text": "line 20.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            2248,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8350,
            310,
            22
          ],
          "text": "receive Minimum_Hz_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Minimum_Hz_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            8350,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            8432,
            420,
            22
          ],
          "text": "Maximum frequency Hz",
          "presentation": 1,
          "presentation_rect": [
            20,
            2320,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8490,
            415,
            22
          ],
          "text": "Maximum_Hz_v15 12000",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2378,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8574,
            300,
            22
          ],
          "text": "prepend Maximum_Hz_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8606,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            8606,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8638,
            300,
            22
          ],
          "text": "route Maximum_Hz_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            8670,
            310,
            22
          ],
          "text": "forward Maximum_Hz_v15"
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8460,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2348,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8708,
            170,
            22
          ],
          "text": "loadmess set 12000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8542,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            8542,
            85,
            22
          ],
          "text": "f 12000.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            8542,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            8460,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            2348,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            8460,
            190,
            22
          ],
          "text": "line 12000.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            2348,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8740,
            310,
            22
          ],
          "text": "receive Maximum_Hz_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Maximum_Hz_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            8740,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            8822,
            420,
            22
          ],
          "text": "Cluster span Hz",
          "presentation": 1,
          "presentation_rect": [
            20,
            2420,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8880,
            415,
            22
          ],
          "text": "Cluster_Hz_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2478,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            8964,
            300,
            22
          ],
          "text": "prepend Cluster_Hz_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8996,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            8996,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            9028,
            300,
            22
          ],
          "text": "route Cluster_Hz_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            9060,
            310,
            22
          ],
          "text": "forward Cluster_Hz_v15"
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8850,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2448,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9098,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            8932,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            8932,
            85,
            22
          ],
          "text": "f 0.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            230,
            8932,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            125,
            8850,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            125,
            2448,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            225,
            8850,
            190,
            22
          ],
          "text": "line 0.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            225,
            2448,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9130,
            310,
            22
          ],
          "text": "receive Cluster_Hz_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Cluster_Hz_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            9130,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            9212,
            420,
            22
          ],
          "text": "Post-transform bypass 0/1",
          "presentation": 1,
          "presentation_rect": [
            20,
            2520,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9270,
            415,
            22
          ],
          "text": "Post_Bypass_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2578,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9354,
            300,
            22
          ],
          "text": "prepend Post_Bypass_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            9386,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            9386,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            9418,
            300,
            22
          ],
          "text": "route Post_Bypass_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            9450,
            310,
            22
          ],
          "text": "forward Post_Bypass_v15"
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            9240,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2548,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9488,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            125,
            9240,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            125,
            2548,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9520,
            310,
            22
          ],
          "text": "receive Post_Bypass_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Post_Bypass_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            9520,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "group-24",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            140,
            420,
            24
          ],
          "fontsize": 16,
          "text": "ADSR SHAPER",
          "presentation": 1,
          "presentation_rect": [
            460,
            118,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            174,
            420,
            22
          ],
          "text": "ADSR shaper breakpoints",
          "presentation": 1,
          "presentation_rect": [
            460,
            152,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            232,
            415,
            22
          ],
          "text": "ADSR_Breakpoints_v15 48",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            210,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            316,
            300,
            22
          ],
          "text": "prepend ADSR_Breakpoints_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            348,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            348,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            380,
            300,
            22
          ],
          "text": "route ADSR_Breakpoints_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            412,
            310,
            22
          ],
          "text": "forward ADSR_Breakpoints_v15"
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            202,
            85,
            22
          ],
          "minimum": 3,
          "maximum": 48,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            180,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            450,
            170,
            22
          ],
          "text": "loadmess set 48",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            565,
            202,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            565,
            180,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            482,
            310,
            22
          ],
          "text": "receive ADSR_Breakpoints_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Breakpoints_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            482,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            564,
            420,
            22
          ],
          "text": "ADSR shaper duration ms",
          "presentation": 1,
          "presentation_rect": [
            460,
            252,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            622,
            415,
            22
          ],
          "text": "ADSR_Duration_ms_v15 1000",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            310,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            706,
            300,
            22
          ],
          "text": "prepend ADSR_Duration_ms_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            738,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            738,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            770,
            300,
            22
          ],
          "text": "route ADSR_Duration_ms_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            802,
            310,
            22
          ],
          "text": "forward ADSR_Duration_ms_v15"
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            592,
            85,
            22
          ],
          "minimum": 1,
          "maximum": 3600000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            280,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            840,
            170,
            22
          ],
          "text": "loadmess set 1000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            674,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            570,
            674,
            85,
            22
          ],
          "text": "f 1000.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            670,
            674,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            565,
            592,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            565,
            280,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            665,
            592,
            190,
            22
          ],
          "text": "line 1000.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            665,
            280,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            872,
            310,
            22
          ],
          "text": "receive ADSR_Duration_ms_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Duration_ms_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            872,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            954,
            420,
            22
          ],
          "text": "ADSR shaper shape 0\u201323",
          "presentation": 1,
          "presentation_rect": [
            460,
            352,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1012,
            415,
            22
          ],
          "text": "ADSR_Shape_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            410,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1096,
            300,
            22
          ],
          "text": "prepend ADSR_Shape_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            1128,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            1128,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            1160,
            300,
            22
          ],
          "text": "route ADSR_Shape_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            1192,
            310,
            22
          ],
          "text": "forward ADSR_Shape_v15"
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            982,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            380,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1230,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            565,
            982,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            565,
            380,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1262,
            310,
            22
          ],
          "text": "receive ADSR_Shape_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Shape_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            1262,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            1344,
            420,
            22
          ],
          "text": "ADSR shaper coll index",
          "presentation": 1,
          "presentation_rect": [
            460,
            452,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1402,
            415,
            22
          ],
          "text": "ADSR_Store_Index_v15 1",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            510,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1486,
            300,
            22
          ],
          "text": "prepend ADSR_Store_Index_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            1518,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            1518,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            1550,
            300,
            22
          ],
          "text": "route ADSR_Store_Index_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            1582,
            310,
            22
          ],
          "text": "forward ADSR_Store_Index_v15"
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            1372,
            85,
            22
          ],
          "minimum": 1,
          "maximum": 9999,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            480,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1620,
            170,
            22
          ],
          "text": "loadmess set 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            565,
            1372,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            565,
            480,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1652,
            310,
            22
          ],
          "text": "receive ADSR_Store_Index_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_Index_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            1652,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            1734,
            420,
            22
          ],
          "text": "ADSR shaper store current function",
          "presentation": 1,
          "presentation_rect": [
            460,
            552,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1792,
            415,
            22
          ],
          "text": "ADSR_Store_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            610,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1876,
            300,
            22
          ],
          "text": "prepend ADSR_Store_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            1908,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            1908,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            1940,
            300,
            22
          ],
          "text": "route ADSR_Store_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            1972,
            310,
            22
          ],
          "text": "forward ADSR_Store_v15"
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            1762,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            580,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Store_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            500,
            1762,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            500,
            580,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            2124,
            420,
            22
          ],
          "text": "ADSR shaper emit edited function",
          "presentation": 1,
          "presentation_rect": [
            460,
            652,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            2182,
            415,
            22
          ],
          "text": "ADSR_Emit_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            710,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            2266,
            300,
            22
          ],
          "text": "prepend ADSR_Emit_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            2298,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            2298,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            2330,
            300,
            22
          ],
          "text": "route ADSR_Emit_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            2362,
            310,
            22
          ],
          "text": "forward ADSR_Emit_v15"
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            2152,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            680,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Emit_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            500,
            2152,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            500,
            680,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Points_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            2514,
            420,
            22
          ],
          "text": "ADSR shaper values list (3\u201348)",
          "presentation": 1,
          "presentation_rect": [
            460,
            752,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Points_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            2572,
            415,
            22
          ],
          "text": "ADSR_Points_v15 0. 0. 0.",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            810,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Points_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            2656,
            300,
            22
          ],
          "text": "prepend ADSR_Points_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Points_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            2688,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Points_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            2688,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Points_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            2720,
            300,
            22
          ],
          "text": "route ADSR_Points_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-ADSR_Points_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            2752,
            310,
            22
          ],
          "text": "forward ADSR_Points_v15"
        }
      },
      {
        "box": {
          "id": "control-ADSR_Points_v15-input",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            2542,
            415,
            22
          ],
          "text": "0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            780,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "group-31",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            2904,
            420,
            24
          ],
          "fontsize": 16,
          "text": "LIBRARY SHAPER",
          "presentation": 1,
          "presentation_rect": [
            460,
            852,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            2938,
            420,
            22
          ],
          "text": "Library shaper breakpoints",
          "presentation": 1,
          "presentation_rect": [
            460,
            886,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            2996,
            415,
            22
          ],
          "text": "Library_Breakpoints_v15 48",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            944,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3080,
            300,
            22
          ],
          "text": "prepend Library_Breakpoints_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3112,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            3112,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3144,
            300,
            22
          ],
          "text": "route Library_Breakpoints_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            3176,
            310,
            22
          ],
          "text": "forward Library_Breakpoints_v15"
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            2966,
            85,
            22
          ],
          "minimum": 3,
          "maximum": 48,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            914,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3214,
            170,
            22
          ],
          "text": "loadmess set 48",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            565,
            2966,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            565,
            914,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3246,
            310,
            22
          ],
          "text": "receive Library_Breakpoints_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Breakpoints_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            3246,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            3328,
            420,
            22
          ],
          "text": "Library shaper duration ms",
          "presentation": 1,
          "presentation_rect": [
            460,
            986,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3386,
            415,
            22
          ],
          "text": "Library_Duration_ms_v15 1000",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1044,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3470,
            300,
            22
          ],
          "text": "prepend Library_Duration_ms_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3502,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            3502,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3534,
            300,
            22
          ],
          "text": "route Library_Duration_ms_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            3566,
            310,
            22
          ],
          "text": "forward Library_Duration_ms_v15"
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3356,
            85,
            22
          ],
          "minimum": 1,
          "maximum": 3600000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1014,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3604,
            170,
            22
          ],
          "text": "loadmess set 1000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3438,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            570,
            3438,
            85,
            22
          ],
          "text": "f 1000.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            670,
            3438,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            565,
            3356,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            565,
            1014,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            665,
            3356,
            190,
            22
          ],
          "text": "line 1000.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            665,
            1014,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3636,
            310,
            22
          ],
          "text": "receive Library_Duration_ms_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Duration_ms_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            3636,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            3718,
            420,
            22
          ],
          "text": "Library shaper shape 0\u201323",
          "presentation": 1,
          "presentation_rect": [
            460,
            1086,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3776,
            415,
            22
          ],
          "text": "Library_Shape_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1144,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3860,
            300,
            22
          ],
          "text": "prepend Library_Shape_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3892,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            3892,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3924,
            300,
            22
          ],
          "text": "route Library_Shape_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            3956,
            310,
            22
          ],
          "text": "forward Library_Shape_v15"
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            3746,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1114,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            3994,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            565,
            3746,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            565,
            1114,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4026,
            310,
            22
          ],
          "text": "receive Library_Shape_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Shape_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            4026,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            4108,
            420,
            22
          ],
          "text": "Library shaper coll index",
          "presentation": 1,
          "presentation_rect": [
            460,
            1186,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4166,
            415,
            22
          ],
          "text": "Library_Store_Index_v15 1",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1244,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4250,
            300,
            22
          ],
          "text": "prepend Library_Store_Index_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            4282,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            4282,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            4314,
            300,
            22
          ],
          "text": "route Library_Store_Index_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            4346,
            310,
            22
          ],
          "text": "forward Library_Store_Index_v15"
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            4136,
            85,
            22
          ],
          "minimum": 1,
          "maximum": 9999,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1214,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4384,
            170,
            22
          ],
          "text": "loadmess set 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            565,
            4136,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            565,
            1214,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4416,
            310,
            22
          ],
          "text": "receive Library_Store_Index_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_Index_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            4416,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            4498,
            420,
            22
          ],
          "text": "Library shaper store current function",
          "presentation": 1,
          "presentation_rect": [
            460,
            1286,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4556,
            415,
            22
          ],
          "text": "Library_Store_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1344,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4640,
            300,
            22
          ],
          "text": "prepend Library_Store_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            4672,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            4672,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            4704,
            300,
            22
          ],
          "text": "route Library_Store_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            4736,
            310,
            22
          ],
          "text": "forward Library_Store_v15"
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4526,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1314,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Store_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            500,
            4526,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            500,
            1314,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            4888,
            420,
            22
          ],
          "text": "Library shaper emit edited function",
          "presentation": 1,
          "presentation_rect": [
            460,
            1386,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4946,
            415,
            22
          ],
          "text": "Library_Emit_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1444,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            5030,
            300,
            22
          ],
          "text": "prepend Library_Emit_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            5062,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            5062,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            5094,
            300,
            22
          ],
          "text": "route Library_Emit_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            5126,
            310,
            22
          ],
          "text": "forward Library_Emit_v15"
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            4916,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1414,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Emit_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            500,
            4916,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            500,
            1414,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Points_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            5278,
            420,
            22
          ],
          "text": "Library shaper values list (3\u201348)",
          "presentation": 1,
          "presentation_rect": [
            460,
            1486,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Points_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            5336,
            415,
            22
          ],
          "text": "Library_Points_v15 0. 0. 0.",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1544,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Points_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            5420,
            300,
            22
          ],
          "text": "prepend Library_Points_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Points_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            5452,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Points_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            5452,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Points_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            5484,
            300,
            22
          ],
          "text": "route Library_Points_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Library_Points_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            5516,
            310,
            22
          ],
          "text": "forward Library_Points_v15"
        }
      },
      {
        "box": {
          "id": "control-Library_Points_v15-input",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            5306,
            415,
            22
          ],
          "text": "0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1514,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "group-38",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            5668,
            420,
            24
          ],
          "fontsize": 16,
          "text": "MICRO-DRIFT",
          "presentation": 1,
          "presentation_rect": [
            460,
            1586,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            5702,
            420,
            22
          ],
          "text": "Direction seed",
          "presentation": 1,
          "presentation_rect": [
            460,
            1620,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            5760,
            415,
            22
          ],
          "text": "Direction_Seed_v15 12345",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1678,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            5844,
            300,
            22
          ],
          "text": "prepend Direction_Seed_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            5876,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            5876,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            5908,
            300,
            22
          ],
          "text": "route Direction_Seed_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            5940,
            310,
            22
          ],
          "text": "forward Direction_Seed_v15"
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            5730,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 2147483647,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1648,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            5978,
            170,
            22
          ],
          "text": "loadmess set 12345",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            565,
            5730,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            565,
            1648,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6010,
            310,
            22
          ],
          "text": "receive Direction_Seed_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Direction_Seed_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            6010,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            6092,
            420,
            22
          ],
          "text": "Micro-drift 0/1",
          "presentation": 1,
          "presentation_rect": [
            460,
            1720,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6150,
            415,
            22
          ],
          "text": "Micro_On_v15 1",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1778,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6234,
            300,
            22
          ],
          "text": "prepend Micro_On_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6266,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            6266,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6298,
            300,
            22
          ],
          "text": "route Micro_On_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            6330,
            310,
            22
          ],
          "text": "forward Micro_On_v15"
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6120,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1748,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6368,
            170,
            22
          ],
          "text": "loadmess set 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            565,
            6120,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            565,
            1748,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6400,
            310,
            22
          ],
          "text": "receive Micro_On_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_On_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            6400,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            6482,
            420,
            22
          ],
          "text": "Micro depth \u00b1Hz",
          "presentation": 1,
          "presentation_rect": [
            460,
            1820,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6540,
            415,
            22
          ],
          "text": "Micro_Depth_Hz_v15 0.1",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1878,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6624,
            300,
            22
          ],
          "text": "prepend Micro_Depth_Hz_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6656,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            6656,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6688,
            300,
            22
          ],
          "text": "route Micro_Depth_Hz_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            6720,
            310,
            22
          ],
          "text": "forward Micro_Depth_Hz_v15"
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6510,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 5,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1848,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6758,
            170,
            22
          ],
          "text": "loadmess set 0.1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6592,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            570,
            6592,
            85,
            22
          ],
          "text": "f 0.1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            670,
            6592,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            565,
            6510,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            565,
            1848,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            665,
            6510,
            190,
            22
          ],
          "text": "line 0.1 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            665,
            1848,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6790,
            310,
            22
          ],
          "text": "receive Micro_Depth_Hz_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Depth_Hz_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            6790,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            6872,
            420,
            22
          ],
          "text": "Micro segment ms",
          "presentation": 1,
          "presentation_rect": [
            460,
            1920,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            460,
            6930,
            415,
            22
          ],
          "text": "Micro_Segment_ms_v15 2000",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1978,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            7014,
            300,
            22
          ],
          "text": "prepend Micro_Segment_ms_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            7046,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            555,
            7046,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            460,
            7078,
            300,
            22
          ],
          "text": "route Micro_Segment_ms_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            460,
            7110,
            310,
            22
          ],
          "text": "forward Micro_Segment_ms_v15"
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6900,
            85,
            22
          ],
          "minimum": 100,
          "maximum": 600000,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            1948,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            460,
            7148,
            170,
            22
          ],
          "text": "loadmess set 2000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            460,
            6982,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            570,
            6982,
            85,
            22
          ],
          "text": "f 2000.0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            670,
            6982,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            565,
            6900,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            565,
            1948,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            665,
            6900,
            190,
            22
          ],
          "text": "line 2000.0 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            665,
            1948,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            460,
            7180,
            310,
            22
          ],
          "text": "receive Micro_Segment_ms_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Micro_Segment_ms_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            770,
            7180,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "group-42",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            140,
            420,
            24
          ],
          "fontsize": 16,
          "text": "REMOVAL",
          "presentation": 1,
          "presentation_rect": [
            900,
            118,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            174,
            420,
            22
          ],
          "text": "Removal weight shape 0\u201323",
          "presentation": 1,
          "presentation_rect": [
            900,
            152,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            232,
            415,
            22
          ],
          "text": "Removal_Shape_v15 3",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            210,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            316,
            300,
            22
          ],
          "text": "prepend Removal_Shape_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            348,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            348,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            380,
            300,
            22
          ],
          "text": "route Removal_Shape_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            412,
            310,
            22
          ],
          "text": "forward Removal_Shape_v15"
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            202,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 23,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            180,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            450,
            170,
            22
          ],
          "text": "loadmess set 3",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            202,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            180,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            482,
            310,
            22
          ],
          "text": "receive Removal_Shape_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Shape_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            482,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            564,
            420,
            22
          ],
          "text": "Number of partials to remove",
          "presentation": 1,
          "presentation_rect": [
            900,
            252,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            622,
            415,
            22
          ],
          "text": "Removal_Count_v15 10",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            310,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            706,
            300,
            22
          ],
          "text": "prepend Removal_Count_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            738,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            738,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            770,
            300,
            22
          ],
          "text": "route Removal_Count_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            802,
            310,
            22
          ],
          "text": "forward Removal_Count_v15"
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            592,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 256,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            280,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            840,
            170,
            22
          ],
          "text": "loadmess set 10",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            592,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            280,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            872,
            310,
            22
          ],
          "text": "receive Removal_Count_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Removal_Count_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            872,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            954,
            420,
            22
          ],
          "text": "Remove selected count",
          "presentation": 1,
          "presentation_rect": [
            900,
            352,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            1012,
            415,
            22
          ],
          "text": "Remove_Partials_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            410,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            1096,
            300,
            22
          ],
          "text": "prepend Remove_Partials_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            1128,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            1128,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            1160,
            300,
            22
          ],
          "text": "route Remove_Partials_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            1192,
            310,
            22
          ],
          "text": "forward Remove_Partials_v15"
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            982,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            380,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Remove_Partials_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            982,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            380,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "group-45",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            1344,
            420,
            24
          ],
          "fontsize": 16,
          "text": "ACTIONS",
          "presentation": 1,
          "presentation_rect": [
            900,
            452,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            1378,
            420,
            22
          ],
          "text": "Clear all 256-slot banks",
          "presentation": 1,
          "presentation_rect": [
            900,
            486,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            1436,
            415,
            22
          ],
          "text": "All_Off_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            544,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            1520,
            300,
            22
          ],
          "text": "prepend All_Off_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            1552,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            1552,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            1584,
            300,
            22
          ],
          "text": "route All_Off_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            1616,
            310,
            22
          ],
          "text": "forward All_Off_v15"
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            1406,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            514,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-All_Off_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            1406,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            514,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            1768,
            420,
            22
          ],
          "text": "Copy amplitude \u2192 anchor",
          "presentation": 1,
          "presentation_rect": [
            900,
            586,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            1826,
            415,
            22
          ],
          "text": "Copy_Amplitude_to_Anchor_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            644,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            1910,
            300,
            22
          ],
          "text": "prepend Copy_Amplitude_to_Anchor_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            1942,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            1942,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            1974,
            300,
            22
          ],
          "text": "route Copy_Amplitude_to_Anchor_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            2006,
            310,
            22
          ],
          "text": "forward Copy_Amplitude_to_Anchor_v15"
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            1796,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            614,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Anchor_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            1796,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            614,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            2158,
            420,
            22
          ],
          "text": "Copy amplitude \u2192 drift",
          "presentation": 1,
          "presentation_rect": [
            900,
            686,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            2216,
            415,
            22
          ],
          "text": "Copy_Amplitude_to_Drift_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            744,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            2300,
            300,
            22
          ],
          "text": "prepend Copy_Amplitude_to_Drift_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            2332,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            2332,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            2364,
            300,
            22
          ],
          "text": "route Copy_Amplitude_to_Drift_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            2396,
            310,
            22
          ],
          "text": "forward Copy_Amplitude_to_Drift_v15"
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            2186,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            714,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Copy_Amplitude_to_Drift_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            2186,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            714,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            2548,
            420,
            22
          ],
          "text": "Randomize drift",
          "presentation": 1,
          "presentation_rect": [
            900,
            786,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            2606,
            415,
            22
          ],
          "text": "Random_Drift_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            844,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            2690,
            300,
            22
          ],
          "text": "prepend Random_Drift_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            2722,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            2722,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            2754,
            300,
            22
          ],
          "text": "route Random_Drift_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            2786,
            310,
            22
          ],
          "text": "forward Random_Drift_v15"
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            2576,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            814,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Drift_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            2576,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            814,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            2938,
            420,
            22
          ],
          "text": "Randomize amplitude",
          "presentation": 1,
          "presentation_rect": [
            900,
            886,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            2996,
            415,
            22
          ],
          "text": "Random_Amplitude_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            944,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            3080,
            300,
            22
          ],
          "text": "prepend Random_Amplitude_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            3112,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            3112,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            3144,
            300,
            22
          ],
          "text": "route Random_Amplitude_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            3176,
            310,
            22
          ],
          "text": "forward Random_Amplitude_v15"
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            2966,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            914,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Amplitude_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            2966,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            914,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            3328,
            420,
            22
          ],
          "text": "Randomize anchor",
          "presentation": 1,
          "presentation_rect": [
            900,
            986,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            3386,
            415,
            22
          ],
          "text": "Random_Anchor_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1044,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            3470,
            300,
            22
          ],
          "text": "prepend Random_Anchor_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            3502,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            3502,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            3534,
            300,
            22
          ],
          "text": "route Random_Anchor_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            3566,
            310,
            22
          ],
          "text": "forward Random_Anchor_v15"
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            3356,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1014,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Random_Anchor_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            3356,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            1014,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "group-51",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            3718,
            420,
            24
          ],
          "fontsize": 16,
          "text": "ORGAN STOPS",
          "presentation": 1,
          "presentation_rect": [
            900,
            1086,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            3752,
            420,
            22
          ],
          "text": "Principal 8\u2032",
          "presentation": 1,
          "presentation_rect": [
            900,
            1120,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            3810,
            415,
            22
          ],
          "text": "Stop_0_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1178,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            3894,
            300,
            22
          ],
          "text": "prepend Stop_0_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            3926,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            3926,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            3958,
            300,
            22
          ],
          "text": "route Stop_0_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            3990,
            310,
            22
          ],
          "text": "forward Stop_0_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            3780,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1148,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4028,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            3780,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1148,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4060,
            310,
            22
          ],
          "text": "receive Stop_0_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_0_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            4060,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            4142,
            420,
            22
          ],
          "text": "Octava 4\u2032",
          "presentation": 1,
          "presentation_rect": [
            900,
            1220,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4200,
            415,
            22
          ],
          "text": "Stop_1_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1278,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4284,
            300,
            22
          ],
          "text": "prepend Stop_1_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            4316,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            4316,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            4348,
            300,
            22
          ],
          "text": "route Stop_1_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            4380,
            310,
            22
          ],
          "text": "forward Stop_1_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            4170,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1248,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4418,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            4170,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1248,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4450,
            310,
            22
          ],
          "text": "receive Stop_1_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_1_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            4450,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            4532,
            420,
            22
          ],
          "text": "Doublette 2\u2032",
          "presentation": 1,
          "presentation_rect": [
            900,
            1320,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4590,
            415,
            22
          ],
          "text": "Stop_2_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1378,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4674,
            300,
            22
          ],
          "text": "prepend Stop_2_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            4706,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            4706,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            4738,
            300,
            22
          ],
          "text": "route Stop_2_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            4770,
            310,
            22
          ],
          "text": "forward Stop_2_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            4560,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1348,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4808,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            4560,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1348,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4840,
            310,
            22
          ],
          "text": "receive Stop_2_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_2_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            4840,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            4922,
            420,
            22
          ],
          "text": "Open Flute 8\u2032",
          "presentation": 1,
          "presentation_rect": [
            900,
            1420,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            4980,
            415,
            22
          ],
          "text": "Stop_3_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1478,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5064,
            300,
            22
          ],
          "text": "prepend Stop_3_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            5096,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            5096,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            5128,
            300,
            22
          ],
          "text": "route Stop_3_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            5160,
            310,
            22
          ],
          "text": "forward Stop_3_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            4950,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1448,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5198,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            4950,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1448,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5230,
            310,
            22
          ],
          "text": "receive Stop_3_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_3_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            5230,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            5312,
            420,
            22
          ],
          "text": "Bourdon 8\u2032 (odd harmonics)",
          "presentation": 1,
          "presentation_rect": [
            900,
            1520,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5370,
            415,
            22
          ],
          "text": "Stop_4_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1578,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5454,
            300,
            22
          ],
          "text": "prepend Stop_4_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            5486,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            5486,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            5518,
            300,
            22
          ],
          "text": "route Stop_4_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            5550,
            310,
            22
          ],
          "text": "forward Stop_4_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            5340,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1548,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5588,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            5340,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1548,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5620,
            310,
            22
          ],
          "text": "receive Stop_4_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_4_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            5620,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            5702,
            420,
            22
          ],
          "text": "Gamba 8\u2032",
          "presentation": 1,
          "presentation_rect": [
            900,
            1620,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5760,
            415,
            22
          ],
          "text": "Stop_5_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1678,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5844,
            300,
            22
          ],
          "text": "prepend Stop_5_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            5876,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            5876,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            5908,
            300,
            22
          ],
          "text": "route Stop_5_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            5940,
            310,
            22
          ],
          "text": "forward Stop_5_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            5730,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1648,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            5978,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            5730,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1648,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6010,
            310,
            22
          ],
          "text": "receive Stop_5_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_5_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            6010,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            6092,
            420,
            22
          ],
          "text": "Trumpet 8\u2032",
          "presentation": 1,
          "presentation_rect": [
            900,
            1720,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6150,
            415,
            22
          ],
          "text": "Stop_6_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1778,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6234,
            300,
            22
          ],
          "text": "prepend Stop_6_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            6266,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            6266,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            6298,
            300,
            22
          ],
          "text": "route Stop_6_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            6330,
            310,
            22
          ],
          "text": "forward Stop_6_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            6120,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1748,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6368,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            6120,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1748,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6400,
            310,
            22
          ],
          "text": "receive Stop_6_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_6_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            6400,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            6482,
            420,
            22
          ],
          "text": "Nazard 2 2/3\u2032 (ratio 3)",
          "presentation": 1,
          "presentation_rect": [
            900,
            1820,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6540,
            415,
            22
          ],
          "text": "Stop_7_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1878,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6624,
            300,
            22
          ],
          "text": "prepend Stop_7_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            6656,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            6656,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            6688,
            300,
            22
          ],
          "text": "route Stop_7_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            6720,
            310,
            22
          ],
          "text": "forward Stop_7_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            6510,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1848,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6758,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            6510,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1848,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6790,
            310,
            22
          ],
          "text": "receive Stop_7_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_7_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            6790,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            6872,
            420,
            22
          ],
          "text": "Tierce 1 3/5\u2032 (ratio 5)",
          "presentation": 1,
          "presentation_rect": [
            900,
            1920,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            6930,
            415,
            22
          ],
          "text": "Stop_8_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1978,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7014,
            300,
            22
          ],
          "text": "prepend Stop_8_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            7046,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            7046,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            7078,
            300,
            22
          ],
          "text": "route Stop_8_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            7110,
            310,
            22
          ],
          "text": "forward Stop_8_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            6900,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            1948,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7148,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            6900,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            1948,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7180,
            310,
            22
          ],
          "text": "receive Stop_8_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_8_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            7180,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            7262,
            420,
            22
          ],
          "text": "Larigot 1 1/3\u2032 (ratio 6)",
          "presentation": 1,
          "presentation_rect": [
            900,
            2020,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7320,
            415,
            22
          ],
          "text": "Stop_9_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2078,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7404,
            300,
            22
          ],
          "text": "prepend Stop_9_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            7436,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            7436,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            7468,
            300,
            22
          ],
          "text": "route Stop_9_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            7500,
            310,
            22
          ],
          "text": "forward Stop_9_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            7290,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2048,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7538,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            7290,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            2048,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7570,
            310,
            22
          ],
          "text": "receive Stop_9_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_9_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            7570,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            7652,
            420,
            22
          ],
          "text": "Quint Mixture III (4, 6, 8)",
          "presentation": 1,
          "presentation_rect": [
            900,
            2120,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7710,
            415,
            22
          ],
          "text": "Stop_10_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2178,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7794,
            300,
            22
          ],
          "text": "prepend Stop_10_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            7826,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            7826,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            7858,
            300,
            22
          ],
          "text": "route Stop_10_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            7890,
            310,
            22
          ],
          "text": "forward Stop_10_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            7680,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2148,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7928,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            7680,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            2148,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            7960,
            310,
            22
          ],
          "text": "receive Stop_10_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_10_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            7960,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            8042,
            420,
            22
          ],
          "text": "Celeste-inspired II (paired strings)",
          "presentation": 1,
          "presentation_rect": [
            900,
            2220,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8100,
            415,
            22
          ],
          "text": "Stop_11_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2278,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8184,
            300,
            22
          ],
          "text": "prepend Stop_11_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            8216,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            8216,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            8248,
            300,
            22
          ],
          "text": "route Stop_11_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            8280,
            310,
            22
          ],
          "text": "forward Stop_11_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            8070,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2248,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8318,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            8070,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            2248,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8350,
            310,
            22
          ],
          "text": "receive Stop_11_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_11_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            8350,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            8432,
            420,
            22
          ],
          "text": "Flute 4\u2032",
          "presentation": 1,
          "presentation_rect": [
            900,
            2320,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8490,
            415,
            22
          ],
          "text": "Stop_12_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2378,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8574,
            300,
            22
          ],
          "text": "prepend Stop_12_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            8606,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            8606,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            8638,
            300,
            22
          ],
          "text": "route Stop_12_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            8670,
            310,
            22
          ],
          "text": "forward Stop_12_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            8460,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2348,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8708,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            8460,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            2348,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8740,
            310,
            22
          ],
          "text": "receive Stop_12_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_12_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            8740,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            8822,
            420,
            22
          ],
          "text": "Flute 2\u2032",
          "presentation": 1,
          "presentation_rect": [
            900,
            2420,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8880,
            415,
            22
          ],
          "text": "Stop_13_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2478,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            8964,
            300,
            22
          ],
          "text": "prepend Stop_13_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            8996,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            8996,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            9028,
            300,
            22
          ],
          "text": "route Stop_13_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            9060,
            310,
            22
          ],
          "text": "forward Stop_13_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            8850,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2448,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9098,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            8850,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            2448,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9130,
            310,
            22
          ],
          "text": "receive Stop_13_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_13_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            9130,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            9212,
            420,
            22
          ],
          "text": "Celeste separation Hz",
          "presentation": 1,
          "presentation_rect": [
            900,
            2520,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9270,
            415,
            22
          ],
          "text": "Stop_Beat_Hz_v15 0.2",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2578,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9354,
            300,
            22
          ],
          "text": "prepend Stop_Beat_Hz_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            9386,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            9386,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            9418,
            300,
            22
          ],
          "text": "route Stop_Beat_Hz_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            9450,
            310,
            22
          ],
          "text": "forward Stop_Beat_Hz_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            9240,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 5,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2548,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9488,
            170,
            22
          ],
          "text": "loadmess set 0.2",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            9322,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-current",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1010,
            9322,
            85,
            22
          ],
          "text": "f 0.2",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1110,
            9322,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1005,
            9240,
            80,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            1005,
            2548,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            1105,
            9240,
            190,
            22
          ],
          "text": "line 0.2 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            1105,
            2548,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9520,
            310,
            22
          ],
          "text": "receive Stop_Beat_Hz_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Beat_Hz_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            9520,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            9602,
            420,
            22
          ],
          "text": "Stop harmonic tail",
          "presentation": 1,
          "presentation_rect": [
            900,
            2620,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9660,
            415,
            22
          ],
          "text": "Stop_Tail_v15 24",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2678,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9744,
            300,
            22
          ],
          "text": "prepend Stop_Tail_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            9776,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            9776,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            9808,
            300,
            22
          ],
          "text": "route Stop_Tail_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            9840,
            310,
            22
          ],
          "text": "forward Stop_Tail_v15"
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            9630,
            85,
            22
          ],
          "minimum": 1,
          "maximum": 256,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2648,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9878,
            170,
            22
          ],
          "text": "loadmess set 24",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            9630,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            2648,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-state",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            900,
            9910,
            310,
            22
          ],
          "text": "receive Stop_Tail_state_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stop_Tail_v15-stateset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1210,
            9910,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            9992,
            420,
            22
          ],
          "text": "Apply proposed stops",
          "presentation": 1,
          "presentation_rect": [
            900,
            2720,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            10050,
            415,
            22
          ],
          "text": "Stops_Apply_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2778,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            10134,
            300,
            22
          ],
          "text": "prepend Stops_Apply_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            10166,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            10166,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            10198,
            300,
            22
          ],
          "text": "route Stops_Apply_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            10230,
            310,
            22
          ],
          "text": "forward Stops_Apply_v15"
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            10020,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2748,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Apply_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            10020,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            2748,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            10382,
            420,
            22
          ],
          "text": "Clear stops and banks",
          "presentation": 1,
          "presentation_rect": [
            900,
            2820,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            10440,
            415,
            22
          ],
          "text": "Stops_Clear_v15 bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2878,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            10524,
            300,
            22
          ],
          "text": "prepend Stops_Clear_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            10556,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            10556,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            10588,
            300,
            22
          ],
          "text": "route Stops_Clear_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            10620,
            310,
            22
          ],
          "text": "forward Stops_Clear_v15"
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-input",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            10410,
            24,
            24
          ],
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2848,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Stops_Clear_v15-bang",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            940,
            10410,
            60,
            22
          ],
          "text": "bang",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            940,
            2848,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            10772,
            420,
            22
          ],
          "text": "Registration index 0\u20139",
          "presentation": 1,
          "presentation_rect": [
            900,
            2920,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            10830,
            415,
            22
          ],
          "text": "Registration_v15 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2978,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            10914,
            300,
            22
          ],
          "text": "prepend Registration_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            10946,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            10946,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            10978,
            300,
            22
          ],
          "text": "route Registration_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            11010,
            310,
            22
          ],
          "text": "forward Registration_v15"
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            10800,
            85,
            22
          ],
          "minimum": 0,
          "maximum": 9,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            2948,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-uiload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            11048,
            170,
            22
          ],
          "text": "loadmess set 0",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Registration_v15-discrete",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1005,
            10800,
            300,
            22
          ],
          "text": "Discrete \u2014 one value per edit",
          "presentation": 1,
          "presentation_rect": [
            1005,
            2948,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "group-70",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            9602,
            420,
            24
          ],
          "fontsize": 16,
          "text": "INDIVIDUAL PARTIALS",
          "presentation": 1,
          "presentation_rect": [
            20,
            2620,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            9636,
            420,
            22
          ],
          "text": "Individual drift (index, value)",
          "presentation": 1,
          "presentation_rect": [
            20,
            2654,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9694,
            415,
            22
          ],
          "text": "Partial_Drift_v15 1 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2712,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9778,
            300,
            22
          ],
          "text": "prepend Partial_Drift_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            9810,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            9810,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            9842,
            300,
            22
          ],
          "text": "route Partial_Drift_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            9874,
            310,
            22
          ],
          "text": "forward Partial_Drift_v15"
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            130,
            9664,
            75,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            130,
            2682,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-index",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            9664,
            75,
            22
          ],
          "minimum": 1,
          "maximum": 256,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2682,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-indexload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9912,
            150,
            22
          ],
          "text": "loadmess set 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-indexstore",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            255,
            9912,
            70,
            22
          ],
          "text": "i 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-pack",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            240,
            9746,
            95,
            22
          ],
          "text": "pack i f",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-tick",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            240,
            9778,
            70,
            22
          ],
          "text": "t b f",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            9746,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-queryindex",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            9912,
            80,
            22
          ],
          "text": "i 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-query",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            9944,
            80,
            22
          ],
          "text": "get $1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            215,
            9664,
            70,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            215,
            2682,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            297,
            9664,
            120,
            22
          ],
          "text": "line 0. 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            297,
            2682,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-current",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            9944,
            300,
            22
          ],
          "text": "receive Partial_Drift_current_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            240,
            9976,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Drift_v15-stop",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            350,
            9912,
            60,
            22
          ],
          "text": "stop",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            10026,
            420,
            22
          ],
          "text": "Individual amplitude (index, value)",
          "presentation": 1,
          "presentation_rect": [
            20,
            2754,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10084,
            415,
            22
          ],
          "text": "Partial_Amplitude_v15 1 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2812,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10168,
            300,
            22
          ],
          "text": "prepend Partial_Amplitude_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10200,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            10200,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10232,
            300,
            22
          ],
          "text": "route Partial_Amplitude_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            10264,
            310,
            22
          ],
          "text": "forward Partial_Amplitude_v15"
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            130,
            10054,
            75,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            130,
            2782,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-index",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10054,
            75,
            22
          ],
          "minimum": 1,
          "maximum": 256,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2782,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-indexload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10302,
            150,
            22
          ],
          "text": "loadmess set 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-indexstore",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            255,
            10302,
            70,
            22
          ],
          "text": "i 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-pack",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            240,
            10136,
            95,
            22
          ],
          "text": "pack i f",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-tick",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            240,
            10168,
            70,
            22
          ],
          "text": "t b f",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10136,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-queryindex",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            10302,
            80,
            22
          ],
          "text": "i 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-query",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            10334,
            80,
            22
          ],
          "text": "get $1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            215,
            10054,
            70,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            215,
            2782,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            297,
            10054,
            120,
            22
          ],
          "text": "line 0. 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            297,
            2782,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-current",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10334,
            300,
            22
          ],
          "text": "receive Partial_Amplitude_current_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            240,
            10366,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Amplitude_v15-stop",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            350,
            10302,
            60,
            22
          ],
          "text": "stop",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            10416,
            420,
            22
          ],
          "text": "Individual anchor (index, value)",
          "presentation": 1,
          "presentation_rect": [
            20,
            2854,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10474,
            415,
            22
          ],
          "text": "Partial_Anchor_v15 1 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2912,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10558,
            300,
            22
          ],
          "text": "prepend Partial_Anchor_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10590,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            10590,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10622,
            300,
            22
          ],
          "text": "route Partial_Anchor_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            10654,
            310,
            22
          ],
          "text": "forward Partial_Anchor_v15"
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-input",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            130,
            10444,
            75,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            130,
            2882,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-index",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10444,
            75,
            22
          ],
          "minimum": 1,
          "maximum": 256,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2882,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-indexload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10692,
            150,
            22
          ],
          "text": "loadmess set 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-indexstore",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            255,
            10692,
            70,
            22
          ],
          "text": "i 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-pack",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            240,
            10526,
            95,
            22
          ],
          "text": "pack i f",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-tick",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            240,
            10558,
            70,
            22
          ],
          "text": "t b f",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10526,
            70,
            22
          ],
          "text": "t f b",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-queryindex",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            10692,
            80,
            22
          ],
          "text": "i 1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-query",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            130,
            10724,
            80,
            22
          ],
          "text": "get $1",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-ramp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            215,
            10444,
            70,
            22
          ],
          "text": "$1 20",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            215,
            2882,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-line",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "patching_rect": [
            297,
            10444,
            120,
            22
          ],
          "text": "line 0. 5",
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            297,
            2882,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-current",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10724,
            300,
            22
          ],
          "text": "receive Partial_Anchor_current_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-lineset",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            240,
            10756,
            100,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Partial_Anchor_v15-stop",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            350,
            10692,
            60,
            22
          ],
          "text": "stop",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "group-73",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            11162,
            420,
            24
          ],
          "fontsize": 16,
          "text": "OCTAVE FAMILIES",
          "presentation": 1,
          "presentation_rect": [
            900,
            3020,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            11196,
            420,
            22
          ],
          "text": "Octave family (root, 0/1)",
          "presentation": 1,
          "presentation_rect": [
            900,
            3054,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900,
            11254,
            415,
            22
          ],
          "text": "Octave_Family_v15 1 0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            3112,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            11338,
            300,
            22
          ],
          "text": "prepend Octave_Family_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            11370,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            995,
            11370,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            900,
            11402,
            300,
            22
          ],
          "text": "route Octave_Family_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            900,
            11434,
            310,
            22
          ],
          "text": "forward Octave_Family_v15"
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-input",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            1010,
            11224,
            75,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            1010,
            3082,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-index",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900,
            11224,
            75,
            22
          ],
          "minimum": 2,
          "maximum": 255,
          "parameter_enable": 0,
          "outlettype": [
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            900,
            3082,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-indexload",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            900,
            11472,
            150,
            22
          ],
          "text": "loadmess set 2",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-indexstore",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1135,
            11472,
            70,
            22
          ],
          "text": "i 2",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-pack",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1120,
            11306,
            95,
            22
          ],
          "text": "pack i i",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Octave_Family_v15-tick",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            1120,
            11338,
            70,
            22
          ],
          "text": "t b i",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Values_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            10806,
            420,
            22
          ],
          "text": "Drift full visible values list",
          "presentation": 1,
          "presentation_rect": [
            20,
            2954,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Values_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10864,
            415,
            22
          ],
          "text": "Drift_Values_v15 0. 0. 0.",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            3012,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Values_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10948,
            300,
            22
          ],
          "text": "prepend Drift_Values_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Values_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            10980,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Values_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            10980,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Values_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            11012,
            300,
            22
          ],
          "text": "route Drift_Values_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Drift_Values_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            11044,
            310,
            22
          ],
          "text": "forward Drift_Values_v15"
        }
      },
      {
        "box": {
          "id": "control-Drift_Values_v15-input",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            10834,
            415,
            22
          ],
          "text": "0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            2982,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Values_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            11196,
            420,
            22
          ],
          "text": "Amplitude full visible values list",
          "presentation": 1,
          "presentation_rect": [
            20,
            3054,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Values_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            11254,
            415,
            22
          ],
          "text": "Amplitude_Values_v15 0. 0. 0.",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            3112,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Values_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            11338,
            300,
            22
          ],
          "text": "prepend Amplitude_Values_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Values_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            11370,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Values_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            11370,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Values_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            11402,
            300,
            22
          ],
          "text": "route Amplitude_Values_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Values_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            11434,
            310,
            22
          ],
          "text": "forward Amplitude_Values_v15"
        }
      },
      {
        "box": {
          "id": "control-Amplitude_Values_v15-input",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            11224,
            415,
            22
          ],
          "text": "0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            3082,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Values_v15-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            11586,
            420,
            22
          ],
          "text": "Anchor full visible values list",
          "presentation": 1,
          "presentation_rect": [
            20,
            3154,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Values_v15-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            11644,
            415,
            22
          ],
          "text": "Anchor_Values_v15 0. 0. 0.",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            3212,
            415,
            22
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Values_v15-name",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            11728,
            300,
            22
          ],
          "text": "prepend Anchor_Values_v15",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Values_v15-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            11760,
            70,
            22
          ],
          "text": "t b l",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Values_v15-setmessage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            115,
            11760,
            95,
            22
          ],
          "text": "prepend set",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Values_v15-route",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            11792,
            300,
            22
          ],
          "text": "route Anchor_Values_v15",
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "control-Anchor_Values_v15-forward",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            11824,
            310,
            22
          ],
          "text": "forward Anchor_Values_v15"
        }
      },
      {
        "box": {
          "id": "control-Anchor_Values_v15-input",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20,
            11614,
            415,
            22
          ],
          "text": "0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0",
          "outlettype": [
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            3182,
            415,
            22
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-name",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-fire",
            1
          ],
          "destination": [
            "control-Partial_Count_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-setmessage",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-fire",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-message",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-route",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-uiload",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-input",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-state",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Count_v15-stateset",
            0
          ],
          "destination": [
            "control-Partial_Count_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-name",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-fire",
            1
          ],
          "destination": [
            "control-Source_Base_Hz_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-setmessage",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-fire",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-message",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-route",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-uiload",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-input",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-trig",
            1
          ],
          "destination": [
            "control-Source_Base_Hz_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-current",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-trig",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-ramp",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-lineset",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-line",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-stateset",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Source_Base_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Source_Base_Hz_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-name",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-fire",
            1
          ],
          "destination": [
            "control-Max_Drift_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-setmessage",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-fire",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-message",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-route",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-uiload",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-input",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-trig",
            1
          ],
          "destination": [
            "control-Max_Drift_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-current",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-trig",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-ramp",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-lineset",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-line",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-state",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-stateset",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Max_Drift_v15-state",
            0
          ],
          "destination": [
            "control-Max_Drift_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-name",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-fire",
            1
          ],
          "destination": [
            "control-Output_Gain_dB_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-setmessage",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-fire",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-message",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-route",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-uiload",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-input",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-trig",
            1
          ],
          "destination": [
            "control-Output_Gain_dB_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-current",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-trig",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-ramp",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-lineset",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-line",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-state",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-stateset",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Output_Gain_dB_v15-state",
            0
          ],
          "destination": [
            "control-Output_Gain_dB_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-name",
            0
          ],
          "destination": [
            "control-Audio_On_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-fire",
            1
          ],
          "destination": [
            "control-Audio_On_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-setmessage",
            0
          ],
          "destination": [
            "control-Audio_On_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-fire",
            0
          ],
          "destination": [
            "control-Audio_On_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-message",
            0
          ],
          "destination": [
            "control-Audio_On_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-route",
            0
          ],
          "destination": [
            "control-Audio_On_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-uiload",
            0
          ],
          "destination": [
            "control-Audio_On_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-input",
            0
          ],
          "destination": [
            "control-Audio_On_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-state",
            0
          ],
          "destination": [
            "control-Audio_On_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Audio_On_v15-stateset",
            0
          ],
          "destination": [
            "control-Audio_On_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-name",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-fire",
            1
          ],
          "destination": [
            "control-Envelope_Loop_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-setmessage",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-fire",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-message",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-route",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-uiload",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-input",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-state",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Loop_v15-stateset",
            0
          ],
          "destination": [
            "control-Envelope_Loop_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Trigger_v15-name",
            0
          ],
          "destination": [
            "control-Envelope_Trigger_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Trigger_v15-fire",
            1
          ],
          "destination": [
            "control-Envelope_Trigger_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Trigger_v15-setmessage",
            0
          ],
          "destination": [
            "control-Envelope_Trigger_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Trigger_v15-fire",
            0
          ],
          "destination": [
            "control-Envelope_Trigger_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Trigger_v15-message",
            0
          ],
          "destination": [
            "control-Envelope_Trigger_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Trigger_v15-route",
            0
          ],
          "destination": [
            "control-Envelope_Trigger_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Trigger_v15-input",
            0
          ],
          "destination": [
            "control-Envelope_Trigger_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Envelope_Trigger_v15-bang",
            0
          ],
          "destination": [
            "control-Envelope_Trigger_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-name",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-fire",
            1
          ],
          "destination": [
            "control-Drift_Shape_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-setmessage",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-fire",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-message",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-route",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-uiload",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-input",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-state",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Shape_v15-stateset",
            0
          ],
          "destination": [
            "control-Drift_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-name",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-fire",
            1
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-setmessage",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-fire",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-message",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-route",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-uiload",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-input",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-trig",
            1
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-current",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-trig",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-ramp",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-lineset",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-line",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-state",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-stateset",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Morph_ms_v15-state",
            0
          ],
          "destination": [
            "control-Drift_Morph_ms_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-name",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-fire",
            1
          ],
          "destination": [
            "control-Amplitude_Shape_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-setmessage",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-fire",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-message",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-route",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-uiload",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-input",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-state",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Shape_v15-stateset",
            0
          ],
          "destination": [
            "control-Amplitude_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-name",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-fire",
            1
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-setmessage",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-fire",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-message",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-route",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-uiload",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-input",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-trig",
            1
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-current",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-trig",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-ramp",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-lineset",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-line",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-state",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-stateset",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Morph_ms_v15-state",
            0
          ],
          "destination": [
            "control-Amplitude_Morph_ms_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-name",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-fire",
            1
          ],
          "destination": [
            "control-Anchor_Shape_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-setmessage",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-fire",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-message",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-route",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-uiload",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-input",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-state",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Shape_v15-stateset",
            0
          ],
          "destination": [
            "control-Anchor_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-name",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-fire",
            1
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-setmessage",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-fire",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-message",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-route",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-uiload",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-input",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-trig",
            1
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-current",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-trig",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-ramp",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-lineset",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-line",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-state",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-stateset",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Morph_ms_v15-state",
            0
          ],
          "destination": [
            "control-Anchor_Morph_ms_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-name",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-fire",
            1
          ],
          "destination": [
            "control-Retuning_Mode_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-setmessage",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-fire",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-message",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-route",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-uiload",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-input",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-state",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retuning_Mode_v15-stateset",
            0
          ],
          "destination": [
            "control-Retuning_Mode_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-name",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-fire",
            1
          ],
          "destination": [
            "control-Target_Base_Hz_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-setmessage",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-fire",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-message",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-route",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-uiload",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-input",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-trig",
            1
          ],
          "destination": [
            "control-Target_Base_Hz_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-current",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-trig",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-ramp",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-lineset",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-line",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-stateset",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Target_Base_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Target_Base_Hz_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-name",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-fire",
            1
          ],
          "destination": [
            "control-Retune_ms_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-setmessage",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-fire",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-message",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-route",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-uiload",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-input",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-trig",
            1
          ],
          "destination": [
            "control-Retune_ms_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-current",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-trig",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-ramp",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-lineset",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-line",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-state",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-stateset",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Retune_ms_v15-state",
            0
          ],
          "destination": [
            "control-Retune_ms_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-name",
            0
          ],
          "destination": [
            "control-Semitones_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-fire",
            1
          ],
          "destination": [
            "control-Semitones_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-setmessage",
            0
          ],
          "destination": [
            "control-Semitones_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-fire",
            0
          ],
          "destination": [
            "control-Semitones_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-message",
            0
          ],
          "destination": [
            "control-Semitones_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-route",
            0
          ],
          "destination": [
            "control-Semitones_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-uiload",
            0
          ],
          "destination": [
            "control-Semitones_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-input",
            0
          ],
          "destination": [
            "control-Semitones_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-trig",
            1
          ],
          "destination": [
            "control-Semitones_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-current",
            0
          ],
          "destination": [
            "control-Semitones_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-trig",
            0
          ],
          "destination": [
            "control-Semitones_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-ramp",
            0
          ],
          "destination": [
            "control-Semitones_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-lineset",
            0
          ],
          "destination": [
            "control-Semitones_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-line",
            0
          ],
          "destination": [
            "control-Semitones_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-state",
            0
          ],
          "destination": [
            "control-Semitones_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-stateset",
            0
          ],
          "destination": [
            "control-Semitones_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Semitones_v15-state",
            0
          ],
          "destination": [
            "control-Semitones_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-name",
            0
          ],
          "destination": [
            "control-Cents_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-fire",
            1
          ],
          "destination": [
            "control-Cents_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-setmessage",
            0
          ],
          "destination": [
            "control-Cents_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-fire",
            0
          ],
          "destination": [
            "control-Cents_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-message",
            0
          ],
          "destination": [
            "control-Cents_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-route",
            0
          ],
          "destination": [
            "control-Cents_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-uiload",
            0
          ],
          "destination": [
            "control-Cents_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-input",
            0
          ],
          "destination": [
            "control-Cents_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-trig",
            1
          ],
          "destination": [
            "control-Cents_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-current",
            0
          ],
          "destination": [
            "control-Cents_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-trig",
            0
          ],
          "destination": [
            "control-Cents_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-ramp",
            0
          ],
          "destination": [
            "control-Cents_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-lineset",
            0
          ],
          "destination": [
            "control-Cents_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-line",
            0
          ],
          "destination": [
            "control-Cents_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-state",
            0
          ],
          "destination": [
            "control-Cents_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-stateset",
            0
          ],
          "destination": [
            "control-Cents_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cents_v15-state",
            0
          ],
          "destination": [
            "control-Cents_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-name",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-fire",
            1
          ],
          "destination": [
            "control-Offset_Hz_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-setmessage",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-fire",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-message",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-route",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-uiload",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-input",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-trig",
            1
          ],
          "destination": [
            "control-Offset_Hz_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-current",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-trig",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-ramp",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-lineset",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-line",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-stateset",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Offset_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Offset_Hz_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-name",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-fire",
            1
          ],
          "destination": [
            "control-Model_Gain_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-setmessage",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-fire",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-message",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-route",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-uiload",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-input",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-trig",
            1
          ],
          "destination": [
            "control-Model_Gain_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-current",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-trig",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-ramp",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-lineset",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-line",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-state",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-stateset",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Model_Gain_v15-state",
            0
          ],
          "destination": [
            "control-Model_Gain_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-name",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-fire",
            1
          ],
          "destination": [
            "control-Minimum_Hz_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-setmessage",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-fire",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-message",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-route",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-uiload",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-input",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-trig",
            1
          ],
          "destination": [
            "control-Minimum_Hz_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-current",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-trig",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-ramp",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-lineset",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-line",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-stateset",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Minimum_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Minimum_Hz_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-name",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-fire",
            1
          ],
          "destination": [
            "control-Maximum_Hz_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-setmessage",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-fire",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-message",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-route",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-uiload",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-input",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-trig",
            1
          ],
          "destination": [
            "control-Maximum_Hz_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-current",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-trig",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-ramp",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-lineset",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-line",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-stateset",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Maximum_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Maximum_Hz_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-name",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-fire",
            1
          ],
          "destination": [
            "control-Cluster_Hz_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-setmessage",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-fire",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-message",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-route",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-uiload",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-input",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-trig",
            1
          ],
          "destination": [
            "control-Cluster_Hz_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-current",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-trig",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-ramp",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-lineset",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-line",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-stateset",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Cluster_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Cluster_Hz_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-name",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-fire",
            1
          ],
          "destination": [
            "control-Post_Bypass_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-setmessage",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-fire",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-message",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-route",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-uiload",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-input",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-state",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Post_Bypass_v15-stateset",
            0
          ],
          "destination": [
            "control-Post_Bypass_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-name",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-fire",
            1
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-setmessage",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-fire",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-message",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-route",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-uiload",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-input",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-state",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Breakpoints_v15-stateset",
            0
          ],
          "destination": [
            "control-ADSR_Breakpoints_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-name",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-fire",
            1
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-setmessage",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-fire",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-message",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-route",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-uiload",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-input",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-trig",
            1
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-current",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-trig",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-ramp",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-lineset",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-line",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-state",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-stateset",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Duration_ms_v15-state",
            0
          ],
          "destination": [
            "control-ADSR_Duration_ms_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-name",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-fire",
            1
          ],
          "destination": [
            "control-ADSR_Shape_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-setmessage",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-fire",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-message",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-route",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-uiload",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-input",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-state",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Shape_v15-stateset",
            0
          ],
          "destination": [
            "control-ADSR_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-name",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-fire",
            1
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-setmessage",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-fire",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-message",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-route",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-uiload",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-input",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-state",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_Index_v15-stateset",
            0
          ],
          "destination": [
            "control-ADSR_Store_Index_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_v15-name",
            0
          ],
          "destination": [
            "control-ADSR_Store_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_v15-fire",
            1
          ],
          "destination": [
            "control-ADSR_Store_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_v15-setmessage",
            0
          ],
          "destination": [
            "control-ADSR_Store_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_v15-fire",
            0
          ],
          "destination": [
            "control-ADSR_Store_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_v15-message",
            0
          ],
          "destination": [
            "control-ADSR_Store_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_v15-route",
            0
          ],
          "destination": [
            "control-ADSR_Store_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_v15-input",
            0
          ],
          "destination": [
            "control-ADSR_Store_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Store_v15-bang",
            0
          ],
          "destination": [
            "control-ADSR_Store_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Emit_v15-name",
            0
          ],
          "destination": [
            "control-ADSR_Emit_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Emit_v15-fire",
            1
          ],
          "destination": [
            "control-ADSR_Emit_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Emit_v15-setmessage",
            0
          ],
          "destination": [
            "control-ADSR_Emit_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Emit_v15-fire",
            0
          ],
          "destination": [
            "control-ADSR_Emit_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Emit_v15-message",
            0
          ],
          "destination": [
            "control-ADSR_Emit_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Emit_v15-route",
            0
          ],
          "destination": [
            "control-ADSR_Emit_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Emit_v15-input",
            0
          ],
          "destination": [
            "control-ADSR_Emit_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Emit_v15-bang",
            0
          ],
          "destination": [
            "control-ADSR_Emit_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Points_v15-name",
            0
          ],
          "destination": [
            "control-ADSR_Points_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Points_v15-fire",
            1
          ],
          "destination": [
            "control-ADSR_Points_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Points_v15-setmessage",
            0
          ],
          "destination": [
            "control-ADSR_Points_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Points_v15-fire",
            0
          ],
          "destination": [
            "control-ADSR_Points_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Points_v15-message",
            0
          ],
          "destination": [
            "control-ADSR_Points_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Points_v15-route",
            0
          ],
          "destination": [
            "control-ADSR_Points_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-ADSR_Points_v15-input",
            0
          ],
          "destination": [
            "control-ADSR_Points_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-name",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-fire",
            1
          ],
          "destination": [
            "control-Library_Breakpoints_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-setmessage",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-fire",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-message",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-route",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-uiload",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-input",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-state",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Breakpoints_v15-stateset",
            0
          ],
          "destination": [
            "control-Library_Breakpoints_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-name",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-fire",
            1
          ],
          "destination": [
            "control-Library_Duration_ms_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-setmessage",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-fire",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-message",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-route",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-uiload",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-input",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-trig",
            1
          ],
          "destination": [
            "control-Library_Duration_ms_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-current",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-trig",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-ramp",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-lineset",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-line",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-state",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-stateset",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Duration_ms_v15-state",
            0
          ],
          "destination": [
            "control-Library_Duration_ms_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-name",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-fire",
            1
          ],
          "destination": [
            "control-Library_Shape_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-setmessage",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-fire",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-message",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-route",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-uiload",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-input",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-state",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Shape_v15-stateset",
            0
          ],
          "destination": [
            "control-Library_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-name",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-fire",
            1
          ],
          "destination": [
            "control-Library_Store_Index_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-setmessage",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-fire",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-message",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-route",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-uiload",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-input",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-state",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_Index_v15-stateset",
            0
          ],
          "destination": [
            "control-Library_Store_Index_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_v15-name",
            0
          ],
          "destination": [
            "control-Library_Store_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_v15-fire",
            1
          ],
          "destination": [
            "control-Library_Store_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_v15-setmessage",
            0
          ],
          "destination": [
            "control-Library_Store_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_v15-fire",
            0
          ],
          "destination": [
            "control-Library_Store_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_v15-message",
            0
          ],
          "destination": [
            "control-Library_Store_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_v15-route",
            0
          ],
          "destination": [
            "control-Library_Store_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_v15-input",
            0
          ],
          "destination": [
            "control-Library_Store_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Store_v15-bang",
            0
          ],
          "destination": [
            "control-Library_Store_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Emit_v15-name",
            0
          ],
          "destination": [
            "control-Library_Emit_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Emit_v15-fire",
            1
          ],
          "destination": [
            "control-Library_Emit_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Emit_v15-setmessage",
            0
          ],
          "destination": [
            "control-Library_Emit_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Emit_v15-fire",
            0
          ],
          "destination": [
            "control-Library_Emit_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Emit_v15-message",
            0
          ],
          "destination": [
            "control-Library_Emit_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Emit_v15-route",
            0
          ],
          "destination": [
            "control-Library_Emit_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Emit_v15-input",
            0
          ],
          "destination": [
            "control-Library_Emit_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Emit_v15-bang",
            0
          ],
          "destination": [
            "control-Library_Emit_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Points_v15-name",
            0
          ],
          "destination": [
            "control-Library_Points_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Points_v15-fire",
            1
          ],
          "destination": [
            "control-Library_Points_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Points_v15-setmessage",
            0
          ],
          "destination": [
            "control-Library_Points_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Points_v15-fire",
            0
          ],
          "destination": [
            "control-Library_Points_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Points_v15-message",
            0
          ],
          "destination": [
            "control-Library_Points_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Points_v15-route",
            0
          ],
          "destination": [
            "control-Library_Points_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Library_Points_v15-input",
            0
          ],
          "destination": [
            "control-Library_Points_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-name",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-fire",
            1
          ],
          "destination": [
            "control-Direction_Seed_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-setmessage",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-fire",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-message",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-route",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-uiload",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-input",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-state",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Direction_Seed_v15-stateset",
            0
          ],
          "destination": [
            "control-Direction_Seed_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-name",
            0
          ],
          "destination": [
            "control-Micro_On_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-fire",
            1
          ],
          "destination": [
            "control-Micro_On_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-setmessage",
            0
          ],
          "destination": [
            "control-Micro_On_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-fire",
            0
          ],
          "destination": [
            "control-Micro_On_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-message",
            0
          ],
          "destination": [
            "control-Micro_On_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-route",
            0
          ],
          "destination": [
            "control-Micro_On_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-uiload",
            0
          ],
          "destination": [
            "control-Micro_On_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-input",
            0
          ],
          "destination": [
            "control-Micro_On_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-state",
            0
          ],
          "destination": [
            "control-Micro_On_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_On_v15-stateset",
            0
          ],
          "destination": [
            "control-Micro_On_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-name",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-fire",
            1
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-setmessage",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-fire",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-message",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-route",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-uiload",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-input",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-trig",
            1
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-current",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-trig",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-ramp",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-lineset",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-line",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-stateset",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Depth_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Micro_Depth_Hz_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-name",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-fire",
            1
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-setmessage",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-fire",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-message",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-route",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-uiload",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-input",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-trig",
            1
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-current",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-trig",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-ramp",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-lineset",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-line",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-state",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-stateset",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Micro_Segment_ms_v15-state",
            0
          ],
          "destination": [
            "control-Micro_Segment_ms_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-name",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-fire",
            1
          ],
          "destination": [
            "control-Removal_Shape_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-setmessage",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-fire",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-message",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-route",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-uiload",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-input",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-state",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Shape_v15-stateset",
            0
          ],
          "destination": [
            "control-Removal_Shape_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-name",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-fire",
            1
          ],
          "destination": [
            "control-Removal_Count_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-setmessage",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-fire",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-message",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-route",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-uiload",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-input",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-state",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Removal_Count_v15-stateset",
            0
          ],
          "destination": [
            "control-Removal_Count_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Remove_Partials_v15-name",
            0
          ],
          "destination": [
            "control-Remove_Partials_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Remove_Partials_v15-fire",
            1
          ],
          "destination": [
            "control-Remove_Partials_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Remove_Partials_v15-setmessage",
            0
          ],
          "destination": [
            "control-Remove_Partials_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Remove_Partials_v15-fire",
            0
          ],
          "destination": [
            "control-Remove_Partials_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Remove_Partials_v15-message",
            0
          ],
          "destination": [
            "control-Remove_Partials_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Remove_Partials_v15-route",
            0
          ],
          "destination": [
            "control-Remove_Partials_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Remove_Partials_v15-input",
            0
          ],
          "destination": [
            "control-Remove_Partials_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Remove_Partials_v15-bang",
            0
          ],
          "destination": [
            "control-Remove_Partials_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-All_Off_v15-name",
            0
          ],
          "destination": [
            "control-All_Off_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-All_Off_v15-fire",
            1
          ],
          "destination": [
            "control-All_Off_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-All_Off_v15-setmessage",
            0
          ],
          "destination": [
            "control-All_Off_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-All_Off_v15-fire",
            0
          ],
          "destination": [
            "control-All_Off_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-All_Off_v15-message",
            0
          ],
          "destination": [
            "control-All_Off_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-All_Off_v15-route",
            0
          ],
          "destination": [
            "control-All_Off_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-All_Off_v15-input",
            0
          ],
          "destination": [
            "control-All_Off_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-All_Off_v15-bang",
            0
          ],
          "destination": [
            "control-All_Off_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Anchor_v15-name",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Anchor_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Anchor_v15-fire",
            1
          ],
          "destination": [
            "control-Copy_Amplitude_to_Anchor_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Anchor_v15-setmessage",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Anchor_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Anchor_v15-fire",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Anchor_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Anchor_v15-message",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Anchor_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Anchor_v15-route",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Anchor_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Anchor_v15-input",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Anchor_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Anchor_v15-bang",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Anchor_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Drift_v15-name",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Drift_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Drift_v15-fire",
            1
          ],
          "destination": [
            "control-Copy_Amplitude_to_Drift_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Drift_v15-setmessage",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Drift_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Drift_v15-fire",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Drift_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Drift_v15-message",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Drift_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Drift_v15-route",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Drift_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Drift_v15-input",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Drift_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Copy_Amplitude_to_Drift_v15-bang",
            0
          ],
          "destination": [
            "control-Copy_Amplitude_to_Drift_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Drift_v15-name",
            0
          ],
          "destination": [
            "control-Random_Drift_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Drift_v15-fire",
            1
          ],
          "destination": [
            "control-Random_Drift_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Drift_v15-setmessage",
            0
          ],
          "destination": [
            "control-Random_Drift_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Drift_v15-fire",
            0
          ],
          "destination": [
            "control-Random_Drift_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Drift_v15-message",
            0
          ],
          "destination": [
            "control-Random_Drift_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Drift_v15-route",
            0
          ],
          "destination": [
            "control-Random_Drift_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Drift_v15-input",
            0
          ],
          "destination": [
            "control-Random_Drift_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Drift_v15-bang",
            0
          ],
          "destination": [
            "control-Random_Drift_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Amplitude_v15-name",
            0
          ],
          "destination": [
            "control-Random_Amplitude_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Amplitude_v15-fire",
            1
          ],
          "destination": [
            "control-Random_Amplitude_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Amplitude_v15-setmessage",
            0
          ],
          "destination": [
            "control-Random_Amplitude_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Amplitude_v15-fire",
            0
          ],
          "destination": [
            "control-Random_Amplitude_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Amplitude_v15-message",
            0
          ],
          "destination": [
            "control-Random_Amplitude_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Amplitude_v15-route",
            0
          ],
          "destination": [
            "control-Random_Amplitude_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Amplitude_v15-input",
            0
          ],
          "destination": [
            "control-Random_Amplitude_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Amplitude_v15-bang",
            0
          ],
          "destination": [
            "control-Random_Amplitude_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Anchor_v15-name",
            0
          ],
          "destination": [
            "control-Random_Anchor_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Anchor_v15-fire",
            1
          ],
          "destination": [
            "control-Random_Anchor_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Anchor_v15-setmessage",
            0
          ],
          "destination": [
            "control-Random_Anchor_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Anchor_v15-fire",
            0
          ],
          "destination": [
            "control-Random_Anchor_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Anchor_v15-message",
            0
          ],
          "destination": [
            "control-Random_Anchor_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Anchor_v15-route",
            0
          ],
          "destination": [
            "control-Random_Anchor_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Anchor_v15-input",
            0
          ],
          "destination": [
            "control-Random_Anchor_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Random_Anchor_v15-bang",
            0
          ],
          "destination": [
            "control-Random_Anchor_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-name",
            0
          ],
          "destination": [
            "control-Stop_0_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_0_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_0_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_0_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-message",
            0
          ],
          "destination": [
            "control-Stop_0_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-route",
            0
          ],
          "destination": [
            "control-Stop_0_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_0_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-input",
            0
          ],
          "destination": [
            "control-Stop_0_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-state",
            0
          ],
          "destination": [
            "control-Stop_0_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_0_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_0_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-name",
            0
          ],
          "destination": [
            "control-Stop_1_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_1_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_1_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_1_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-message",
            0
          ],
          "destination": [
            "control-Stop_1_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-route",
            0
          ],
          "destination": [
            "control-Stop_1_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_1_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-input",
            0
          ],
          "destination": [
            "control-Stop_1_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-state",
            0
          ],
          "destination": [
            "control-Stop_1_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_1_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_1_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-name",
            0
          ],
          "destination": [
            "control-Stop_2_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_2_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_2_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_2_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-message",
            0
          ],
          "destination": [
            "control-Stop_2_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-route",
            0
          ],
          "destination": [
            "control-Stop_2_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_2_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-input",
            0
          ],
          "destination": [
            "control-Stop_2_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-state",
            0
          ],
          "destination": [
            "control-Stop_2_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_2_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_2_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-name",
            0
          ],
          "destination": [
            "control-Stop_3_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_3_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_3_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_3_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-message",
            0
          ],
          "destination": [
            "control-Stop_3_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-route",
            0
          ],
          "destination": [
            "control-Stop_3_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_3_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-input",
            0
          ],
          "destination": [
            "control-Stop_3_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-state",
            0
          ],
          "destination": [
            "control-Stop_3_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_3_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_3_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-name",
            0
          ],
          "destination": [
            "control-Stop_4_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_4_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_4_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_4_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-message",
            0
          ],
          "destination": [
            "control-Stop_4_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-route",
            0
          ],
          "destination": [
            "control-Stop_4_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_4_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-input",
            0
          ],
          "destination": [
            "control-Stop_4_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-state",
            0
          ],
          "destination": [
            "control-Stop_4_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_4_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_4_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-name",
            0
          ],
          "destination": [
            "control-Stop_5_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_5_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_5_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_5_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-message",
            0
          ],
          "destination": [
            "control-Stop_5_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-route",
            0
          ],
          "destination": [
            "control-Stop_5_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_5_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-input",
            0
          ],
          "destination": [
            "control-Stop_5_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-state",
            0
          ],
          "destination": [
            "control-Stop_5_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_5_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_5_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-name",
            0
          ],
          "destination": [
            "control-Stop_6_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_6_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_6_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_6_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-message",
            0
          ],
          "destination": [
            "control-Stop_6_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-route",
            0
          ],
          "destination": [
            "control-Stop_6_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_6_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-input",
            0
          ],
          "destination": [
            "control-Stop_6_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-state",
            0
          ],
          "destination": [
            "control-Stop_6_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_6_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_6_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-name",
            0
          ],
          "destination": [
            "control-Stop_7_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_7_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_7_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_7_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-message",
            0
          ],
          "destination": [
            "control-Stop_7_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-route",
            0
          ],
          "destination": [
            "control-Stop_7_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_7_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-input",
            0
          ],
          "destination": [
            "control-Stop_7_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-state",
            0
          ],
          "destination": [
            "control-Stop_7_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_7_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_7_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-name",
            0
          ],
          "destination": [
            "control-Stop_8_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_8_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_8_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_8_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-message",
            0
          ],
          "destination": [
            "control-Stop_8_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-route",
            0
          ],
          "destination": [
            "control-Stop_8_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_8_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-input",
            0
          ],
          "destination": [
            "control-Stop_8_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-state",
            0
          ],
          "destination": [
            "control-Stop_8_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_8_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_8_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-name",
            0
          ],
          "destination": [
            "control-Stop_9_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_9_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_9_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_9_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-message",
            0
          ],
          "destination": [
            "control-Stop_9_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-route",
            0
          ],
          "destination": [
            "control-Stop_9_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_9_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-input",
            0
          ],
          "destination": [
            "control-Stop_9_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-state",
            0
          ],
          "destination": [
            "control-Stop_9_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_9_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_9_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-name",
            0
          ],
          "destination": [
            "control-Stop_10_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_10_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_10_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_10_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-message",
            0
          ],
          "destination": [
            "control-Stop_10_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-route",
            0
          ],
          "destination": [
            "control-Stop_10_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_10_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-input",
            0
          ],
          "destination": [
            "control-Stop_10_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-state",
            0
          ],
          "destination": [
            "control-Stop_10_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_10_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_10_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-name",
            0
          ],
          "destination": [
            "control-Stop_11_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_11_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_11_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_11_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-message",
            0
          ],
          "destination": [
            "control-Stop_11_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-route",
            0
          ],
          "destination": [
            "control-Stop_11_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_11_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-input",
            0
          ],
          "destination": [
            "control-Stop_11_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-state",
            0
          ],
          "destination": [
            "control-Stop_11_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_11_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_11_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-name",
            0
          ],
          "destination": [
            "control-Stop_12_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_12_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_12_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_12_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-message",
            0
          ],
          "destination": [
            "control-Stop_12_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-route",
            0
          ],
          "destination": [
            "control-Stop_12_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_12_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-input",
            0
          ],
          "destination": [
            "control-Stop_12_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-state",
            0
          ],
          "destination": [
            "control-Stop_12_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_12_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_12_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-name",
            0
          ],
          "destination": [
            "control-Stop_13_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_13_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_13_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_13_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-message",
            0
          ],
          "destination": [
            "control-Stop_13_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-route",
            0
          ],
          "destination": [
            "control-Stop_13_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_13_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-input",
            0
          ],
          "destination": [
            "control-Stop_13_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-state",
            0
          ],
          "destination": [
            "control-Stop_13_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_13_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_13_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-name",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-message",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-route",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-input",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-trig",
            1
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-current",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-trig",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-ramp",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-lineset",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-line",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Beat_Hz_v15-state",
            0
          ],
          "destination": [
            "control-Stop_Beat_Hz_v15-current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-name",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-fire",
            1
          ],
          "destination": [
            "control-Stop_Tail_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-fire",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-message",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-route",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-uiload",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-input",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-state",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-stateset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stop_Tail_v15-stateset",
            0
          ],
          "destination": [
            "control-Stop_Tail_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Apply_v15-name",
            0
          ],
          "destination": [
            "control-Stops_Apply_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Apply_v15-fire",
            1
          ],
          "destination": [
            "control-Stops_Apply_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Apply_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stops_Apply_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Apply_v15-fire",
            0
          ],
          "destination": [
            "control-Stops_Apply_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Apply_v15-message",
            0
          ],
          "destination": [
            "control-Stops_Apply_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Apply_v15-route",
            0
          ],
          "destination": [
            "control-Stops_Apply_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Apply_v15-input",
            0
          ],
          "destination": [
            "control-Stops_Apply_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Apply_v15-bang",
            0
          ],
          "destination": [
            "control-Stops_Apply_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Clear_v15-name",
            0
          ],
          "destination": [
            "control-Stops_Clear_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Clear_v15-fire",
            1
          ],
          "destination": [
            "control-Stops_Clear_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Clear_v15-setmessage",
            0
          ],
          "destination": [
            "control-Stops_Clear_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Clear_v15-fire",
            0
          ],
          "destination": [
            "control-Stops_Clear_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Clear_v15-message",
            0
          ],
          "destination": [
            "control-Stops_Clear_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Clear_v15-route",
            0
          ],
          "destination": [
            "control-Stops_Clear_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Clear_v15-input",
            0
          ],
          "destination": [
            "control-Stops_Clear_v15-bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Stops_Clear_v15-bang",
            0
          ],
          "destination": [
            "control-Stops_Clear_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Registration_v15-name",
            0
          ],
          "destination": [
            "control-Registration_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Registration_v15-fire",
            1
          ],
          "destination": [
            "control-Registration_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Registration_v15-setmessage",
            0
          ],
          "destination": [
            "control-Registration_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Registration_v15-fire",
            0
          ],
          "destination": [
            "control-Registration_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Registration_v15-message",
            0
          ],
          "destination": [
            "control-Registration_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Registration_v15-route",
            0
          ],
          "destination": [
            "control-Registration_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Registration_v15-uiload",
            0
          ],
          "destination": [
            "control-Registration_v15-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Registration_v15-input",
            0
          ],
          "destination": [
            "control-Registration_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-name",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-fire",
            1
          ],
          "destination": [
            "control-Partial_Drift_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-setmessage",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-fire",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-message",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-route",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-indexload",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-index",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-indexstore",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-tick",
            1
          ],
          "destination": [
            "control-Partial_Drift_v15-pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-tick",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-indexstore",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-indexstore",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-pack",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-input",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-queryindex",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-trig",
            1
          ],
          "destination": [
            "control-Partial_Drift_v15-queryindex",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-queryindex",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-query",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-query",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-trig",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-ramp",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-line",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-tick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-current",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-lineset",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Drift_v15-stop",
            0
          ],
          "destination": [
            "control-Partial_Drift_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-name",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-fire",
            1
          ],
          "destination": [
            "control-Partial_Amplitude_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-setmessage",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-fire",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-message",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-route",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-indexload",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-index",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-indexstore",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-tick",
            1
          ],
          "destination": [
            "control-Partial_Amplitude_v15-pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-tick",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-indexstore",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-indexstore",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-pack",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-input",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-queryindex",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-trig",
            1
          ],
          "destination": [
            "control-Partial_Amplitude_v15-queryindex",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-queryindex",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-query",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-query",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-trig",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-ramp",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-line",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-tick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-current",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-lineset",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Amplitude_v15-stop",
            0
          ],
          "destination": [
            "control-Partial_Amplitude_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-name",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-fire",
            1
          ],
          "destination": [
            "control-Partial_Anchor_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-setmessage",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-fire",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-message",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-route",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-indexload",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-index",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-indexstore",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-tick",
            1
          ],
          "destination": [
            "control-Partial_Anchor_v15-pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-tick",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-indexstore",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-indexstore",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-pack",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-input",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-queryindex",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-trig",
            1
          ],
          "destination": [
            "control-Partial_Anchor_v15-queryindex",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-queryindex",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-query",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-query",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-trig",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-ramp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-ramp",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-line",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-tick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-current",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-lineset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-lineset",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-index",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Partial_Anchor_v15-stop",
            0
          ],
          "destination": [
            "control-Partial_Anchor_v15-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-name",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-fire",
            1
          ],
          "destination": [
            "control-Octave_Family_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-setmessage",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-fire",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-message",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-route",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-indexload",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-index",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-index",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-indexstore",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-tick",
            1
          ],
          "destination": [
            "control-Octave_Family_v15-pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-tick",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-indexstore",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-indexstore",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-pack",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Octave_Family_v15-input",
            0
          ],
          "destination": [
            "control-Octave_Family_v15-tick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Values_v15-name",
            0
          ],
          "destination": [
            "control-Drift_Values_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Values_v15-fire",
            1
          ],
          "destination": [
            "control-Drift_Values_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Values_v15-setmessage",
            0
          ],
          "destination": [
            "control-Drift_Values_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Values_v15-fire",
            0
          ],
          "destination": [
            "control-Drift_Values_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Values_v15-message",
            0
          ],
          "destination": [
            "control-Drift_Values_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Values_v15-route",
            0
          ],
          "destination": [
            "control-Drift_Values_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Drift_Values_v15-input",
            0
          ],
          "destination": [
            "control-Drift_Values_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Values_v15-name",
            0
          ],
          "destination": [
            "control-Amplitude_Values_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Values_v15-fire",
            1
          ],
          "destination": [
            "control-Amplitude_Values_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Values_v15-setmessage",
            0
          ],
          "destination": [
            "control-Amplitude_Values_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Values_v15-fire",
            0
          ],
          "destination": [
            "control-Amplitude_Values_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Values_v15-message",
            0
          ],
          "destination": [
            "control-Amplitude_Values_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Values_v15-route",
            0
          ],
          "destination": [
            "control-Amplitude_Values_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Amplitude_Values_v15-input",
            0
          ],
          "destination": [
            "control-Amplitude_Values_v15-name",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Values_v15-name",
            0
          ],
          "destination": [
            "control-Anchor_Values_v15-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Values_v15-fire",
            1
          ],
          "destination": [
            "control-Anchor_Values_v15-setmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Values_v15-setmessage",
            0
          ],
          "destination": [
            "control-Anchor_Values_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Values_v15-fire",
            0
          ],
          "destination": [
            "control-Anchor_Values_v15-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Values_v15-message",
            0
          ],
          "destination": [
            "control-Anchor_Values_v15-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Values_v15-route",
            0
          ],
          "destination": [
            "control-Anchor_Values_v15-forward",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "control-Anchor_Values_v15-input",
            0
          ],
          "destination": [
            "control-Anchor_Values_v15-name",
            0
          ]
        }
      }
    ]
  }
}
