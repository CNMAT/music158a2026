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
        "rect": [ 1993.0, 175.0, 1660.0, 959.0 ],
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 10.0, 789.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 10.0, 789.0, 20.0 ],
                    "text": "SINUSOIDS / INSTANCE MESSAGES",
                    "varname": "ec_im_title"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 45.0, 1180.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 45.0, 1180.0, 20.0 ],
                    "text": "Click a message to send it. Unlock to edit its values, then lock to use. Values shown are examples, not live synth readbacks.",
                    "varname": "ec_im_subtitle"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "routing-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1300.0, 14.0, 132.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1300.0, 14.0, 132.0, 20.0 ],
                    "text": "DESTINATION",
                    "varname": "ec_im_routing_label"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Default: Internal send, for an embedded subpatcher inside the synth. Cable outlet: connect this patcher's outlet to the synth's left inlet.",
                    "id": "destination",
                    "items": [ "Internal send (embedded p)", ",", "Cable outlet (external use)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1435.0, 12.0, 275.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1435.0, 12.0, 275.0, 22.0 ],
                    "varname": "ec_im_destination"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "dest-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1300.0, 44.0, 580.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1300.0, 44.0, 580.0, 20.0 ],
                    "text": "Nothing is sent to the synth on opening.",
                    "varname": "ec_im_dest_note"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "install",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 72.0, 1910.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 72.0, 1910.0, 20.0 ],
                    "text": "INTERNAL: copy all patching-mode contents into an embedded p Instance_Messages inside the synth. EXTERNAL: use as an abstraction, select Cable outlet, and connect its outlet to the synth left inlet.",
                    "varname": "ec_im_install"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "last-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 108.0, 194.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 108.0, 194.0, 20.0 ],
                    "text": "LAST SENT (first 12 atoms)",
                    "varname": "ec_im_last_label"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Read-only monitor. Long lists are abbreviated here; the complete message is sent to the synth.",
                    "id": "last-sent",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 107.0, 1721.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 200.0, 107.0, 1721.0, 22.0 ],
                    "text": "note-in 60 100",
                    "varname": "ec_im_last_sent"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 142.0, 312.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 142.0, 312.0, 20.0 ],
                    "text": "01 PERFORMANCE / OUTPUT",
                    "varname": "ec_im_head_0"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "MIDI pitch int 0..127; velocity 1..127. Launches lanes.",
                    "id": "m1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 168.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 168.0, 310.0, 22.0 ],
                    "text": "note-in 60 100",
                    "varname": "ec_im_m1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 189.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 189.0, 310.0, 20.0 ],
                    "text": "MIDI pitch int 0..127; velocity 1..127. Launches lanes.",
                    "varname": "ec_im_note_m1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Linear output gain float 0..1.",
                    "id": "m2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 208.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 208.0, 310.0, 22.0 ],
                    "text": "gain 0.1",
                    "varname": "ec_im_m2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 229.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 229.0, 310.0, 20.0 ],
                    "text": "Linear output gain float 0..1.",
                    "varname": "ec_im_note_m2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Output gain in dB; values above 0 dB clamp to unity.",
                    "id": "m3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 248.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 248.0, 310.0, 22.0 ],
                    "text": "gaindb -20.",
                    "varname": "ec_im_m3"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 269.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 269.0, 310.0, 20.0 ],
                    "text": "Output gain in dB; values above 0 dB clamp to unity.",
                    "varname": "ec_im_note_m3"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang action: starts all 12 lanes, with each DEL.",
                    "id": "m4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 288.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 288.0, 310.0, 22.0 ],
                    "text": "trigger",
                    "varname": "ec_im_m4"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 309.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 309.0, 310.0, 20.0 ],
                    "text": "Bang action: starts all 12 lanes, with each DEL.",
                    "varname": "ec_im_note_m4"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Stops lanes / loops; cancels pending lane delays.",
                    "id": "m5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 328.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 328.0, 310.0, 22.0 ],
                    "text": "stop",
                    "varname": "ec_im_m5"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 349.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 349.0, 310.0, 20.0 ],
                    "text": "Stops lanes / loops; cancels pending lane delays.",
                    "varname": "ec_im_note_m5"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Clears all layers, including hidden slots; stops lanes.\nbang / no arguments\nNo numeric value required\nStops the 12 lanes and legacy loop, then clears all three full 256-slot banks, including hidden slots.",
                    "id": "m6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 368.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 368.0, 310.0, 22.0 ],
                    "text": "control All_Off",
                    "varname": "ec_im_m6"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 389.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 389.0, 310.0, 20.0 ],
                    "text": "Clears all layers, including hidden slots; stops lanes.",
                    "varname": "ec_im_note_m6"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 408.0, 314.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 408.0, 314.0, 20.0 ],
                    "text": "02 BASE PITCH / RETUNING",
                    "varname": "ec_im_head_1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 1..23000 Hz; changes base, no note trigger.\nfloat\n1 .. 23000 Hz\nSets the base-frequency reference. For a new note that also launches all 12 envelopes, use note-in instead.",
                    "id": "m7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 434.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 434.0, 310.0, 22.0 ],
                    "text": "control Source_Base_Hz 110.",
                    "varname": "ec_im_m7"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 455.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 455.0, 310.0, 20.0 ],
                    "text": "float 1..23000 Hz; changes base, no note trigger.",
                    "varname": "ec_im_note_m7"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 1..23000 Hz; retuning target.\nfloat\n1 .. 23000 Hz\nRetuning target frequency; interpreted by the selected Retuning_Mode.",
                    "id": "m8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 474.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 474.0, 310.0, 22.0 ],
                    "text": "control Target_Base_Hz 220.",
                    "varname": "ec_im_m8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 495.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 495.0, 310.0, 20.0 ],
                    "text": "float 1..23000 Hz; retuning target.",
                    "varname": "ec_im_note_m8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 rebuild / 1 ratio / 2 additive Hz.\nint / menu\n0 .. 2\n0 = rebuild base / ERB; 1 = ratio transpose of the fixed spectrum; 2 = additive Hz shift.",
                    "id": "m9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 514.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 514.0, 310.0, 22.0 ],
                    "text": "control Retuning_Mode 0",
                    "varname": "ec_im_m9"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 535.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 535.0, 310.0, 20.0 ],
                    "text": "int 0 rebuild / 1 ratio / 2 additive Hz.",
                    "varname": "ec_im_note_m9"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms; 0 = immediate.\nfloat\n0 .. 600000 ms\nRetuning transition time. Zero requests an immediate change.",
                    "id": "m10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 554.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 554.0, 310.0, 22.0 ],
                    "text": "control Retune_ms 1000.",
                    "varname": "ec_im_m10"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 575.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 575.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms; 0 = immediate.",
                    "varname": "ec_im_note_m10"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 594.0, 313.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 594.0, 313.0, 20.0 ],
                    "text": "03 POST-MODEL TRANSFORM",
                    "varname": "ec_im_head_2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float -120..120 semitones.\nfloat\n-120 .. 120 semitones\nPost-model pitch transposition; fractional values are supported.",
                    "id": "m11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 620.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 620.0, 310.0, 22.0 ],
                    "text": "control Semitones 0.",
                    "varname": "ec_im_m11"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 641.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 641.0, 310.0, 20.0 ],
                    "text": "float -120..120 semitones.",
                    "varname": "ec_im_note_m11"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float -12000..12000 cents.\nfloat\n-12000 .. 12000 cents\nAdditional post-model pitch transposition; 100 cents = one semitone.",
                    "id": "m12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 660.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 660.0, 310.0, 22.0 ],
                    "text": "control Cents 0.",
                    "varname": "ec_im_m12"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 681.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 681.0, 310.0, 20.0 ],
                    "text": "float -12000..12000 cents.",
                    "varname": "ec_im_note_m12"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float -23000..23000 Hz; additive shift.\nfloat\n-23000 .. 23000 Hz\nAdditive post-model frequency shift. This is separate from Partial_Offset_Number.",
                    "id": "m13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 700.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 700.0, 310.0, 22.0 ],
                    "text": "control Offset_Hz 0.",
                    "varname": "ec_im_m13"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 721.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 721.0, 310.0, 20.0 ],
                    "text": "float -23000..23000 Hz; additive shift.",
                    "varname": "ec_im_note_m13"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..23000 Hz; lower frequency cutoff.\nfloat\n0 .. 23000 Hz\nLower frequency cutoff. Frequencies below this value are excluded.",
                    "id": "m14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 740.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 740.0, 310.0, 22.0 ],
                    "text": "control Minimum_Hz 20.",
                    "varname": "ec_im_m14"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 761.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 761.0, 310.0, 20.0 ],
                    "text": "float 0..23000 Hz; lower frequency cutoff.",
                    "varname": "ec_im_note_m14"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..23000 Hz; also limited by sample rate.\nfloat\n0 .. 23000 Hz\nExclusive upper cutoff, also limited to 0.499 x sample rate. If the upper limit is at or below the lower limit, no partials pass.",
                    "id": "m15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 780.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 780.0, 310.0, 22.0 ],
                    "text": "control Maximum_Hz 18000.",
                    "varname": "ec_im_m15"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 801.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 801.0, 310.0, 20.0 ],
                    "text": "float 0..23000 Hz; also limited by sample rate.",
                    "varname": "ec_im_note_m15"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..23000 Hz; 0 disables clustering.\nfloat\n0 .. 23000 Hz\nClustering tolerance. Zero disables clustering; duplicate-frequency merging remains active.",
                    "id": "m16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 820.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 820.0, 310.0, 22.0 ],
                    "text": "control Cluster_Hz 0.",
                    "varname": "ec_im_m16"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 841.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 841.0, 310.0, 20.0 ],
                    "text": "float 0..23000 Hz; 0 disables clustering.",
                    "varname": "ec_im_note_m16"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..2; spectral gain, separate from output gain.\nfloat\n0 .. 2\nSpectral amplitude multiplier before rendering. Each resulting oscillator amplitude is clipped to 0 .. 1. Separate from the abstraction's gain command.",
                    "id": "m17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 860.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 860.0, 310.0, 22.0 ],
                    "text": "control Model_Gain 1.",
                    "varname": "ec_im_m17"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 881.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 881.0, 310.0, 20.0 ],
                    "text": "float 0..2; spectral gain, separate from output gain.",
                    "varname": "ec_im_note_m17"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 normal / 1 bypass post transforms.\nint / toggle\n0 = off; 1 = on\nBypasses post-model tuning, transposition, gain and clustering. Frequency safety filtering still applies.",
                    "id": "m18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 900.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 900.0, 310.0, 22.0 ],
                    "text": "control Post_Bypass 0",
                    "varname": "ec_im_m18"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 921.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 921.0, 310.0, 20.0 ],
                    "text": "int 0 normal / 1 bypass post transforms.",
                    "varname": "ec_im_note_m18"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 142.0, 319.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 142.0, 319.0, 20.0 ],
                    "text": "04 PARTIAL LAYOUT",
                    "varname": "ec_im_head_3"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 2..Render Limit; hidden slot values are retained.\nint\n2 .. current Render Limit\nSlider Count. Hidden values remain stored in the 256-slot bank. Raising Render Limit does not raise Slider Count automatically.",
                    "id": "m19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 168.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 168.0, 310.0, 22.0 ],
                    "text": "control Partial_Count 64",
                    "varname": "ec_im_m19"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 189.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 189.0, 310.0, 20.0 ],
                    "text": "int 2..Render Limit; hidden slot values are retained.",
                    "varname": "ec_im_note_m19"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 one-to-one / 1 even / 2 odd / 3 prime.\nint / enum\n0, 1, 2, or 3 only\n0 = one-to-one; 1 = even; 2 = odd; 3 = prime. Other values or a bang are rejected. Offset selects the starting position in this sequence.",
                    "id": "m20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 208.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 208.0, 310.0, 22.0 ],
                    "text": "control Partial_Distribution 0",
                    "varname": "ec_im_m20"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 229.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 229.0, 310.0, 20.0 ],
                    "text": "int 0 one-to-one / 1 even / 2 odd / 3 prime.",
                    "varname": "ec_im_note_m20"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 off / 1 on. Enable BEFORE setting the offset.\nint / toggle\n0 = off; 1 = on\nEnable first, then send Partial_Offset_Number: switching ON resets the start to 1. OFF uses the normal start at f0.",
                    "id": "m21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 248.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 248.0, 310.0, 22.0 ],
                    "text": "control Partial_Offset_On 1",
                    "varname": "ec_im_m21"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 269.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 269.0, 310.0, 20.0 ],
                    "text": "int 0 off / 1 on. Enable BEFORE setting the offset.",
                    "varname": "ec_im_note_m21"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 1..23000; at one-to-one, slider 1 = 5 x f0.\nint\n1 .. 23000\nStarting position in the selected partial sequence, including slider 1. At one-to-one, 5 starts at 5 x f0. BASE FREQ stays unchanged; requires offset ON.",
                    "id": "m22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 288.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 288.0, 310.0, 22.0 ],
                    "text": "control Partial_Offset_Number 5",
                    "varname": "ec_im_m22"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 309.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 309.0, 310.0, 20.0 ],
                    "text": "int 1..23000; at one-to-one, slider 1 = 5 x f0.",
                    "varname": "ec_im_note_m22"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 328.0, 314.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 328.0, 314.0, 20.0 ],
                    "text": "05 RENDERING / SPATIAL GROUPS",
                    "varname": "ec_im_head_4"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Only 64 / 128 / 256. Also caps Slider Count.\nint / enum\n64, 128, or 256 only\nCaps active slider positions and clamps Slider Count downward when necessary. Other values and a bang are rejected. Includes primary plus anchor rendering per slot.",
                    "id": "m23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 354.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 354.0, 310.0, 22.0 ],
                    "text": "control Render_Limit 128",
                    "varname": "ec_im_m23"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 375.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 375.0, 310.0, 20.0 ],
                    "text": "Only 64 / 128 / 256. Also caps Slider Count.",
                    "varname": "ec_im_note_m23"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "0 interleaved / 1 spectral / 2 random / 3 octave / 4 fifth.\nint / menu\n0 .. 4\n0 = interleaved; 1 = spectral bands; 2 = seeded random; 3 = octave families; 4 = perfect-fifth bands.",
                    "id": "m24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 394.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 394.0, 310.0, 22.0 ],
                    "text": "control Render_Distribution 0",
                    "varname": "ec_im_m24"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 415.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 415.0, 310.0, 20.0 ],
                    "text": "0 interleaved / 1 spectral / 2 random / 3 octave / 4 fifth.",
                    "varname": "ec_im_note_m24"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 2..12 output groups.\nint\n2 .. 12\nNumber of spatial output groups. Twelve ADSR / rendering lanes remain available.",
                    "id": "m25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 434.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 434.0, 310.0, 22.0 ],
                    "text": "control Spatial_Group_Count 12",
                    "varname": "ec_im_m25"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 455.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 455.0, 310.0, 20.0 ],
                    "text": "int 2..12 output groups.",
                    "varname": "ec_im_note_m25"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms; routing-matrix transition.\nfloat\n0 .. 600000 ms\nAudio routing matrix ramp time. This is separate from the fixed partial-offset bank crossfade.",
                    "id": "m26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 474.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 474.0, 310.0, 22.0 ],
                    "text": "control Render_Ramp_ms 100.",
                    "varname": "ec_im_m26"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 495.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 495.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms; routing-matrix transition.",
                    "varname": "ec_im_note_m26"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int; normalized to unsigned 32-bit (0..4294967295).\nint\nEngine normalizes to uint32:\n0 .. 4294967295\nSeed for render distribution. Values are rounded, then wrapped modulo 2^32 rather than clipped. Use a nonnegative integer within the displayed interval.",
                    "id": "m27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 514.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 514.0, 310.0, 22.0 ],
                    "text": "control Render_Seed 12345",
                    "varname": "ec_im_m27"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 535.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 535.0, 310.0, 20.0 ],
                    "text": "int; normalized to unsigned 32-bit (0..4294967295).",
                    "varname": "ec_im_note_m27"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 554.0, 315.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 554.0, 315.0, 20.0 ],
                    "text": "06 PRIMARY AMPLITUDE / ANCHORS",
                    "varname": "ec_im_head_5"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..24; zero-based amplitude menu.\nint / menu\n0 .. 24\nZero-based amplitude-shape menu index; applies through Amplitude_Morph_ms.",
                    "id": "m28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 580.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 580.0, 310.0, 22.0 ],
                    "text": "control Amplitude_Shape 6",
                    "varname": "ec_im_m28"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 601.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 601.0, 310.0, 20.0 ],
                    "text": "int 0..24; zero-based amplitude menu.",
                    "varname": "ec_im_note_m28"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms.\nfloat\n0 .. 600000 ms\nTransition duration for this layer's shape, random and bulk-list targets. Zero applies immediately.",
                    "id": "m29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 620.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 620.0, 310.0, 22.0 ],
                    "text": "control Amplitude_Morph_ms 1000.",
                    "varname": "ec_im_m29"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 641.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 641.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms.",
                    "varname": "ec_im_note_m29"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int slot 1..256 + float amplitude 0..1.\nint index, float value\nIndex 1 .. 256; value 0 .. 1\nImmediate edit, including hidden slots. Also accepts: get <index>. Reply uses the private Partial_Amplitude_current bus.",
                    "id": "m30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 660.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 660.0, 310.0, 22.0 ],
                    "text": "control Partial_Amplitude 1 0.8",
                    "varname": "ec_im_m30"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 681.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 681.0, 310.0, 20.0 ],
                    "text": "int slot 1..256 + float amplitude 0..1.",
                    "varname": "ec_im_note_m30"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 independent / 1 follow primary amplitudes.\nint / toggle\n0 = independent; 1 = mirror\nMirrors primary amplitudes into the anchor layer. Independent anchor list / per-slot writes are ignored while enabled.",
                    "id": "m31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 700.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 700.0, 310.0, 22.0 ],
                    "text": "control Anchor_Mirror 0",
                    "varname": "ec_im_m31"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 721.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 721.0, 310.0, 20.0 ],
                    "text": "int 0 independent / 1 follow primary amplitudes.",
                    "varname": "ec_im_note_m31"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..1; overall anchor amount.\nfloat\n0 .. 1\nOverall anchor amplitude scaling, including mirrored anchors.",
                    "id": "m32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 740.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 740.0, 310.0, 22.0 ],
                    "text": "control Anchor_Scale 0.5",
                    "varname": "ec_im_m32"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 761.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 761.0, 310.0, 20.0 ],
                    "text": "float 0..1; overall anchor amount.",
                    "varname": "ec_im_note_m32"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..24; independent edit needs mirror OFF.\nint / menu\n0 .. 24\nZero-based anchor-shape menu index; independent anchor edits require Anchor_Mirror = 0.",
                    "id": "m33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 780.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 780.0, 310.0, 22.0 ],
                    "text": "control Anchor_Shape 6",
                    "varname": "ec_im_m33"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 801.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 801.0, 310.0, 20.0 ],
                    "text": "int 0..24; independent edit needs mirror OFF.",
                    "varname": "ec_im_note_m33"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms.\nfloat\n0 .. 600000 ms\nTransition duration for this layer's shape, random and bulk-list targets. Zero applies immediately.",
                    "id": "m34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 820.0, 311.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 820.0, 311.0, 22.0 ],
                    "text": "control Anchor_Morph_ms 1000.",
                    "varname": "ec_im_m34"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 841.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 841.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms.",
                    "varname": "ec_im_note_m34"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int slot 1..256 + float 0..1; mirror must be OFF.\nint index, float value\nIndex 1 .. 256; value 0 .. 1\nImmediate edit, including hidden slots. Also accepts: get <index>. Reply uses the private Partial_Anchor_current bus. Writes are ignored while Anchor_Mirror is ON.",
                    "id": "m35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 860.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 860.0, 310.0, 22.0 ],
                    "text": "control Partial_Anchor 1 0.5",
                    "varname": "ec_im_m35"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 881.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 881.0, 310.0, 20.0 ],
                    "text": "int slot 1..256 + float 0..1; mirror must be OFF.",
                    "varname": "ec_im_note_m35"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 142.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 142.0, 310.0, 20.0 ],
                    "text": "07 DETUNE / MICRO DRIFT",
                    "varname": "ec_im_head_6"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..93; 0 flat / 1 full +1 / remaining signed shapes.\nint / menu\n0 .. 93\nSigned detune-shape menu: 0 = flat zero; 1 = full +1; 2 .. 93 = the remaining signed profiles.",
                    "id": "m36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 168.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 168.0, 310.0, 22.0 ],
                    "text": "control Drift_Shape 0",
                    "varname": "ec_im_m36"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 189.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 189.0, 310.0, 20.0 ],
                    "text": "int 0..93; 0 flat / 1 full +1 / remaining signed shapes.",
                    "varname": "ec_im_note_m36"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms; detune shape morph.\nfloat\n0 .. 600000 ms\nTransition duration for this layer's shape, random and bulk-list targets. Zero applies immediately.",
                    "id": "m37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 208.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 208.0, 310.0, 22.0 ],
                    "text": "control Drift_Morph_ms 1000.",
                    "varname": "ec_im_m37"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 229.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 229.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms; detune shape morph.",
                    "varname": "ec_im_note_m37"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int slot 1..256 + float -1..1; -0.25 = -25 cents.\nint index, float value\nIndex 1 .. 256; value -1 .. 1\nImmediate edit, including hidden slots. Also accepts: get <index>. Reply uses the private Partial_Drift_current bus.",
                    "id": "m38",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 248.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 248.0, 310.0, 22.0 ],
                    "text": "control Partial_Drift 2 -0.25",
                    "varname": "ec_im_m38"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 269.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 269.0, 310.0, 20.0 ],
                    "text": "int slot 1..256 + float -1..1; -0.25 = -25 cents.",
                    "varname": "ec_im_note_m38"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..2147483647.\nint\n0 .. 2147483647\nSeed for the detune / drift direction assignment.",
                    "id": "m39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 288.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 288.0, 310.0, 22.0 ],
                    "text": "control Direction_Seed 12345",
                    "varname": "ec_im_m39"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 309.0, 311.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 309.0, 311.0, 20.0 ],
                    "text": "int 0..2147483647.",
                    "varname": "ec_im_note_m39"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..1; time-varying drift amount, 0 stops walk.\nfloat\n0 .. 1\nAmount of time-varying micro drift. Zero stops that walk. Static signed detune in Drift_Values is a separate parameter.",
                    "id": "m40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 328.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 328.0, 310.0, 22.0 ],
                    "text": "control Max_Drift 0.25",
                    "varname": "ec_im_m40"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 349.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 349.0, 310.0, 20.0 ],
                    "text": "float 0..1; time-varying drift amount, 0 stops walk.",
                    "varname": "ec_im_note_m40"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 off / 1 on; off returns toward nominal pitch.\nint / toggle\n0 = off; 1 = on\nEnables the time-varying micro drift process. OFF returns toward nominal pitch using Micro_Off_Morph_ms.",
                    "id": "m41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 368.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 368.0, 310.0, 22.0 ],
                    "text": "control Micro_On 1",
                    "varname": "ec_im_m41"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 389.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 389.0, 310.0, 20.0 ],
                    "text": "int 0 off / 1 on; off returns toward nominal pitch.",
                    "varname": "ec_im_note_m41"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..5 Hz.\nfloat\n0 .. 5 Hz\nDepth of the micro drift walk; combined with Max_Drift amount.",
                    "id": "m42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 408.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 408.0, 310.0, 22.0 ],
                    "text": "control Micro_Depth_Hz 0.5",
                    "varname": "ec_im_m42"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 429.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 429.0, 310.0, 20.0 ],
                    "text": "float 0..5 Hz.",
                    "varname": "ec_im_note_m42"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 100..600000 ms.\nfloat\n100 .. 600000 ms\nMicro drift segment duration.",
                    "id": "m43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 448.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 448.0, 310.0, 22.0 ],
                    "text": "control Micro_Segment_ms 1000.",
                    "varname": "ec_im_m43"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 469.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 469.0, 310.0, 20.0 ],
                    "text": "float 100..600000 ms.",
                    "varname": "ec_im_note_m43"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms; return time when disabled.\nfloat\n0 .. 600000 ms\nReturn time when micro drift is disabled.",
                    "id": "m44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 488.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 488.0, 310.0, 22.0 ],
                    "text": "control Micro_Off_Morph_ms 1000.",
                    "varname": "ec_im_m44"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 509.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 509.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms; return time when disabled.",
                    "varname": "ec_im_note_m44"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 528.0, 313.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 528.0, 313.0, 20.0 ],
                    "text": "08 SPECTRUM EDIT ACTIONS",
                    "varname": "ec_im_head_7"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..256; number requested by Add / Remove.\nint\n0 .. 256\nNumber requested by Remove_Partials / Add_Partials. Actual work is limited by eligible visible slots and saved removal snapshots.",
                    "id": "m45",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 554.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 554.0, 310.0, 22.0 ],
                    "text": "control Removal_Count 4",
                    "varname": "ec_im_m45"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 575.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 575.0, 310.0, 20.0 ],
                    "text": "int 0..256; number requested by Add / Remove.",
                    "varname": "ec_im_note_m45"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: snapshot and remove eligible visible slots.\nbang / no arguments\nNo numeric value required\nSnapshot and remove eligible slots using Removal_Count; clears their drift, amplitude and anchor layers.",
                    "id": "m46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 594.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 594.0, 310.0, 22.0 ],
                    "text": "control Remove_Partials",
                    "varname": "ec_im_m46"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 615.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 615.0, 310.0, 20.0 ],
                    "text": "Bang: snapshot and remove eligible visible slots.",
                    "varname": "ec_im_note_m46"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: restore eligible saved removed slots.\nbang / no arguments\nNo numeric value required\nRestore saved partial data using Removal_Count. Restores eligible previously removed slots.",
                    "id": "m47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 634.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 634.0, 310.0, 22.0 ],
                    "text": "control Add_Partials",
                    "varname": "ec_im_m47"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 655.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 655.0, 310.0, 20.0 ],
                    "text": "Bang: restore eligible saved removed slots.",
                    "varname": "ec_im_note_m47"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: random primary amplitudes; uses morph time.\nbang / no arguments\nNo numeric value required\nGenerate a random target for the active amplitude layer, using its morph time.",
                    "id": "m48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 674.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 674.0, 310.0, 22.0 ],
                    "text": "control Random_Amplitude",
                    "varname": "ec_im_m48"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 695.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 695.0, 310.0, 20.0 ],
                    "text": "Bang: random primary amplitudes; uses morph time.",
                    "varname": "ec_im_note_m48"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: random anchors; requires mirror OFF.\nbang / no arguments\nNo numeric value required\nGenerate a random target for the active anchor layer, using its morph time. Independent changes require Anchor_Mirror = 0.",
                    "id": "m49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 714.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 714.0, 310.0, 22.0 ],
                    "text": "control Random_Anchor",
                    "varname": "ec_im_m49"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 735.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 735.0, 310.0, 20.0 ],
                    "text": "Bang: random anchors; requires mirror OFF.",
                    "varname": "ec_im_note_m49"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: random signed detune; uses morph time.\nbang / no arguments\nNo numeric value required\nGenerate a random target for the active drift layer, using its morph time.",
                    "id": "m50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 754.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 754.0, 310.0, 22.0 ],
                    "text": "control Random_Drift",
                    "varname": "ec_im_m50"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 775.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 775.0, 310.0, 20.0 ],
                    "text": "Bang: random signed detune; uses morph time.",
                    "varname": "ec_im_note_m50"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: copy full amplitude bank into anchors.\nbang / no arguments\nNo numeric value required\nCopies the full primary amplitude bank, including hidden slots, to the anchor bank.",
                    "id": "m51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 794.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 794.0, 310.0, 22.0 ],
                    "text": "control Copy_Amplitude_to_Anchor",
                    "varname": "ec_im_m51"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 815.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 815.0, 310.0, 20.0 ],
                    "text": "Bang: copy full amplitude bank into anchors.",
                    "varname": "ec_im_note_m51"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: copy full amplitude bank into detune.\nbang / no arguments\nNo numeric value required\nCopies the full primary amplitude bank into the detune layer, including hidden slots.",
                    "id": "m52",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 834.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 834.0, 310.0, 22.0 ],
                    "text": "control Copy_Amplitude_to_Drift",
                    "varname": "ec_im_m52"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 855.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 855.0, 310.0, 20.0 ],
                    "text": "Bang: copy full amplitude bank into detune.",
                    "varname": "ec_im_note_m52"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Root 2 or odd 3..count; state 0/1. Acts on slot family.\nint root, int state\nRoot = 2 or an odd integer\n3 .. Slider Count; state 0 / 1\nActs on slot indices root, 2 x root, 4 x root, etc. ON applies 1, 1/2, 1/3... primary amplitudes; OFF clears them. Clears anchors at those slots.",
                    "id": "m53",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 874.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 874.0, 310.0, 22.0 ],
                    "text": "control Octave_Family 3 1",
                    "varname": "ec_im_m53"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 895.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 895.0, 310.0, 20.0 ],
                    "text": "Root 2 or odd 3..count; state 0/1. Acts on slot family.",
                    "varname": "ec_im_note_m53"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 142.0, 320.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 142.0, 320.0, 20.0 ],
                    "text": "09 ALL 12 ADSR LANES",
                    "varname": "ec_im_head_8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 1..3600000 ms; applies to all lanes.\nfloat\n1 .. 3600000 ms\nSet the duration of all twelve lane envelopes.",
                    "id": "m54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 168.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 168.0, 310.0, 22.0 ],
                    "text": "control ADSR_12_Lanes_Duration_ms 2000.",
                    "varname": "ec_im_m54"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 189.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 189.0, 310.0, 20.0 ],
                    "text": "float 1..3600000 ms; applies to all lanes.",
                    "varname": "ec_im_note_m54"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..24; apply shape to all lanes.\nint / menu\n0 .. 24\nApply the selected zero-based shape index to all twelve lanes.",
                    "id": "m55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 208.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 208.0, 310.0, 22.0 ],
                    "text": "control ADSR_12_Lanes_Shape 6",
                    "varname": "ec_im_m55"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 229.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 229.0, 310.0, 20.0 ],
                    "text": "int 0..24; apply shape to all lanes.",
                    "varname": "ec_im_note_m55"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms; all-lane shape smoothing.\nfloat\n0 .. 600000 ms\nSet shape-change smoothing time for all twelve lanes.",
                    "id": "m56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 248.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 248.0, 310.0, 22.0 ],
                    "text": "control ADSR_12_Lanes_Smoothing_ms 500.",
                    "varname": "ec_im_m56"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 269.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 269.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms; all-lane shape smoothing.",
                    "varname": "ec_im_note_m56"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Alias for global smoothing; float 0..600000 ms.\nfloat / alias\n0 .. 600000 ms\nGlobal smoothing alias: also sets shape-change smoothing for all twelve lanes, despite the singular name.",
                    "id": "m57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 288.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 288.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_Smoothing_ms 500.",
                    "varname": "ec_im_m57"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 309.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 309.0, 310.0, 20.0 ],
                    "text": "Alias for global smoothing; float 0..600000 ms.",
                    "varname": "ec_im_note_m57"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 off / 1 on; trigger to start.\nint / toggle\n0 = off; 1 = on\nSet loop state for all twelve lanes. Send a trigger to start playback.",
                    "id": "m58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 328.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 328.0, 310.0, 22.0 ],
                    "text": "control ADSR_12_Lanes_Loop 1",
                    "varname": "ec_im_m58"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 349.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 349.0, 310.0, 20.0 ],
                    "text": "int 0 off / 1 on; trigger to start.",
                    "varname": "ec_im_note_m58"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: launch all lanes; each lane respects its DEL.\nbang / no arguments\nNo numeric value required\nTrigger all twelve lanes together. Each lane starts after its own Delay_ms value.",
                    "id": "m59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 368.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 368.0, 310.0, 22.0 ],
                    "text": "control ADSR_12_Lanes_Global_Trigger",
                    "varname": "ec_im_m59"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 389.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 389.0, 310.0, 20.0 ],
                    "text": "Bang: launch all lanes; each lane respects its DEL.",
                    "varname": "ec_im_note_m59"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: stop loops, pending starts and lane playback.\nbang / no arguments\nNo numeric value required\nStop all twelve lanes, turn off their loops, cancel pending delayed starts and fade lane levels to zero in 5 ms.",
                    "id": "m60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 408.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 408.0, 310.0, 22.0 ],
                    "text": "control ADSR_12_Lanes_Stop",
                    "varname": "ec_im_m60"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 429.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 429.0, 310.0, 20.0 ],
                    "text": "Bang: stop loops, pending starts and lane playback.",
                    "varname": "ec_im_note_m60"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 448.0, 313.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 448.0, 313.0, 20.0 ],
                    "text": "10 SELECTED LANE / NN = 01..12",
                    "varname": "ec_im_head_9"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "group-note-9",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 474.0, 310.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 971.0, 474.0, 309.0, 47.0 ],
                    "text": "These NN templates are translated to the lane selected below\nbefore sending. Leave NN in the messages.",
                    "varname": "ec_im_group_note_9"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "lane-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 510.0, 144.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 526.0, 144.0, 20.0 ],
                    "text": "TARGET LANE",
                    "varname": "ec_im_lane_label"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Select lane 1..12. This only changes message addressing; it sends no synth setting.",
                    "id": "lane-number",
                    "maxclass": "number",
                    "maximum": 12,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1121.0, 510.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1121.0, 510.0, 65.0, 22.0 ],
                    "varname": "ec_im_lane_number"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: start / restart the selected lane after DEL.\nbang / no arguments\nNo numeric value required\nStart / restart this lane after its DEL. Respects the current Loop setting.",
                    "id": "m61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 540.0, 311.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 540.0, 311.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Trigger",
                    "varname": "ec_im_m61"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 561.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 561.0, 310.0, 20.0 ],
                    "text": "Bang: start / restart the selected lane after DEL.",
                    "varname": "ec_im_note_m61"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: stop lane / loop and cancel its pending DEL.\nbang / no arguments\nNo numeric value required\nStop this lane and its loop, cancel a pending DEL, and fade its level to zero in 5 ms.",
                    "id": "m62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 580.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 580.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Stop",
                    "varname": "ec_im_m62"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 601.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 601.0, 310.0, 20.0 ],
                    "text": "Bang: stop lane / loop and cancel its pending DEL.",
                    "varname": "ec_im_note_m62"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 off / 1 on. Trigger starts playback.\nint / toggle\n0 = off; 1 = on\nSet lane looping; use Trigger to start. Repeated cycles include this lane's DEL.",
                    "id": "m63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 620.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 620.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Loop 1",
                    "varname": "ec_im_m63"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m63",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 641.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 641.0, 310.0, 20.0 ],
                    "text": "int 0 off / 1 on. Trigger starts playback.",
                    "varname": "ec_im_note_m63"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..3600000 ms; default 0; repeated each loop.\nint\n0 .. 3600000 ms; default 0\nDelay before each lane start, including loop repeats. A new trigger replaces a pending start. Stop cancels it.",
                    "id": "m64",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 660.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 660.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Delay_ms 0",
                    "varname": "ec_im_m64"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 681.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 681.0, 310.0, 20.0 ],
                    "text": "int 0..3600000 ms; default 0; repeated each loop.",
                    "varname": "ec_im_note_m64"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 1..3600000 ms; DEL is additional.\nfloat\n1 .. 3600000 ms\nSet this lane's DUR value; DEL is additional to the envelope duration.",
                    "id": "m65",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 700.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 700.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Duration_ms 2000.",
                    "varname": "ec_im_m65"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 721.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 721.0, 310.0, 20.0 ],
                    "text": "float 1..3600000 ms; DEL is additional.",
                    "varname": "ec_im_note_m65"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 3..48; lane PTS.\nint\n3 .. 48\nSet this lane's PTS count.",
                    "id": "m66",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 740.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 740.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Breakpoints 4",
                    "varname": "ec_im_m66"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 761.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 761.0, 310.0, 20.0 ],
                    "text": "int 3..48; lane PTS.",
                    "varname": "ec_im_note_m66"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..24; lane shape menu.\nint / menu\n0 .. 24\nZero-based envelope-shape menu index. Uses the current point count and Smoothing_ms.",
                    "id": "m67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 780.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 780.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Shape 6",
                    "varname": "ec_im_m67"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 801.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 801.0, 310.0, 20.0 ],
                    "text": "int 0..24; lane shape menu.",
                    "varname": "ec_im_note_m67"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms; shape / point transition.\nfloat\n0 .. 600000 ms\nMorph time for lane shape / point changes. Zero applies immediately.",
                    "id": "m68",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 820.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 820.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Smoothing_ms 500.",
                    "varname": "ec_im_m68"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 841.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 841.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms; shape / point transition.",
                    "varname": "ec_im_note_m68"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "3..48 floats, each 0..1; length sets lane PTS.\nlist of floats\n3 .. 48 values; each 0 .. 1\nOne amplitude per equally spaced point. The list length sets PTS automatically before the shape is updated. Use the stated amplitude / length range.",
                    "id": "m69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 860.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 860.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Points 0. 1. 0.4 0.",
                    "varname": "ec_im_m69"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 881.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 881.0, 310.0, 20.0 ],
                    "text": "3..48 floats, each 0..1; length sets lane PTS.",
                    "varname": "ec_im_note_m69"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 1..9999; select slot, then click Store.\nint\n1 .. 9999\nSelect the memory slot to write. Follow with Store; use Recall to load a slot.",
                    "id": "m70",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 900.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 900.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Store_Index 1",
                    "varname": "ec_im_m70"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 921.0, 311.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 921.0, 311.0, 20.0 ],
                    "text": "int 1..9999; select slot, then click Store.",
                    "varname": "ec_im_note_m70"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: store this lane at its selected memory slot.\nbang / no arguments\nNo numeric value required\nStore the current lane envelope in the selected Store_Index.",
                    "id": "m71",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 940.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 940.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Store",
                    "varname": "ec_im_m71"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m71",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 961.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 961.0, 310.0, 20.0 ],
                    "text": "Bang: store this lane at its selected memory slot.",
                    "varname": "ec_im_note_m71"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 1..9999; recall this lane's stored envelope.\nint\n1 .. 9999\nRecall this lane's stored envelope at the requested slot; also selects that memory index.",
                    "id": "m72",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 980.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 980.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Recall 1",
                    "varname": "ec_im_m72"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m72",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 1001.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 1001.0, 310.0, 20.0 ],
                    "text": "int 1..9999; recall this lane's stored envelope.",
                    "varname": "ec_im_note_m72"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: rebuild current points; does not trigger playback.\nbang / no arguments\nNo numeric value required\nEmit / rebuild the lane's current points. Does not start line~ playback.",
                    "id": "m73",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0, 1020.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 1020.0, 310.0, 22.0 ],
                    "text": "control ADSR_Lane_NN_Emit",
                    "varname": "ec_im_m73"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 1041.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 971.0, 1041.0, 310.0, 20.0 ],
                    "text": "Bang: rebuild current points; does not trigger playback.",
                    "varname": "ec_im_note_m73"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 142.0, 315.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 142.0, 315.0, 20.0 ],
                    "text": "11 LEGACY MASTER ENVELOPE",
                    "varname": "ec_im_head_10"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "group-note-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 168.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 168.0, 310.0, 20.0 ],
                    "text": "Separate from the twelve lane envelopes.",
                    "varname": "ec_im_group_note_10"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 off / 1 on; legacy master loop.\nint / toggle\n0 = off; 1 = on\nLoop state of the LEGACY master gain envelope. Use ADSR_12_Lanes_Loop for all twelve lane envelopes.",
                    "id": "m74",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 190.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 190.0, 310.0, 22.0 ],
                    "text": "control Envelope_Loop 0",
                    "varname": "ec_im_m74"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 211.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 211.0, 310.0, 20.0 ],
                    "text": "int 0 off / 1 on; legacy master loop.",
                    "varname": "ec_im_note_m74"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: start legacy master envelope.\nbang / no arguments\nNo numeric value required\nLaunch the LEGACY master gain envelope. Use ADSR_12_Lanes_Global_Trigger to launch the twelve lane envelopes.",
                    "id": "m75",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 230.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 230.0, 310.0, 22.0 ],
                    "text": "control Envelope_Trigger",
                    "varname": "ec_im_m75"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 251.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 251.0, 310.0, 20.0 ],
                    "text": "Bang: start legacy master envelope.",
                    "varname": "ec_im_note_m75"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 3..48; set before sending ADSR_Points.\nint\n3 .. 48\nPoint count for the legacy master envelope.",
                    "id": "m76",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 270.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 270.0, 310.0, 22.0 ],
                    "text": "control ADSR_Breakpoints 4",
                    "varname": "ec_im_m76"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 291.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 291.0, 310.0, 20.0 ],
                    "text": "int 3..48; set before sending ADSR_Points.",
                    "varname": "ec_im_note_m76"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 1..3600000 ms.\nfloat\n1 .. 3600000 ms\nTotal envelope domain / duration for the legacy master envelope.",
                    "id": "m77",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 310.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 310.0, 310.0, 22.0 ],
                    "text": "control ADSR_Duration_ms 2000.",
                    "varname": "ec_im_m77"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m77",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 331.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 331.0, 310.0, 20.0 ],
                    "text": "float 1..3600000 ms.",
                    "varname": "ec_im_note_m77"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..24; master shape menu.\nint / menu\n0 .. 24\nZero-based shape selection in the legacy master envelope.",
                    "id": "m78",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 350.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 350.0, 310.0, 22.0 ],
                    "text": "control ADSR_Shape 6",
                    "varname": "ec_im_m78"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 371.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 371.0, 310.0, 20.0 ],
                    "text": "int 0..24; master shape menu.",
                    "varname": "ec_im_note_m78"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms.\nfloat\n0 .. 600000 ms\nShape / point morph duration for the legacy master envelope.",
                    "id": "m79",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 390.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 390.0, 310.0, 22.0 ],
                    "text": "control ADSR_Morph_ms 500.",
                    "varname": "ec_im_m79"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m79",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 411.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 411.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms.",
                    "varname": "ec_im_note_m79"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 1..9999; select memory slot.\nint\n1 .. 9999\nSelect the memory slot to write. Follow with ADSR_Store; selecting an index alone does not store.",
                    "id": "m80",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 430.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 430.0, 310.0, 22.0 ],
                    "text": "control ADSR_Store_Index 1",
                    "varname": "ec_im_m80"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m80",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 451.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 451.0, 310.0, 20.0 ],
                    "text": "int 1..9999; select memory slot.",
                    "varname": "ec_im_note_m80"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: store current master envelope.\nbang / no arguments\nNo numeric value required\nStore the current legacy master envelope at its selected Store_Index.",
                    "id": "m81",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 470.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 470.0, 310.0, 22.0 ],
                    "text": "control ADSR_Store",
                    "varname": "ec_im_m81"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 491.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 491.0, 310.0, 20.0 ],
                    "text": "Bang: store current master envelope.",
                    "varname": "ec_im_note_m81"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 1..9999; recall stored master envelope.\nint\n1 .. 9999\nRecall the legacy master envelope from the specified stored slot.",
                    "id": "m82",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 510.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 510.0, 310.0, 22.0 ],
                    "text": "control ADSR_Recall 1",
                    "varname": "ec_im_m82"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 531.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 531.0, 310.0, 20.0 ],
                    "text": "int 1..9999; recall stored master envelope.",
                    "varname": "ec_im_note_m82"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: emit / rebuild data; not a playback trigger.\nbang / no arguments\nNo numeric value required\nEmit / rebuild the current function data. This updates envelope data; it is not an envelope playback trigger.",
                    "id": "m83",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 550.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 550.0, 310.0, 22.0 ],
                    "text": "control ADSR_Emit",
                    "varname": "ec_im_m83"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m83",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 571.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 571.0, 310.0, 20.0 ],
                    "text": "Bang: emit / rebuild data; not a playback trigger.",
                    "varname": "ec_im_note_m83"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 590.0, 316.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 590.0, 316.0, 20.0 ],
                    "text": "12 AUTO LEVEL COMPENSATION",
                    "varname": "ec_im_head_11"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 off / 1 on.\nselector + arguments / bang\nSee Auto_Level subcommands\nAccepts on, strength, smooth, maxboost, capture, or a bang. The dedicated page below gives each argument type and range.",
                    "id": "m84",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 616.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 616.0, 310.0, 22.0 ],
                    "text": "control Auto_Level on 1",
                    "varname": "ec_im_m84"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m84",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 637.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 637.0, 310.0, 20.0 ],
                    "text": "int 0 off / 1 on.",
                    "varname": "ec_im_note_m84"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..100 percent.\nselector + arguments / bang\nSee Auto_Level subcommands\nAccepts on, strength, smooth, maxboost, capture, or a bang. The dedicated page below gives each argument type and range.",
                    "id": "m85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 656.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 656.0, 310.0, 22.0 ],
                    "text": "control Auto_Level strength 75.",
                    "varname": "ec_im_m85"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m85",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 677.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 677.0, 310.0, 20.0 ],
                    "text": "float 0..100 percent.",
                    "varname": "ec_im_note_m85"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..600000 ms; next changed target.\nselector + arguments / bang\nSee Auto_Level subcommands\nAccepts on, strength, smooth, maxboost, capture, or a bang. The dedicated page below gives each argument type and range.",
                    "id": "m86",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 696.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 696.0, 310.0, 22.0 ],
                    "text": "control Auto_Level smooth 500.",
                    "varname": "ec_im_m86"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 717.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 717.0, 310.0, 20.0 ],
                    "text": "float 0..600000 ms; next changed target.",
                    "varname": "ec_im_note_m86"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..24 dB; maximum positive compensation.\nselector + arguments / bang\nSee Auto_Level subcommands\nAccepts on, strength, smooth, maxboost, capture, or a bang. The dedicated page below gives each argument type and range.",
                    "id": "m87",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 736.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 736.0, 310.0, 22.0 ],
                    "text": "control Auto_Level maxboost 6.",
                    "varname": "ec_im_m87"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m87",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 757.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 757.0, 310.0, 20.0 ],
                    "text": "float 0..24 dB; maximum positive compensation.",
                    "varname": "ec_im_note_m87"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Action: capture reference; silent models are ignored.\nselector + arguments / bang\nSee Auto_Level subcommands\nAccepts on, strength, smooth, maxboost, capture, or a bang. The dedicated page below gives each argument type and range.",
                    "id": "m88",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 776.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 776.0, 310.0, 22.0 ],
                    "text": "control Auto_Level capture",
                    "varname": "ec_im_m88"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 797.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 797.0, 310.0, 20.0 ],
                    "text": "Action: capture reference; silent models are ignored.",
                    "varname": "ec_im_note_m88"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: report settings / levels without changing them.\nselector + arguments / bang\nSee Auto_Level subcommands\nAccepts on, strength, smooth, maxboost, capture, or a bang. The dedicated page below gives each argument type and range.",
                    "id": "m89",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 816.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 816.0, 310.0, 22.0 ],
                    "text": "control Auto_Level",
                    "varname": "ec_im_m89"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m89",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 837.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 837.0, 310.0, 20.0 ],
                    "text": "Bang: report settings / levels without changing them.",
                    "varname": "ec_im_note_m89"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 856.0, 312.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 856.0, 312.0, 20.0 ],
                    "text": "13 PRESETS / DIAGNOSTICS",
                    "varname": "ec_im_head_12"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Collect current controls, engines and stores.",
                    "id": "m90",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 882.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 882.0, 310.0, 22.0 ],
                    "text": "sweep",
                    "varname": "ec_im_m90"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 903.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 903.0, 310.0, 20.0 ],
                    "text": "Collect current controls, engines and stores.",
                    "varname": "ec_im_note_m90"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Fresh capture + preset output from synth outlet 14.",
                    "id": "m91",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 922.0, 311.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 922.0, 311.0, 22.0 ],
                    "text": "dump",
                    "varname": "ec_im_m91"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m91",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 943.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 943.0, 310.0, 20.0 ],
                    "text": "Fresh capture + preset output from synth outlet 14.",
                    "varname": "ec_im_note_m91"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Diagnostic values / engine state via synth outlet 15.",
                    "id": "m92",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 962.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 962.0, 310.0, 22.0 ],
                    "text": "dumpvalues",
                    "varname": "ec_im_m92"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m92",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 983.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 983.0, 310.0, 20.0 ],
                    "text": "Diagnostic values / engine state via synth outlet 15.",
                    "varname": "ec_im_note_m92"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Check private engine preset communication.",
                    "id": "m93",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 1002.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 1002.0, 310.0, 22.0 ],
                    "text": "check",
                    "varname": "ec_im_m93"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m93",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 1023.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 1023.0, 310.0, 20.0 ],
                    "text": "Check private engine preset communication.",
                    "varname": "ec_im_note_m93"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 142.0, 313.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 142.0, 313.0, 20.0 ],
                    "text": "14 ORGAN STOPS / REGISTRATION",
                    "varname": "ec_im_head_13"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "group-note-13",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 168.0, 310.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 1611.0, 168.0, 309.0, 47.0 ],
                    "text": "Stop values are staged: click Stops_Apply after editing. Use 0\nto deselect and 1 to select.",
                    "varname": "ec_im_group_note_13"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Principal 8′. Follow with Stops_Apply.",
                    "id": "stop-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 204.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 204.0, 152.0, 22.0 ],
                    "text": "control Stop_0 1",
                    "varname": "ec_im_stop_0"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 227.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 227.0, 152.0, 20.0 ],
                    "text": "Principal 8′ | 0 / 1",
                    "varname": "ec_im_note_stop_0"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Octava 4′. Follow with Stops_Apply.",
                    "id": "stop-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1769.0, 204.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 204.0, 152.0, 22.0 ],
                    "text": "control Stop_1 1",
                    "varname": "ec_im_stop_1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1769.0, 227.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 227.0, 152.0, 20.0 ],
                    "text": "Octava 4′ | 0 / 1",
                    "varname": "ec_im_note_stop_1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Doublette 2′. Follow with Stops_Apply.",
                    "id": "stop-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 247.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 247.0, 152.0, 22.0 ],
                    "text": "control Stop_2 1",
                    "varname": "ec_im_stop_2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 270.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 270.0, 152.0, 20.0 ],
                    "text": "Doublette 2′ | 0 / 1",
                    "varname": "ec_im_note_stop_2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Open Flute 8′. Follow with Stops_Apply.",
                    "id": "stop-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1769.0, 247.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 247.0, 152.0, 22.0 ],
                    "text": "control Stop_3 1",
                    "varname": "ec_im_stop_3"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1769.0, 270.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 270.0, 152.0, 20.0 ],
                    "text": "Open Flute 8′ | 0 / 1",
                    "varname": "ec_im_note_stop_3"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Bourdon 8′. Follow with Stops_Apply.",
                    "id": "stop-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 290.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 290.0, 152.0, 22.0 ],
                    "text": "control Stop_4 1",
                    "varname": "ec_im_stop_4"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 313.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 313.0, 152.0, 20.0 ],
                    "text": "Bourdon 8′ | 0 / 1",
                    "varname": "ec_im_note_stop_4"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Gamba 8′. Follow with Stops_Apply.",
                    "id": "stop-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1769.0, 290.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 290.0, 152.0, 22.0 ],
                    "text": "control Stop_5 1",
                    "varname": "ec_im_stop_5"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1769.0, 313.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 313.0, 152.0, 20.0 ],
                    "text": "Gamba 8′ | 0 / 1",
                    "varname": "ec_im_note_stop_5"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Trumpet 8′. Follow with Stops_Apply.",
                    "id": "stop-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 333.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 333.0, 152.0, 22.0 ],
                    "text": "control Stop_6 1",
                    "varname": "ec_im_stop_6"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 356.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 356.0, 152.0, 20.0 ],
                    "text": "Trumpet 8′ | 0 / 1",
                    "varname": "ec_im_note_stop_6"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Nazard 2⅔′. Follow with Stops_Apply.",
                    "id": "stop-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1769.0, 333.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 333.0, 152.0, 22.0 ],
                    "text": "control Stop_7 1",
                    "varname": "ec_im_stop_7"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1769.0, 356.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 356.0, 152.0, 20.0 ],
                    "text": "Nazard 2⅔′ | 0 / 1",
                    "varname": "ec_im_note_stop_7"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Tierce 1⅗′. Follow with Stops_Apply.",
                    "id": "stop-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 376.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 376.0, 152.0, 22.0 ],
                    "text": "control Stop_8 1",
                    "varname": "ec_im_stop_8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 399.0, 152.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 399.0, 152.0, 21.0 ],
                    "text": "Tierce 1⅗′ | 0 / 1",
                    "varname": "ec_im_note_stop_8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Larigot 1⅓′. Follow with Stops_Apply.",
                    "id": "stop-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1769.0, 376.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 376.0, 152.0, 22.0 ],
                    "text": "control Stop_9 1",
                    "varname": "ec_im_stop_9"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1769.0, 399.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 399.0, 152.0, 20.0 ],
                    "text": "Larigot 1⅓′ | 0 / 1",
                    "varname": "ec_im_note_stop_9"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Quint Mixture III. Follow with Stops_Apply.",
                    "id": "stop-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 419.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 419.0, 152.0, 22.0 ],
                    "text": "control Stop_10 1",
                    "varname": "ec_im_stop_10"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 442.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 442.0, 152.0, 20.0 ],
                    "text": "Quint Mixture III | 0 / 1",
                    "varname": "ec_im_note_stop_10"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Celeste-inspired II. Follow with Stops_Apply.",
                    "id": "stop-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1769.0, 419.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 419.0, 152.0, 22.0 ],
                    "text": "control Stop_11 1",
                    "varname": "ec_im_stop_11"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1769.0, 442.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 442.0, 152.0, 20.0 ],
                    "text": "Celeste-inspired II | 0 / 1",
                    "varname": "ec_im_note_stop_11"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Flute 4′. Follow with Stops_Apply.",
                    "id": "stop-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 462.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 462.0, 152.0, 22.0 ],
                    "text": "control Stop_12 1",
                    "varname": "ec_im_stop_12"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 485.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 485.0, 152.0, 20.0 ],
                    "text": "Flute 4′ | 0 / 1",
                    "varname": "ec_im_note_stop_12"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0 / 1. Flute 2′. Follow with Stops_Apply.",
                    "id": "stop-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1769.0, 462.0, 152.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 462.0, 152.0, 22.0 ],
                    "text": "control Stop_13 1",
                    "varname": "ec_im_stop_13"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-stop-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1769.0, 485.0, 152.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1769.0, 485.0, 152.0, 20.0 ],
                    "text": "Flute 2′ | 0 / 1",
                    "varname": "ec_im_note_stop_13"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 0..5 Hz; staged until Stops_Apply.\nfloat\n0 .. 5 Hz\nOrgan-stop beating parameter; staged until Stops_Apply.",
                    "id": "m94",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 505.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 505.0, 310.0, 22.0 ],
                    "text": "control Stop_Beat_Hz 0.5",
                    "varname": "ec_im_m94"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m94",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 526.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 526.0, 310.0, 20.0 ],
                    "text": "float 0..5 Hz; staged until Stops_Apply.",
                    "varname": "ec_im_note_m94"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 1..256; staged until Stops_Apply.\nint\n1 .. 256\nOrgan-stop tail / harmonic-count parameter; staged until Stops_Apply.",
                    "id": "m95",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 545.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 545.0, 310.0, 22.0 ],
                    "text": "control Stop_Tail 64",
                    "varname": "ec_im_m95"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m95",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 566.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 566.0, 310.0, 20.0 ],
                    "text": "int 1..256; staged until Stops_Apply.",
                    "varname": "ec_im_note_m95"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: apply all selected stops / parameters.\nbang / no arguments\nNo numeric value required\nApply the selected stops, Stop_Beat_Hz and Stop_Tail to the full spectrum bank.",
                    "id": "m96",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 585.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 585.0, 310.0, 22.0 ],
                    "text": "control Stops_Apply",
                    "varname": "ec_im_m96"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m96",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 606.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 606.0, 310.0, 20.0 ],
                    "text": "Bang: apply all selected stops / parameters.",
                    "varname": "ec_im_note_m96"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: deselect all stops and apply immediately.\nbang / no arguments\nNo numeric value required\nDeselect every organ stop and apply the cleared registration immediately.",
                    "id": "m97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 625.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 625.0, 310.0, 22.0 ],
                    "text": "control Stops_Clear",
                    "varname": "ec_im_m97"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 646.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 646.0, 310.0, 20.0 ],
                    "text": "Bang: deselect all stops and apply immediately.",
                    "varname": "ec_im_note_m97"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..9; preset registration applies immediately.\nint / menu\n0 .. 9\nApplies immediately. 0 Principal Chorus; 1 Cornet V; 2 Sesquialtera II; 3 Flute Quint; 4 Celeste II; 5 Reed Chorus; 6 Open Flute; 7 Stopped Flute; 8 String 8; 9 Sharp Mixture.",
                    "id": "m98",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 665.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 665.0, 310.0, 22.0 ],
                    "text": "control Registration 0",
                    "varname": "ec_im_m98"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m98",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 686.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 686.0, 310.0, 20.0 ],
                    "text": "int 0..9; preset registration applies immediately.",
                    "varname": "ec_im_note_m98"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 705.0, 315.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 705.0, 315.0, 20.0 ],
                    "text": "15 SHAPE LIBRARY EDITOR",
                    "varname": "ec_im_head_14"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 3..48; set before Library_Points.\nint\n3 .. 48\nPoint count for the shape library editor.",
                    "id": "m99",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 731.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 731.0, 310.0, 22.0 ],
                    "text": "control Library_Breakpoints 4",
                    "varname": "ec_im_m99"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m99",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 752.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 752.0, 310.0, 20.0 ],
                    "text": "int 3..48; set before Library_Points.",
                    "varname": "ec_im_note_m99"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "float 1..3600000 ms.\nfloat\n1 .. 3600000 ms\nTotal envelope domain / duration for the shape library editor.",
                    "id": "m100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 771.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 771.0, 310.0, 22.0 ],
                    "text": "control Library_Duration_ms 2000.",
                    "varname": "ec_im_m100"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m100",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 792.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 792.0, 310.0, 20.0 ],
                    "text": "float 1..3600000 ms.",
                    "varname": "ec_im_note_m100"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 0..24; factory shape menu.\nint / menu\n0 .. 24\nZero-based shape selection in the shape library editor.",
                    "id": "m101",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 811.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 811.0, 310.0, 22.0 ],
                    "text": "control Library_Shape 6",
                    "varname": "ec_im_m101"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m101",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 832.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 832.0, 310.0, 20.0 ],
                    "text": "int 0..24; factory shape menu.",
                    "varname": "ec_im_note_m101"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "int 1..9999; select memory slot.\nint\n1 .. 9999\nSelect the memory slot to write. Follow with Library_Store; selecting an index alone does not store.",
                    "id": "m102",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 851.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 851.0, 310.0, 22.0 ],
                    "text": "control Library_Store_Index 1",
                    "varname": "ec_im_m102"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m102",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 872.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 872.0, 310.0, 20.0 ],
                    "text": "int 1..9999; select memory slot.",
                    "varname": "ec_im_note_m102"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: store the edited library envelope.\nbang / no arguments\nNo numeric value required\nStore the current shape library editor at its selected Store_Index.",
                    "id": "m103",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 891.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 891.0, 310.0, 22.0 ],
                    "text": "control Library_Store",
                    "varname": "ec_im_m103"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m103",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 912.0, 311.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 912.0, 311.0, 20.0 ],
                    "text": "Bang: store the edited library envelope.",
                    "varname": "ec_im_note_m103"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Bang: emit / rebuild current library function.\nbang / no arguments\nNo numeric value required\nEmit / rebuild the current function data. This updates envelope data; it is not an envelope playback trigger.",
                    "id": "m104",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1611.0, 931.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 931.0, 310.0, 22.0 ],
                    "text": "control Library_Emit",
                    "varname": "ec_im_m104"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m104",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1611.0, 952.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1611.0, 952.0, 310.0, 20.0 ],
                    "text": "Bang: emit / rebuild current library function.",
                    "varname": "ec_im_note_m104"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 940.0, 316.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 940.0, 316.0, 20.0 ],
                    "text": "16 SPECTRAL LIST EXAMPLES",
                    "varname": "ec_im_head_15"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "group-note-15",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 966.0, 310.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [ 11.0, 966.0, 270.0, 60.0 ],
                    "text": "Each button sets Slider Count to 4 before sending its\nfour-value list. Edit both count and list length together.",
                    "varname": "ec_im_group_note_15"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Floats 0..1; exact Slider Count values. Uses morph.\nlist of floats\nExactly Slider Count values;\neach 0 .. 1\nActive-slot amplitude targets, using Amplitude_Morph_ms. Wrong list length is ignored; values are clipped. Hidden slots are retained.\nint\n2 .. current Render Limit\nSlider Count. Hidden values remain stored in the 256-slot bank. Raising Render Limit does not raise Slider Count automatically.",
                    "id": "m105",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 1002.0, 345.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 1002.0, 345.0, 22.0 ],
                    "text": "control Partial_Count 4, control Amplitude_Values 1. 0.7 0.4 0.2",
                    "varname": "ec_im_m105"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m105",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 1038.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 1038.0, 310.0, 20.0 ],
                    "text": "Floats 0..1; exact Slider Count values. Uses morph.",
                    "varname": "ec_im_note_m105"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Turns mirror OFF. Floats 0..1; exact count values.\nlist of floats\nExactly Slider Count values;\neach 0 .. 1\nActive-slot anchor targets, using Anchor_Morph_ms. Wrong length is ignored; writes are ignored while Anchor_Mirror is ON.\nint / toggle\n0 = independent; 1 = mirror\nMirrors primary amplitudes into the anchor layer. Independent anchor list / per-slot writes are ignored while enabled.\nint\n2 .. current Render Limit\nSlider Count. Hidden values remain stored in the 256-slot bank. Raising Render Limit does not raise Slider Count automatically.",
                    "id": "m106",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 1057.0, 468.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 1057.0, 468.0, 22.0 ],
                    "text": "control Anchor_Mirror 0, control Partial_Count 4, control Anchor_Values 0.5 0.3 0.2 0.1",
                    "varname": "ec_im_m106"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m106",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 1093.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 1093.0, 310.0, 20.0 ],
                    "text": "Turns mirror OFF. Floats 0..1; exact count values.",
                    "varname": "ec_im_note_m106"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Floats -1..1; exact count values. Uses drift morph.\nlist of floats\nExactly Slider Count values;\neach -1 .. 1\nActive-slot signed detune targets, using Drift_Morph_ms. -1 / +1 represent -100 / +100 cents. Wrong length is ignored; values are clipped.\nint\n2 .. current Render Limit\nSlider Count. Hidden values remain stored in the 256-slot bank. Raising Render Limit does not raise Slider Count automatically.",
                    "id": "m107",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 1112.0, 336.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 1112.0, 336.0, 22.0 ],
                    "text": "control Partial_Count 4, control Drift_Values 0. -0.25 0.25 -0.5",
                    "varname": "ec_im_m107"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m107",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 1148.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 1148.0, 310.0, 20.0 ],
                    "text": "Floats -1..1; exact count values. Uses drift morph.",
                    "varname": "ec_im_note_m107"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 900.0, 312.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 900.0, 312.0, 20.0 ],
                    "text": "17 ENVELOPE POINT LISTS",
                    "varname": "ec_im_head_16"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Sets PTS first. Floats 0..1; exact PTS values.\nint\n3 .. 48\nPoint count for the legacy master envelope.\nlist of floats\nExactly ADSR_Breakpoints\nvalues; amplitudes 0 .. 1\nSupported envelope input: one amplitude per equally spaced point. Set Breakpoints first. A wrong-length list is ignored. The shared JS accepts -1 .. 1 internally; the amplitude editor range is 0 .. 1.",
                    "id": "m108",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 926.0, 339.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 926.0, 339.0, 22.0 ],
                    "text": "control ADSR_Breakpoints 4, control ADSR_Points 0. 1. 0.4 0.",
                    "varname": "ec_im_m108"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m108",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 962.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 962.0, 310.0, 20.0 ],
                    "text": "Sets PTS first. Floats 0..1; exact PTS values.",
                    "varname": "ec_im_note_m108"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Sets library PTS first. Floats 0..1; exact PTS values.\nint\n3 .. 48\nPoint count for the shape library editor.\nlist of floats\nExactly Library_Breakpoints\nvalues; amplitudes 0 .. 1\nSupported envelope input: one amplitude per equally spaced point. Set Breakpoints first. The library editor receives the list directly.",
                    "id": "m109",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 981.0, 347.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 981.0, 347.0, 22.0 ],
                    "text": "control Library_Breakpoints 4, control Library_Points 0. 1. 0.4 0.",
                    "varname": "ec_im_m109"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m109",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 331.0, 1017.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 1017.0, 310.0, 20.0 ],
                    "text": "Sets library PTS first. Floats 0..1; exact PTS values.",
                    "varname": "ec_im_note_m109"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 914.0, 315.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 914.0, 315.0, 20.0 ],
                    "text": "18 PER-SLOT VALUE QUERIES",
                    "varname": "ec_im_head_17"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Query slot 1..256; reply uses its private *_current bus.\nint index, float value\nIndex 1 .. 256; value 0 .. 1\nImmediate edit, including hidden slots. Also accepts: get <index>. Reply uses the private Partial_Amplitude_current bus.",
                    "id": "m110",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 940.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 940.0, 310.0, 22.0 ],
                    "text": "control Partial_Amplitude get 1",
                    "varname": "ec_im_m110"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m110",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 961.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 961.0, 310.0, 20.0 ],
                    "text": "Query slot 1..256; reply uses its private *_current bus.",
                    "varname": "ec_im_note_m110"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Query slot 1..256; reply uses its private *_current bus.\nint index, float value\nIndex 1 .. 256; value 0 .. 1\nImmediate edit, including hidden slots. Also accepts: get <index>. Reply uses the private Partial_Anchor_current bus. Writes are ignored while Anchor_Mirror is ON.",
                    "id": "m111",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 980.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 980.0, 310.0, 22.0 ],
                    "text": "control Partial_Anchor get 1",
                    "varname": "ec_im_m111"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m111",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 1001.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 1001.0, 310.0, 20.0 ],
                    "text": "Query slot 1..256; reply uses its private *_current bus.",
                    "varname": "ec_im_note_m111"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Query slot 1..256; reply uses its private *_current bus.\nint index, float value\nIndex 1 .. 256; value -1 .. 1\nImmediate edit, including hidden slots. Also accepts: get <index>. Reply uses the private Partial_Drift_current bus.",
                    "id": "m112",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 1020.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 1020.0, 310.0, 22.0 ],
                    "text": "control Partial_Drift get 1",
                    "varname": "ec_im_m112"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m112",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 1041.0, 310.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 1041.0, 310.0, 20.0 ],
                    "text": "Query slot 1..256; reply uses its private *_current bus.",
                    "varname": "ec_im_note_m112"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "query-note",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 1060.0, 310.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 651.0, 1060.0, 301.0, 47.0 ],
                    "text": "These replies do not appear at the normal status outlet. See\nthe full control reference for private readback details.",
                    "varname": "ec_im_query_note"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "head-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 1042.0, 315.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 1042.0, 315.0, 20.0 ],
                    "text": "19 PASTE A COMPLETE PRESET",
                    "varname": "ec_im_head_18"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "group-note-18",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 1068.0, 310.0, 74.0 ],
                    "presentation": 1,
                    "presentation_linecount": 5,
                    "presentation_rect": [ 1291.0, 1068.0, 295.0, 74.0 ],
                    "text": "Unlock and paste a complete dumped preset message into\nthe blank box; lock and click to recall. Only preset-prefixed\nmessages pass.",
                    "varname": "ec_im_group_note_18"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Paste the entire preset message, including version, checksum and every encoded chunk. The filter blocks an empty click.",
                    "id": "m113",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1291.0, 1118.0, 310.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1291.0, 1118.0, 310.0, 22.0 ],
                    "varname": "ec_im_m113"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "note-m113",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1291.0, 1157.0, 310.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 1291.0, 1157.0, 310.0, 33.0 ],
                    "text": "Full preset message only. Never change the version number.",
                    "varname": "ec_im_note_m113"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "footer",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 1191.0, 1910.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 11.0, 1191.0, 1910.0, 20.0 ],
                    "text": "Use 0 / 1 for toggle states; use no argument for bang actions. Bulk-list buttons show their setup commands explicitly. Inactive Removal_Shape and internal/readback buses are intentionally not send buttons. No audio or external JS dependencies.",
                    "varname": "ec_im_footer"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "dispatch",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 11.0, 1296.0, 80.0, 22.0 ],
                    "text": "t l l",
                    "varname": "ec_im_dispatch"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "monitor-slice",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 151.0, 1296.0, 230.0, 22.0 ],
                    "text": "zl.slice 12 @zlmaxsize 32767",
                    "varname": "ec_im_monitor_slice"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "monitor-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 281.0, 1296.0, 100.0, 22.0 ],
                    "text": "prepend set",
                    "varname": "ec_im_monitor_set"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "destination-plus",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 421.0, 1296.0, 50.0, 22.0 ],
                    "text": "+ 1",
                    "varname": "ec_im_destination_plus"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "destination-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 421.0, 1261.0, 100.0, 22.0 ],
                    "text": "loadmess 0",
                    "varname": "ec_im_destination_init"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "destination-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 11.0, 1346.0, 100.0, 22.0 ],
                    "text": "gate 2 1",
                    "varname": "ec_im_destination_gate"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "private-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 1396.0, 400.0, 22.0 ],
                    "text": "send #0-ec-cnmat-sinusoids-opt_ec-control",
                    "varname": "ec_im_private_send"
                }
            },
            {
                "box": {
                    "comment": "Synth command output (Cable outlet mode): connect to the synth left inlet.",
                    "id": "command-out",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 451.0, 1396.0, 30.0, 30.0 ],
                    "varname": "ec_im_command_out"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "preset-filter",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 611.0, 1296.0, 150.0, 22.0 ],
                    "text": "routepass preset",
                    "varname": "ec_im_preset_filter"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "lane-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 811.0, 1296.0, 100.0, 22.0 ],
                    "text": "loadmess 1",
                    "varname": "ec_im_lane_init"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "lane-router",
                    "maxclass": "newobj",
                    "numinlets": 2,
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
                        "rect": [ 80.0, 80.0, 1400.0, 1000.0 ],
                        "description": "Native lane-address translation; setting target lane uses set and cannot emit a synth command.",
                        "boxes": [
                            {
                                "box": {
                                    "comment": "NN template message",
                                    "id": "input",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 20.0, 30.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Target lane 1..12; sets prefixes only",
                                    "id": "lane",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 20.0, 30.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 20.0, 65.0, 250.0, 22.0 ],
                                    "text": "route control"
                                }
                            },
                            {
                                "box": {
                                    "id": "route",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 14,
                                    "numoutlets": 14,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 20.0, 105.0, 1300.0, 22.0 ],
                                    "text": "route ADSR_Lane_NN_Trigger ADSR_Lane_NN_Stop ADSR_Lane_NN_Loop ADSR_Lane_NN_Delay_ms ADSR_Lane_NN_Duration_ms ADSR_Lane_NN_Breakpoints ADSR_Lane_NN_Shape ADSR_Lane_NN_Smoothing_ms ADSR_Lane_NN_Points ADSR_Lane_NN_Store_Index ADSR_Lane_NN_Store ADSR_Lane_NN_Recall ADSR_Lane_NN_Emit"
                                }
                            },
                            {
                                "box": {
                                    "id": "clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 65.0, 250.0, 22.0 ],
                                    "text": "clip 1 12"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Complete control message for selected lane",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 900.0, 30.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "format0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 155.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Trigger"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 155.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Trigger"
                                }
                            },
                            {
                                "box": {
                                    "id": "format1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 208.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 208.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "format2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 261.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Loop"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 261.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Loop"
                                }
                            },
                            {
                                "box": {
                                    "id": "format3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 314.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Delay_ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 314.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Delay_ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "format4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 367.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Duration_ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 367.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Duration_ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "format5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 420.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Breakpoints"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 420.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Breakpoints"
                                }
                            },
                            {
                                "box": {
                                    "id": "format6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 473.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Shape"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 473.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Shape"
                                }
                            },
                            {
                                "box": {
                                    "id": "format7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 526.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Smoothing_ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 526.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Smoothing_ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "format8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 579.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Points"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 579.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Points"
                                }
                            },
                            {
                                "box": {
                                    "id": "format9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 632.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Store_Index"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 632.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Store_Index"
                                }
                            },
                            {
                                "box": {
                                    "id": "format10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 685.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Store"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 685.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Store"
                                }
                            },
                            {
                                "box": {
                                    "id": "format11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 738.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Recall"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 738.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Recall"
                                }
                            },
                            {
                                "box": {
                                    "id": "format12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 791.0, 460.0, 22.0 ],
                                    "text": "sprintf set control ADSR_Lane_%02ld_Emit"
                                }
                            },
                            {
                                "box": {
                                    "id": "prefix12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 791.0, 400.0, 22.0 ],
                                    "text": "prepend control ADSR_Lane_01_Emit"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "format0", 0 ],
                                    "order": 12,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format1", 0 ],
                                    "order": 11,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format10", 0 ],
                                    "order": 2,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format11", 0 ],
                                    "order": 1,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format12", 0 ],
                                    "order": 0,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format2", 0 ],
                                    "order": 10,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format3", 0 ],
                                    "order": 9,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format4", 0 ],
                                    "order": 8,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format5", 0 ],
                                    "order": 7,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format6", 0 ],
                                    "order": 6,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format7", 0 ],
                                    "order": 5,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format8", 0 ],
                                    "order": 4,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "format9", 0 ],
                                    "order": 3,
                                    "source": [ "clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix0", 0 ],
                                    "source": [ "format0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix1", 0 ],
                                    "source": [ "format1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix10", 0 ],
                                    "source": [ "format10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix11", 0 ],
                                    "source": [ "format11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix12", 0 ],
                                    "source": [ "format12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix2", 0 ],
                                    "source": [ "format2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix3", 0 ],
                                    "source": [ "format3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix4", 0 ],
                                    "source": [ "format4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix5", 0 ],
                                    "source": [ "format5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix6", 0 ],
                                    "source": [ "format6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix7", 0 ],
                                    "source": [ "format7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix8", 0 ],
                                    "source": [ "format8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix9", 0 ],
                                    "source": [ "format9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "strip", 0 ],
                                    "source": [ "input", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clip", 0 ],
                                    "source": [ "lane", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "prefix9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix0", 0 ],
                                    "source": [ "route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix1", 0 ],
                                    "source": [ "route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix10", 0 ],
                                    "source": [ "route", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix11", 0 ],
                                    "source": [ "route", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix12", 0 ],
                                    "source": [ "route", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix2", 0 ],
                                    "source": [ "route", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix3", 0 ],
                                    "source": [ "route", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix4", 0 ],
                                    "source": [ "route", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix5", 0 ],
                                    "source": [ "route", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix6", 0 ],
                                    "source": [ "route", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix7", 0 ],
                                    "source": [ "route", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix8", 0 ],
                                    "source": [ "route", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prefix9", 0 ],
                                    "source": [ "route", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route", 0 ],
                                    "source": [ "strip", 0 ]
                                }
                            }
                        ],
                        "bgfillcolor_type": "color",
                        "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                        "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                        "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1.0 ]
                    },
                    "patching_rect": [ 811.0, 1346.0, 220.0, 22.0 ],
                    "saved_object_attributes": {
                        "description": "Native lane-address translation; setting target lane uses set and cannot emit a synth command."
                    },
                    "text": "p selected_lane_router",
                    "varname": "ec_im_lane_router"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "destination-plus", 0 ],
                    "source": [ "destination", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "command-out", 0 ],
                    "source": [ "destination-gate", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "private-send", 0 ],
                    "source": [ "destination-gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "destination", 0 ],
                    "source": [ "destination-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "destination-gate", 0 ],
                    "source": [ "destination-plus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "destination-gate", 1 ],
                    "source": [ "dispatch", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "monitor-slice", 0 ],
                    "source": [ "dispatch", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-number", 0 ],
                    "source": [ "lane-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 1 ],
                    "source": [ "lane-number", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "lane-router", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "preset-filter", 0 ],
                    "source": [ "m113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lane-router", 0 ],
                    "source": [ "m73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "m99", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "last-sent", 0 ],
                    "source": [ "monitor-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "monitor-set", 0 ],
                    "source": [ "monitor-slice", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "preset-filter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dispatch", 0 ],
                    "source": [ "stop-9", 0 ]
                }
            }
        ],
        "autosave": 1
    }
}