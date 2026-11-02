{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 134.0, 172.0, 1092.0, 871.0 ],
        "openinpresentation": 1,
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 501.0, 570.0, 620.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 17.5, 308.0, 527.0, 47.0 ],
                    "text": "EDIT WEIGHTS: choose a source note, then drag its outgoing weights below.\nsource notes present here are selected above from 12 pitchclasses.\nMENU below augments to show what note selections are available for next decision."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 22.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 12.0, 1055.0, 31.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 12.0, 511.0, 31.0 ],
                    "text": "PROGRAMMABLE MARKOV / pitch classes 0-11"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 50.0, 1055.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 50.0, 761.0, 21.0 ],
                    "text": "Choose the active notes. Build one 'bag' (collection of probability weights) per note. Edit either the sliders or the table while it plays."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "member-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 78.0, 400.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 78.0, 164.0, 21.0 ],
                    "text": "ACTIVE PITCH CLASSES"
                }
            },
            {
                "box": {
                    "id": "pc-0",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 54.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 54.0, 111.0, 56.0, 21.0 ],
                    "text": "0 C"
                }
            },
            {
                "box": {
                    "id": "pc-1",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 112.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 112.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 142.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 142.0, 111.0, 56.0, 21.0 ],
                    "text": "1 C#"
                }
            },
            {
                "box": {
                    "id": "pc-2",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 200.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 200.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 230.0, 111.0, 56.0, 21.0 ],
                    "text": "2 D"
                }
            },
            {
                "box": {
                    "id": "pc-3",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 288.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 288.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 318.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 318.0, 111.0, 56.0, 21.0 ],
                    "text": "3 D#"
                }
            },
            {
                "box": {
                    "id": "pc-4",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 376.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 376.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 406.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 406.0, 111.0, 56.0, 21.0 ],
                    "text": "4 E"
                }
            },
            {
                "box": {
                    "id": "pc-5",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 464.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 464.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 494.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 494.0, 111.0, 56.0, 21.0 ],
                    "text": "5 F"
                }
            },
            {
                "box": {
                    "id": "pc-6",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 552.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 582.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 582.0, 111.0, 56.0, 21.0 ],
                    "text": "6 F#"
                }
            },
            {
                "box": {
                    "id": "pc-7",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 640.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 640.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 670.0, 111.0, 56.0, 21.0 ],
                    "text": "7 G"
                }
            },
            {
                "box": {
                    "id": "pc-8",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 728.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 728.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 758.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 758.0, 111.0, 56.0, 21.0 ],
                    "text": "8 G#"
                }
            },
            {
                "box": {
                    "id": "pc-9",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 816.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 816.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 846.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 846.0, 111.0, 56.0, 21.0 ],
                    "text": "9 A"
                }
            },
            {
                "box": {
                    "id": "pc-10",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 904.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 904.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 934.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 934.0, 111.0, 56.0, 21.0 ],
                    "text": "10 A#"
                }
            },
            {
                "box": {
                    "id": "pc-11",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 992.0, 110.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 992.0, 110.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "pc-label-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1022.0, 111.0, 56.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1022.0, 111.0, 56.0, 21.0 ],
                    "text": "11 B"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "membership",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 143.0, 1055.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 143.0, 394.0, 21.0 ],
                    "text": "Active PCs: 0  |  rows and columns always ascend by pitch class"
                }
            },
            {
                "box": {
                    "id": "step",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 183.0, 34.0, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 183.0, 34.0, 34.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "step-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 67.0, 188.0, 90.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 67.0, 188.0, 90.0, 23.0 ],
                    "text": "NEXT"
                }
            },
            {
                "box": {
                    "id": "auto",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 176.0, 187.0, 26.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 176.0, 187.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "auto-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 188.0, 60.0, 36.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 210.0, 188.0, 60.0, 36.0 ],
                    "text": "AUTO\nPLAY"
                }
            },
            {
                "box": {
                    "id": "rate",
                    "maxclass": "number",
                    "maximum": 5000,
                    "minimum": 50,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 286.0, 187.0, 74.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 286.0, 187.0, 74.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "rate-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 368.0, 188.0, 40.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 368.0, 188.0, 40.0, 21.0 ],
                    "text": "ms"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "start-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 168.0, 170.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 440.0, 168.0, 170.0, 19.0 ],
                    "text": "CURRENT / START PC"
                }
            },
            {
                "box": {
                    "id": "start-menu",
                    "items": "0 C",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 440.0, 191.0, 145.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 440.0, 191.0, 145.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "octave-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 620.0, 168.0, 110.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 620.0, 168.0, 110.0, 19.0 ],
                    "text": "OCTAVE"
                }
            },
            {
                "box": {
                    "id": "octave",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": -1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 620.0, 191.0, 60.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 620.0, 191.0, 60.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 730.0, 180.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 730.0, 180.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "audio-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 780.0, 188.0, 90.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 780.0, 188.0, 90.0, 21.0 ],
                    "text": "AUDIO"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "level",
                    "maxclass": "flonum",
                    "maximum": 0.3,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 885.0, 187.0, 75.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 885.0, 187.0, 75.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "level-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 972.0, 188.0, 108.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 972.0, 188.0, 108.0, 21.0 ],
                    "text": "level 0-0.3"
                }
            },
            {
                "box": {
                    "id": "mode-menu",
                    "items": [ "Markov weights", ",", "Independent random", ",", "Fixed cycle" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 240.0, 250.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 230.0, 250.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "current-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 282.0, 400.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 258.0, 190.0, 21.0 ],
                    "text": "CURRENT NOTE / NEXT BAG"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20.0,
                    "id": "current",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 314.0, 400.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 279.0, 520.5, 29.0 ],
                    "text": "PC 0 C  |  MIDI 60"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "transition",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 353.0, 400.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.0, 504.0, 375.0, 21.0 ],
                    "text": "Last: 0 -> 0  |  100.0%  |  draw 0.931"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "rowstate",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 402.0, 400.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.0, 525.0, 390.0, 20.0 ],
                    "text": "Next-choice chances (%) | markov"
                }
            },
            {
                "box": {
                    "hint": "Calculated chances for the current note. Edit the larger weight sliders above.",
                    "id": "probabilities",
                    "ignoreclick": 1,
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 448.0, 400.0, 94.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.0, 547.0, 394.0, 39.0 ],
                    "setminmax": [ 0.0, 100.0 ],
                    "setstyle": 1,
                    "spacing": 3
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "nexttext",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 549.0, 400.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.0, 588.0, 394.0, 20.0 ],
                    "text": "0: 100.0%"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "history-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 620.0, 400.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 630.0, 240.0, 20.0 ],
                    "text": "GENERATED PITCH CLASSES / latest 16"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 14.0,
                    "id": "history",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 648.0, 400.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.5, 652.0, 386.5, 22.0 ],
                    "text": "0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0"
                }
            },
            {
                "box": {
                    "id": "keyboard",
                    "ignoreclick": 1,
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 60,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 701.0, 399.0, 224.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 471.0, 578.0, 126.0, 76.0 ],
                    "range": 12
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "left-note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 759.0, 311.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 467.0, 659.0, 311.0, 33.0 ],
                    "text": "PC output stays 0-11. Octave controls MIDI audition.\nAn all-zero bag produces no note until a weight is added."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "table-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.0, 234.0, 620.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 456.0, 222.0, 333.0, 22.0 ],
                    "text": "EDITABLE WEIGHTS / row = FROM, column = TO"
                }
            },
            {
                "box": {
                    "colhead": 1,
                    "cols": 2,
                    "colwidth": 46,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "table",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 456.0, 266.0, 620.0, 265.0 ],
                    "precision": 3,
                    "presentation": 1,
                    "presentation_rect": [ 597.0, 270.0, 394.0, 265.0 ],
                    "rowhead": 1,
                    "rowheight": 19,
                    "rows": 2,
                    "selmode": 5
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "table-instructions",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.0, 538.0, 620.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 597.0, 246.0, 620.0, 20.0 ],
                    "text": "Click a numeric cell; type a weight and press Return. Selecting a cell also selects its bag."
                }
            },
            {
                "box": {
                    "id": "edit-menu",
                    "items": "0 C",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 456.0, 582.0, 145.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 17.5, 358.0, 145.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "editor",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 619.0, 582.0, 457.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 174.5, 359.0, 332.0, 21.0 ],
                    "text": "Bag for PC 0 C  |  total 10"
                }
            },
            {
                "box": {
                    "candycane": 22,
                    "contdata": 1,
                    "hint": "EDITABLE: select a source note above, then drag its outgoing weights. Changes are live.",
                    "id": "weights",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 456.0, 625.0, 620.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 17.5, 379.0, 403.0, 100.0 ],
                    "setminmax": [ 0.0, 10.0 ],
                    "setstyle": 1,
                    "spacing": 3
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "editorlabels",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.0, 734.0, 620.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 17.5, 481.0, 403.0, 20.0 ],
                    "text": "0: 10"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "editor-note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.0, 784.0, 457.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 469.5, 699.0, 457.0, 33.0 ],
                    "text": "Sliders edit the selected row continuously. Weight / row total = chance.\nAdding/removing PCs preserves stored weights. Save the patch to keep your model."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "status",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 836.0, 1052.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 25.5, 687.0, 215.0, 33.0 ],
                    "text": "Updated bag for PC 0 C. Changes affect the next bang."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "reference",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 134.0, 172.0, 1160.0, 800.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 15.0, 1100.0, 27.0 ],
                                    "text": "PITCH-CLASS MARKOV / MESSAGE SPACE"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "intro",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 55.0, 1100.0, 36.0 ],
                                    "text": "All source/destination addresses are pitch classes 0..11. Active rows and columns are sorted ascending.\npcs/add/remove preserve the 12x12 matrix. Weight edits take effect on the next bang; metro keeps running."
                                }
                            },
                            {
                                "box": {
                                    "comment": "Commands to ec_markov_notes.js",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 765.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-0",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 112.0, 475.0, 23.0 ],
                                    "text": "pcs 0 7"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 112.0, 615.0, 20.0 ],
                                    "text": "Start with C and G. This changes membership only; stored weights remain."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 138.0, 475.0, 23.0 ],
                                    "text": "pcs 0 7, row 0 1 9, row 7 8 2, start 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 138.0, 615.0, 20.0 ],
                                    "text": "Two-bag example: C -> G strongly, G -> C strongly."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 164.0, 475.0, 23.0 ],
                                    "text": "add 4"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 164.0, 615.0, 20.0 ],
                                    "text": "Add E without resetting C/G weights. Untouched connections have weight 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 190.0, 475.0, 23.0 ],
                                    "text": "editpc 4"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 190.0, 615.0, 20.0 ],
                                    "text": "Choose E's bag for the row editor, without changing the current playback PC."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 216.0, 475.0, 23.0 ],
                                    "text": "weight 0 4 6"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 216.0, 615.0, 20.0 ],
                                    "text": "Set C -> E weight to 6. Both addresses are pitch classes."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 242.0, 475.0, 23.0 ],
                                    "text": "pcs 0 4 7, row 4 2 0 8"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 242.0, 615.0, 20.0 ],
                                    "text": "E's bag: weights toward C, E, G are 2, 0, 8."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 268.0, 475.0, 23.0 ],
                                    "text": "remove 4"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 268.0, 615.0, 20.0 ],
                                    "text": "Disable E. Its stored row and column are retained for later."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 294.0, 475.0, 23.0 ],
                                    "text": "add 4"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 294.0, 615.0, 20.0 ],
                                    "text": "Re-enable E and recover its edited weights exactly."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 320.0, 475.0, 23.0 ],
                                    "text": "enable 7 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 320.0, 615.0, 20.0 ],
                                    "text": "Same as remove 7. Use enable 7 1 to re-enable."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 346.0, 475.0, 23.0 ],
                                    "text": "pcs 0 1 2 3 4 5 6 7 8 9 10 11"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 346.0, 615.0, 20.0 ],
                                    "text": "Make all twelve pitch classes active."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 372.0, 475.0, 23.0 ],
                                    "text": "fill 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 372.0, 615.0, 20.0 ],
                                    "text": "Set every ACTIVE matrix entry to 1 (equal chances in Markov mode)."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 398.0, 475.0, 23.0 ],
                                    "text": "fill 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 398.0, 615.0, 20.0 ],
                                    "text": "An empty active matrix. No notes until a current-row weight becomes positive."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 424.0, 475.0, 23.0 ],
                                    "text": "pcs 0 7, fill 0, weight 0 7 1, weight 7 0 1, start 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 424.0, 615.0, 20.0 ],
                                    "text": "Build a certain 0 <-> 7 alternation."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 450.0, 475.0, 23.0 ],
                                    "text": "start 7"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 450.0, 615.0, 20.0 ],
                                    "text": "Silent current-state change to active PC 7; not state index 7."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 476.0, 475.0, 23.0 ],
                                    "text": "reset"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 476.0, 615.0, 20.0 ],
                                    "text": "Silent start at the lowest active PC. Keep weights and membership."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 502.0, 475.0, 23.0 ],
                                    "text": "octave 4"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 502.0, 615.0, 20.0 ],
                                    "text": "MIDI audition register: C4 = MIDI 60. Pitch-class output stays 0..11."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 528.0, 475.0, 23.0 ],
                                    "text": "mode markov"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 528.0, 615.0, 20.0 ],
                                    "text": "Use the edited raw weights."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-17",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 554.0, 475.0, 23.0 ],
                                    "text": "mode random"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 554.0, 615.0, 20.0 ],
                                    "text": "Equal chances among active PCs; table retains raw Markov weights."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 580.0, 475.0, 23.0 ],
                                    "text": "mode cycle"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 580.0, 615.0, 20.0 ],
                                    "text": "Step through active PCs in ascending order."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 606.0, 475.0, 23.0 ],
                                    "text": "seed 123, start 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 606.0, 615.0, 20.0 ],
                                    "text": "Repeatable random stream from an active starting PC. Seed 0 restores default RNG."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 632.0, 475.0, 23.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 632.0, 615.0, 20.0 ],
                                    "text": "Print active PCs and row commands in Max Console."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-21",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 658.0, 475.0, 23.0 ],
                                    "text": "defaults"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 658.0, 615.0, 20.0 ],
                                    "text": "RESTORE DEFAULTS: all 144 weights = 1, active PCs 0/7, octave 4."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 684.0, 475.0, 23.0 ],
                                    "text": "model 3"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 684.0, 615.0, 20.0 ],
                                    "text": "RESTORE the old three-note teaching example (PCs 0/2/4)."
                                }
                            },
                            {
                                "box": {
                                    "id": "msg-23",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 710.0, 475.0, 23.0 ],
                                    "text": "model 6"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "desc-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 710.0, 615.0, 20.0 ],
                                    "text": "RESTORE the old six-note teaching example (PCs 0/2/4/5/7/9)."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "msg-9", 0 ]
                                }
                            }
                        ],
                        "default_bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                        "saved_attribute_attributes": {
                            "bgcolor": {
                                "expression": "themecolor.live_midi_assignment"
                            }
                        }
                    },
                    "patching_rect": [ 24.0, 880.0, 205.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 21.5, 744.0, 181.0, 23.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "saved_newobj_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "saved_object_attributes": {
                        "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                        "fontsize": 13.0
                    },
                    "text": "p message_reference_INDEX"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "embedstate": [
                        [ "restorestate", 2, 4, 0, 0, 0, 1999135775.0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 0, 0, 0, 0.0, 0, 0, 0, 0, 0, 0, 0, 10.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 0, 0.0, 0, 0, 0.0, 0, 0, 0, 0, 0, 0, 10.0, 0, 0, 0, 0.0, 0, 0, 0.0, 0, 0, 0, 0, 10.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 0, 0, 0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0, 10.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 0, 0, 0, 0, 0, 0, 0.0, 0, 0, 0, 0, 10.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
                    ],
                    "id": "engine",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 620.0, 880.0, 235.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 617.5, 744.0, 235.0, 23.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "saved_newobj_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "saved_object_attributes": {
                        "filename": "ec_markov_notes.js",
                        "parameter_enable": 0
                    },
                    "text": "js ec_markov_notes.js",
                    "varname": "markov_model"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "version-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 868.0, 880.0, 208.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 865.5, 744.0, 208.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "v3 / Cmd+S or Ctrl+S",
                    "textcolor": [ 0.8901960784313725, 0.8705882352941177, 0.8705882352941177, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 17.0,
                    "id": "wiring-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 955.0, 1050.0, 25.0 ],
                    "text": "PATCHING VIEW / pitch-class model, synchronized editor, MIDI audition"
                }
            },
            {
                "box": {
                    "id": "metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24.0, 1000.0, 100.0, 23.0 ],
                    "text": "metro 650"
                }
            },
            {
                "box": {
                    "id": "defer-step",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1040.0, 100.0, 23.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "start-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 150.0, 1000.0, 150.0, 23.0 ],
                    "text": "prepend startindex"
                }
            },
            {
                "box": {
                    "id": "edit-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 320.0, 1000.0, 150.0, 23.0 ],
                    "text": "prepend editindex"
                }
            },
            {
                "box": {
                    "id": "weights-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 1000.0, 140.0, 23.0 ],
                    "text": "prepend weights"
                }
            },
            {
                "box": {
                    "id": "octave-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 650.0, 1000.0, 135.0, 23.0 ],
                    "text": "prepend octave"
                }
            },
            {
                "box": {
                    "id": "mode-select",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "" ],
                    "patching_rect": [ 810.0, 1000.0, 100.0, 23.0 ],
                    "text": "sel 0 1 2"
                }
            },
            {
                "box": {
                    "id": "mode-markov",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 720.0, 1040.0, 115.0, 23.0 ],
                    "text": "mode markov"
                }
            },
            {
                "box": {
                    "id": "mode-random",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 845.0, 1040.0, 115.0, 23.0 ],
                    "text": "mode random"
                }
            },
            {
                "box": {
                    "id": "mode-cycle",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 970.0, 1040.0, 115.0, 23.0 ],
                    "text": "mode cycle"
                }
            },
            {
                "box": {
                    "id": "pc-pre-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1100.0, 160.0, 23.0 ],
                    "text": "prepend enable 0"
                }
            },
            {
                "box": {
                    "id": "pc-pre-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 202.0, 1100.0, 160.0, 23.0 ],
                    "text": "prepend enable 1"
                }
            },
            {
                "box": {
                    "id": "pc-pre-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1100.0, 160.0, 23.0 ],
                    "text": "prepend enable 2"
                }
            },
            {
                "box": {
                    "id": "pc-pre-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 558.0, 1100.0, 160.0, 23.0 ],
                    "text": "prepend enable 3"
                }
            },
            {
                "box": {
                    "id": "pc-pre-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 736.0, 1100.0, 160.0, 23.0 ],
                    "text": "prepend enable 4"
                }
            },
            {
                "box": {
                    "id": "pc-pre-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 914.0, 1100.0, 160.0, 23.0 ],
                    "text": "prepend enable 5"
                }
            },
            {
                "box": {
                    "id": "pc-pre-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1140.0, 160.0, 23.0 ],
                    "text": "prepend enable 6"
                }
            },
            {
                "box": {
                    "id": "pc-pre-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 202.0, 1140.0, 160.0, 23.0 ],
                    "text": "prepend enable 7"
                }
            },
            {
                "box": {
                    "id": "pc-pre-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1140.0, 160.0, 23.0 ],
                    "text": "prepend enable 8"
                }
            },
            {
                "box": {
                    "id": "pc-pre-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 558.0, 1140.0, 160.0, 23.0 ],
                    "text": "prepend enable 9"
                }
            },
            {
                "box": {
                    "id": "pc-pre-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 736.0, 1140.0, 160.0, 23.0 ],
                    "text": "prepend enable 10"
                }
            },
            {
                "box": {
                    "id": "pc-pre-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 914.0, 1140.0, 160.0, 23.0 ],
                    "text": "prepend enable 11"
                }
            },
            {
                "box": {
                    "id": "ui-route",
                    "maxclass": "newobj",
                    "numinlets": 26,
                    "numoutlets": 26,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 24.0, 1200.0, 1330.0, 23.0 ],
                    "text": "route table tablegate member count membership editmenu startmenu current midi currentpc transition rowstate nexttext historytext editor editrange weights editorlabels status octave keyboardoffset modeindex dirty dump stepcount"
                }
            },
            {
                "box": {
                    "id": "table-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1250.0, 85.0, 23.0 ],
                    "text": "gate 1 1"
                }
            },
            {
                "box": {
                    "id": "cell-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 125.0, 1250.0, 110.0, 23.0 ],
                    "text": "prepend cell"
                }
            },
            {
                "box": {
                    "id": "member-route",
                    "maxclass": "newobj",
                    "numinlets": 13,
                    "numoutlets": 13,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 260.0, 1250.0, 440.0, 23.0 ],
                    "text": "route 0 1 2 3 4 5 6 7 8 9 10 11"
                }
            },
            {
                "box": {
                    "id": "member-set-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1300.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 202.0, 1300.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1300.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 558.0, 1300.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 736.0, 1300.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 914.0, 1300.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1340.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 202.0, 1340.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1340.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 558.0, 1340.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 736.0, 1340.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "member-set-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 914.0, 1340.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-membership",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1400.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-current",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 202.0, 1400.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-transition",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1400.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-rowstate",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 558.0, 1400.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-nexttext",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 736.0, 1400.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-historytext",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 914.0, 1400.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-editor",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1440.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-editorlabels",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 202.0, 1440.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "text-status",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1440.0, 150.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "set-probs",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1500.0, 135.0, 23.0 ],
                    "text": "prepend setlist"
                }
            },
            {
                "box": {
                    "id": "set-weights",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 180.0, 1500.0, 135.0, 23.0 ],
                    "text": "prepend setlist"
                }
            },
            {
                "box": {
                    "id": "set-size",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 336.0, 1500.0, 120.0, 23.0 ],
                    "text": "prepend size"
                }
            },
            {
                "box": {
                    "id": "set-editrange",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 1500.0, 140.0, 23.0 ],
                    "text": "prepend setmax"
                }
            },
            {
                "box": {
                    "id": "set-key",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 1500.0, 115.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "set-keyoffset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 780.0, 1500.0, 130.0, 23.0 ],
                    "text": "prepend offset"
                }
            },
            {
                "box": {
                    "id": "set-octave",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 934.0, 1500.0, 115.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "set-mode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1550.0, 120.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "dirty",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 180.0, 1550.0, 65.0, 23.0 ],
                    "text": "dirty"
                }
            },
            {
                "box": {
                    "id": "thispatcher",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 265.0, 1550.0, 110.0, 23.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "id": "dump-print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 1550.0, 155.0, 23.0 ],
                    "text": "print ec.markov.pc"
                }
            },
            {
                "box": {
                    "id": "audio",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 134.0, 172.0, 720.0, 470.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 305.0, 161.0, 91.0, 23.0 ],
                                    "text": "s markov-note"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "a-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 660.0, 21.0 ],
                                    "text": "One sine note per generated MIDI pitch. No MIDI device is required."
                                }
                            },
                            {
                                "box": {
                                    "comment": "Generated MIDI note",
                                    "id": "a-midi",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 65.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Output level 0.0 to 0.3",
                                    "id": "a-level",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 490.0, 65.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "a-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "int", "int" ],
                                    "patching_rect": [ 35.0, 115.0, 289.0, 23.0 ],
                                    "text": "t b i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-mtof",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 170.0, 155.0, 55.0, 23.0 ],
                                    "text": "mtof"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-fpack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 170.0, 195.0, 85.0, 23.0 ],
                                    "text": "pack 0. 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-fline",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 170.0, 235.0, 55.0, 23.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-osc",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 170.0, 280.0, 65.0, 23.0 ],
                                    "text": "cycle~"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-env",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 195.0, 125.0, 23.0 ],
                                    "text": "0. 5 1. 10 0. 235"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-eline",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 35.0, 235.0, 55.0, 23.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-voice",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 170.0, 325.0, 45.0, 23.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 490.0, 115.0, 90.0, 23.0 ],
                                    "text": "clip 0. 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-vpack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 490.0, 155.0, 90.0, 23.0 ],
                                    "text": "pack 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-vline",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 490.0, 195.0, 90.0, 23.0 ],
                                    "text": "line~ 0.12"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-outgain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 170.0, 365.0, 45.0, 23.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Mono preview audio",
                                    "id": "a-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 170.0, 410.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "a-note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 300.0, 280.0, 365.0, 36.0 ],
                                    "text": "250 ms envelope. Frequency and level changes ramp.\nAudio is silent until a generated note arrives."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "a-vpack", 0 ],
                                    "source": [ "a-clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-voice", 1 ],
                                    "source": [ "a-eline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-eline", 0 ],
                                    "source": [ "a-env", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-osc", 0 ],
                                    "source": [ "a-fline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-fline", 0 ],
                                    "source": [ "a-fpack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-clip", 0 ],
                                    "source": [ "a-level", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-trigger", 0 ],
                                    "source": [ "a-midi", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-fpack", 0 ],
                                    "source": [ "a-mtof", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-voice", 0 ],
                                    "source": [ "a-osc", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-out", 0 ],
                                    "source": [ "a-outgain", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-env", 0 ],
                                    "source": [ "a-trigger", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-mtof", 0 ],
                                    "source": [ "a-trigger", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "a-trigger", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-outgain", 1 ],
                                    "source": [ "a-vline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-outgain", 0 ],
                                    "source": [ "a-voice", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-vline", 0 ],
                                    "source": [ "a-vpack", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 736.0, 1569.0, 150.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p preview_sine"
                }
            },
            {
                "box": {
                    "id": "load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24.0, 1620.0, 85.0, 23.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "loaddefer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 1660.0, 85.0, 23.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "init-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 24.0, 1700.0, 95.0, 23.0 ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "init-stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.0, 1700.0, 70.0, 23.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "init-rate",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 250.0, 1700.0, 70.0, 23.0 ],
                    "text": "650"
                }
            },
            {
                "box": {
                    "id": "init-level",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.0, 1700.0, 70.0, 23.0 ],
                    "text": "0.12"
                }
            },
            {
                "box": {
                    "id": "init-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 1700.0, 70.0, 23.0 ],
                    "text": "status"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "id": "export-player-button",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 924.0, 26.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.0, 807.0, 47.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    }
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontface": 1,
                    "id": "export-player-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 62.0, 924.0, 260.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.0, 784.0, 194.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "EXPORT MODEL PLAYER (.js)"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontsize": 18.0,
                    "id": "export-player-hint",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 340.0, 920.0, 733.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 243.0, 784.0, 786.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "Saves the markov model designed here, as a fixed .js file for loading into a .js object. \nA fixed model player outputs: pitch class / MIDI / status. "
                }
            },
            {
                "box": {
                    "id": "export-panel",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 515.0, 1040.0, 185.0, 23.0 ],
                    "text": "ec_markov_export"
                }
            },
            {
                "box": {
                    "id": "first-order-tutorial",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 134.0, 172.0, 1100.0, 870.0 ],
                        "openinpresentation": 1,
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Tagged UI messages from the builder engine",
                                    "id": "in-ui",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 900.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Actual parent transport state",
                                    "id": "in-run",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 124.0, 900.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Actual parent metro interval",
                                    "id": "in-rate",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 224.0, 900.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Actual parent audition level",
                                    "id": "in-level",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 324.0, 900.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Commands to the shared Markov engine",
                                    "id": "out-model",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 940.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Parent AUTO state",
                                    "id": "out-run",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 940.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Parent metro interval",
                                    "id": "out-rate",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 224.0, 940.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Parent DSP on/off",
                                    "id": "out-audio",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 324.0, 940.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Parent audition level",
                                    "id": "out-level",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 424.0, 940.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 22.0,
                                    "id": "heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 14.0, 740.0, 31.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 14.0, 740.0, 31.0 ],
                                    "text": "BUILD A FIRST-ORDER MARKOV CHAIN"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "intro",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 50.0, 1052.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 50.0, 1052.0, 21.0 ],
                                    "text": "One bag per current note. Its weights choose the NEXT note; earlier notes do not change that choice."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "shared",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 75.0, 1052.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 75.0, 1052.0, 20.0 ],
                                    "text": "Shared model: pattern buttons replace weights and pause playback. Closing clears tutorial controls; home keeps the model."
                                }
                            },
                            {
                                "box": {
                                    "id": "next",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 111.0, 28.0, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 111.0, 28.0, 28.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "next-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 59.0, 114.0, 52.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 59.0, 114.0, 52.0, 21.0 ],
                                    "text": "NEXT"
                                }
                            },
                            {
                                "box": {
                                    "id": "run",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 126.0, 113.0, 24.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 126.0, 113.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "run-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 157.0, 114.0, 45.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 157.0, 114.0, 45.0, 21.0 ],
                                    "text": "RUN"
                                }
                            },
                            {
                                "box": {
                                    "id": "rate",
                                    "maxclass": "number",
                                    "maximum": 5000,
                                    "minimum": 50,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 211.0, 113.0, 65.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 211.0, 113.0, 65.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "rate-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 282.0, 114.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 282.0, 114.0, 75.0, 21.0 ],
                                    "text": "ms / step"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "audio-on",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 373.0, 109.0, 95.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 373.0, 109.0, 95.0, 29.0 ],
                                    "text": "AUDIO ON"
                                }
                            },
                            {
                                "box": {
                                    "id": "audio-on-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 980.0, 1040.0, 23.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "audio-off",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 476.0, 109.0, 95.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 476.0, 109.0, 95.0, 29.0 ],
                                    "text": "AUDIO OFF"
                                }
                            },
                            {
                                "box": {
                                    "id": "audio-off-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1018.0, 1040.0, 23.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "level",
                                    "maxclass": "flonum",
                                    "maximum": 0.3,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 594.0, 113.0, 65.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 594.0, 113.0, 65.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "level-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 666.0, 114.0, 90.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 666.0, 114.0, 90.0, 21.0 ],
                                    "text": "level 0-0.3"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "force-markov",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 780.0, 109.0, 130.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 780.0, 109.0, 130.0, 29.0 ],
                                    "text": "MARKOV MODE"
                                }
                            },
                            {
                                "box": {
                                    "id": "force-markov-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1056.0, 1040.0, 23.0 ],
                                    "text": "mode markov"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "mode-state",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 923.0, 111.0, 155.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 923.0, 111.0, 155.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "transport-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 145.0, 1052.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 145.0, 1052.0, 20.0 ],
                                    "text": "Start is silent; NEXT plays its successor. Closing stops RUN and clears tutorial controls. Reopen to see the home model."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "guide-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 178.0, 420.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 178.0, 420.0, 23.0 ],
                                    "text": "GUIDED BUILD — work downward"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "g1-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 213.0, 420.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 213.0, 420.0, 22.0 ],
                                    "text": "1  One note: a self-loop"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "one-note",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 242.0, 186.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 242.0, 186.0, 29.0 ],
                                    "text": "RESET TO ONE C"
                                }
                            },
                            {
                                "box": {
                                    "id": "one-note-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1094.0, 1040.0, 23.0 ],
                                    "text": "mode markov, pcs 0 1 2 3 4 5 6 7 8 9 10 11, fill 0, pcs 0, weight 0 0 1, octave 4, seed 123, start 0, editpc 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "one-note-pause",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 500.0, 1132.0, 500.0, 23.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "g1-body",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 278.0, 315.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 24.0, 278.0, 315.0, 33.0 ],
                                    "text": "Click NEXT several times. C chooses C with probability 1.\nPitch class 0 + register base 60 = MIDI note 60."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "g2-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 327.0, 420.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 327.0, 420.0, 22.0 ],
                                    "text": "2  Add G, then connect the two notes"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "add-g",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 356.0, 125.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 356.0, 125.0, 29.0 ],
                                    "text": "ADD G (7)"
                                }
                            },
                            {
                                "box": {
                                    "id": "add-g-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1165.0, 1040.0, 23.0 ],
                                    "text": "add 7, editpc 7"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "two-note",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 159.0, 356.0, 229.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 159.0, 356.0, 229.0, 29.0 ],
                                    "text": "CONNECT C - G - C"
                                }
                            },
                            {
                                "box": {
                                    "id": "two-note-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1203.0, 1040.0, 23.0 ],
                                    "text": "mode markov, pcs 0 7, fill 0, row 0 0 1, row 7 1 0, start 0, editpc 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "two-note-pause",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 500.0, 1241.0, 500.0, 23.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "g2-body",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 392.0, 302.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 24.0, 392.0, 302.0, 33.0 ],
                                    "text": "After step 1, ADD G leaves its connections at zero.\nCONNECT sets C to G and G to C. NEXT: G, C, G, C..."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "g3-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 441.0, 420.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 441.0, 420.0, 22.0 ],
                                    "text": "3  Add E: build a three-note cycle"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "add-e",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 470.0, 125.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 470.0, 125.0, 29.0 ],
                                    "text": "ADD E (4)"
                                }
                            },
                            {
                                "box": {
                                    "id": "add-e-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1274.0, 1040.0, 23.0 ],
                                    "text": "add 4, editpc 4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "three-note",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 159.0, 470.0, 229.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 159.0, 470.0, 229.0, 29.0 ],
                                    "text": "CONNECT C - E - G - C"
                                }
                            },
                            {
                                "box": {
                                    "id": "three-note-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1312.0, 1040.0, 23.0 ],
                                    "text": "mode markov, pcs 0 4 7, fill 0, row 0 0 1 0, row 4 0 0 1, row 7 1 0 0, start 0, editpc 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "three-note-pause",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 500.0, 1350.0, 500.0, 23.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "g3-body",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 506.0, 271.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 24.0, 506.0, 271.0, 33.0 ],
                                    "text": "E needs a way in and a way out. Watch the table:\nC chooses E; E chooses G; G returns to C."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "g4-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 555.0, 420.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 555.0, 420.0, 22.0 ],
                                    "text": "4  Replace certainty with a weighted choice"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "branch",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 584.0, 280.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 584.0, 280.0, 29.0 ],
                                    "text": "BRANCH FROM C: E 3 / G 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "branch-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1383.0, 1040.0, 23.0 ],
                                    "text": "mode markov, pcs 0 4 7, fill 0, row 0 0 3 1, row 4 0 0 1, row 7 1 0 0, start 0, editpc 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "branch-pause",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 500.0, 1421.0, 500.0, 23.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "g4-body",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 620.0, 319.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 24.0, 620.0, 319.0, 33.0 ],
                                    "text": "From C: E = 3/4 = 75%; G = 1/4 = 25%.\nDrag C's sliders while RUN is on. Chances are not quotas."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "g5-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 669.0, 420.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 669.0, 420.0, 22.0 ],
                                    "text": "5  Expand to six notes"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "six-note",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 698.0, 280.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 698.0, 280.0, 29.0 ],
                                    "text": "SIX-NOTE STEPWISE WALK"
                                }
                            },
                            {
                                "box": {
                                    "id": "six-note-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1454.0, 1040.0, 23.0 ],
                                    "text": "mode markov, pcs 0 2 4 5 7 9, fill 0, row 0 0 1 0 0 0 0, row 2 1 0 3 0 0 0, row 4 0 1 0 3 0 0, row 5 0 0 1 0 3 0, row 7 0 0 0 1 0 3, row 9 0 0 0 0 1 0, start 0, editpc 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "six-note-pause",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 500.0, 1492.0, 500.0, 23.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "g5-body",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 734.0, 308.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 24.0, 734.0, 308.0, 33.0 ],
                                    "text": "C D E F G A: favor upward steps, turn at the ends.\nSix states still use order 1: only the current note matters."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "memory",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 789.0, 192.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 789.0, 192.0, 29.0 ],
                                    "text": "TRY C - E - C - G"
                                }
                            },
                            {
                                "box": {
                                    "id": "memory-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1525.0, 1040.0, 23.0 ],
                                    "text": "mode markov, pcs 0 4 7, fill 0, row 0 0 1 1, row 4 1 0 0, row 7 1 0 0, start 0, editpc 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "memory-pause",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 500.0, 1563.0, 500.0, 23.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "memory-body",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 225.0, 784.0, 193.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 225.0, 784.0, 193.0, 33.0 ],
                                    "text": "Each visit to C uses the same bag.\nE and G need not alternate."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "workspace-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 178.0, 600.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 178.0, 600.0, 23.0 ],
                                    "text": "YOUR LIVE MODEL"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-0",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 475.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 475.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 472.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 472.0, 240.0, 48.0, 19.0 ],
                                    "text": "0 C"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1596.0, 500.0, 23.0 ],
                                    "text": "prepend enable 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-1",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 524.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 524.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 521.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 521.0, 240.0, 48.0, 19.0 ],
                                    "text": "1 C#"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1629.0, 500.0, 23.0 ],
                                    "text": "prepend enable 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-2",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 573.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 573.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 570.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 570.0, 240.0, 48.0, 19.0 ],
                                    "text": "2 D"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1662.0, 500.0, 23.0 ],
                                    "text": "prepend enable 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-3",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 622.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 622.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 619.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 619.0, 240.0, 48.0, 19.0 ],
                                    "text": "3 D#"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1695.0, 500.0, 23.0 ],
                                    "text": "prepend enable 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-4",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 671.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 671.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 668.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 668.0, 240.0, 48.0, 19.0 ],
                                    "text": "4 E"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1728.0, 500.0, 23.0 ],
                                    "text": "prepend enable 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-5",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 720.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 720.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 717.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 717.0, 240.0, 48.0, 19.0 ],
                                    "text": "5 F"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1761.0, 500.0, 23.0 ],
                                    "text": "prepend enable 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-6",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 769.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 769.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 766.0, 240.0, 48.0, 19.0 ],
                                    "text": "6 F#"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1794.0, 500.0, 23.0 ],
                                    "text": "prepend enable 6"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-7",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 818.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 818.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 815.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 815.0, 240.0, 48.0, 19.0 ],
                                    "text": "7 G"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1827.0, 500.0, 23.0 ],
                                    "text": "prepend enable 7"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-8",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 867.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 867.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 864.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 864.0, 240.0, 48.0, 19.0 ],
                                    "text": "8 G#"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1860.0, 500.0, 23.0 ],
                                    "text": "prepend enable 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-9",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 916.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 916.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 913.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 913.0, 240.0, 48.0, 19.0 ],
                                    "text": "9 A"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1893.0, 500.0, 23.0 ],
                                    "text": "prepend enable 9"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-10",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 965.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 965.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 962.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 962.0, 240.0, 48.0, 19.0 ],
                                    "text": "10 A#"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1926.0, 500.0, 23.0 ],
                                    "text": "prepend enable 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc-11",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1014.0, 213.0, 22.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1014.0, 213.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "pc-name-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1011.0, 240.0, 48.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1011.0, 240.0, 48.0, 19.0 ],
                                    "text": "11 B"
                                }
                            },
                            {
                                "box": {
                                    "id": "enable-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 1959.0, 500.0, 23.0 ],
                                    "text": "prepend enable 11"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "membership",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 268.0, 600.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 268.0, 600.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "current",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 299.0, 370.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 299.0, 370.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "start-menu",
                                    "items": "<empty>",
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 877.0, 298.0, 190.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 877.0, 298.0, 190.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "start-hint",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 877.0, 325.0, 190.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 877.0, 325.0, 190.0, 19.0 ],
                                    "text": "Set silent start/current"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "table-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 339.0, 600.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 339.0, 600.0, 21.0 ],
                                    "text": "WEIGHTS: row = FROM note; column = TO note"
                                }
                            },
                            {
                                "box": {
                                    "colhead": 1,
                                    "cols": 7,
                                    "colwidth": 74,
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "table",
                                    "maxclass": "jit.cellblock",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "list", "", "", "" ],
                                    "patching_rect": [ 475.0, 368.0, 592.0, 189.0 ],
                                    "precision": 3,
                                    "presentation": 1,
                                    "presentation_rect": [ 475.0, 368.0, 592.0, 189.0 ],
                                    "rowhead": 1,
                                    "rowheight": 23,
                                    "rows": 7,
                                    "selmode": 5
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "table-help",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 563.0, 600.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 563.0, 600.0, 20.0 ],
                                    "text": "Click a number, type a weight, press Return. A zero forbids that move."
                                }
                            },
                            {
                                "box": {
                                    "id": "edit-menu",
                                    "items": "<empty>",
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 475.0, 594.0, 147.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 475.0, 594.0, 147.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "editor",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 632.0, 594.0, 435.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 632.0, 594.0, 435.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "candycane": 22,
                                    "contdata": 1,
                                    "hint": "EDITABLE: drag outgoing weights for the selected source note.",
                                    "id": "weights",
                                    "maxclass": "multislider",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 475.0, 628.0, 592.0, 59.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 475.0, 628.0, 592.0, 59.0 ],
                                    "setminmax": [ 0.0, 10.0 ],
                                    "setstyle": 1,
                                    "spacing": 3
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "editorlabels",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 693.0, 600.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 693.0, 600.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "formula",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 732.0, 600.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 732.0, 600.0, 20.0 ],
                                    "text": "NEXT chances for CURRENT note = weight / row total. Zero total = silence."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "nexttext",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 758.0, 600.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 758.0, 600.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "transition",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 805.0, 600.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 474.0, 805.0, 600.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 12.0,
                                    "id": "history-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 843.0, 166.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 843.0, 166.0, 20.0 ],
                                    "text": "HEARD PCs / latest 16:"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "history",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 200.0, 843.0, 868.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 200.0, 843.0, 868.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "reference",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 80.0, 60.0, 860.0, 750.0 ],
                                        "openinpresentation": 1,
                                        "default_fontsize": 13.0,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 20.0,
                                                    "id": "title",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 18.0, 810.0, 30.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 18.0, 810.0, 30.0 ],
                                                    "text": "FIRST ORDER: WHAT THE ENGINE REMEMBERS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "h0",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 64.0, 810.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 64.0, 810.0, 23.0 ],
                                                    "text": "Read one row as one bag."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "b0",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 90.0, 810.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 24.0, 90.0, 810.0, 40.0 ],
                                                    "text": "Each destination has a weight. A row [0 3 1] toward C E G gives 0%, 75%, 25%.\nThe draw uses that row again every time the current note is C; previous visits do not empty the bag."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "h1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 145.0, 810.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 145.0, 810.0, 23.0 ],
                                                    "text": "Adding a note is different from connecting it."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "b1",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 171.0, 810.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 24.0, 171.0, 810.0, 40.0 ],
                                                    "text": "An active note can be selected only if an incoming weight permits it. Give the new note an outgoing path too.\nMembership changes preserve stored weights. Step 1 clears all stored weights to make this visible."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "h2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 226.0, 810.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 226.0, 810.0, 23.0 ],
                                                    "text": "Predict, step, listen, explain."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "b2",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 252.0, 810.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 24.0, 252.0, 810.0, 40.0 ],
                                                    "text": "Before each NEXT: name the current note, read its row, predict the possible successors.\nAfter NEXT: read Last, then inspect the new current note's row. RUN repeats the same operation."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "h3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 307.0, 810.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 307.0, 810.0, 23.0 ],
                                                    "text": "Make your own pattern."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "b3",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 333.0, 810.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 24.0, 333.0, 810.0, 40.0 ],
                                                    "text": "Start with three notes. Set self-weights to zero. Make one note a frequent return point.\nAdd a fourth note with its toggle; give it an incoming and outgoing weight. Listen and revise."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "h4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 388.0, 810.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 388.0, 810.0, 23.0 ],
                                                    "text": "Why C-E-C-G is not guaranteed here."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "b4",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 414.0, 810.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 24.0, 414.0, 810.0, 40.0 ],
                                                    "text": "After E-C and after G-C, the current state is the same C. Its probabilities are therefore the same.\nFor guaranteed alternation, use more memory or distinct internal states representing the two visits to C."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "h5",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 469.0, 810.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 469.0, 810.0, 23.0 ],
                                                    "text": "States are not order."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "b5",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 495.0, 810.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 24.0, 495.0, 810.0, 40.0 ],
                                                    "text": "Two, three, six, or twelve notes can all use order 1. Order is how many past events determine the next choice.\nThis builder uses the current pitch class as its only context. Weights are designed manually, not trained here."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "h6",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 550.0, 810.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 550.0, 810.0, 23.0 ],
                                                    "text": "Pitch class, MIDI note, and time."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "b6",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 576.0, 810.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 24.0, 576.0, 810.0, 40.0 ],
                                                    "text": "Pitch classes 0-11 name positions in an octave. At octave 4 the MIDI output is 60 + pitch class.\nThe metro controls onset spacing; this tutorial uses the builder's existing 250 ms sine envelope."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "h7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 631.0, 810.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 24.0, 631.0, 810.0, 23.0 ],
                                                    "text": "Keep a result."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "b7",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 657.0, 810.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 24.0, 657.0, 810.0, 40.0 ],
                                                    "text": "Cmd+S / Ctrl+S saves the model. EXPORT MODEL PLAYER freezes it to a .js player.\nClosing the tutorial stops RUN and clears its controls. The home model remains ready to edit."
                                                }
                                            }
                                        ],
                                        "lines": []
                                    },
                                    "patching_rect": [ 24.0, 882.0, 240.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "fontsize": 13.0
                                    },
                                    "text": "p concepts_and_experiments"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "reference-open",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 780.0, 14.0, 288.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 780.0, 14.0, 288.0, 29.0 ],
                                    "text": "CONCEPTS / EXPERIMENTS"
                                }
                            },
                            {
                                "box": {
                                    "id": "reference-open-commands",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 1992.0, 1040.0, 23.0 ],
                                    "text": "open"
                                }
                            },
                            {
                                "box": {
                                    "id": "reference-control",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2030.0, 500.0, 23.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "id": "ui-route",
                                    "linecount": 4,
                                    "maxclass": "newobj",
                                    "numinlets": 28,
                                    "numoutlets": 28,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 500.0, 2063.0, 500.0, 67.0 ],
                                    "text": "route table tablegate member count membership editmenu startmenu current midi currentpc transition rowstate nexttext historytext editor editrange weights editorlabels status octave keyboardoffset modeindex dirty dump stepcount mirrorweights mirrorcell"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-membership",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2096.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-current",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2129.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-transition",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2162.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-nexttext",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2195.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-historytext",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2228.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-editor",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2261.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-editorlabels",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2294.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "member-route",
                                    "maxclass": "newobj",
                                    "numinlets": 13,
                                    "numoutlets": 13,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 500.0, 2327.0, 500.0, 23.0 ],
                                    "text": "route 0 1 2 3 4 5 6 7 8 9 10 11"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2360.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2393.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2426.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2459.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2492.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2525.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2558.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2591.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2624.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2657.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2690.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-member-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2723.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "apply-count",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2756.0, 500.0, 23.0 ],
                                    "text": "prepend size"
                                }
                            },
                            {
                                "box": {
                                    "id": "apply-weights",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2789.0, 500.0, 23.0 ],
                                    "text": "prepend setlist"
                                }
                            },
                            {
                                "box": {
                                    "id": "apply-editrange",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2822.0, 500.0, 23.0 ],
                                    "text": "prepend setmax"
                                }
                            },
                            {
                                "box": {
                                    "id": "cmd-start-menu",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2855.0, 500.0, 23.0 ],
                                    "text": "prepend startindex"
                                }
                            },
                            {
                                "box": {
                                    "id": "cmd-edit-menu",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2888.0, 500.0, 23.0 ],
                                    "text": "prepend editindex"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-in-run",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2921.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-in-rate",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2954.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "set-in-level",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 2987.0, 500.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "mode-select",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "" ],
                                    "patching_rect": [ 500.0, 3020.0, 500.0, 23.0 ],
                                    "text": "sel 0 1 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "mode-text-0",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 3053.0, 1040.0, 23.0 ],
                                    "text": "set Mode: MARKOV"
                                }
                            },
                            {
                                "box": {
                                    "id": "mode-text-1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 3091.0, 1040.0, 23.0 ],
                                    "text": "set Mode: RANDOM"
                                }
                            },
                            {
                                "box": {
                                    "id": "mode-text-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 3129.0, 1040.0, 23.0 ],
                                    "text": "set Mode: CYCLE"
                                }
                            },
                            {
                                "box": {
                                    "id": "table-gate",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 3167.0, 500.0, 23.0 ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "cell-pre",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 3200.0, 500.0, 23.0 ],
                                    "text": "prepend cell"
                                }
                            },
                            {
                                "box": {
                                    "id": "weights-pre",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 500.0, 3233.0, 500.0, 23.0 ],
                                    "text": "prepend weights"
                                }
                            },
                            {
                                "box": {
                                    "id": "stop-message",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 3337.0, 1040.0, 23.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Silent slider values for the home editor",
                                    "id": "out-mirror-weights",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 524.0, 940.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Edited cell for the home table",
                                    "id": "out-mirror-cell",
                                    "index": 7,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 624.0, 940.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "home-cell-to-tutorial",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "", "bang" ],
                                    "patching_rect": [ 1100.0, 3672.0, 480.0, 23.0 ],
                                    "text": "t b l b"
                                }
                            },
                            {
                                "box": {
                                    "id": "home-cell-to-tutorial-off",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 3708.0, 480.0, 23.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "home-cell-to-tutorial-on",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 3744.0, 480.0, 23.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "home-cell-to-tutorial-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 3780.0, 480.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "tutorial-cell-fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1100.0, 3816.0, 480.0, 23.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "in-ui-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 3852.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "in-run-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 3888.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "in-rate-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 3924.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "in-level-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 3960.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "out-model-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 3996.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "out-run-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4032.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "out-rate-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4068.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "out-audio-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4104.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "out-level-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4140.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "out-mirror-weights-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4176.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "out-mirror-cell-visible",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4212.0, 480.0, 23.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "in-run-cache",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1100.0, 4248.0, 480.0, 23.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "in-rate-cache",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1100.0, 4284.0, 480.0, 23.0 ],
                                    "text": "i 650"
                                }
                            },
                            {
                                "box": {
                                    "id": "in-level-cache",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 1100.0, 4320.0, 480.0, 23.0 ],
                                    "text": "f 0.12"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Open tutorial controls",
                                    "id": "in-window",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 424.0, 900.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "window-active",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1100.0, 4392.0, 480.0, 23.0 ],
                                    "text": "active"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-active-select",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 1100.0, 4428.0, 480.0, 23.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-open-once",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 1100.0, 4464.0, 480.0, 23.0 ],
                                    "text": "onebang 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-open-sequence",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "bang" ],
                                    "patching_rect": [ 1100.0, 4500.0, 480.0, 23.0 ],
                                    "text": "t b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-gates-on",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4536.0, 480.0, 23.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-gates-off",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4572.0, 480.0, 23.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-model-status",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4608.0, 480.0, 23.0 ],
                                    "text": "status"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-close",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 1100.0, 4644.0, 480.0, 23.0 ],
                                    "text": "closebang"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-close-sequence",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 1100.0, 4680.0, 480.0, 23.0 ],
                                    "text": "t b b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-stop-parent",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4716.0, 480.0, 23.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-clear-local",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 1100.0, 4752.0, 480.0, 23.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "clear-local-zero",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4788.0, 480.0, 23.0 ],
                                    "text": "set 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "clear-local-weights",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4824.0, 480.0, 23.0 ],
                                    "text": "size 1, setlist 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "clear-local-menus",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4860.0, 480.0, 23.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "clear-local-table",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4896.0, 480.0, 23.0 ],
                                    "text": "clear all"
                                }
                            },
                            {
                                "box": {
                                    "id": "clear-local-text",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4932.0, 480.0, 23.0 ],
                                    "text": "set"
                                }
                            },
                            {
                                "box": {
                                    "id": "clear-local-rate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 4968.0, 480.0, 23.0 ],
                                    "text": "set 650"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-init",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 1100.0, 5004.0, 480.0, 23.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "window-init-sequence",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 1100.0, 5040.0, 480.0, 23.0 ],
                                    "text": "t b b"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "add-e-commands", 0 ],
                                    "source": [ "add-e", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "add-e-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "add-g-commands", 0 ],
                                    "source": [ "add-g", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "add-g-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "weights", 0 ],
                                    "source": [ "apply-count", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "weights", 0 ],
                                    "source": [ "apply-editrange", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "weights", 0 ],
                                    "source": [ "apply-weights", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "audio-off-commands", 0 ],
                                    "source": [ "audio-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-audio-visible", 1 ],
                                    "source": [ "audio-off-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "audio-on-commands", 0 ],
                                    "source": [ "audio-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-audio-visible", 1 ],
                                    "source": [ "audio-on-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "branch-pause", 0 ],
                                    "source": [ "branch", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "branch-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "branch-commands", 0 ],
                                    "source": [ "branch-pause", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "stop-message", 0 ],
                                    "source": [ "branch-pause", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "cell-pre", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "edit-menu", 0 ],
                                    "order": 1,
                                    "source": [ "clear-local-menus", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "start-menu", 0 ],
                                    "order": 0,
                                    "source": [ "clear-local-menus", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "rate", 0 ],
                                    "source": [ "clear-local-rate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "table", 0 ],
                                    "source": [ "clear-local-table", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "current", 0 ],
                                    "order": 5,
                                    "source": [ "clear-local-text", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "editor", 0 ],
                                    "order": 1,
                                    "source": [ "clear-local-text", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "editorlabels", 0 ],
                                    "order": 4,
                                    "source": [ "clear-local-text", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "history", 0 ],
                                    "order": 7,
                                    "source": [ "clear-local-text", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "membership", 0 ],
                                    "order": 6,
                                    "source": [ "clear-local-text", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mode-state", 0 ],
                                    "order": 0,
                                    "source": [ "clear-local-text", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "nexttext", 0 ],
                                    "order": 3,
                                    "source": [ "clear-local-text", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "transition", 0 ],
                                    "order": 2,
                                    "source": [ "clear-local-text", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "weights", 0 ],
                                    "source": [ "clear-local-weights", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "level", 0 ],
                                    "order": 9,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-0", 0 ],
                                    "order": 12,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-1", 0 ],
                                    "order": 11,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-10", 0 ],
                                    "order": 1,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-11", 0 ],
                                    "order": 0,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-2", 0 ],
                                    "order": 10,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-3", 0 ],
                                    "order": 8,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-4", 0 ],
                                    "order": 7,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-5", 0 ],
                                    "order": 6,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-6", 0 ],
                                    "order": 5,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-7", 0 ],
                                    "order": 4,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-8", 0 ],
                                    "order": 3,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-9", 0 ],
                                    "order": 2,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "run", 0 ],
                                    "order": 13,
                                    "source": [ "clear-local-zero", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "cmd-edit-menu", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "cmd-start-menu", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cmd-edit-menu", 0 ],
                                    "source": [ "edit-menu", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "enable-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "force-markov-commands", 0 ],
                                    "source": [ "force-markov", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "force-markov-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "home-cell-to-tutorial-off", 0 ],
                                    "source": [ "home-cell-to-tutorial", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "home-cell-to-tutorial-on", 0 ],
                                    "source": [ "home-cell-to-tutorial", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "home-cell-to-tutorial-set", 0 ],
                                    "source": [ "home-cell-to-tutorial", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "table-gate", 0 ],
                                    "source": [ "home-cell-to-tutorial-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "table-gate", 0 ],
                                    "source": [ "home-cell-to-tutorial-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "table", 0 ],
                                    "source": [ "home-cell-to-tutorial-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-level-cache", 1 ],
                                    "order": 0,
                                    "source": [ "in-level", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-level-visible", 1 ],
                                    "order": 1,
                                    "source": [ "in-level", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-level-visible", 1 ],
                                    "source": [ "in-level-cache", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-in-level", 0 ],
                                    "source": [ "in-level-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-rate-cache", 1 ],
                                    "order": 0,
                                    "source": [ "in-rate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-rate-visible", 1 ],
                                    "order": 1,
                                    "source": [ "in-rate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-rate-visible", 1 ],
                                    "source": [ "in-rate-cache", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-in-rate", 0 ],
                                    "source": [ "in-rate-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-run-cache", 1 ],
                                    "order": 0,
                                    "source": [ "in-run", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-run-visible", 1 ],
                                    "order": 1,
                                    "source": [ "in-run", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-run-visible", 1 ],
                                    "source": [ "in-run-cache", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-in-run", 0 ],
                                    "source": [ "in-run-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-ui-visible", 1 ],
                                    "source": [ "in-ui", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-route", 0 ],
                                    "source": [ "in-ui-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-open-once", 0 ],
                                    "source": [ "in-window", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-level-visible", 1 ],
                                    "source": [ "level", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-0", 0 ],
                                    "source": [ "member-route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-1", 0 ],
                                    "source": [ "member-route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-10", 0 ],
                                    "source": [ "member-route", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-11", 0 ],
                                    "source": [ "member-route", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-2", 0 ],
                                    "source": [ "member-route", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-3", 0 ],
                                    "source": [ "member-route", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-4", 0 ],
                                    "source": [ "member-route", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-5", 0 ],
                                    "source": [ "member-route", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-6", 0 ],
                                    "source": [ "member-route", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-7", 0 ],
                                    "source": [ "member-route", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-8", 0 ],
                                    "source": [ "member-route", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-member-9", 0 ],
                                    "source": [ "member-route", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "memory-pause", 0 ],
                                    "source": [ "memory", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "memory-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "memory-commands", 0 ],
                                    "source": [ "memory-pause", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "stop-message", 0 ],
                                    "source": [ "memory-pause", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mode-text-0", 0 ],
                                    "source": [ "mode-select", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mode-text-1", 0 ],
                                    "source": [ "mode-select", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mode-text-2", 0 ],
                                    "source": [ "mode-select", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mode-state", 0 ],
                                    "source": [ "mode-text-0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mode-state", 0 ],
                                    "source": [ "mode-text-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mode-state", 0 ],
                                    "source": [ "mode-text-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "next", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "one-note-pause", 0 ],
                                    "source": [ "one-note", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "one-note-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "one-note-commands", 0 ],
                                    "source": [ "one-note-pause", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "stop-message", 0 ],
                                    "source": [ "one-note-pause", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-audio", 0 ],
                                    "source": [ "out-audio-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-level", 0 ],
                                    "source": [ "out-level-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-mirror-cell", 0 ],
                                    "source": [ "out-mirror-cell-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-mirror-weights", 0 ],
                                    "source": [ "out-mirror-weights-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model", 0 ],
                                    "source": [ "out-model-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-rate", 0 ],
                                    "source": [ "out-rate-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-run", 0 ],
                                    "source": [ "out-run-visible", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-0", 0 ],
                                    "source": [ "pc-0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-1", 0 ],
                                    "source": [ "pc-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-10", 0 ],
                                    "source": [ "pc-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-11", 0 ],
                                    "source": [ "pc-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-2", 0 ],
                                    "source": [ "pc-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-3", 0 ],
                                    "source": [ "pc-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-4", 0 ],
                                    "source": [ "pc-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-5", 0 ],
                                    "source": [ "pc-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-6", 0 ],
                                    "source": [ "pc-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-7", 0 ],
                                    "source": [ "pc-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-8", 0 ],
                                    "source": [ "pc-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable-9", 0 ],
                                    "source": [ "pc-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-rate-visible", 1 ],
                                    "source": [ "rate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "reference-open-commands", 0 ],
                                    "source": [ "reference-open", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "reference-control", 0 ],
                                    "source": [ "reference-open-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-run-visible", 1 ],
                                    "source": [ "run", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "current", 0 ],
                                    "source": [ "set-current", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "editor", 0 ],
                                    "source": [ "set-editor", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "editorlabels", 0 ],
                                    "source": [ "set-editorlabels", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "history", 0 ],
                                    "source": [ "set-historytext", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "level", 0 ],
                                    "source": [ "set-in-level", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "rate", 0 ],
                                    "source": [ "set-in-rate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "run", 0 ],
                                    "source": [ "set-in-run", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-0", 0 ],
                                    "source": [ "set-member-0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-1", 0 ],
                                    "source": [ "set-member-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-10", 0 ],
                                    "source": [ "set-member-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-11", 0 ],
                                    "source": [ "set-member-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-2", 0 ],
                                    "source": [ "set-member-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-3", 0 ],
                                    "source": [ "set-member-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-4", 0 ],
                                    "source": [ "set-member-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-5", 0 ],
                                    "source": [ "set-member-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-6", 0 ],
                                    "source": [ "set-member-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-7", 0 ],
                                    "source": [ "set-member-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-8", 0 ],
                                    "source": [ "set-member-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pc-9", 0 ],
                                    "source": [ "set-member-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "membership", 0 ],
                                    "source": [ "set-membership", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "nexttext", 0 ],
                                    "source": [ "set-nexttext", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "transition", 0 ],
                                    "source": [ "set-transition", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "six-note-pause", 0 ],
                                    "source": [ "six-note", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "six-note-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "six-note-commands", 0 ],
                                    "source": [ "six-note-pause", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "stop-message", 0 ],
                                    "source": [ "six-note-pause", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cmd-start-menu", 0 ],
                                    "source": [ "start-menu", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-run-visible", 1 ],
                                    "source": [ "stop-message", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "table-gate", 1 ],
                                    "source": [ "table", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tutorial-cell-fan", 0 ],
                                    "source": [ "table-gate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "three-note-pause", 0 ],
                                    "source": [ "three-note", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "three-note-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "stop-message", 0 ],
                                    "source": [ "three-note-pause", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "three-note-commands", 0 ],
                                    "source": [ "three-note-pause", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cell-pre", 0 ],
                                    "source": [ "tutorial-cell-fan", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-mirror-cell-visible", 1 ],
                                    "source": [ "tutorial-cell-fan", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "two-note-pause", 0 ],
                                    "source": [ "two-note", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "two-note-commands", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "stop-message", 0 ],
                                    "source": [ "two-note-pause", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "two-note-commands", 0 ],
                                    "source": [ "two-note-pause", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "apply-count", 0 ],
                                    "source": [ "ui-route", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "apply-editrange", 0 ],
                                    "source": [ "ui-route", 15 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "apply-weights", 0 ],
                                    "source": [ "ui-route", 25 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "apply-weights", 0 ],
                                    "source": [ "ui-route", 16 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "edit-menu", 0 ],
                                    "source": [ "ui-route", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "home-cell-to-tutorial", 0 ],
                                    "source": [ "ui-route", 26 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "member-route", 0 ],
                                    "source": [ "ui-route", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mode-select", 0 ],
                                    "source": [ "ui-route", 21 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-current", 0 ],
                                    "source": [ "ui-route", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-editor", 0 ],
                                    "source": [ "ui-route", 14 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-editorlabels", 0 ],
                                    "source": [ "ui-route", 17 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-historytext", 0 ],
                                    "source": [ "ui-route", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-membership", 0 ],
                                    "source": [ "ui-route", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-nexttext", 0 ],
                                    "source": [ "ui-route", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-transition", 0 ],
                                    "source": [ "ui-route", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "start-menu", 0 ],
                                    "source": [ "ui-route", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "table", 0 ],
                                    "source": [ "ui-route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "table-gate", 0 ],
                                    "source": [ "ui-route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-mirror-weights-visible", 1 ],
                                    "order": 0,
                                    "source": [ "weights", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "weights-pre", 0 ],
                                    "order": 1,
                                    "source": [ "weights", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "weights-pre", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-active-select", 0 ],
                                    "source": [ "window-active", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-open-once", 0 ],
                                    "source": [ "window-active-select", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clear-local-menus", 0 ],
                                    "order": 3,
                                    "source": [ "window-clear-local", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clear-local-rate", 0 ],
                                    "order": 0,
                                    "source": [ "window-clear-local", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clear-local-table", 0 ],
                                    "order": 2,
                                    "source": [ "window-clear-local", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clear-local-text", 0 ],
                                    "order": 1,
                                    "source": [ "window-clear-local", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clear-local-weights", 0 ],
                                    "order": 4,
                                    "source": [ "window-clear-local", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clear-local-zero", 0 ],
                                    "order": 5,
                                    "source": [ "window-clear-local", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-close-sequence", 0 ],
                                    "source": [ "window-close", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-clear-local", 0 ],
                                    "source": [ "window-close-sequence", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-gates-off", 0 ],
                                    "source": [ "window-close-sequence", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-open-once", 1 ],
                                    "source": [ "window-close-sequence", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-stop-parent", 0 ],
                                    "source": [ "window-close-sequence", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-level-visible", 0 ],
                                    "order": 7,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-rate-visible", 0 ],
                                    "order": 8,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-run-visible", 0 ],
                                    "order": 9,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-ui-visible", 0 ],
                                    "order": 10,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-audio-visible", 0 ],
                                    "order": 3,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-level-visible", 0 ],
                                    "order": 2,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-mirror-cell-visible", 0 ],
                                    "order": 0,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-mirror-weights-visible", 0 ],
                                    "order": 1,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 0 ],
                                    "order": 6,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-rate-visible", 0 ],
                                    "order": 4,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-run-visible", 0 ],
                                    "order": 5,
                                    "source": [ "window-gates-off", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-level-visible", 0 ],
                                    "order": 7,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-rate-visible", 0 ],
                                    "order": 8,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-run-visible", 0 ],
                                    "order": 9,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-ui-visible", 0 ],
                                    "order": 10,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-audio-visible", 0 ],
                                    "order": 3,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-level-visible", 0 ],
                                    "order": 2,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-mirror-cell-visible", 0 ],
                                    "order": 0,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-mirror-weights-visible", 0 ],
                                    "order": 1,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 0 ],
                                    "order": 6,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-rate-visible", 0 ],
                                    "order": 4,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-run-visible", 0 ],
                                    "order": 5,
                                    "source": [ "window-gates-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-init-sequence", 0 ],
                                    "source": [ "window-init", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-clear-local", 0 ],
                                    "source": [ "window-init-sequence", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-gates-off", 0 ],
                                    "source": [ "window-init-sequence", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-model-visible", 1 ],
                                    "source": [ "window-model-status", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-open-sequence", 0 ],
                                    "source": [ "window-open-once", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-level-cache", 0 ],
                                    "order": 0,
                                    "source": [ "window-open-sequence", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-rate-cache", 0 ],
                                    "order": 1,
                                    "source": [ "window-open-sequence", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "in-run-cache", 0 ],
                                    "order": 2,
                                    "source": [ "window-open-sequence", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-gates-on", 0 ],
                                    "source": [ "window-open-sequence", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "window-model-status", 0 ],
                                    "source": [ "window-open-sequence", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out-run", 0 ],
                                    "source": [ "window-stop-parent", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1110.0, 880.0, 245.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p first_order_tutorial"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "tutorial-open",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1110.0, 820.0, 245.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 802.0, 47.0, 268.0, 29.0 ],
                    "text": "OPEN INTERACTIVE TUTORIAL"
                }
            },
            {
                "box": {
                    "id": "tutorial-open-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1110.0, 920.0, 80.0, 23.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "tutorial-open-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1110.0, 960.0, 60.0, 23.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "tutorial-control",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1110.0, 1000.0, 75.0, 23.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "tutorial-mirror-weights",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1180.0, 1800.0, 480.0, 23.0 ],
                    "text": "prepend mirrorweights"
                }
            },
            {
                "box": {
                    "id": "tutorial-cell-to-home",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "", "bang" ],
                    "patching_rect": [ 1180.0, 1836.0, 480.0, 23.0 ],
                    "text": "t b l b"
                }
            },
            {
                "box": {
                    "id": "tutorial-cell-to-home-off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1180.0, 1872.0, 480.0, 23.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "tutorial-cell-to-home-on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1180.0, 1908.0, 480.0, 23.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "tutorial-cell-to-home-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1180.0, 1944.0, 480.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "home-cell-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1180.0, 1980.0, 480.0, 23.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "tutorial-mirror-cell",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1180.0, 2016.0, 480.0, 23.0 ],
                    "text": "prepend mirrorcell"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "probabilities-display-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1180.0, 2052.0, 480.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 425.0, 548.0, 140.0, 19.0 ],
                    "text": "DISPLAY ONLY"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 0,
                    "source": [ "audio", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 1,
                    "source": [ "audio", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "first-order-tutorial", 1 ],
                    "order": 0,
                    "source": [ "auto", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "metro", 0 ],
                    "order": 1,
                    "source": [ "auto", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "cell-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "defer-step", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "thispatcher", 0 ],
                    "source": [ "dirty", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "edit-pre", 0 ],
                    "source": [ "edit-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "edit-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio", 0 ],
                    "source": [ "engine", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "first-order-tutorial", 0 ],
                    "order": 0,
                    "source": [ "engine", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-probs", 0 ],
                    "source": [ "engine", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ui-route", 0 ],
                    "order": 1,
                    "source": [ "engine", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "export-panel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "export-panel", 0 ],
                    "source": [ "export-player-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto", 0 ],
                    "source": [ "first-order-tutorial", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "source": [ "first-order-tutorial", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "first-order-tutorial", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "level", 0 ],
                    "source": [ "first-order-tutorial", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rate", 0 ],
                    "source": [ "first-order-tutorial", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-weights", 0 ],
                    "source": [ "first-order-tutorial", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-cell-to-home", 0 ],
                    "source": [ "first-order-tutorial", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cell-pre", 0 ],
                    "source": [ "home-cell-fan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-mirror-cell", 0 ],
                    "source": [ "home-cell-fan", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "level", 0 ],
                    "source": [ "init-level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rate", 0 ],
                    "source": [ "init-rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "init-status", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto", 0 ],
                    "source": [ "init-stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "init-level", 0 ],
                    "source": [ "init-trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "init-rate", 0 ],
                    "source": [ "init-trigger", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "init-status", 0 ],
                    "source": [ "init-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "init-stop", 0 ],
                    "source": [ "init-trigger", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio", 1 ],
                    "order": 1,
                    "source": [ "level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "first-order-tutorial", 3 ],
                    "order": 0,
                    "source": [ "level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loaddefer", 0 ],
                    "source": [ "load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "init-trigger", 0 ],
                    "source": [ "loaddefer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-0", 0 ],
                    "source": [ "member-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-1", 0 ],
                    "source": [ "member-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-10", 0 ],
                    "source": [ "member-route", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-11", 0 ],
                    "source": [ "member-route", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-2", 0 ],
                    "source": [ "member-route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-3", 0 ],
                    "source": [ "member-route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-4", 0 ],
                    "source": [ "member-route", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-5", 0 ],
                    "source": [ "member-route", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-6", 0 ],
                    "source": [ "member-route", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-7", 0 ],
                    "source": [ "member-route", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-8", 0 ],
                    "source": [ "member-route", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-set-9", 0 ],
                    "source": [ "member-route", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-0", 0 ],
                    "source": [ "member-set-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-1", 0 ],
                    "source": [ "member-set-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-10", 0 ],
                    "source": [ "member-set-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-11", 0 ],
                    "source": [ "member-set-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-2", 0 ],
                    "source": [ "member-set-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-3", 0 ],
                    "source": [ "member-set-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-4", 0 ],
                    "source": [ "member-set-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-5", 0 ],
                    "source": [ "member-set-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-6", 0 ],
                    "source": [ "member-set-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-7", 0 ],
                    "source": [ "member-set-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-8", 0 ],
                    "source": [ "member-set-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-9", 0 ],
                    "source": [ "member-set-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defer-step", 0 ],
                    "source": [ "metro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "mode-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "mode-markov", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mode-select", 0 ],
                    "source": [ "mode-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "mode-random", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mode-cycle", 0 ],
                    "source": [ "mode-select", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mode-markov", 0 ],
                    "source": [ "mode-select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mode-random", 0 ],
                    "source": [ "mode-select", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "octave-pre", 0 ],
                    "source": [ "octave", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "octave-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-0", 0 ],
                    "source": [ "pc-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-1", 0 ],
                    "source": [ "pc-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-10", 0 ],
                    "source": [ "pc-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-11", 0 ],
                    "source": [ "pc-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-2", 0 ],
                    "source": [ "pc-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-3", 0 ],
                    "source": [ "pc-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-4", 0 ],
                    "source": [ "pc-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-5", 0 ],
                    "source": [ "pc-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-6", 0 ],
                    "source": [ "pc-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-7", 0 ],
                    "source": [ "pc-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-8", 0 ],
                    "source": [ "pc-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc-pre-9", 0 ],
                    "source": [ "pc-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pc-pre-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "first-order-tutorial", 2 ],
                    "order": 0,
                    "source": [ "rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "metro", 1 ],
                    "order": 1,
                    "source": [ "rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "reference", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weights", 0 ],
                    "source": [ "set-editrange", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "keyboard", 0 ],
                    "source": [ "set-key", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "keyboard", 0 ],
                    "source": [ "set-keyoffset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mode-menu", 0 ],
                    "source": [ "set-mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "octave", 0 ],
                    "source": [ "set-octave", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "probabilities", 0 ],
                    "source": [ "set-probs", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "probabilities", 0 ],
                    "order": 1,
                    "source": [ "set-size", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weights", 0 ],
                    "order": 0,
                    "source": [ "set-size", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weights", 0 ],
                    "source": [ "set-weights", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "start-pre", 0 ],
                    "source": [ "start-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "start-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defer-step", 0 ],
                    "source": [ "step", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "table-gate", 1 ],
                    "source": [ "table", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "home-cell-fan", 0 ],
                    "source": [ "table-gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "current", 0 ],
                    "source": [ "text-current", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "editor", 0 ],
                    "source": [ "text-editor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "editorlabels", 0 ],
                    "source": [ "text-editorlabels", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "history", 0 ],
                    "source": [ "text-historytext", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "membership", 0 ],
                    "source": [ "text-membership", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nexttext", 0 ],
                    "source": [ "text-nexttext", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rowstate", 0 ],
                    "source": [ "text-rowstate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status", 0 ],
                    "source": [ "text-status", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "transition", 0 ],
                    "source": [ "text-transition", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-cell-to-home-off", 0 ],
                    "source": [ "tutorial-cell-to-home", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-cell-to-home-on", 0 ],
                    "source": [ "tutorial-cell-to-home", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-cell-to-home-set", 0 ],
                    "source": [ "tutorial-cell-to-home", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "table-gate", 0 ],
                    "source": [ "tutorial-cell-to-home-off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "table-gate", 0 ],
                    "source": [ "tutorial-cell-to-home-on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "table", 0 ],
                    "source": [ "tutorial-cell-to-home-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "first-order-tutorial", 0 ],
                    "source": [ "tutorial-control", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "first-order-tutorial", 0 ],
                    "source": [ "tutorial-mirror-cell", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "first-order-tutorial", 0 ],
                    "source": [ "tutorial-mirror-weights", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-open-trigger", 0 ],
                    "source": [ "tutorial-open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-control", 0 ],
                    "source": [ "tutorial-open-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "first-order-tutorial", 4 ],
                    "source": [ "tutorial-open-trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-open-message", 0 ],
                    "source": [ "tutorial-open-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dirty", 0 ],
                    "source": [ "ui-route", 22 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dump-print", 0 ],
                    "source": [ "ui-route", 23 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "edit-menu", 0 ],
                    "source": [ "ui-route", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "member-route", 0 ],
                    "source": [ "ui-route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-editrange", 0 ],
                    "source": [ "ui-route", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-key", 0 ],
                    "source": [ "ui-route", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-keyoffset", 0 ],
                    "source": [ "ui-route", 20 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-mode", 0 ],
                    "source": [ "ui-route", 21 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-octave", 0 ],
                    "source": [ "ui-route", 19 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-size", 0 ],
                    "source": [ "ui-route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-weights", 0 ],
                    "source": [ "ui-route", 16 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "start-menu", 0 ],
                    "source": [ "ui-route", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "table", 0 ],
                    "source": [ "ui-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "table-gate", 0 ],
                    "source": [ "ui-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-current", 0 ],
                    "source": [ "ui-route", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-editor", 0 ],
                    "source": [ "ui-route", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-editorlabels", 0 ],
                    "source": [ "ui-route", 17 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-historytext", 0 ],
                    "source": [ "ui-route", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-membership", 0 ],
                    "source": [ "ui-route", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-nexttext", 0 ],
                    "source": [ "ui-route", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-rowstate", 0 ],
                    "source": [ "ui-route", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-status", 0 ],
                    "source": [ "ui-route", 18 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "text-transition", 0 ],
                    "source": [ "ui-route", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-mirror-weights", 0 ],
                    "order": 0,
                    "source": [ "weights", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weights-pre", 0 ],
                    "order": 1,
                    "source": [ "weights", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "weights-pre", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}