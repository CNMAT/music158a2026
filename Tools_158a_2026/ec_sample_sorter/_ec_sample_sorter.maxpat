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
        "rect": [ 34.0, 100.0, 1029.0, 825.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 202.0, 254.0, 155.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 202.0, 253.0, 140.0, 20.0 ],
                    "text": "30 available",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ],
                    "textjustification": 2,
                    "varname": "available_count[1]"
                }
            },
            {
                "box": {
                    "fontsize": 28.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 22.0, 650.0, 38.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 22.0, 246.0, 38.0 ],
                    "text": "SAMPLE SORTER",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "version",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 810.0, 31.0, 205.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 810.0, 31.0, 205.0, 20.0 ],
                    "text": "v1.8  /  MAX 8.6+ & 9",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 15.0,
                    "id": "subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 65.0, 800.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 65.0, 437.0, 23.0 ],
                    "text": "Load sounds. Listen. Keep. Export your selection to a new folder",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.75, 0.81, 0.78, 1 ],
                    "id": "rule",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 100.0, 984.0, 4.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 100.0, 984.0, 4.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "section1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 116.0, 500.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 116.0, 500.0, 20.0 ],
                    "text": "01   SOURCE FOLDER",
                    "textcolor": [ 0.08, 0.4, 0.37, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08, 0.4, 0.37, 1.0 ],
                    "fontsize": 13.0,
                    "id": "load_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 28.0, 150.0, 166.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 150.0, 166.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Choose folder…",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "load_button"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "rescan_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 207.0, 150.0, 96.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 207.0, 150.0, 96.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Rescan",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "rescan_button"
                }
            },
            {
                "box": {
                    "border": 1.0,
                    "id": "folder_drop",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 318.0, 150.0, 190.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 318.0, 150.0, 190.0, 30.0 ],
                    "rounded": 5.0
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "drop_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 330.0, 154.0, 166.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 330.0, 154.0, 166.0, 20.0 ],
                    "text": "Drop a folder here",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "source_path",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 190.0, 984.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 190.0, 984.0, 20.0 ],
                    "text": "/Users/edmundcampionm1/Desktop/wood-samplelib-48kwav",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ],
                    "varname": "source_path"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "source_hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 231.0, 984.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 231.0, 984.0, 20.0 ],
                    "text": "Includes subfolders. Rescan keeps preferences; choosing a different source starts a new selection.",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "section2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 274.0, 600.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 274.0, 136.0, 20.0 ],
                    "text": "02   AUDITION & SORT",
                    "textcolor": [ 0.08, 0.4, 0.37, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 17.0,
                    "id": "available_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 310.0, 145.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 310.0, 145.0, 25.0 ],
                    "text": "AVAILABLE",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "available_count",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 335.0, 314.0, 155.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 182.0, 274.0, 140.0, 20.0 ],
                    "text": "30 available",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ],
                    "textjustification": 2,
                    "varname": "available_count"
                }
            },
            {
                "box": {
                    "fontsize": 17.0,
                    "id": "preferred_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 552.0, 310.0, 300.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 763.0, 311.5, 113.0, 25.0 ],
                    "text": "PREFERRED",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "preferred_count",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 863.0, 314.0, 149.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 919.5, 314.0, 92.5, 20.0 ],
                    "text": "24 preferred",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ],
                    "textjustification": 2,
                    "varname": "preferred_count"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1, 1, 1, 1 ],
                    "bgfillcolor_color": [ 1, 1, 1, 1 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontsize": 13.0,
                    "id": "available",
                    "items": [ "1 | wood_00wb_Sol2_Fp_roll_h.wav", ",", "2 | wood_00wb_Sol2_Fp_roll_s.wav", ",", "3 | wood_00wb_Sol2_Fp_roll.wav", ",", "4 | wood_00wb_Sol2_h.wav", ",", "5 | wood_03wb_Fa3_Fp_roll_h.wav", ",", "6 | wood_03wb_Fa3_Fp_roll_s.wav", ",", "7 | wood_03wb_Fa3_Fp_roll.wav", ",", "8 | wood_06wb_Mi4_flam_s.wav", ",", "9 | wood_06wb_Mi4_Fp_roll_h.wav", ",", "10 | wood_06wb_Mi4_Fp_roll_s.wav", ",", "11 | wood_06wb_Mi4_Fp_roll.wav", ",", "12 | wood_06wb_Mi4_s.wav", ",", "13 | wood_09wb_Fa5_FF_roll_s.wav", ",", "14 | wood_09wb_Fa5_flam_s.wav", ",", "15 | wood_09wb_Fa5_Fp_roll_h.wav", ",", "16 | wood_09wb_Fa5_Fp_roll_s.wav", ",", "17 | wood_09wb_Fa5_Fp_roll.wav", ",", "18 | wood_09wb_Fa5_s.wav", ",", "19 | wood_wb_high_FF_roll_s.wav", ",", "20 | wood_wb_high_flam_s.wav", ",", "21 | wood_wb_high_Fp_roll_h.wav", ",", "22 | wood_wb_high_Fp_roll_s.wav", ",", "23 | wood_wb_high_Fp_roll.wav", ",", "24 | wood_wb_high_s.wav", ",", "25 | wood_wb_vaughncraft9_s.wav", ",", "26 | wood_wb_vcraft9_5_fproll_h.wav", ",", "27 | wood_wb_vcraft9_5_fproll_s.wav", ",", "28 | wood_wb_vcraft9_5_fproll.wav", ",", "29 | wood_wb_vcraft9_5flam_h.wav", ",", "30 | wood_wb_vcraft9_5flam_s.wav" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 28.0, 345.0, 462.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 345.0, 462.0, 23.0 ],
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ],
                    "varname": "available"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1, 1, 1, 1 ],
                    "bgfillcolor_color": [ 1, 1, 1, 1 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontsize": 13.0,
                    "id": "preferred",
                    "items": [ "1 | wood_00wb_Sol2_FF_roll_h.wav", ",", "2 | wood_00wb_Sol2_FF_roll_s.wav", ",", "3 | wood_00wb_Sol2_flam_h.wav", ",", "4 | wood_00wb_Sol2_flam_s.wav", ",", "5 | wood_00wb_Sol2s.wav", ",", "6 | wood_03wb_Fa3_FF_roll_h.wav", ",", "7 | wood_03wb_Fa3_FF_roll_s.wav", ",", "8 | wood_03wb_Fa3_flam_h.wav", ",", "9 | wood_03wb_Fa3_flam_s.wav", ",", "10 | wood_03wb_Fa3_h.wav", ",", "11 | wood_03wb_Fa3_s.wav", ",", "12 | wood_06wb_Mi4_FF_roll_h.wav", ",", "13 | wood_06wb_Mi4_FF_roll_s.wav", ",", "14 | wood_06wb_Mi4_flam_h.wav", ",", "15 | wood_06wb_Mi4_h.wav", ",", "16 | wood_09wb_Fa5_FF_roll_h.wav", ",", "17 | wood_09wb_Fa5_flam_h.wav", ",", "18 | wood_09wb_Fa5_h.wav", ",", "19 | wood_wb_high_FF_roll_h.wav", ",", "20 | wood_wb_high_flam_h.wav", ",", "21 | wood_wb_high_h.wav", ",", "22 | wood_wb_vaughncraft9_h.wav", ",", "23 | wood_wb_vcraft9_5_ffroll_h.wav", ",", "24 | wood_wb_vcraft9_5_ffroll_s.wav" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 552.0, 345.0, 460.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 345.0, 460.0, 23.0 ],
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ],
                    "varname": "preferred"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "previous_available_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 28.0, 390.0, 100.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 390.0, 100.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Previous",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "previous_available_button"
                }
            },
            {
                "box": {
                    "id": "previous_available_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 28.0, 1020.0, 130.0, 22.0 ],
                    "text": "previous_available"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "next_available_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 140.0, 390.0, 100.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Next",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "next_available_button"
                }
            },
            {
                "box": {
                    "id": "next_available_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 140.0, 1036.0, 130.0, 22.0 ],
                    "text": "next_available"
                }
            },
            {
                "box": {
                    "active": 0,
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 13.0,
                    "id": "keep_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 258.0, 390.0, 232.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 453.0, 306.0, 305.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Move to Preferred (keep) →",
                    "textcolor": [ 0.9254901960784314, 0.8941176470588236, 0.8941176470588236, 1.0 ],
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "keep_button"
                }
            },
            {
                "box": {
                    "id": "keep_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 1052.0, 130.0, 22.0 ],
                    "text": "keep"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "previous_preferred_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 552.0, 390.0, 100.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 390.0, 100.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Previous",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "previous_preferred_button"
                }
            },
            {
                "box": {
                    "id": "previous_preferred_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 552.0, 1068.0, 130.0, 22.0 ],
                    "text": "previous_preferred"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "next_preferred_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 664.0, 390.0, 100.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 664.0, 390.0, 100.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Next",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "next_preferred_button"
                }
            },
            {
                "box": {
                    "id": "next_preferred_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 664.0, 1084.0, 130.0, 22.0 ],
                    "text": "next_preferred"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "remove_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 782.0, 390.0, 230.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 782.0, 390.0, 230.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "← Return",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "remove_button"
                }
            },
            {
                "box": {
                    "id": "remove_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 782.0, 1100.0, 130.0, 22.0 ],
                    "text": "remove"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "movement_hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 432.0, 984.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 432.0, 984.0, 20.0 ],
                    "text": "Keep moves the current file to Preferred once, without advancing. The Return button puts it back in Available.",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "loop_toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 310.0, 465.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 310.0, 465.0, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "loop_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 338.0, 464.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 338.0, 464.0, 70.0, 20.0 ],
                    "text": "Loop",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 13.0,
                    "hint": "Down Arrow: replay the current sample from the beginning, in either menu.",
                    "id": "replay_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 420.0, 460.0, 110.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 338.0, 306.0, 110.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Replay",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "replay_button"
                }
            },
            {
                "box": {
                    "id": "replay_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 1116.0, 130.0, 22.0 ],
                    "text": "replay"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "stop_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 542.0, 460.0, 110.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 542.0, 460.0, 110.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Stop",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "stop_button"
                }
            },
            {
                "box": {
                    "id": "stop_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 542.0, 1132.0, 130.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "audio",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 682.0, 456.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 682.0, 456.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "audio_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 730.0, 466.0, 63.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 730.0, 466.0, 63.0, 20.0 ],
                    "text": "Audio",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "gain_db",
                    "maxclass": "flonum",
                    "maximum": 0.0,
                    "minimum": -70.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 798.0, 462.0, 70.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 798.0, 462.0, 70.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "db_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 874.0, 466.0, 30.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 874.0, 466.0, 30.0, 20.0 ],
                    "text": "dB",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "elapsed",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 916.0, 462.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 916.0, 462.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "seconds",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 987.0, 466.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 987.0, 466.0, 20.0, 20.0 ],
                    "text": "s",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "now_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 507.0, 140.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 507.0, 140.0, 19.0 ],
                    "text": "CURRENT FILE",
                    "textcolor": [ 0.08, 0.4, 0.37, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "current_file",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 175.0, 504.0, 837.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 175.0, 504.0, 837.0, 22.0 ],
                    "text": "wood_03wb_Fa3_h.wav",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ],
                    "varname": "current_file"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.75, 0.81, 0.78, 1 ],
                    "id": "rule2",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 557.0, 984.0, 4.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 557.0, 984.0, 4.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "section3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 576.0, 650.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 576.0, 650.0, 20.0 ],
                    "text": "03   EXPORT PREFERRED SOUNDFILES",
                    "textcolor": [ 0.08, 0.4, 0.37, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9254901960784314, 0.03137254901960784, 0.03137254901960784, 1.0 ],
                    "fontsize": 13.0,
                    "id": "new_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 28.0, 611.0, 242.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 611.0, 324.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Save Preferred to new folder…",
                    "textcolor": [ 0.9450980392156862, 0.9294117647058824, 0.9294117647058824, 1.0 ],
                    "textoncolor": [ 1.0, 0.9882352941176471, 0.9882352941176471, 1.0 ],
                    "usegradient": 0,
                    "varname": "new_button"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "replace_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 286.0, 611.0, 260.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 491.0, 611.0, 260.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Choose / create folder…",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "replace_button"
                }
            },
            {
                "box": {
                    "active": 0,
                    "bgcolor": [ 0.7, 0.3, 0.12, 1.0 ],
                    "fontsize": 13.0,
                    "id": "confirm_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 562.0, 611.0, 250.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "CONFIRM EXPORT",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "confirm_button"
                }
            },
            {
                "box": {
                    "id": "confirm_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 562.0, 1148.0, 130.0, 22.0 ],
                    "text": "confirm_replace"
                }
            },
            {
                "box": {
                    "active": 0,
                    "bgcolor": [ 0.86, 0.9, 0.88, 1.0 ],
                    "fontsize": 13.0,
                    "id": "cancel_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 828.0, 611.0, 184.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 916.0, 611.0, 97.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "Cancel",
                    "textcolor": [ 0.11, 0.17, 0.17, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "cancel_button"
                }
            },
            {
                "box": {
                    "id": "cancel_button_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 828.0, 1164.0, 130.0, 22.0 ],
                    "text": "cancel_replace"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "export_hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 653.0, 984.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 653.0, 984.0, 20.0 ],
                    "text": "Choose a location and name a folder. Flat export: only Preferred sounds, with identical copies saved once.",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "review_text",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 687.0, 108.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 681.0, 984.0, 20.0 ],
                    "text": "No export pending.",
                    "textcolor": [ 0.7, 0.3, 0.12, 1.0 ],
                    "varname": "review_text"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "result_text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 771.0, 984.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.0, 729.0, 984.0, 20.0 ],
                    "text": "Exported 24 unique soundfiles to: /Users/edmundcampionm1/Documents/GitHub/music158a2026/Tools_158a_2026/ec_sfz_builder_editor_v4.2/Tutorial_Examples/wood_samples",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ],
                    "varname": "result_text"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.86, 0.91, 0.88, 1 ],
                    "id": "status_bg",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 852.0, 1004.0, 53.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 761.0, 1004.0, 53.0 ],
                    "rounded": 5
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "status_text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 863.0, 984.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 33.0, 772.0, 984.0, 21.0 ],
                    "text": "Export selection cleared.",
                    "textcolor": [ 0.08, 0.4, 0.37, 1.0 ],
                    "varname": "status_text"
                }
            },
            {
                "box": {
                    "id": "engine",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 28.0, 1200.0, 470.0, 22.0 ],
                    "saved_object_attributes": {
                        "autostart": 1,
                        "defer": 1,
                        "watch": 0
                    },
                    "text": "node.script sample_sorter_node.js @autostart 1 @watch 0 @defer 1",
                    "textfile": {
                        "filename": "sample_sorter_node.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "ui",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 28.0, 1250.0, 220.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "sample_sorter_ui.js",
                        "parameter_enable": 0
                    },
                    "text": "js sample_sorter_ui.js"
                }
            },
            {
                "box": {
                    "id": "node_log",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 520.0, 1200.0, 220.0, 22.0 ],
                    "text": "print Sample_Sorter_Node"
                }
            },
            {
                "box": {
                    "id": "load_dialog",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 28.0, 1370.0, 130.0, 22.0 ],
                    "text": "opendialog fold"
                }
            },
            {
                "box": {
                    "id": "load_path",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 180.0, 1370.0, 180.0, 22.0 ],
                    "text": "conformpath slash boot"
                }
            },
            {
                "box": {
                    "id": "load_prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 390.0, 1370.0, 200.0, 22.0 ],
                    "text": "prepend load"
                }
            },
            {
                "box": {
                    "id": "new_dialog",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "bang" ],
                    "patching_rect": [ 28.0, 1430.0, 130.0, 22.0 ],
                    "text": "savedialog fold"
                }
            },
            {
                "box": {
                    "id": "new_path",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 180.0, 1430.0, 180.0, 22.0 ],
                    "text": "conformpath slash boot"
                }
            },
            {
                "box": {
                    "id": "new_prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 390.0, 1430.0, 200.0, 22.0 ],
                    "text": "prepend export_new"
                }
            },
            {
                "box": {
                    "id": "replace_dialog",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "bang" ],
                    "patching_rect": [ 28.0, 1490.0, 130.0, 22.0 ],
                    "text": "savedialog fold"
                }
            },
            {
                "box": {
                    "id": "replace_path",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 180.0, 1490.0, 180.0, 22.0 ],
                    "text": "conformpath slash boot"
                }
            },
            {
                "box": {
                    "id": "replace_prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 390.0, 1490.0, 200.0, 22.0 ],
                    "text": "prepend plan_replace"
                }
            },
            {
                "box": {
                    "id": "rescan_msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 625.0, 1370.0, 130.0, 22.0 ],
                    "text": "rescan"
                }
            },
            {
                "box": {
                    "id": "available_select",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 28.0, 1550.0, 220.0, 22.0 ],
                    "text": "prepend select_available"
                }
            },
            {
                "box": {
                    "id": "preferred_select",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 1550.0, 220.0, 22.0 ],
                    "text": "prepend select_preferred"
                }
            },
            {
                "box": {
                    "id": "loop_msg",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.0, 1610.0, 130.0, 22.0 ],
                    "text": "prepend loop"
                }
            },
            {
                "box": {
                    "id": "transport",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 28.0, 1690.0, 160.0, 22.0 ],
                    "text": "route play stop cue"
                }
            },
            {
                "box": {
                    "id": "play_order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "", "bang" ],
                    "patching_rect": [ 28.0, 1740.0, 140.0, 22.0 ],
                    "text": "t b s b"
                }
            },
            {
                "box": {
                    "id": "close_old",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 235.0, 1740.0, 100.0, 22.0 ],
                    "text": "0, fclose"
                }
            },
            {
                "box": {
                    "id": "open_file",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 80.0, 1790.0, 140.0, 22.0 ],
                    "text": "prepend open"
                }
            },
            {
                "box": {
                    "id": "defer_start",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 28.0, 1840.0, 90.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 28.0, 1880.0, 35.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "player",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "bang" ],
                    "patching_rect": [ 250.0, 1840.0, 160.0, 22.0 ],
                    "text": "sfplay~ 2 0 1"
                }
            },
            {
                "box": {
                    "id": "mono_init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 1780.0, 170.0, 22.0 ],
                    "text": "loadmess modout 1"
                }
            },
            {
                "box": {
                    "id": "gain_init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 670.0, 1690.0, 140.0, 22.0 ],
                    "text": "loadmess -12."
                }
            },
            {
                "box": {
                    "id": "dbtoa",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 670.0, 1740.0, 65.0, 22.0 ],
                    "text": "dbtoa"
                }
            },
            {
                "box": {
                    "id": "gain_ramp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 670.0, 1790.0, 110.0, 22.0 ],
                    "text": "pack 0. 20"
                }
            },
            {
                "box": {
                    "id": "gain_line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 670.0, 1840.0, 160.0, 22.0 ],
                    "text": "line~ 0.251189"
                }
            },
            {
                "box": {
                    "id": "left",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 1920.0, 60.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "right",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 370.0, 1920.0, 60.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "seconds_div",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 490.0, 1920.0, 100.0, 22.0 ],
                    "text": "/~ 1000."
                }
            },
            {
                "box": {
                    "id": "position",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 490.0, 1970.0, 130.0, 22.0 ],
                    "text": "snapshot~ 100"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 13.0,
                    "hint": "Play the next sound after the last auditioned Available item. Wraps to the first item at the end.",
                    "id": "next_sample_button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 182.0, 306.0, 140.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 182.0, 306.0, 140.0, 30.0 ],
                    "rounded": 5.0,
                    "text": "play next Sample",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "usegradient": 0,
                    "varname": "next_sample_button"
                }
            },
            {
                "box": {
                    "id": "file_open_gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 370.0, 1710.0, 85.0, 22.0 ],
                    "text": "gate 1 0"
                }
            },
            {
                "box": {
                    "id": "mark_closed",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 370.0, 1750.0, 85.0, 22.0 ],
                    "text": "t b 0"
                }
            },
            {
                "box": {
                    "id": "mark_open",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 28.0, 1790.0, 50.0, 22.0 ],
                    "text": "t b 1"
                }
            },
            {
                "box": {
                    "id": "start_if_open",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 140.0, 1880.0, 85.0, 22.0 ],
                    "text": "gate 1 0"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "transport_guard_note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 2040.0, 640.0, 20.0 ],
                    "text": "Stop/close only after an open command. Closing also blocks any pending deferred start."
                }
            },
            {
                "box": {
                    "id": "shortcut_key",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "int", "int" ],
                    "patching_rect": [ 28.0, 2120.0, 50.0, 22.0 ],
                    "text": "key"
                }
            },
            {
                "box": {
                    "id": "shortcut_keyup",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "int", "int" ],
                    "patching_rect": [ 215.0, 2120.0, 65.0, 22.0 ],
                    "text": "keyup"
                }
            },
            {
                "box": {
                    "id": "shortcut_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 400.0, 2120.0, 65.0, 22.0 ],
                    "text": "active"
                }
            },
            {
                "box": {
                    "id": "shortcut_down_msg",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 28.0, 2170.0, 160.0, 22.0 ],
                    "text": "prepend keydown"
                }
            },
            {
                "box": {
                    "id": "shortcut_up_msg",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 215.0, 2170.0, 165.0, 22.0 ],
                    "text": "prepend keyrelease"
                }
            },
            {
                "box": {
                    "id": "shortcut_focus_msg",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 2170.0, 185.0, 22.0 ],
                    "text": "prepend keyboardfocus"
                }
            },
            {
                "box": {
                    "fontname": "Arial Bold",
                    "fontsize": 12.0,
                    "id": "shortcut_hint",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 350.0, 262.0, 711.0, 87.0 ],
                    "presentation": 1,
                    "presentation_linecount": 5,
                    "presentation_rect": [ 557.0, 109.5, 155.0, 87.0 ],
                    "text": "KEYBOARD SHORTCUTS\n→ Next + play  \n← Previous + play      \n↑ Add to Preferred    \n↓ Replay current\n",
                    "textcolor": [ 0.36, 0.42, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "shortcut_note",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 2220.0, 560.0, 47.0 ],
                    "text": "Keyboard-independent outlet 4: Right = -12, Left = -11, Up = -9, Down = -10. UI checks focus, lock, busy state, and Up/Down release. Down replays the current file in either menu. Return/Enter is unassigned."
                }
            },
            {
                "box": {
                    "id": "cue_order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "", "bang" ],
                    "patching_rect": [ 850.0, 1740.0, 140.0, 22.0 ],
                    "text": "t b s b"
                }
            },
            {
                "box": {
                    "id": "cue_ready",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 850.0, 1790.0, 75.0, 22.0 ],
                    "text": "t 1 0"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "cue_note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 850.0, 1840.0, 300.0, 33.0 ],
                    "text": "Every folder load cues the first file without sending 1. Keep deferred starts blocked until an explicit audition."
                }
            },
            {
                "box": {
                    "id": "new_choose",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1100.0, 1100.0, 45.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "new_name_init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1160.0, 1100.0, 155.0, 22.0 ],
                    "text": "loadmess name Preferred"
                }
            },
            {
                "box": {
                    "id": "replace_choose",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1100.0, 1140.0, 45.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "replace_name_init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1160.0, 1140.0, 155.0, 22.0 ],
                    "text": "loadmess name Preferred"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "available_select", 0 ],
                    "source": [ "available", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "available_select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cancel_button_msg", 0 ],
                    "source": [ "cancel_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "cancel_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "close_old", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "confirm_button_msg", 0 ],
                    "source": [ "confirm_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "confirm_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cue_ready", 0 ],
                    "source": [ "cue_order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "file_open_gate", 1 ],
                    "source": [ "cue_order", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "open_file", 0 ],
                    "source": [ "cue_order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "file_open_gate", 0 ],
                    "source": [ "cue_ready", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "start_if_open", 0 ],
                    "source": [ "cue_ready", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain_ramp", 0 ],
                    "source": [ "dbtoa", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "start", 0 ],
                    "source": [ "defer_start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "node_log", 0 ],
                    "source": [ "engine", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ui", 0 ],
                    "source": [ "engine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mark_closed", 0 ],
                    "source": [ "file_open_gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "load_path", 0 ],
                    "source": [ "folder_drop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dbtoa", 0 ],
                    "source": [ "gain_db", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain_db", 0 ],
                    "source": [ "gain_init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left", 1 ],
                    "order": 1,
                    "source": [ "gain_line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right", 1 ],
                    "order": 0,
                    "source": [ "gain_line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain_line", 0 ],
                    "source": [ "gain_ramp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "keep_button_msg", 0 ],
                    "source": [ "keep_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "keep_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio", 0 ],
                    "source": [ "left", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "load_dialog", 0 ],
                    "source": [ "load_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "load_path", 0 ],
                    "source": [ "load_dialog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "load_prepend", 0 ],
                    "source": [ "load_path", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "load_prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "loop_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loop_msg", 0 ],
                    "source": [ "loop_toggle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "close_old", 0 ],
                    "source": [ "mark_closed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "file_open_gate", 0 ],
                    "order": 0,
                    "source": [ "mark_closed", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "start_if_open", 0 ],
                    "order": 1,
                    "source": [ "mark_closed", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defer_start", 0 ],
                    "source": [ "mark_open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "file_open_gate", 0 ],
                    "order": 0,
                    "source": [ "mark_open", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "start_if_open", 0 ],
                    "order": 1,
                    "source": [ "mark_open", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "mono_init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "new_choose", 0 ],
                    "source": [ "new_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cancel_button_msg", 0 ],
                    "source": [ "new_choose", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "new_dialog", 0 ],
                    "source": [ "new_choose", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cancel_button_msg", 0 ],
                    "source": [ "new_dialog", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "new_path", 0 ],
                    "source": [ "new_dialog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "new_dialog", 0 ],
                    "source": [ "new_name_init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "new_prepend", 0 ],
                    "source": [ "new_path", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "new_prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "next_available_button_msg", 0 ],
                    "source": [ "next_available_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "next_available_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "next_preferred_button_msg", 0 ],
                    "source": [ "next_preferred_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "next_preferred_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "next_available_button_msg", 0 ],
                    "source": [ "next_sample_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "open_file", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "file_open_gate", 1 ],
                    "source": [ "play_order", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mark_open", 0 ],
                    "source": [ "play_order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "open_file", 0 ],
                    "source": [ "play_order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left", 0 ],
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right", 0 ],
                    "source": [ "player", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "seconds_div", 0 ],
                    "source": [ "player", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "elapsed", 0 ],
                    "source": [ "position", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "preferred_select", 0 ],
                    "source": [ "preferred", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "preferred_select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "previous_available_button_msg", 0 ],
                    "source": [ "previous_available_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "previous_available_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "previous_preferred_button_msg", 0 ],
                    "source": [ "previous_preferred_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "previous_preferred_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "remove_button_msg", 0 ],
                    "source": [ "remove_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "remove_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "replace_choose", 0 ],
                    "source": [ "replace_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cancel_button_msg", 0 ],
                    "source": [ "replace_choose", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "replace_dialog", 0 ],
                    "source": [ "replace_choose", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cancel_button_msg", 0 ],
                    "source": [ "replace_dialog", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "replace_path", 0 ],
                    "source": [ "replace_dialog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "replace_dialog", 0 ],
                    "source": [ "replace_name_init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "replace_prepend", 0 ],
                    "source": [ "replace_path", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "replace_prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "replay_button_msg", 0 ],
                    "source": [ "replay_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "replay_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rescan_msg", 0 ],
                    "source": [ "rescan_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "rescan_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio", 1 ],
                    "source": [ "right", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "position", 0 ],
                    "source": [ "seconds_div", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "shortcut_focus_msg", 0 ],
                    "source": [ "shortcut_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ui", 0 ],
                    "source": [ "shortcut_down_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ui", 0 ],
                    "source": [ "shortcut_focus_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "shortcut_down_msg", 0 ],
                    "source": [ "shortcut_key", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "shortcut_up_msg", 0 ],
                    "source": [ "shortcut_keyup", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ui", 0 ],
                    "source": [ "shortcut_up_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "start_if_open", 1 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "start_if_open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stop_button_msg", 0 ],
                    "source": [ "stop_button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "stop_button_msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cue_order", 0 ],
                    "source": [ "transport", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "file_open_gate", 1 ],
                    "source": [ "transport", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play_order", 0 ],
                    "source": [ "transport", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "ui", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "transport", 0 ],
                    "source": [ "ui", 0 ]
                }
            }
        ],
        "autosave": 0,
        "bgcolor": [ 0.945, 0.953, 0.949, 1.0 ],
        "editing_bgcolor": [ 0.96, 0.96, 0.96, 1.0 ]
    }
}