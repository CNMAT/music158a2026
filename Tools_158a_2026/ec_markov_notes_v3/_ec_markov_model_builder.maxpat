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
        "rect": [ 134.0, 100.0, 1100.0, 983.0 ],
        "openinpresentation": 1,
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 501.0, 570.0, 620.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 456.0, 576.0, 527.0, 20.0 ],
                    "text": "Current pitchclasses. Each pitchclass has weights for next move. choose pitchclass apply weights"
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
                    "presentation_linecount": 2,
                    "presentation_rect": [ 24.0, 143.0, 394.0, 36.0 ],
                    "text": "Active PCs: 0  3  7  10  |  rows and columns always ascend by pitch class"
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
                    "items": [ "0 C", ",", "3 D#", ",", "7 G", ",", "10 A#" ],
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
                    "presentation_rect": [ 24.0, 240.0, 250.0, 23.0 ]
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
                    "presentation_rect": [ 24.0, 282.0, 190.0, 21.0 ],
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
                    "presentation_linecount": 2,
                    "presentation_rect": [ 24.0, 314.0, 171.0, 51.0 ],
                    "text": "PC 7 G  |  MIDI 67"
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
                    "presentation_rect": [ 24.0, 353.0, 295.0, 21.0 ],
                    "text": "Last: 3 -> 7  |  100.0%  |  draw 0.506"
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
                    "presentation_rect": [ 24.0, 402.0, 203.0, 20.0 ],
                    "text": "Next-choice chances (%) | markov"
                }
            },
            {
                "box": {
                    "id": "probabilities",
                    "ignoreclick": 1,
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 448.0, 400.0, 94.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 448.0, 400.0, 94.0 ],
                    "setminmax": [ 0.0, 100.0 ],
                    "setstyle": 1,
                    "size": 4,
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
                    "presentation_rect": [ 24.0, 549.0, 394.0, 20.0 ],
                    "text": "0: 0.0%   3: 0.0%   7: 0.0%   10: 100.0%"
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
                    "presentation_rect": [ 24.0, 620.0, 240.0, 20.0 ],
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
                    "presentation_rect": [ 25.5, 642.0, 403.0, 22.0 ],
                    "text": "10  0  3  7  10  0  3  7  10  0  3  7  10  0  3  7"
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
                    "presentation_rect": [ 24.5, 676.0, 126.0, 76.0 ],
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
                    "presentation_rect": [ 24.0, 759.0, 311.0, 33.0 ],
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
                    "cols": 5,
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
                    "presentation_rect": [ 456.0, 266.0, 620.0, 265.0 ],
                    "rowhead": 1,
                    "rowheight": 19,
                    "rows": 5,
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
                    "items": [ "0 C", ",", "3 D#", ",", "7 G", ",", "10 A#" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 456.0, 582.0, 145.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 456.0, 599.0, 145.0, 23.0 ]
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
                    "presentation_rect": [ 613.0, 600.0, 332.0, 21.0 ],
                    "text": "Bag for PC 10 A#  |  total 10"
                }
            },
            {
                "box": {
                    "candycane": 22,
                    "contdata": 1,
                    "id": "weights",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 456.0, 625.0, 620.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 456.0, 625.0, 620.0, 100.0 ],
                    "setminmax": [ 0.0, 10.0 ],
                    "setstyle": 1,
                    "size": 4,
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
                    "presentation_rect": [ 456.0, 734.0, 620.0, 20.0 ],
                    "text": "0: 10   3: 0   7: 0   10: 0"
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
                    "presentation_rect": [ 456.0, 759.0, 457.0, 33.0 ],
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
                    "presentation_rect": [ 20.0, 797.0, 217.0, 33.0 ],
                    "text": "Updated bag for PC 10 A#. Changes affect the next bang."
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
                        "rect": [ 50.0, 50.0, 1160.0, 800.0 ],
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
                                    "patching_rect": [ 24.0, 15.0, 1100.0, 30.0 ],
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
                                    "patching_rect": [ 24.0, 55.0, 1100.0, 48.0 ],
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
                                    "patching_rect": [ 24.0, 112.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 112.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 138.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 138.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 164.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 164.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 190.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 190.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 216.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 216.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 242.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 242.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 268.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 268.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 294.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 294.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 320.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 320.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 346.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 346.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 372.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 372.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 398.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 398.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 424.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 424.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 450.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 450.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 476.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 476.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 502.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 502.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 528.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 528.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 554.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 554.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 580.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 580.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 606.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 606.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 632.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 632.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 658.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 658.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 684.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 684.0, 615.0, 24.0 ],
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
                                    "patching_rect": [ 24.0, 710.0, 475.0, 25.0 ],
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
                                    "patching_rect": [ 520.0, 710.0, 615.0, 24.0 ],
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
                    "presentation_rect": [ 14.0, 834.0, 205.0, 23.0 ],
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
                    "text": "p message_reference"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "reference-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 240.0, 880.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 230.0, 834.0, 310.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "Double-click for programming examples.",
                    "textcolor": [ 0.8901960784313725, 0.8705882352941177, 0.8705882352941177, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "embedstate": [
                        [ "restorestate", 2, 4, 7, 10, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0.0, 1, 1, 10.0, 1, 1, 1, 0.0, 1, 1, 0.0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.0, 1, 1, 0.0, 1, 1, 1, 10.0, 1, 1, 0.0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.0, 1, 1, 0.0, 1, 1, 1, 0.0, 1, 1, 10.0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10.0, 1, 1, 0.0, 1, 1, 1, 0.0, 1, 1, 0.0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ]
                    ],
                    "id": "engine",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 620.0, 880.0, 235.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 610.0, 834.0, 235.0, 23.0 ],
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
                    "presentation_rect": [ 858.0, 834.0, 208.0, 20.0 ],
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
                        "rect": [ 60.0, 60.0, 720.0, 470.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "a-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 660.0, 30.0 ],
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
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 35.0, 115.0, 60.0, 23.0 ],
                                    "text": "t b i"
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
                                    "patching_rect": [ 35.0, 195.0, 125.0, 25.0 ],
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
                                    "patching_rect": [ 300.0, 280.0, 365.0, 60.0 ],
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
                    "patching_rect": [ 620.0, 1560.0, 150.0, 23.0 ],
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
                    "presentation_rect": [ 17.5, 903.0, 47.0, 47.0 ],
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
                    "presentation_rect": [ 17.5, 880.0, 194.0, 21.0 ],
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
                    "presentation_rect": [ 238.0, 880.0, 786.0, 47.0 ],
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
                    "patching_rect": [ 620.0, 1010.0, 185.0, 23.0 ],
                    "text": "ec_markov_export"
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
                    "destination": [ "metro", 0 ],
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
                    "destination": [ "set-probs", 0 ],
                    "source": [ "engine", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ui-route", 0 ],
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
                    "destination": [ "metro", 1 ],
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
                    "destination": [ "cell-pre", 0 ],
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
                    "destination": [ "weights-pre", 0 ],
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