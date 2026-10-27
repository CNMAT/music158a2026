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
        "rect": [ 2283.0, 127.0, 1180.0, 825.0 ],
        "openinpresentation": 1,
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 633.0, 581.0, 50.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1100.0, 581.0, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-93",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 633.0, 581.0, 50.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1047.0, 581.0, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-38",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 537.0, 573.0, 586.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 620.0, 569.0, 155.0, 47.0 ],
                    "text": "sfizz~ is a Max/MSP object \nthat understands \nSFZ opcodes"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 657.0, 725.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 270.0, 571.0, 220.0, 33.0 ],
                    "text": "MIDI protocol syntax looks different under the hood..."
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 504.0, 733.0, 61.0, 36.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 515.0, 734.0, 36.0, 36.0 ],
                    "text": "MIDI\n84"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 345.0, 733.0, 61.0, 36.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 346.0, 734.0, 36.0, 36.0 ],
                    "text": "MIDI\n72"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 21.0, 731.0, 61.0, 36.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 27.0, 734.0, 36.0, 36.0 ],
                    "text": "MIDI\n48"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 765.0, 61.0, 50.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 186.0, 734.0, 79.0, 50.0 ],
                    "text": "MIDI\n60 \nmiddle-C"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 14.0, 631.0, 69.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 20.0, 14.0, 1013.0, 38.0 ],
                    "text": "SFZ / sfizz~  | Build sampler instruments (a keyed player for audio files) with an .sfz text file + a MAX sfizz~ sampler. \nAn SFZ opcode is a named instruction in an .sfz text file. The instructions tell MAX sfizz~ which sample to play, when to play it, or how it should sound."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 51.0, 1135.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 51.0, 752.0, 21.0 ],
                    "text": "START: keep this folder intact. Turn audio on below, choose a lesson, then click demo. "
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 79.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 79.0, 75.0, 20.0 ],
                    "text": "LESSON"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "items": [ "01  A text recipe + a sound file", ",", "02  A root pitch is not a key range", ",", "03  What does note-off actually do?", ",", "04  Shape time with an amplitude envelope", ",", "05  Velocity: loudness versus sample selection", ",", "06  Gain, layers, and stereo position", ",", "07  A release tail is not a release sample", ",", "08  First notes and legato notes", ",", "09  Repetition and one sound stopping another", ",", "10  Build and explain your own instrument" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 95.0, 79.0, 335.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 95.0, 79.0, 335.0, 23.0 ],
                    "varname": "lesson_menu"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 79.0, 65.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 440.0, 79.0, 65.0, 23.0 ],
                    "text": "previous"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 515.0, 79.0, 44.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 515.0, 79.0, 44.0, 23.0 ],
                    "text": "next"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 585.0, 79.0, 80.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 585.0, 79.0, 80.0, 20.0 ],
                    "text": "COMPARE"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "items": "A - one sample / one key",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 665.0, 79.0, 365.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 665.0, 79.0, 365.0, 23.0 ],
                    "varname": "variant_menu"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1040.0, 79.0, 60.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1040.0, 79.0, 60.0, 23.0 ],
                    "text": "reload"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 114.0, 545.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 114.0, 418.0, 27.0 ],
                    "text": "01  A text recipe + a sound file",
                    "varname": "lesson_title"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 585.0, 114.0, 565.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 450.0, 127.0, 565.0, 21.0 ],
                    "text": "SFZ SOURCE  /  opcode + comments at right after //"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "obj-12",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 150.0, 543.0, 123.0 ],
                    "presentation": 1,
                    "presentation_linecount": 12,
                    "presentation_rect": [ 20.0, 150.0, 366.0, 181.0 ],
                    "text": "An SFZ file contains rules, not recorded sound. sample= points to a WAV; a <region> says when and how that WAV plays. An opcode is a name=value instruction.\n\nHere, key=60 permits exactly MIDI note 60 and sets its original pitch. Other notes are intentionally silent. Numeric MIDI notes avoid octave-name differences between applications.\n\nMax sends performance events; sfizz~ reads the recipe and produces audio. You do not send SFZ opcodes as ordinary Max messages.",
                    "varname": "concept"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 337.0, 540.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 325.0, 147.0, 20.0 ],
                    "text": "TRY / LISTEN / EXPLAIN"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "obj-14",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 365.0, 491.0, 94.0 ],
                    "presentation": 1,
                    "presentation_linecount": 7,
                    "presentation_rect": [ 20.0, 339.0, 348.0, 108.0 ],
                    "text": "1. Turn audio on below; click demo.\n2. Play 60, then 62. Only 60 belongs to this region.\n3. Find sample= and key= in the source at right.\n4. Keep the samples folder beside all the SFZ files.\n\nPredict: if key=60 becomes key=62, which key plays the sample at its original pitch?",
                    "varname": "exercise"
                }
            },
            {
                "box": {
                    "fontname": "Menlo",
                    "fontsize": 12.0,
                    "id": "obj-15",
                    "linecount": 8,
                    "maxclass": "textedit",
                    "nosymquotes": 1,
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "outputmode": 1,
                    "parameter_enable": 0,
                    "patching_rect": [ 585.0, 148.0, 565.0, 295.0 ],
                    "presentation": 1,
                    "presentation_linecount": 8,
                    "presentation_rect": [ 387.0, 150.0, 769.0, 315.0 ],
                    "readonly": 1,
                    "text": "// One region; paths are relative to THIS SFZ file.\n<region>                 // Begin a playable region; inherit shared settings.\nsample=samples/soft_C4.wav // Load soft C4 WAV; path relative to this SFZ.\nkey=60                   // Play only MIDI 60; also set the root to 60.\nloop_mode=no_loop        // Play without looping; note release starts a fade.\nampeg_release=0.15       // Fade after note release: 0.15 seconds.\namp_veltrack=0           // Disable velocity-based amplitude scaling.\nvolume=-6                // Set sample gain offset to -6 dB.\n",
                    "varname": "source"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 585.0, 447.0, 565.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 387.0, 477.0, 200.0, 20.0 ],
                    "text": "01_recipe.sfz",
                    "varname": "filename"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 585.0, 473.0, 586.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 777.0, 546.0, 238.0, 20.0 ],
                    "text": "Double-click sfizz~ below to open its editor."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-18",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 513.0, 402.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 16.0, 550.0, 195.0, 47.0 ],
                    "text": "Load requested: 01_recipe.sfz. Check the Max Console for errors; then click demo.",
                    "varname": "status"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 550.0, 750.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 475.0, 172.0, 22.0 ],
                    "text": "PLAY THE INSTRUMENT"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 581.0, 92.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 497.0, 92.0, 20.0 ],
                    "text": "Pitch 0-127"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 605.0, 65.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 521.0, 65.0, 23.0 ],
                    "varname": "pitch_num"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 125.0, 581.0, 105.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 125.0, 497.0, 105.0, 20.0 ],
                    "text": "Velocity 1-127"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 125.0, 605.0, 65.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 125.0, 521.0, 65.0, 23.0 ],
                    "varname": "velocity_num"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 245.0, 581.0, 112.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 245.0, 497.0, 112.0, 20.0 ],
                    "text": "Duration (ms)"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "number",
                    "maximum": 10000,
                    "minimum": 20,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 245.0, 605.0, 85.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 245.0, 521.0, 85.0, 23.0 ],
                    "varname": "duration_num"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 355.0, 605.0, 50.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 355.0, 521.0, 50.0, 23.0 ],
                    "text": "timed"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 605.0, 45.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 420.0, 521.0, 45.0, 23.0 ],
                    "text": "hold"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 605.0, 62.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 480.0, 521.0, 62.0, 23.0 ],
                    "text": "release"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8156862745098039, 0.058823529411764705, 0.058823529411764705, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.8156862745098039, 0.058823529411764705, 0.058823529411764705, 1.0 ],
                    "bgfillcolor_color1": [ 0.8156862745098039, 0.058823529411764705, 0.058823529411764705, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 565.0, 605.0, 55.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 565.0, 521.0, 55.0, 23.0 ],
                    "text": "demo",
                    "textcolor": [ 0.9254901960784314, 0.8980392156862745, 0.8980392156862745, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 635.0, 605.0, 55.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 635.0, 521.0, 55.0, 23.0 ],
                    "text": "panic"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-31",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 715.0, 581.0, 65.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 542.0, 635.0, 49.0, 33.0 ],
                    "text": "Sustain\npedal"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 730.0, 605.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 551.0, 667.0, 24.0, 24.0 ],
                    "varname": "sustain"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 642.0, 725.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 612.0, 459.0, 20.0 ],
                    "text": "Press / release keys with the mouse. The keyboard uses its own click-height velocity."
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "kslider",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 47,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 668.0, 529.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 7.0, 638.0, 529.0, 95.0 ],
                    "range": 38,
                    "varname": "keyboard"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 580.0, 667.0, 120.0, 20.0 ],
                    "text": "External MIDI"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 580.0, 697.0, 24.0, 24.0 ],
                    "varname": "midi_enable"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-37",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 615.0, 694.0, 123.0, 33.0 ],
                    "text": "Enable notes + CC64\nAll input -> channel 1"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 800.0, 653.0, 267.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 777.0, 568.0, 267.0, 29.0 ],
                    "text": "sfizz~ @voices 32 @volume -12",
                    "varname": "sfizz_engine"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 800.0, 689.0, 95.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 957.0, 612.0, 95.0, 20.0 ],
                    "text": "Output dB"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-42",
                    "maxclass": "flonum",
                    "maximum": 0.0,
                    "minimum": -70.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 800.0, 714.0, 70.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 957.0, 637.0, 70.0, 23.0 ],
                    "varname": "output_db"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 895.0, 715.0, 78.0, 14.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 868.0, 615.0, 78.0, 14.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 895.0, 734.0, 78.0, 14.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 868.0, 634.0, 78.0, 14.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1060.0, 706.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 817.5, 614.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1035.0, 755.0, 110.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 792.5, 663.0, 110.0, 20.0 ],
                    "text": "Audio on/off"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 776.0, 616.0, 123.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 271.0, 550.0, 147.0, 20.0 ],
                    "text": "midievent 144 60 0",
                    "varname": "last_message"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1005.0, 200.0, 23.0 ],
                    "saved_object_attributes": {
                        "filename": "ec_sfz_tutorial.js",
                        "parameter_enable": 0
                    },
                    "text": "js ec_sfz_tutorial.js"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 890.0, 1050.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 788.0, 619.0, 23.0 ],
                    "text": "PATCHING VIEW: all controls feed one message stream. Only sfizz~ generates sound."
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 950.0, 130.0, 23.0 ],
                    "text": "prepend lesson"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 170.0, 950.0, 130.0, 23.0 ],
                    "text": "prepend variation"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 320.0, 950.0, 130.0, 23.0 ],
                    "text": "prepend pitch"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 950.0, 130.0, 23.0 ],
                    "text": "prepend velocity"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 950.0, 130.0, 23.0 ],
                    "text": "prepend duration"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 700.0, 950.0, 130.0, 23.0 ],
                    "text": "prepend pedal"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1120.0, 95.0, 23.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1160.0, 145.0, 23.0 ],
                    "text": "prepend incoming"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 280.0, 1080.0, 65.0, 23.0 ],
                    "text": "notein"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 280.0, 1120.0, 95.0, 23.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 280.0, 1160.0, 90.0, 23.0 ],
                    "text": "gate 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 280.0, 1200.0, 145.0, 23.0 ],
                    "text": "prepend incoming"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 480.0, 1080.0, 80.0, 23.0 ],
                    "text": "ctlin 64"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 1120.0, 90.0, 23.0 ],
                    "text": "gate 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 1160.0, 125.0, 23.0 ],
                    "text": "prepend cc 64"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 680.0, 1080.0, 65.0, 23.0 ],
                    "text": "sel 0"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 680.0, 1120.0, 55.0, 23.0 ],
                    "text": "panic"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 800.0, 950.0, 140.0, 23.0 ],
                    "text": "prepend volume"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 20.0, 1260.0, 80.0, 23.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1300.0, 80.0, 23.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1340.0, 80.0, 23.0 ],
                    "text": "initialize"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.0, 1300.0, 55.0, 23.0 ],
                    "text": "-12."
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 300.0, 1260.0, 85.0, 23.0 ],
                    "text": "closebang"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 1300.0, 55.0, 23.0 ],
                    "text": "panic"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 134.0, 172.0, 1020.0, 740.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 21.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 18.0, 960.0, 30.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 18.0, 960.0, 30.0 ],
                                    "text": "MINIMUM NATIVE MAX PATCH  /  MIDI -> sfizz~ -> audio"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 14.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 65.0, 960.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 65.0, 960.0, 22.0 ],
                                    "text": "This independent example shows the actual event path. Stop the main patch before using it. It loads 02a_range.sfz."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 14.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 112.0, 960.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 112.0, 960.0, 22.0 ],
                                    "text": "1. Click read to load.  2. Turn audio on.  3. Click a pitch.  4. Compare note-on and note-off in the message monitor."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 185.0, 180.0, 23.0 ],
                                    "text": "read 02a_range.sfz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 255.0, 45.0, 23.0 ],
                                    "text": "48"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 85.0, 255.0, 45.0, 23.0 ],
                                    "text": "60"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 255.0, 45.0, 23.0 ],
                                    "text": "64"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 215.0, 255.0, 45.0, 23.0 ],
                                    "text": "67"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 255.0, 45.0, 23.0 ],
                                    "text": "72"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 20.0, 310.0, 170.0, 23.0 ],
                                    "text": "makenote 100 400"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 365.0, 100.0, 23.0 ],
                                    "text": "pack 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 415.0, 205.0, 23.0 ],
                                    "text": "prepend midievent 144"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 20.0, 505.0, 190.0, 23.0 ],
                                    "text": "sfizz~ @volume -12"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 415.0, 250.0, 23.0 ],
                                    "text": "midievent 144 72 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 585.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 14.0,
                                    "id": "obj-16",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 300.0, 300.0, 670.0, 38.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 300.0, 300.0, 670.0, 38.0 ],
                                    "text": "makenote outputs velocity FIRST, then pitch.\npack stores velocity in its right inlet before pitch triggers the list."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 14.0,
                                    "id": "obj-17",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 397.0, 405.0, 69.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 4,
                                    "presentation_rect": [ 580.0, 397.0, 405.0, 69.0 ],
                                    "text": "midievent 144 60 100 = note 60 on\nmidievent 144 60 0 = note 60 off\nAn alternative is makenote directly into the two sfizz~ inlets:\npitch to left; velocity to right."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 505.0, 90.0, 23.0 ],
                                    "text": "readagain"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 14.0,
                                    "id": "obj-19",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 410.0, 500.0, 550.0, 38.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 410.0, 500.0, 550.0, 38.0 ],
                                    "text": "Double-click sfizz~ to view/edit its file.\nAfter a disk edit, readagain reloads the last SFZ."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 585.0, 195.0, 23.0 ],
                                    "text": "midievent 176 64 127"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 510.0, 585.0, 180.0, 23.0 ],
                                    "text": "midievent 176 64 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 640.0, 650.0, 23.0 ],
                                    "text": "midievent 176 64 0, midievent 176 123 0, midievent 176 120 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 300.0, 685.0, 680.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 300.0, 685.0, 680.0, 21.0 ],
                                    "text": "Pedal down / up above. Panic below: pedal up, all notes off, all sound off."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 20.0, 665.0, 90.0, 23.0 ],
                                    "text": "closebang"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "hidden": 1,
                                    "id": "pcontrol-inlet",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1010.0, 10.0, 25.0, 25.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 1 ],
                                    "order": 0,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 20.0, 1420.0, 270.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p 01_Minimum_native_Max_patch"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 600.0, 774.0, 45.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 551.0, 712.0, 45.0, 23.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 600.0, 1380.0, 75.0, 23.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 650.0, 774.0, 145.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 601.0, 712.0, 145.0, 20.0 ],
                    "text": "Native Max example"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 2430.0, 124.0, 1140.0, 880.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 23.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 18.0, 1100.0, 32.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 18.0, 1100.0, 32.0 ],
                                    "text": "CORE OPCODE DESK REFERENCE"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 62.0, 1090.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 62.0, 1090.0, 21.0 ],
                                    "text": "These are SFZ file instructions. They are not ordinary Max messages to sfizz~. Values below are practical definitions for this tutorial."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 118.0, 535.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 118.0, 535.0, 22.0 ],
                                    "text": "FILE / MAPPING"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 158.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 158.0, 535.0, 21.0 ],
                                    "text": "sample  |  Relative path"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 181.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 181.0, 535.0, 20.0 ],
                                    "text": "sample=samples/soft_C4.wav. Resolves from the SFZ location."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 215.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 215.0, 535.0, 21.0 ],
                                    "text": "<region>  |  Header"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 238.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 238.0, 535.0, 20.0 ],
                                    "text": "One set of sample playback rules. Every matching region may sound."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 272.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 272.0, 535.0, 21.0 ],
                                    "text": "<group> / <global>  |  Headers"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 295.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 295.0, 535.0, 20.0 ],
                                    "text": "Shared region defaults. Region values override the inherited value."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 329.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 329.0, 535.0, 21.0 ],
                                    "text": "key  |  MIDI 0-127"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 352.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 352.0, 535.0, 20.0 ],
                                    "text": "Sets lokey, hikey and pitch_keycenter to one number."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 386.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 386.0, 535.0, 21.0 ],
                                    "text": "lokey / hikey  |  MIDI 0-127"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 409.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 409.0, 535.0, 20.0 ],
                                    "text": "Inclusive pitch boundaries; not a transposition setting."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 443.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 443.0, 535.0, 21.0 ],
                                    "text": "pitch_keycenter  |  MIDI 0-127"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 466.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 466.0, 535.0, 20.0 ],
                                    "text": "Root note at which a sample plays at its recorded speed."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 500.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 500.0, 535.0, 21.0 ],
                                    "text": "lovel / hivel  |  MIDI 0-127"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 523.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 523.0, 535.0, 20.0 ],
                                    "text": "Inclusive velocity boundaries. Use 1-127 for note-on layers."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 557.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 557.0, 535.0, 21.0 ],
                                    "text": "transpose / tune  |  Semitones / cents"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 580.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 580.0, 535.0, 20.0 ],
                                    "text": "Pitch offsets. Example: tune=-7. 100 cents = one semitone."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 118.0, 535.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 118.0, 535.0, 22.0 ],
                                    "text": "LIFECYCLE / EXPRESSION"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 158.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 158.0, 535.0, 21.0 ],
                                    "text": "loop_mode  |  Four named modes"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 181.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 181.0, 535.0, 20.0 ],
                                    "text": "no_loop; one_shot; loop_continuous; loop_sustain. Lesson 03 compares them."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 215.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 215.0, 535.0, 21.0 ],
                                    "text": "loop_start / loop_end  |  Sample frames"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 238.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 238.0, 535.0, 20.0 ],
                                    "text": "Zero-based indices. End is inclusive; these are not milliseconds."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 272.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 272.0, 535.0, 21.0 ],
                                    "text": "trigger  |  Named event"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 295.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 295.0, 535.0, 20.0 ],
                                    "text": "attack; release; release_key; first; legato. See lessons 07-08."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 329.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 329.0, 535.0, 21.0 ],
                                    "text": "ampeg_attack / decay  |  Seconds"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 352.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 352.0, 535.0, 20.0 ],
                                    "text": "Rise to the peak / descent toward the sustain level."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 386.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 386.0, 535.0, 21.0 ],
                                    "text": "ampeg_sustain  |  0-100 percent"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 409.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 409.0, 535.0, 20.0 ],
                                    "text": "Held envelope level, not duration or MIDI pedal state."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 443.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 443.0, 535.0, 21.0 ],
                                    "text": "ampeg_release  |  Seconds"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 466.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 466.0, 535.0, 20.0 ],
                                    "text": "Fade of an existing voice after release. Does not create a new WAV."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 500.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 500.0, 535.0, 21.0 ],
                                    "text": "volume  |  Decibels"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 523.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 523.0, 535.0, 20.0 ],
                                    "text": "0 preserves sample level; negative attenuates. Core spec -144.6 to +6."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 557.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 557.0, 535.0, 21.0 ],
                                    "text": "amp_veltrack  |  -100 to 100 percent"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 580.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 580.0, 535.0, 20.0 ],
                                    "text": "Default 100; use 0 to isolate fixed-level or layer comparisons."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 614.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 614.0, 535.0, 21.0 ],
                                    "text": "pan  |  -100 to 100"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 637.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 637.0, 535.0, 20.0 ],
                                    "text": "Left / center 0 / right. Tutorial WAVs are mono."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 671.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 671.0, 535.0, 21.0 ],
                                    "text": "seq_length / seq_position  |  Positive integers"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 694.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 694.0, 535.0, 20.0 ],
                                    "text": "Cycle size and 1-based slot; demonstrated with 3 positions."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 728.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 728.0, 535.0, 21.0 ],
                                    "text": "group / off_by  |  Integer IDs"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 751.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 751.0, 535.0, 20.0 ],
                                    "text": "New voice group stops an old voice with matching off_by."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 785.0, 535.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 785.0, 535.0, 21.0 ],
                                    "text": "off_mode  |  fast / normal"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 808.0, 535.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 580.0, 808.0, 535.0, 20.0 ],
                                    "text": "Fast choke, or use the existing amplitude release envelope."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 846.0, 1100.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 846.0, 1100.0, 20.0 ],
                                    "text": "Units check: MIDI pitch / velocity are integers; gain is dB; envelope times are seconds; loop points are sample frames."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "hidden": 1,
                                    "id": "pcontrol-inlet",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1010.0, 10.0, 25.0, 25.0 ]
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 340.0, 1420.0, 215.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p 02_Opcode_reference"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08235294117647059, 0.2235294117647059, 0.8156862745098039, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.08235294117647059, 0.2235294117647059, 0.8156862745098039, 1.0 ],
                    "bgfillcolor_color1": [ 0.08235294117647059, 0.2235294117647059, 0.8156862745098039, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-80",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 815.0, 774.0, 45.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 777.0, 515.0, 45.0, 23.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 815.0, 1380.0, 75.0, 23.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-82",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 865.0, 774.0, 135.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 826.0, 517.0, 192.0, 20.0 ],
                    "text": "core opcode desk reference "
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 60.0, 60.0, 1080.0, 810.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 22.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 18.0, 1020.0, 32.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 18.0, 1020.0, 32.0 ],
                                    "text": "TEACHING PLAN / LISTENING CHECKS"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 14.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 62.0, 1030.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 62.0, 1030.0, 48.0 ],
                                    "text": "Suggested use: two 60-75 minute labs. Students predict, listen, edit one rule, and explain the evidence. The demo button runs an example, not a quiz."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 130.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 130.0, 160.0, 23.0 ],
                                    "text": "01 / Recipe"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 130.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 130.0, 850.0, 43.0 ],
                                    "text": "key=62 maps the same recorded pitch to MIDI 62; it does not retune the WAV to D."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 179.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 179.0, 160.0, 23.0 ],
                                    "text": "02 / Mapping"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 179.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 179.0, 850.0, 43.0 ],
                                    "text": "Overlapping regions both trigger. Pitch shifting by playback speed also changes duration."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 228.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 228.0, 160.0, 23.0 ],
                                    "text": "03 / Note-off"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 228.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 228.0, 850.0, 43.0 ],
                                    "text": "An envelope only scales existing audio. It cannot play beyond a sample end without looping."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 277.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 277.0, 160.0, 23.0 ],
                                    "text": "04 / Envelope"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 277.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 277.0, 850.0, 43.0 ],
                                    "text": "ampeg_sustain=0 can make a held note silent. Short key holds can interrupt a long attack."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 326.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 326.0, 160.0, 23.0 ],
                                    "text": "05 / Velocity"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 326.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 326.0, 850.0, 43.0 ],
                                    "text": "Selection (lovel/hivel), amplitude scaling (amp_veltrack), and recorded timbre are separate."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 375.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 375.0, 160.0, 23.0 ],
                                    "text": "06 / Gain"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 375.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 375.0, 850.0, 43.0 ],
                                    "text": "-6 dB plus -12 dB = -18 dB gain offset before other factors. This is not an absolute loudness."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 424.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 424.0, 160.0, 23.0 ],
                                    "text": "07 / Release"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 424.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 424.0, 850.0, 43.0 ],
                                    "text": "release_key fits key-release noise; release follows pedal-held note release in this comparison."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 473.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 473.0, 160.0, 23.0 ],
                                    "text": "08 / Legato"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 473.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 473.0, 850.0, 43.0 ],
                                    "text": "A legato trigger selects a region. It alone provides neither a glide nor monophonic behavior."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 522.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 522.0, 160.0, 23.0 ],
                                    "text": "09 / Choke"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 522.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 522.0, 850.0, 43.0 ],
                                    "text": "off_by belongs on the old voice being stopped; the new voice carries the matching group."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 571.0, 160.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 571.0, 160.0, 23.0 ],
                                    "text": "10 / Workshop"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 571.0, 850.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 195.0, 571.0, 850.0, 43.0 ],
                                    "text": "Test boundaries, low/high velocities, short/long holds, overlaps and pedal behavior."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 645.0, 200.0, 25.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 645.0, 200.0, 25.0 ],
                                    "text": "ASSESSMENT"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 14.0,
                                    "id": "obj-24",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 681.0, 1030.0, 88.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 20.0, 681.0, 1030.0, 88.0 ],
                                    "text": "Submit an SFZ, its samples, and a 30-second study. Explain mapping (25%), dynamics (25%), note-off design (25%), and clear evidence / file portability (25%).\nExtension: replace a WAV with your own recording. Identify its root, trim it, and choose loop points before changing the map."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "hidden": 1,
                                    "id": "pcontrol-inlet",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1010.0, 10.0, 25.0, 25.0 ]
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 600.0, 1420.0, 240.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p 03_Teaching_and_answers"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 600.0, 1465.0, 145.0, 23.0 ],
                    "text": "open teaching plan"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 600.0, 1505.0, 45.0, 23.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 600.0, 1545.0, 75.0, 23.0 ],
                    "text": "pcontrol"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 1 ],
                    "source": [ "obj-34", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "order": 2,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "order": 1,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "order": 0,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "order": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "order": 1,
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 1 ],
                    "order": 0,
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "order": 0,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 1 ],
                    "source": [ "obj-59", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 1 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 1 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "order": 1,
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "order": 0,
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}