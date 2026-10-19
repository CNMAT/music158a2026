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
        "rect": [ 134.0, 100.0, 1260.0, 983.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 894.5, 610.0, 131.0, 61.0 ],
                    "size": 6
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 15.0, 1140.0, 29.0 ],
                    "text": "EC SCALE / TUNING MAPPER  v1.2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 55.0, 1200.0, 20.0 ],
                    "text": "Map incoming pitch or generate one profile-weighted tone per bang. Input and output units: MIDICENTS (6000 = MIDI note 60)."
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
                    "patching_rect": [ 25.0, 92.0, 1190.0, 20.0 ],
                    "text": "Defaults: Ionian | tonic 6000 | primary octave 4 | octave-shift weight 0 | A4 440 Hz | melodic ON | nodes OFF"
                }
            },
            {
                "box": {
                    "embedstate": [
                        [ "restore", "{\"version\":1,\"state\":{\"base\":{\"name\":\"whole_tone\",\"scale\":\"whole_tone\",\"nominal\":[0,200,400,600,800,1000],\"cents\":[0,200,400,600,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc6\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"modal\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.7,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":6,\"turnbias\":0.9,\"recoverycents\":1614,\"octaveshift\":0.5,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"mixolydian\",\"scale\":\"mixolydian\",\"nominal\":[0,200,400,500,700,900,1000],\"cents\":[0,200,400,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"ionian\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"lydian\",\"scale\":\"lydian\",\"nominal\":[0,200,400,600,700,900,1100],\"cents\":[0,200,400,600,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc6\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"dorian\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"aeolian\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"phrygian\",\"scale\":\"phrygian\",\"nominal\":[0,100,300,500,700,800,1000],\"cents\":[0,100,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc1\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}],\"nodeweights\":[0.6579656817182293,0.2700838229013783,0,0.07195049538039244,0,0]}" ]
                    ],
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 335.0, 480.0, 235.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "ec_scale_tuning_mapper.js",
                        "parameter_enable": 0
                    },
                    "text": "js ec_scale_tuning_mapper.js",
                    "varname": "engine"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 225.0, 290.0, 22.0 ],
                    "text": "1. MAP A PITCH"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-6",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 265.0, 125.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 305.0, 145.0, 22.0 ],
                    "text": "loadmess set 6000."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 165.0, 265.0, 145.0, 20.0 ],
                    "text": "midicents input"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 350.0, 270.0, 22.0 ],
                    "text": "midi 60.25"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 382.0, 270.0, 22.0 ],
                    "text": "midicents 6000. 6250. 6700."
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 414.0, 270.0, 22.0 ],
                    "text": "mapping nearest"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 446.0, 270.0, 22.0 ],
                    "text": "mapping ceiling"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 478.0, 270.0, 22.0 ],
                    "text": "mapping floor"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 335.0, 225.0, 300.0, 22.0 ],
                    "text": "2. GENERATE A TONE"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 335.0, 265.0, 38.0, 38.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 390.0, 270.0, 250.0, 20.0 ],
                    "text": "One bang = one tone"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 330.0, 310.0, 22.0 ],
                    "text": "scale major, tuning equal"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 358.0, 310.0, 22.0 ],
                    "text": "scale major, tuning just_major_5limit"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 386.0, 310.0, 22.0 ],
                    "text": "scale natural_minor"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 414.0, 310.0, 22.0 ],
                    "text": "profile uniform"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 442.0, 310.0, 22.0 ],
                    "text": "profile auto"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 700.0, 225.0, 520.0, 22.0 ],
                    "text": "3. NODES: SIX-MODE TUNING MORPH"
                }
            },
            {
                "box": {
                    "displayknob": 1,
                    "id": "obj-23",
                    "maxclass": "nodes",
                    "mousemode": 2,
                    "nodenumber": 6,
                    "nodesnames": [ "mixolydian", "ionian", "lydian", "dorian", "aeolian", "phrygian" ],
                    "nsize": [ 0.55, 0.55, 0.55, 0.55, 0.55, 0.55 ],
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 673.0, 242.0, 340.0, 340.0 ],
                    "xplace": [ 0.18, 0.5, 0.82, 0.18, 0.5, 0.82 ],
                    "yplace": [ 0.25, 0.25, 0.25, 0.75, 0.75, 0.75 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 700.0, 620.0, 170.0, 22.0 ],
                    "text": "prepend nodeweights"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1060.0, 285.0, 155.0, 22.0 ],
                    "text": "nodesmode modal"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1060.0, 325.0, 155.0, 22.0 ],
                    "text": "nodesmode off"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-27",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1060.0, 375.0, 155.0, 114.0 ],
                    "text": "Enable modal morph.\nMove the cursor, then bang or play MIDI.\n\nCorresponding scale degrees blend in cents. All six nodes use uniform degree weights."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1005.0, 550.0, 80.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1005.0, 585.0, 60.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 935.0, 310.0, 22.0 ],
                    "text": "modalnodes, nodesmode off"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1110.0, 585.0, 95.0, 22.0 ],
                    "text": "0.5 0.5"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-32",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 585.0, 120.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-33",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 175.0, 585.0, 120.0, 22.0 ]
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
                    "patching_rect": [ 25.0, 610.0, 130.0, 20.0 ],
                    "text": "midicents"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 175.0, 610.0, 130.0, 20.0 ],
                    "text": "Hz"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 345.0, 627.0, 145.0, 22.0 ],
                    "text": "route nodeweights"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 345.0, 585.0, 145.0, 22.0 ],
                    "text": "print mapper_status"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 585.0, 110.0, 22.0 ],
                    "text": "print tone"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 545.0, 600.0, 22.0 ],
                    "text": "OUTPUT / STATUS"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 25.0, 655.0, 360.0, 22.0 ],
                    "text": "route scale tuning profile nodesmode mapping"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 695.0, 200.0, 19.0 ],
                    "text": "Scale"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 720.0, 200.0, 22.0 ],
                    "text": "modal_morph"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 240.0, 695.0, 215.0, 19.0 ],
                    "text": "Tuning"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 240.0, 720.0, 215.0, 22.0 ],
                    "text": "nodes_modal_morph"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 470.0, 695.0, 300.0, 19.0 ],
                    "text": "Profile / source"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 720.0, 300.0, 22.0 ],
                    "text": "custom user_supplied"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 785.0, 695.0, 180.0, 19.0 ],
                    "text": "Nodes"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 785.0, 720.0, 180.0, 22.0 ],
                    "text": "modal"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 980.0, 695.0, 180.0, 19.0 ],
                    "text": "Mapping"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 720.0, 180.0, 22.0 ],
                    "text": "nearest"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 770.0, 260.0, 21.0 ],
                    "text": "SINE AUDITION (optional)"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 335.0, 756.0, 70.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 140.0, 810.0, 70.0, 22.0 ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 260.0, 805.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 335.0, 805.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 335.0, 845.0, 70.0, 22.0 ],
                    "text": "* 0.05"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-57",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 415.0, 805.0, 220.0, 33.0 ],
                    "text": "Enable tone, then click DSP.\nContinuous sine; gain 0.05."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 660.0, 770.0, 550.0, 21.0 ],
                    "text": "MORE EXAMPLES (double-click)"
                }
            },
            {
                "box": {
                    "id": "obj-59",
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
                        "rect": [ 134.0, 172.0, 1180.0, 820.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 1000.0, 27.0 ],
                                    "text": "MESSAGE SPACE / DEFAULT VALUES"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 55.0, 1100.0, 20.0 ],
                                    "text": "Independent mapper in this tab. Bare numbers/lists are MIDICENTS. To send MIDI note numbers, use midi <number> or prepend midi."
                                }
                            },
                            {
                                "box": {
                                    "embedstate": [
                                        [ "restore", "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}" ]
                                    ],
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 25.0, 665.0, 235.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "ec_scale_tuning_mapper.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js ec_scale_tuning_mapper.js",
                                    "varname": "engine"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 25.0, 725.0, 120.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 175.0, 725.0, 120.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 750.0, 130.0, 20.0 ],
                                    "text": "midicents"
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
                                    "patching_rect": [ 175.0, 750.0, 130.0, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 345.0, 767.0, 145.0, 22.0 ],
                                    "text": "route nodeweights"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 725.0, 145.0, 22.0 ],
                                    "text": "print mapper_status"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 105.0, 355.0, 22.0 ],
                                    "text": "Input and mapping"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 140.0, 355.0, 19.0 ],
                                    "text": "Raw midicents"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 159.0, 355.0, 22.0 ],
                                    "text": "6000.25"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 189.0, 355.0, 19.0 ],
                                    "text": "Fractional MIDI -> midicents"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 208.0, 355.0, 22.0 ],
                                    "text": "midi 60.25"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 238.0, 355.0, 19.0 ],
                                    "text": "Pitch list (not pitch/velocity)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 257.0, 355.0, 22.0 ],
                                    "text": "midicents 6000. 6250. 6700."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 287.0, 355.0, 19.0 ],
                                    "text": "Upward mapping"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 306.0, 355.0, 22.0 ],
                                    "text": "mapping ceiling"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 336.0, 355.0, 19.0 ],
                                    "text": "Downward mapping"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 355.0, 355.0, 22.0 ],
                                    "text": "mapping floor"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 385.0, 355.0, 19.0 ],
                                    "text": "DEFAULT; ties choose lower pitch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 404.0, 355.0, 22.0 ],
                                    "text": "mapping nearest"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 434.0, 355.0, 19.0 ],
                                    "text": "Chromatic keys advance scale degrees"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 453.0, 355.0, 22.0 ],
                                    "text": "mapping degree, keybase 60"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 483.0, 355.0, 19.0 ],
                                    "text": "1-based degree; 8 = next tonic in major"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 502.0, 355.0, 22.0 ],
                                    "text": "degree 3"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 532.0, 355.0, 19.0 ],
                                    "text": "Scale degree from MIDI key"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 551.0, 355.0, 22.0 ],
                                    "text": "keyboard 67"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 581.0, 355.0, 19.0 ],
                                    "text": "Remap last scalar/list; bang generates"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 600.0, 355.0, 22.0 ],
                                    "text": "repeat"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 105.0, 355.0, 22.0 ],
                                    "text": "Generation and profile"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 140.0, 355.0, 19.0 ],
                                    "text": "One weighted tone"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 159.0, 355.0, 22.0 ],
                                    "text": "bang"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 189.0, 355.0, 19.0 ],
                                    "text": "KK major/minor, otherwise uniform"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 208.0, 355.0, 22.0 ],
                                    "text": "profile auto"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 238.0, 355.0, 19.0 ],
                                    "text": "DEFAULT with major"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 257.0, 355.0, 22.0 ],
                                    "text": "profile kk_major"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 287.0, 355.0, 19.0 ],
                                    "text": "Equal degree probabilities"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 306.0, 355.0, 22.0 ],
                                    "text": "profile uniform"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 336.0, 355.0, 19.0 ],
                                    "text": "Custom weights for seven degrees"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 355.0, 355.0, 22.0 ],
                                    "text": "weights 6.35 3.48 4.38 4.09 5.19 3.66 2.88"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 385.0, 355.0, 19.0 ],
                                    "text": "DEFAULT exponent; 0 flattens nonzero weights"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 404.0, 355.0, 22.0 ],
                                    "text": "strength 1."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 434.0, 355.0, 19.0 ],
                                    "text": "DEFAULT; tonic period only"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 453.0, 355.0, 22.0 ],
                                    "text": "register 0 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-46",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 483.0, 355.0, 19.0 ],
                                    "text": "Choose among three registers"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 502.0, 355.0, 22.0 ],
                                    "text": "register -1 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-48",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 532.0, 355.0, 19.0 ],
                                    "text": "Legacy pitch-class bias OFF; melodic preferences ON"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 551.0, 355.0, 22.0 ],
                                    "text": "stepbias 0."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 405.0, 581.0, 355.0, 19.0 ],
                                    "text": "DEFAULT; repeated pitches allowed"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 600.0, 355.0, 22.0 ],
                                    "text": "repeats 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 105.0, 355.0, 22.0 ],
                                    "text": "Configuration and state"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 140.0, 355.0, 19.0 ],
                                    "text": "DEFAULT; C4 = MIDI 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 159.0, 355.0, 22.0 ],
                                    "text": "tonic 6000."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 189.0, 355.0, 19.0 ],
                                    "text": "DEFAULT; reference frequency for MIDI 69"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 208.0, 355.0, 22.0 ],
                                    "text": "reference 440."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 238.0, 355.0, 19.0 ],
                                    "text": "DEFAULT; use base configuration"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 257.0, 355.0, 22.0 ],
                                    "text": "nodesmode off"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 287.0, 355.0, 19.0 ],
                                    "text": "DEFAULT strongest-node switching margin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 306.0, 355.0, 22.0 ],
                                    "text": "hysteresis 0.05"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-61",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 336.0, 355.0, 19.0 ],
                                    "text": "Repeatable generator; 0 = Math.random"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 355.0, 355.0, 22.0 ],
                                    "text": "randomseed 12345"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-63",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 385.0, 355.0, 19.0 ],
                                    "text": "Capture current base configuration"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 404.0, 355.0, 22.0 ],
                                    "text": "store my_configuration"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-65",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 434.0, 355.0, 19.0 ],
                                    "text": "Recall captured configuration"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 453.0, 355.0, 22.0 ],
                                    "text": "recall my_configuration"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-67",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 483.0, 355.0, 19.0 ],
                                    "text": "Current configuration and probabilities"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 502.0, 355.0, 22.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-69",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 532.0, 355.0, 19.0 ],
                                    "text": "Full JSON state to status outlet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 551.0, 355.0, 22.0 ],
                                    "text": "getstate"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-71",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 785.0, 581.0, 355.0, 19.0 ],
                                    "text": "Restore defaults; emit held MIDI note-offs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 785.0, 600.0, 355.0, 22.0 ],
                                    "text": "reset"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 660.0, 810.0, 175.0, 22.0 ],
                    "text": "p message_space"
                }
            },
            {
                "box": {
                    "id": "obj-60",
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
                        "rect": [ 2248.0, 198.0, 1160.0, 885.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 698.0, 703.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 738.0, 726.0, 63.0, 22.0 ],
                                    "text": "metro 200"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-71",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 185.0, 733.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 900.0, 27.0 ],
                                    "text": "SCALES / TUNINGS / CUSTOM DATA"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 52.0, 1090.0, 20.0 ],
                                    "text": "Each scale message selects its template tuning and an automatic profile: KK for major/minor, uniform for other scales. All examples below control this tab's mapper."
                                }
                            },
                            {
                                "box": {
                                    "embedstate": [
                                        [ "restore", "{\"version\":1,\"state\":{\"base\":{\"name\":\"dorian\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.2,\"recovery\":0.25,\"leapavoid\":0.01,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":2809,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}" ]
                                    ],
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 25.0, 705.0, 235.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "ec_scale_tuning_mapper.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js ec_scale_tuning_mapper.js",
                                    "varname": "engine"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 25.0, 765.0, 120.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 175.0, 765.0, 120.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 790.0, 130.0, 20.0 ],
                                    "text": "midicents"
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
                                    "patching_rect": [ 175.0, 790.0, 130.0, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 345.0, 807.0, 145.0, 22.0 ],
                                    "text": "route nodeweights"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 502.5, 807.0, 145.0, 22.0 ],
                                    "text": "print mapper_status"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 155.0, 340.0, 22.0 ],
                                    "text": "Western collections"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 191.0, 350.0, 19.0 ],
                                    "text": "Major / Ionian"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 210.0, 350.0, 22.0 ],
                                    "text": "scale major"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 241.0, 350.0, 19.0 ],
                                    "text": "Aeolian"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 260.0, 350.0, 22.0 ],
                                    "text": "scale natural_minor"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 291.0, 350.0, 19.0 ],
                                    "text": "Dorian"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 310.0, 350.0, 22.0 ],
                                    "text": "scale dorian"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 341.0, 350.0, 19.0 ],
                                    "text": "Harmonic minor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 360.0, 350.0, 22.0 ],
                                    "text": "scale harmonic_minor"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 391.0, 350.0, 19.0 ],
                                    "text": "Ascending melodic minor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 410.0, 350.0, 22.0 ],
                                    "text": "scale melodic_minor_ascending"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 441.0, 350.0, 19.0 ],
                                    "text": "Five tones"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 460.0, 350.0, 22.0 ],
                                    "text": "scale major_pentatonic"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 491.0, 350.0, 19.0 ],
                                    "text": "Six tones"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 510.0, 350.0, 22.0 ],
                                    "text": "scale whole_tone"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 541.0, 350.0, 19.0 ],
                                    "text": "Whole-half octatonic"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 560.0, 350.0, 22.0 ],
                                    "text": "scale octatonic_wh"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 591.0, 350.0, 19.0 ],
                                    "text": "Messiaen mode 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 610.0, 350.0, 22.0 ],
                                    "text": "scale messiaen_3"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 155.0, 340.0, 22.0 ],
                                    "text": "Named non-Western models"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 191.0, 350.0, 19.0 ],
                                    "text": "Chinese 12-TET model"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 210.0, 350.0, 22.0 ],
                                    "text": "scale gong_12tet"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 241.0, 350.0, 19.0 ],
                                    "text": "Chinese 12-TET model"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 260.0, 350.0, 22.0 ],
                                    "text": "scale yu_12tet"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 291.0, 350.0, 19.0 ],
                                    "text": "Rast quarter-tone approximation"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 310.0, 350.0, 22.0 ],
                                    "text": "scale rast_24edo_model"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 341.0, 350.0, 19.0 ],
                                    "text": "Bayati quarter-tone approximation"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 360.0, 350.0, 22.0 ],
                                    "text": "scale bayati_24edo_model"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 391.0, 350.0, 19.0 ],
                                    "text": "Hijaz 12-TET approximation"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 410.0, 350.0, 22.0 ],
                                    "text": "scale hijaz_12tet_model"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 441.0, 350.0, 19.0 ],
                                    "text": "Specific archived koto observation"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 460.0, 350.0, 22.0 ],
                                    "text": "scale hirajoshi_ellis_112"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 491.0, 350.0, 19.0 ],
                                    "text": "1199-cent repeating period"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 510.0, 350.0, 22.0 ],
                                    "text": "scale hirajoshi_ellis_111"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 541.0, 350.0, 19.0 ],
                                    "text": "Specific archived gamelan model"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 560.0, 350.0, 22.0 ],
                                    "text": "scale pelog_ksatria"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-46",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 591.0, 350.0, 19.0 ],
                                    "text": "Specific archived gamelan model"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 610.0, 350.0, 22.0 ],
                                    "text": "scale slendro_kanyut_mesem"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-48",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 155.0, 340.0, 22.0 ],
                                    "text": "Tuning / custom scales"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 191.0, 350.0, 19.0 ],
                                    "text": "Exact 5-limit ratios"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 210.0, 350.0, 22.0 ],
                                    "text": "scale major, tuning just_major_5limit"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 241.0, 350.0, 19.0 ],
                                    "text": "Pythagorean major"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 260.0, 350.0, 22.0 ],
                                    "text": "scale major, tuning pythagorean_major"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 291.0, 350.0, 19.0 ],
                                    "text": "5-limit minor with 9/5 seventh"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 310.0, 350.0, 22.0 ],
                                    "text": "scale natural_minor, tuning just_minor_5limit"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 341.0, 350.0, 19.0 ],
                                    "text": "19 equal divisions of octave"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 360.0, 350.0, 22.0 ],
                                    "text": "edo 19"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 391.0, 350.0, 19.0 ],
                                    "text": "13 equal divisions of tritave"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 410.0, 350.0, 22.0 ],
                                    "text": "edo 13 1901.955001"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 441.0, 350.0, 19.0 ],
                                    "text": "Custom cent positions"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 460.0, 350.0, 22.0 ],
                                    "text": "period 1200, cents 0. 150. 350. 700. 950."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-61",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 491.0, 350.0, 19.0 ],
                                    "text": "Degree-by-degree ratios"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 510.0, 350.0, 22.0 ],
                                    "text": "scale major, ratios 1/1 9/8 5/4 4/3 3/2 5/3 15/8"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-63",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 541.0, 350.0, 19.0 ],
                                    "text": "Full catalog in Max console"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 560.0, 350.0, 22.0 ],
                                    "text": "listscales"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-65",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.0, 591.0, 350.0, 19.0 ],
                                    "text": "Source/model description"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 780.0, 610.0, 350.0, 22.0 ],
                                    "text": "info pelog_ksatria"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 660.0, 60.0, 22.0 ],
                                    "text": "bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 660.0, 90.0, 22.0 ],
                                    "text": "degree 3"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-69",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 215.0, 660.0, 880.0, 20.0 ],
                                    "text": "Bang generates one tone. Degree 3 auditions the third degree of the selected tuning."
                                }
                            },
                            {
                                "box": {
                                    "id": "all-scale-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 88.0, 48.0, 20.0 ],
                                    "text": "Scale"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "All 41 built-in scales. Choosing one returns to nodesmode off and its template tuning. Ionian = major; Aeolian = natural minor.",
                                    "id": "all-scale-menu",
                                    "items": [ "phrygian", ",", "aeolian", ",", "dorian", ",", "ionian", ",", "mixolydian", ",", "lydian", ",", "locrian", ",", "harmonic_minor", ",", "melodic_minor_ascending", ",", "harmonic_major", ",", "major_pentatonic", ",", "minor_pentatonic", ",", "major_blues", ",", "minor_blues", ",", "whole_tone", ",", "octatonic_wh", ",", "octatonic_hw", ",", "augmented_hexatonic", ",", "chromatic", ",", "lydian_dominant", ",", "altered", ",", "phrygian_dominant", ",", "messiaen_1", ",", "messiaen_2", ",", "messiaen_3", ",", "messiaen_4", ",", "messiaen_5", ",", "messiaen_6", ",", "messiaen_7", ",", "gong_12tet", ",", "shang_12tet", ",", "jue_12tet", ",", "zhi_12tet", ",", "yu_12tet", ",", "rast_24edo_model", ",", "bayati_24edo_model", ",", "hijaz_12tet_model", ",", "hirajoshi_ellis_112", ",", "hirajoshi_ellis_111", ",", "pelog_ksatria", ",", "slendro_kanyut_mesem", ",", "custom / imported (use messages)" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 80.0, 88.0, 300.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "menu-select",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 80.0, 114.0, 230.0, 22.0 ],
                                    "text": "nodesmode off, scale $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "menu-status",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 400.0, 114.0, 180.0, 22.0 ],
                                    "text": "route scaleindex melodic"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "menu-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 80.0, 140.0, 100.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "menu-disable",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 80.0, 166.0, 200.0, 22.0 ],
                                    "text": "loadmess enableitem 41 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "melodic-toggle",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 420.0, 88.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "melodic-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 452.0, 88.0, 210.0, 20.0 ],
                                    "text": "Melodic preferences"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "melodic-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 420.0, 140.0, 140.0, 22.0 ],
                                    "text": "prepend melodic"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "melodic-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 420.0, 166.0, 100.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "melodic-controls",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "rect": [ 160.0, 160.0, 950.0, 810.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "status-in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 870.0, 20.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "command-out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 870.0, 755.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 20.0,
                                                    "id": "title",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 20.0, 750.0, 29.0 ],
                                                    "text": "MELODIC PREFERENCES"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "intro",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 60.0, 545.0, 33.0 ],
                                                    "text": "These controls operate the mapper in the parent patch. Bang generates one tone.\nOctave controls work with melodic preferences ON or OFF; mapped MIDI keeps its played register."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "settings-route",
                                                    "maxclass": "newobj",
                                                    "numinlets": 11,
                                                    "numoutlets": 11,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 25.0, 770.0, 890.0, 22.0 ],
                                                    "text": "route melodic stepchance recovery leapavoid maxrun turnbias recoverycents repeats octave octaveshift"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-melodic",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 130.0, 240.0, 20.0 ],
                                                    "text": "Enable melodic preferences"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ui-melodic",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 130.0, 25.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-melodic",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 130.0, 530.0, 20.0 ],
                                                    "text": "ON; switching resets interval history"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-melodic",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 154.0, 120.0, 22.0 ],
                                                    "text": "prepend melodic"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-melodic",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 154.0, 110.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-stepchance",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 175.0, 240.0, 20.0 ],
                                                    "text": "Step preference"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-stepchance",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 175.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-stepchance",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 175.0, 530.0, 20.0 ],
                                                    "text": "0.90: at least 90% step probability when a step is available"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-stepchance",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 199.0, 120.0, 22.0 ],
                                                    "text": "prepend stepchance"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-stepchance",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 199.0, 110.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-recovery",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 220.0, 240.0, 20.0 ],
                                                    "text": "Opposite-step recovery"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-recovery",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 220.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-recovery",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 220.0, 530.0, 20.0 ],
                                                    "text": "0.98: stronger priority immediately after a large leap"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-recovery",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 244.0, 120.0, 22.0 ],
                                                    "text": "prepend recovery"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-recovery",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 244.0, 110.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-leapavoid",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 265.0, 240.0, 20.0 ],
                                                    "text": "Avoid consecutive leaps"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-leapavoid",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 265.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-leapavoid",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 265.0, 530.0, 20.0 ],
                                                    "text": "0.97: other consecutive leaps receive 3% of their weight"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-leapavoid",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 289.0, 120.0, 22.0 ],
                                                    "text": "prepend leapavoid"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-leapavoid",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 289.0, 110.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-maxrun",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 310.0, 240.0, 20.0 ],
                                                    "text": "Turn after this many moves"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ui-maxrun",
                                                    "maxclass": "number",
                                                    "maximum": 32,
                                                    "minimum": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 310.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-maxrun",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 310.0, 530.0, 20.0 ],
                                                    "text": "3: continuing in the same direction becomes less likely"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-maxrun",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 334.0, 120.0, 22.0 ],
                                                    "text": "prepend maxrun"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-maxrun",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 334.0, 110.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-turnbias",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 355.0, 240.0, 20.0 ],
                                                    "text": "Turning preference"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-turnbias",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 355.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-turnbias",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 355.0, 530.0, 20.0 ],
                                                    "text": "0.90: continuing weight is multiplied by 0.1, then 0.01..."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-turnbias",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 379.0, 120.0, 22.0 ],
                                                    "text": "prepend turnbias"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-turnbias",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 379.0, 110.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-recoverycents",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 400.0, 240.0, 20.0 ],
                                                    "text": "Large-leap threshold (cents)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-recoverycents",
                                                    "maxclass": "flonum",
                                                    "maximum": 48000.0,
                                                    "minimum": 1.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 400.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-recoverycents",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 400.0, 530.0, 20.0 ],
                                                    "text": "480 catches equal-tempered and just fourths"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-recoverycents",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 424.0, 131.0, 22.0 ],
                                                    "text": "prepend recoverycents"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-recoverycents",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 424.0, 110.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-repeats",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 445.0, 240.0, 20.0 ],
                                                    "text": "Allow repeated notes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ui-repeats",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 445.0, 25.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-repeats",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 445.0, 530.0, 20.0 ],
                                                    "text": "ON; OFF excludes a repeat when alternatives exist"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-repeats",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 469.0, 120.0, 22.0 ],
                                                    "text": "prepend repeats"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-repeats",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 469.0, 110.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "definition",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 610.0, 592.0, 33.0 ],
                                                    "text": "Step = an adjacent scale degree smaller than the large-leap threshold. Consecutive thirds\n(two degrees, below the threshold) may continue in the same direction. Repeats do not reset the direction run."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "generate",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 25.0, 675.0, 70.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "reset-history",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 115.0, 675.0, 110.0, 22.0 ],
                                                    "text": "melodyreset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "wide",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 245.0, 675.0, 135.0, 22.0 ],
                                                    "text": "register -1 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "one",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 400.0, 675.0, 135.0, 22.0 ],
                                                    "text": "register 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pure",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 555.0, 675.0, 125.0, 22.0 ],
                                                    "text": "melodic 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "tail",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 720.0, 516.0, 33.0 ],
                                                    "text": "Choosing Primary octave restores register 0 0. The tonic pitch class is retained.\nOctave shifts are equally likely up/down and never accumulate. melodyreset clears the phrase."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "label-octave",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 500.0, 240.0, 22.0 ],
                                                    "text": "Primary octave (bang only)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ui-octave",
                                                    "maxclass": "number",
                                                    "maximum": 9,
                                                    "minimum": -5,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 500.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "note-octave",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 500.0, 530.0, 34.0 ],
                                                    "text": "4 = C4 / MIDI 60 / 6000 cents. 3 = C3; 5 = C5."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-octave",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 524.0, 150.0, 20.0 ],
                                                    "text": "prepend octave"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-octave",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 524.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "label-octaveshift",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 550.0, 240.0, 22.0 ],
                                                    "text": "Octave-shift weight"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-octaveshift",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 550.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "note-octaveshift",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 550.0, 530.0, 34.0 ],
                                                    "text": "0 = stay; 1 = always +/-1 octave; 0.5 = shift on 50% of bangs."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-octaveshift",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 574.0, 150.0, 20.0 ],
                                                    "text": "prepend octaveshift"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-octaveshift",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 574.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "generate", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "one", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-leapavoid", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-maxrun", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-melodic", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-octave", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-octaveshift", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-recovery", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-recoverycents", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-repeats", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-stepchance", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-turnbias", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pure", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "reset-history", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-leapavoid", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-leapavoid", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-maxrun", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-maxrun", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-melodic", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-melodic", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-octave", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-octave", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-octaveshift", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-octaveshift", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-recovery", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-recovery", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-recoverycents", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-recoverycents", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-repeats", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-repeats", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-stepchance", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-stepchance", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-turnbias", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-turnbias", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-leapavoid", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-maxrun", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-melodic", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-octave", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-octaveshift", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-recovery", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-recoverycents", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-repeats", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-stepchance", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-turnbias", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "settings-route", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "status-in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-leapavoid", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-leapavoid", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-maxrun", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-maxrun", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-melodic", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-melodic", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-octave", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-octave", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-octaveshift", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-octaveshift", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-recovery", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-recovery", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-recoverycents", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-recoverycents", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-repeats", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-repeats", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-stepchance", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-stepchance", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-turnbias", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-turnbias", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "wide", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 700.0, 88.0, 190.0, 22.0 ],
                                    "text": "p melodic_preferences"
                                }
                            },
                            {
                                "box": {
                                    "id": "melodic-open",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 910.0, 88.0, 225.0, 20.0 ],
                                    "text": "Double-click for controls"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "menu-select", 0 ],
                                    "hidden": 1,
                                    "source": [ "all-scale-menu", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "melodic-controls", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "melodic-prepend", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "melodic-toggle", 0 ],
                                    "hidden": 1,
                                    "source": [ "melodic-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "melodic-prepend", 0 ],
                                    "hidden": 1,
                                    "source": [ "melodic-toggle", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "all-scale-menu", 0 ],
                                    "hidden": 1,
                                    "source": [ "menu-disable", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "menu-select", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "all-scale-menu", 0 ],
                                    "hidden": 1,
                                    "source": [ "menu-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "melodic-set", 0 ],
                                    "hidden": 1,
                                    "source": [ "menu-status", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "menu-set", 0 ],
                                    "hidden": 1,
                                    "source": [ "menu-status", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "melodic-controls", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "menu-status", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 2,
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 845.0, 810.0, 175.0, 22.0 ],
                    "text": "p scales_and_tunings"
                }
            },
            {
                "box": {
                    "id": "obj-61",
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
                        "rect": [ 50.0, 70.0, 1100.0, 740.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 1000.0, 30.0 ],
                                    "text": "NODES / INDIVIDUAL DEGREES"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 55.0, 1020.0, 40.0 ],
                                    "text": "Seven nodes multiply the major profile degree weights. Equal positive node weights preserve the original profile."
                                }
                            },
                            {
                                "box": {
                                    "embedstate": [
                                        [ "restore", "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"degrees\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.14285714285714285,0.14285714285714288,0.14285714285714285,0.14285714285714285,0.14285714285714285,0.14285714285714285,0.14285714285714285]}" ]
                                    ],
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 540.0, 390.0, 235.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "ec_scale_tuning_mapper.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js ec_scale_tuning_mapper.js",
                                    "varname": "engine"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 540.0, 465.0, 120.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 690.0, 465.0, 120.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 540.0, 490.0, 130.0, 20.0 ],
                                    "text": "midicents"
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
                                    "patching_rect": [ 690.0, 490.0, 130.0, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 860.0, 507.0, 145.0, 22.0 ],
                                    "text": "route nodeweights"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 860.0, 465.0, 145.0, 22.0 ],
                                    "text": "print mapper_status"
                                }
                            },
                            {
                                "box": {
                                    "displayknob": 1,
                                    "id": "obj-10",
                                    "maxclass": "nodes",
                                    "mousemode": 2,
                                    "nodenumber": 7,
                                    "nodesnames": [ "C", "D", "E", "F", "G", "A", "B" ],
                                    "nsize": [ 0.65, 0.65, 0.65, 0.65, 0.65, 0.65, 0.65 ],
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 25.0, 110.0, 390.0, 390.0 ],
                                    "xplace": [ 0.5, 0.7501860743897695, 0.8119769318981835, 0.6388427965176187, 0.36115720348238145, 0.18802306810181646, 0.24981392561023041 ],
                                    "yplace": [ 0.18, 0.30048326340520526, 0.5712066988660206, 0.7883100377287742, 0.7883100377287742, 0.5712066988660206, 0.3004832634052053 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 525.0, 170.0, 22.0 ],
                                    "text": "prepend nodeweights"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 540.0, 110.0, 70.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 540.0, 145.0, 60.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 630.0, 145.0, 420.0, 44.0 ],
                                    "text": "nodesmode degrees"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 540.0, 185.0, 85.0, 22.0 ],
                                    "text": "0.5 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 540.0, 250.0, 70.0, 22.0 ],
                                    "text": "bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 650.0, 250.0, 90.0, 22.0 ],
                                    "text": "degree 3"
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
                                    "patching_rect": [ 540.0, 290.0, 500.0, 55.0 ],
                                    "text": "Move the cursor, THEN click bang or degree 3. Movement updates the configuration without triggering a tone."
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
                                    "patching_rect": [ 25.0, 590.0, 1000.0, 55.0 ],
                                    "text": "Tuning is prepared before each midicents output. Node weights update through an explicit message, so they cannot become note lists or scale seeds."
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
                                    "patching_rect": [ 25.0, 660.0, 1000.0, 45.0 ],
                                    "text": "All-zero weights are rejected and the last valid vector is retained. Only source-labelled profiles are supplied; spatial modifications are compositional transformations."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
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
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1030.0, 810.0, 175.0, 22.0 ],
                    "text": "p nodes_degrees"
                }
            },
            {
                "box": {
                    "id": "obj-62",
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
                        "rect": [ 134.0, 172.0, 1170.0, 880.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 20.0, 1100.0, 30.0 ],
                                    "text": "NODES / SIX-MODE TUNING MORPH"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 62.0, 1100.0, 40.0 ],
                                    "text": "Drag between circles to interpolate corresponding degrees in cents. Bang generates; MIDI maps the played register.\nTop: mixolydian / ionian / lydian. Bottom: dorian / aeolian / phrygian."
                                }
                            },
                            {
                                "box": {
                                    "displayknob": 1,
                                    "id": "obj-10",
                                    "maxclass": "nodes",
                                    "mousemode": 2,
                                    "nodenumber": 6,
                                    "nodesnames": [ "mixolydian", "ionian", "lydian", "dorian", "aeolian", "phrygian" ],
                                    "nsize": [ 0.55, 0.55, 0.55, 0.55, 0.55, 0.55 ],
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 25.0, 120.0, 460.0, 460.0 ],
                                    "xplace": [ 0.18, 0.5, 0.82, 0.18, 0.5, 0.82 ],
                                    "yplace": [ 0.25, 0.25, 0.25, 0.75, 0.75, 0.75 ]
                                }
                            },
                            {
                                "box": {
                                    "embedstate": [
                                        [ "restore", "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"modal\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"mixolydian\",\"scale\":\"mixolydian\",\"nominal\":[0,200,400,500,700,900,1000],\"cents\":[0,200,400,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"ionian\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"lydian\",\"scale\":\"lydian\",\"nominal\":[0,200,400,600,700,900,1100],\"cents\":[0,200,400,600,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc6\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"dorian\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"aeolian\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"phrygian\",\"scale\":\"phrygian\",\"nominal\":[0,100,300,500,700,800,1000],\"cents\":[0,100,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc1\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}],\"nodeweights\":[0.12241477890438257,0.25517044219123475,0.12241477890438263,0.12241477890438257,0.25517044219123475,0.12241477890438263]}" ]
                                    ],
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 540.0, 675.0, 235.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "ec_scale_tuning_mapper.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js ec_scale_tuning_mapper.js",
                                    "varname": "engine"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 600.0, 170.0, 22.0 ],
                                    "text": "prepend nodeweights"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "gen-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 540.0, 125.0, 110.0, 22.0 ],
                                    "text": "Primary octave"
                                }
                            },
                            {
                                "box": {
                                    "id": "gen-octave",
                                    "maxclass": "number",
                                    "maximum": 9,
                                    "minimum": -5,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 652.0, 125.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "gen-shift-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 735.0, 125.0, 155.0, 22.0 ],
                                    "text": "Octave-shift weight"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "gen-shift",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 893.0, 125.0, 70.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "gen-pre-oct",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 540.0, 150.0, 120.0, 22.0 ],
                                    "text": "prepend octave"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "gen-pre-shift",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 670.0, 150.0, 150.0, 22.0 ],
                                    "text": "prepend octaveshift"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "gen-route",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 540.0, 175.0, 235.0, 22.0 ],
                                    "text": "route octave octaveshift"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "gen-set-oct",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 540.0, 200.0, 95.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "gen-set-shift",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 645.0, 200.0, 95.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "octave-note",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 540.0, 160.0, 595.0, 50.0 ],
                                    "text": "Primary octave 4 = C4 (MIDI 60 / 6000 cents); 3 = C3; 5 = C5.\nShift weight 0 stays; 1 always shifts +/-1 octave, equally likely.\nSelecting Primary octave restores the single-register setting."
                                }
                            },
                            {
                                "box": {
                                    "id": "generate",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 540.0, 230.0, 36.0, 36.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "generate-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 590.0, 235.0, 160.0, 22.0 ],
                                    "text": "Bang: generate one tone"
                                }
                            },
                            {
                                "box": {
                                    "id": "melodic-controls",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "rect": [ 160.0, 160.0, 950.0, 810.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "status-in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 870.0, 20.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "command-out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 870.0, 755.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 20.0,
                                                    "id": "title",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 20.0, 750.0, 30.0 ],
                                                    "text": "MELODIC PREFERENCES"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "intro",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 60.0, 800.0, 45.0 ],
                                                    "text": "These controls operate the mapper in the parent patch. Bang generates one tone.\nOctave controls work with melodic preferences ON or OFF; mapped MIDI keeps its played register."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "settings-route",
                                                    "maxclass": "newobj",
                                                    "numinlets": 11,
                                                    "numoutlets": 11,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 25.0, 770.0, 890.0, 22.0 ],
                                                    "text": "route melodic stepchance recovery leapavoid maxrun turnbias recoverycents repeats octave octaveshift"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-melodic",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 130.0, 240.0, 22.0 ],
                                                    "text": "Enable melodic preferences"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ui-melodic",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 130.0, 25.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-melodic",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 130.0, 530.0, 32.0 ],
                                                    "text": "ON; switching resets interval history"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-melodic",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 154.0, 120.0, 20.0 ],
                                                    "text": "prepend melodic"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-melodic",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 154.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-stepchance",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 175.0, 240.0, 22.0 ],
                                                    "text": "Step preference"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-stepchance",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 175.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-stepchance",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 175.0, 530.0, 32.0 ],
                                                    "text": "0.90: at least 90% step probability when a step is available"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-stepchance",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 199.0, 120.0, 20.0 ],
                                                    "text": "prepend stepchance"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-stepchance",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 199.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-recovery",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 220.0, 240.0, 22.0 ],
                                                    "text": "Opposite-step recovery"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-recovery",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 220.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-recovery",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 220.0, 530.0, 32.0 ],
                                                    "text": "0.98: stronger priority immediately after a large leap"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-recovery",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 244.0, 120.0, 20.0 ],
                                                    "text": "prepend recovery"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-recovery",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 244.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-leapavoid",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 265.0, 240.0, 22.0 ],
                                                    "text": "Avoid consecutive leaps"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-leapavoid",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 265.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-leapavoid",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 265.0, 530.0, 32.0 ],
                                                    "text": "0.97: other consecutive leaps receive 3% of their weight"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-leapavoid",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 289.0, 120.0, 20.0 ],
                                                    "text": "prepend leapavoid"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-leapavoid",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 289.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-maxrun",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 310.0, 240.0, 22.0 ],
                                                    "text": "Turn after this many moves"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ui-maxrun",
                                                    "maxclass": "number",
                                                    "maximum": 32,
                                                    "minimum": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 310.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-maxrun",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 310.0, 530.0, 32.0 ],
                                                    "text": "3: continuing in the same direction becomes less likely"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-maxrun",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 334.0, 120.0, 20.0 ],
                                                    "text": "prepend maxrun"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-maxrun",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 334.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-turnbias",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 355.0, 240.0, 22.0 ],
                                                    "text": "Turning preference"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-turnbias",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 355.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-turnbias",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 355.0, 530.0, 32.0 ],
                                                    "text": "0.90: continuing weight is multiplied by 0.1, then 0.01..."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-turnbias",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 379.0, 120.0, 20.0 ],
                                                    "text": "prepend turnbias"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-turnbias",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 379.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-recoverycents",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 400.0, 240.0, 22.0 ],
                                                    "text": "Large-leap threshold (cents)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-recoverycents",
                                                    "maxclass": "flonum",
                                                    "maximum": 48000.0,
                                                    "minimum": 1.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 400.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-recoverycents",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 400.0, 530.0, 32.0 ],
                                                    "text": "480 catches equal-tempered and just fourths"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-recoverycents",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 424.0, 120.0, 20.0 ],
                                                    "text": "prepend recoverycents"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-recoverycents",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 424.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "label-repeats",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 445.0, 240.0, 22.0 ],
                                                    "text": "Allow repeated notes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ui-repeats",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 445.0, 25.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note-repeats",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 445.0, 530.0, 32.0 ],
                                                    "text": "ON; OFF excludes a repeat when alternatives exist"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-repeats",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 469.0, 120.0, 20.0 ],
                                                    "text": "prepend repeats"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-repeats",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 469.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "definition",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 610.0, 880.0, 43.0 ],
                                                    "text": "Step = an adjacent scale degree smaller than the large-leap threshold. Consecutive thirds\n(two degrees, below the threshold) may continue in the same direction. Repeats do not reset the direction run."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "generate",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 25.0, 675.0, 70.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "reset-history",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 115.0, 675.0, 110.0, 22.0 ],
                                                    "text": "melodyreset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "wide",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 245.0, 675.0, 135.0, 22.0 ],
                                                    "text": "register -1 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "one",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 400.0, 675.0, 135.0, 22.0 ],
                                                    "text": "register 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pure",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 555.0, 675.0, 125.0, 22.0 ],
                                                    "text": "melodic 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "tail",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 720.0, 800.0, 43.0 ],
                                                    "text": "Choosing Primary octave restores register 0 0. The tonic pitch class is retained.\nOctave shifts are equally likely up/down and never accumulate. melodyreset clears the phrase."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "label-octave",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 500.0, 240.0, 22.0 ],
                                                    "text": "Primary octave (bang only)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ui-octave",
                                                    "maxclass": "number",
                                                    "maximum": 9,
                                                    "minimum": -5,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 500.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "note-octave",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 500.0, 530.0, 34.0 ],
                                                    "text": "4 = C4 / MIDI 60 / 6000 cents. 3 = C3; 5 = C5."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-octave",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 524.0, 150.0, 20.0 ],
                                                    "text": "prepend octave"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-octave",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 524.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "label-octaveshift",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 550.0, 240.0, 22.0 ],
                                                    "text": "Octave-shift weight"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "ui-octaveshift",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 280.0, 550.0, 80.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "note-octaveshift",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 550.0, 530.0, 34.0 ],
                                                    "text": "0 = stay; 1 = always +/-1 octave; 0.5 = shift on 50% of bangs."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "pre-octaveshift",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 280.0, 574.0, 150.0, 20.0 ],
                                                    "text": "prepend octaveshift"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "set-octaveshift",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 574.0, 110.0, 20.0 ],
                                                    "text": "prepend set"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "generate", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "one", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-leapavoid", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-maxrun", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-melodic", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-octave", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-octaveshift", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-recovery", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-recoverycents", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-repeats", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-stepchance", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pre-turnbias", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "pure", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "reset-history", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-leapavoid", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-leapavoid", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-maxrun", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-maxrun", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-melodic", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-melodic", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-octave", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-octave", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-octaveshift", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-octaveshift", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-recovery", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-recovery", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-recoverycents", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-recoverycents", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-repeats", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-repeats", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-stepchance", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-stepchance", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ui-turnbias", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "set-turnbias", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-leapavoid", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-maxrun", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-melodic", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-octave", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-octaveshift", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-recovery", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-recoverycents", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-repeats", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-stepchance", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-turnbias", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "settings-route", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "settings-route", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "status-in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-leapavoid", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-leapavoid", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-maxrun", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-maxrun", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-melodic", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-melodic", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-octave", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-octave", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-octaveshift", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-octaveshift", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-recovery", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-recovery", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-recoverycents", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-recoverycents", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-repeats", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-repeats", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-stepchance", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-stepchance", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pre-turnbias", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "ui-turnbias", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "command-out", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "wide", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 795.0, 235.0, 190.0, 22.0 ],
                                    "text": "p melodic_preferences"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 12.0,
                                    "id": "midi-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 540.0, 300.0, 580.0, 22.0 ],
                                    "text": "CLICKABLE KEYBOARD / MIDI TO MIDICENTS"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "midi-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 540.0, 332.0, 580.0, 40.0 ],
                                    "text": "Click these keys to audition this example. Use the main-page notein for the external controller."
                                }
                            },
                            {
                                "box": {
                                    "id": "midi-keys",
                                    "inputmode": 1,
                                    "maxclass": "kslider",
                                    "mode": 2,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 540.0, 385.0, 580.0, 75.0 ],
                                    "range": 61
                                }
                            },
                            {
                                "box": {
                                    "id": "midi-strip",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 540.0, 482.0, 75.0, 22.0 ],
                                    "text": "stripnote"
                                }
                            },
                            {
                                "box": {
                                    "id": "midi-convert",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 540.0, 520.0, 65.0, 22.0 ],
                                    "text": "* 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "midi-cents",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 635.0, 520.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "midi-caption",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 735.0, 520.0, 385.0, 35.0 ],
                                    "text": "MIDICENTS to JS: MIDI 60 = 6000. Note-offs are filtered."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "midicents",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 540.0, 740.0, 130.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "hz",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 705.0, 740.0, 130.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "mc-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 540.0, 770.0, 140.0, 22.0 ],
                                    "text": "midicents"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "hz-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 705.0, 770.0, 130.0, 22.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Hz to parent sine audition",
                                    "id": "hz-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 705.0, 820.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "status-route",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 865.0, 740.0, 150.0, 22.0 ],
                                    "text": "route nodeweights"
                                }
                            },
                            {
                                "box": {
                                    "id": "status-print",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 865.0, 780.0, 165.0, 22.0 ],
                                    "text": "print mapper_status"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 25.0, 705.0, 75.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "init",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 25.0, 735.0, 60.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "setup",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 765.0, 110.0, 22.0 ],
                                    "text": "modalnodes"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "cursor",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 765.0, 85.0, 22.0 ],
                                    "text": "0.5 0.5"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "note",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 650.0, 465.0, 100.0 ],
                                    "text": "All six modes start from the same tonic and use uniform degree weights.\n\nMovement changes tuning without sounding a note. Use the parent sine-audition controls to listen."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "source": [ "cursor", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gen-pre-oct", 0 ],
                                    "hidden": 1,
                                    "source": [ "gen-octave", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "gen-pre-oct", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "gen-pre-shift", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gen-set-oct", 0 ],
                                    "hidden": 1,
                                    "source": [ "gen-route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gen-set-shift", 0 ],
                                    "hidden": 1,
                                    "source": [ "gen-route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gen-octave", 0 ],
                                    "hidden": 1,
                                    "source": [ "gen-set-oct", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gen-shift", 0 ],
                                    "hidden": 1,
                                    "source": [ "gen-set-shift", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gen-pre-shift", 0 ],
                                    "hidden": 1,
                                    "source": [ "gen-shift", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "generate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cursor", 0 ],
                                    "hidden": 1,
                                    "source": [ "init", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "setup", 0 ],
                                    "hidden": 1,
                                    "source": [ "init", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "init", 0 ],
                                    "hidden": 1,
                                    "source": [ "load", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "melodic-controls", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "midi-cents", 0 ],
                                    "order": 0,
                                    "source": [ "midi-convert", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "midi-convert", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "midi-strip", 1 ],
                                    "source": [ "midi-keys", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "midi-strip", 0 ],
                                    "source": [ "midi-keys", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "midi-convert", 0 ],
                                    "source": [ "midi-strip", 0 ]
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
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gen-route", 0 ],
                                    "hidden": 1,
                                    "order": 2,
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "hz", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "hz-out", 0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "melodic-controls", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "midicents", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "status-route", 0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "setup", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "status-print", 0 ],
                                    "source": [ "status-route", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 660.0, 845.0, 175.0, 22.0 ],
                    "text": "p nodes_tuning"
                }
            },
            {
                "box": {
                    "id": "obj-63",
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
                        "rect": [ 50.0, 70.0, 1100.0, 740.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 1000.0, 30.0 ],
                                    "text": "MIDI INPUT / NOTE-OFF PAIRING"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 55.0, 1040.0, 40.0 ],
                                    "text": "midinote <pitch> <velocity> <channel> stores each mapped note-on pitch. Its note-off retains that pitch even after a scale or nodes change."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "int", "int" ],
                                    "patching_rect": [ 25.0, 135.0, 75.0, 22.0 ],
                                    "text": "notein"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 195.0, 100.0, 22.0 ],
                                    "text": "pack 0 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 240.0, 150.0, 22.0 ],
                                    "text": "prepend midinote"
                                }
                            },
                            {
                                "box": {
                                    "embedstate": [
                                        [ "restore", "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}" ]
                                    ],
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 25.0, 350.0, 235.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "ec_scale_tuning_mapper.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js ec_scale_tuning_mapper.js",
                                    "varname": "engine"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-7",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 25.0, 440.0, 120.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-8",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 175.0, 440.0, 120.0, 22.0 ]
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
                                    "patching_rect": [ 25.0, 465.0, 130.0, 20.0 ],
                                    "text": "midicents"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 175.0, 465.0, 130.0, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 345.0, 482.0, 145.0, 22.0 ],
                                    "text": "route nodeweights"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 440.0, 145.0, 22.0 ],
                                    "text": "print mapper_status"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 560.0, 395.0, 175.0, 22.0 ],
                                    "text": "route midievent tone"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 440.0, 490.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 505.0, 490.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 560.0, 467.0, 490.0, 22.0 ],
                                    "text": "midicents  velocity  channel  original MIDI key"
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
                                    "patching_rect": [ 560.0, 533.0, 500.0, 35.0 ],
                                    "text": "degree  period  configuration  conditional probability  reason"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 330.0, 135.0, 320.0, 22.0 ],
                                    "text": "midinote 61 100 1"
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
                                    "patching_rect": [ 330.0, 163.0, 320.0, 22.0 ],
                                    "text": "Test note-on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 690.0, 135.0, 320.0, 22.0 ],
                                    "text": "scale chromatic"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 690.0, 163.0, 320.0, 22.0 ],
                                    "text": "Change scale while held"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 330.0, 220.0, 320.0, 22.0 ],
                                    "text": "midinote 61 0 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 330.0, 248.0, 320.0, 22.0 ],
                                    "text": "Paired note-off"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 690.0, 220.0, 320.0, 22.0 ],
                                    "text": "panic"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 690.0, 248.0, 320.0, 22.0 ],
                                    "text": "Release all tracked notes"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-26",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 595.0, 1020.0, 70.0 ],
                                    "text": "Note-offs emit midievent metadata only. They do not retrigger the pitch/Hz outlets. Downstream polyphonic voices should use channel + original key as identity. MIDI 1.0 pitch-bend, MPE and byte-stream output are outside this mapper."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 1 ],
                                    "source": [ "obj-13", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 2 ],
                                    "source": [ "obj-3", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-6", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-6", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 845.0, 845.0, 175.0, 22.0 ],
                    "text": "p MIDI_events"
                }
            },
            {
                "box": {
                    "id": "obj-64",
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
                        "rect": [ 50.0, 70.0, 1100.0, 740.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 1020.0, 30.0 ],
                                    "text": "SCALA IMPORT / SAVE AND RECALL"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 55.0, 1020.0, 45.0 ],
                                    "text": "Import a monotonic .scl scale with 1..256 degrees. The final interval becomes the repeating period. The implicit 1/1 is added once; the endpoint is not duplicated."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 130.0, 65.0, 22.0 ],
                                    "text": "bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 25.0, 175.0, 100.0, 22.0 ],
                                    "text": "opendialog"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 220.0, 130.0, 22.0 ],
                                    "text": "prepend read"
                                }
                            },
                            {
                                "box": {
                                    "embedstate": [
                                        [ "restore", "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}" ]
                                    ],
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 25.0, 410.0, 235.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "ec_scale_tuning_mapper.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js ec_scale_tuning_mapper.js",
                                    "varname": "engine"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-7",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 25.0, 480.0, 120.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-8",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 175.0, 480.0, 120.0, 22.0 ]
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
                                    "patching_rect": [ 25.0, 505.0, 130.0, 20.0 ],
                                    "text": "midicents"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 175.0, 505.0, 130.0, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 345.0, 522.0, 145.0, 22.0 ],
                                    "text": "route nodeweights"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 480.0, 145.0, 22.0 ],
                                    "text": "print mapper_status"
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
                                    "patching_rect": [ 110.0, 130.0, 390.0, 30.0 ],
                                    "text": "Choose any included file from the scales folder."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 130.0, 460.0, 22.0 ],
                                    "text": "read major_just_5limit.scl"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 560.0, 154.0, 460.0, 20.0 ],
                                    "text": "5-limit major; use when scales folder is in search path"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 179.0, 460.0, 22.0 ],
                                    "text": "read bp_13_equal.scl"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 560.0, 203.0, 460.0, 20.0 ],
                                    "text": "13 equal divisions of 3/1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 228.0, 460.0, 22.0 ],
                                    "text": "read hirajoshi3.scl"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 560.0, 252.0, 460.0, 20.0 ],
                                    "text": "Specific koto model with 1199-cent period"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 277.0, 460.0, 22.0 ],
                                    "text": "store imported_scale"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 560.0, 301.0, 460.0, 20.0 ],
                                    "text": "Capture imported model for a nodes assignment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 326.0, 460.0, 22.0 ],
                                    "text": "nodeassign 1 imported_scale"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 560.0, 350.0, 460.0, 20.0 ],
                                    "text": "Assign stored model to node 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 375.0, 460.0, 22.0 ],
                                    "text": "bang"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 11.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 560.0, 399.0, 460.0, 20.0 ],
                                    "text": "Generate with the imported scale"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-26",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 565.0, 1010.0, 75.0 ],
                                    "text": "State: saving a patch containing the JS embeds its configuration. getvalueof/setvalueof also expose a JSON state for pattr. Held notes, random-generator position and the last mapped input are transient. Use nodeweights for morphing; JSON states are for whole-state recall."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-27",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 660.0, 1010.0, 55.0 ],
                                    "text": "Importer limits: rejects unsorted, repeated, negative/out-of-period degrees and zero-note files; does not import .kbm keyboard mappings. keyboard/keybase provide a sequential degree mapping."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-6", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1030.0, 845.0, 175.0, 22.0 ],
                    "text": "p Scala_and_state"
                }
            },
            {
                "box": {
                    "id": "obj-65",
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
                        "rect": [ 134.0, 172.0, 1120.0, 800.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 1060.0, 27.0 ],
                                    "text": "CNMAT PLUCKED-STRING CONNECTION"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 55.0, 1050.0, 20.0 ],
                                    "text": "This adapter is included; the original CNMAT patches are unchanged. It emits tuning before the pluck and avoids the animated stopper's rounded coordinate output."
                                }
                            },
                            {
                                "box": {
                                    "embedstate": [
                                        [ "restore", "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}" ]
                                    ],
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 25.0, 170.0, 235.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "ec_scale_tuning_mapper.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js ec_scale_tuning_mapper.js",
                                    "varname": "engine"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 125.0, 65.0, 22.0 ],
                                    "text": "bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 25.0, 270.0, 235.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "ec_midicents_to_string.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js ec_midicents_to_string.js"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-6",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 25.0, 355.0, 200.0, 22.0 ]
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
                                    "patching_rect": [ 25.0, 390.0, 251.0, 20.0 ],
                                    "text": "Pluck amplitude -> one_string_ped LEFT inlet"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-8",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 295.0, 355.0, 200.0, 22.0 ]
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
                                    "patching_rect": [ 295.0, 390.0, 254.0, 20.0 ],
                                    "text": "Length fraction -> one_string_ped RIGHT inlet"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-10",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 565.0, 355.0, 200.0, 22.0 ]
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
                                    "patching_rect": [ 565.0, 390.0, 245.0, 20.0 ],
                                    "text": "Target Hz"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-12",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 835.0, 355.0, 200.0, 22.0 ]
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
                                    "patching_rect": [ 835.0, 390.0, 259.0, 20.0 ],
                                    "text": "Fractional MIDI -> reso-string~_ped tuning inlet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 610.0, 150.0, 180.0, 22.0 ],
                                    "text": "rootHz 262."
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
                                    "patching_rect": [ 805.0, 150.0, 280.0, 20.0 ],
                                    "text": "DEFAULT matches one_string_ped internal root"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 610.0, 210.0, 180.0, 22.0 ],
                                    "text": "reference 440."
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
                                    "patching_rect": [ 805.0, 210.0, 280.0, 20.0 ],
                                    "text": "DEFAULT; keep equal to mapper reference"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 610.0, 270.0, 180.0, 22.0 ],
                                    "text": "amplitude 1."
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
                                    "patching_rect": [ 805.0, 270.0, 280.0, 20.0 ],
                                    "text": "DEFAULT pluck strength (0..1)"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-20",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 490.0, 1050.0, 33.0 ],
                                    "text": "ONE_STRING_PED: set the target voice octave to 0 and use the same rootHz in voice and adapter. Route the two adapter outputs directly to its numeric inlets. Any tuner controlling that voice must agree on root/octave. Its graphical length outlet may update a display, but must not feed another rounded length back into the tuning inlet."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-21",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 590.0, 1050.0, 33.0 ],
                                    "text": "DIRECT RESONATOR PATH: adapter outlet 4 (fractional MIDI) -> reso-string~_ped tuning inlet. Adapter outlet 1, multiplied by 127, -> excitation inlet. This path avoids a fixed number of strings and length-display range limits. Allocate voices outside this mapper."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "obj-22",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 690.0, 1050.0, 33.0 ],
                                    "text": "The Playspace has eight fixed strings. Mapping arbitrary N-degree scales onto those strings still requires an explicit voice/degree assignment or retuning scheme. This release supplies a single-voice adapter and leaves the existing OSC namespaces untouched."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 660.0, 880.0, 175.0, 22.0 ],
                    "text": "p CNMAT_integration"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 970.0, 1190.0, 19.0 ],
                    "text": "No non-Western empirical profile vectors are invented. Other scales use uniform weights until you supply a documented profile. See SOURCES.txt."
                }
            },
            {
                "box": {
                    "id": "all-scale-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 120.0, 48.0, 20.0 ],
                    "text": "Scale"
                }
            },
            {
                "box": {
                    "annotation": "All 41 built-in scales. Choosing one returns to nodesmode off and its template tuning. Ionian = major; Aeolian = natural minor.",
                    "id": "all-scale-menu",
                    "items": [ "phrygian", ",", "aeolian", ",", "dorian", ",", "ionian", ",", "mixolydian", ",", "lydian", ",", "locrian", ",", "harmonic_minor", ",", "melodic_minor_ascending", ",", "harmonic_major", ",", "major_pentatonic", ",", "minor_pentatonic", ",", "major_blues", ",", "minor_blues", ",", "whole_tone", ",", "octatonic_wh", ",", "octatonic_hw", ",", "augmented_hexatonic", ",", "chromatic", ",", "lydian_dominant", ",", "altered", ",", "phrygian_dominant", ",", "messiaen_1", ",", "messiaen_2", ",", "messiaen_3", ",", "messiaen_4", ",", "messiaen_5", ",", "messiaen_6", ",", "messiaen_7", ",", "gong_12tet", ",", "shang_12tet", ",", "jue_12tet", ",", "zhi_12tet", ",", "yu_12tet", ",", "rast_24edo_model", ",", "bayati_24edo_model", ",", "hijaz_12tet_model", ",", "hirajoshi_ellis_112", ",", "hirajoshi_ellis_111", ",", "pelog_ksatria", ",", "slendro_kanyut_mesem", ",", "custom / imported (use messages)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 80.0, 120.0, 300.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "menu-select",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 80.0, 146.0, 230.0, 22.0 ],
                    "text": "nodesmode off, scale $1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "menu-status",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 400.0, 146.0, 180.0, 22.0 ],
                    "text": "route scaleindex melodic"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "menu-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 80.0, 242.0, 100.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "menu-disable",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 80.0, 268.0, 200.0, 22.0 ],
                    "text": "loadmess enableitem 41 0"
                }
            },
            {
                "box": {
                    "id": "melodic-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 420.0, 120.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "melodic-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 452.0, 120.0, 210.0, 20.0 ],
                    "text": "Melodic preferences"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "melodic-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 242.0, 140.0, 22.0 ],
                    "text": "prepend melodic"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "melodic-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 268.0, 100.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "melodic-controls",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 160.0, 160.0, 950.0, 810.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 844.0, 657.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 862.0, 679.0, 63.0, 22.0 ],
                                    "text": "metro 200"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "status-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 870.0, 20.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "command-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 870.0, 755.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 20.0,
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 20.0, 750.0, 29.0 ],
                                    "text": "MELODIC PREFERENCES"
                                }
                            },
                            {
                                "box": {
                                    "id": "intro",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 60.0, 800.0, 33.0 ],
                                    "text": "These controls operate the mapper in the parent patch. Bang generates one tone.\nOctave controls work with melodic preferences ON or OFF; mapped MIDI keeps its played register."
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "settings-route",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 25.0, 770.0, 890.0, 22.0 ],
                                    "text": "route melodic stepchance recovery leapavoid maxrun turnbias recoverycents repeats octave octaveshift"
                                }
                            },
                            {
                                "box": {
                                    "id": "label-melodic",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 130.0, 240.0, 20.0 ],
                                    "text": "Enable melodic preferences"
                                }
                            },
                            {
                                "box": {
                                    "id": "ui-melodic",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 130.0, 25.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "note-melodic",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 130.0, 530.0, 20.0 ],
                                    "text": "ON; switching resets interval history"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-melodic",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 154.0, 120.0, 22.0 ],
                                    "text": "prepend melodic"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-melodic",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 154.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "label-stepchance",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 175.0, 240.0, 20.0 ],
                                    "text": "Step preference"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "ui-stepchance",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 175.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "note-stepchance",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 175.0, 530.0, 20.0 ],
                                    "text": "0.90: at least 90% step probability when a step is available"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-stepchance",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 199.0, 120.0, 22.0 ],
                                    "text": "prepend stepchance"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-stepchance",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 199.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "label-recovery",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 220.0, 240.0, 20.0 ],
                                    "text": "Opposite-step recovery"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "ui-recovery",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 220.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "note-recovery",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 220.0, 530.0, 20.0 ],
                                    "text": "0.98: stronger priority immediately after a large leap"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-recovery",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 244.0, 120.0, 22.0 ],
                                    "text": "prepend recovery"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-recovery",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 244.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "label-leapavoid",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 265.0, 240.0, 20.0 ],
                                    "text": "Avoid consecutive leaps"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "ui-leapavoid",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 265.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "note-leapavoid",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 265.0, 530.0, 20.0 ],
                                    "text": "0.97: other consecutive leaps receive 3% of their weight"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-leapavoid",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 289.0, 120.0, 22.0 ],
                                    "text": "prepend leapavoid"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-leapavoid",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 289.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "label-maxrun",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 310.0, 240.0, 20.0 ],
                                    "text": "Turn after this many moves"
                                }
                            },
                            {
                                "box": {
                                    "id": "ui-maxrun",
                                    "maxclass": "number",
                                    "maximum": 32,
                                    "minimum": 1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 310.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "note-maxrun",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 310.0, 530.0, 20.0 ],
                                    "text": "3: continuing in the same direction becomes less likely"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-maxrun",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 334.0, 120.0, 22.0 ],
                                    "text": "prepend maxrun"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-maxrun",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 334.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "label-turnbias",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 355.0, 240.0, 20.0 ],
                                    "text": "Turning preference"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "ui-turnbias",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 355.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "note-turnbias",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 355.0, 530.0, 20.0 ],
                                    "text": "0.90: continuing weight is multiplied by 0.1, then 0.01..."
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-turnbias",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 379.0, 120.0, 22.0 ],
                                    "text": "prepend turnbias"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-turnbias",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 379.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "label-recoverycents",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 400.0, 240.0, 20.0 ],
                                    "text": "Large-leap threshold (cents)"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "ui-recoverycents",
                                    "maxclass": "flonum",
                                    "maximum": 48000.0,
                                    "minimum": 1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 400.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "note-recoverycents",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 400.0, 530.0, 20.0 ],
                                    "text": "480 catches equal-tempered and just fourths"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-recoverycents",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 424.0, 120.0, 35.0 ],
                                    "text": "prepend recoverycents"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-recoverycents",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 424.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "label-repeats",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 445.0, 240.0, 20.0 ],
                                    "text": "Allow repeated notes"
                                }
                            },
                            {
                                "box": {
                                    "id": "ui-repeats",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 445.0, 25.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "note-repeats",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 445.0, 530.0, 20.0 ],
                                    "text": "ON; OFF excludes a repeat when alternatives exist"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-repeats",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 469.0, 120.0, 22.0 ],
                                    "text": "prepend repeats"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-repeats",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 469.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "definition",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 610.0, 880.0, 33.0 ],
                                    "text": "Step = an adjacent scale degree smaller than the large-leap threshold. Consecutive thirds\n(two degrees, below the threshold) may continue in the same direction. Repeats do not reset the direction run."
                                }
                            },
                            {
                                "box": {
                                    "id": "generate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 675.0, 70.0, 22.0 ],
                                    "text": "bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "reset-history",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 115.0, 675.0, 110.0, 22.0 ],
                                    "text": "melodyreset"
                                }
                            },
                            {
                                "box": {
                                    "id": "wide",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 245.0, 675.0, 135.0, 22.0 ],
                                    "text": "register -1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "one",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 675.0, 135.0, 22.0 ],
                                    "text": "register 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "pure",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 555.0, 675.0, 125.0, 22.0 ],
                                    "text": "melodic 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "tail",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 720.0, 800.0, 33.0 ],
                                    "text": "Choosing Primary octave restores register 0 0. The tonic pitch class is retained.\nOctave shifts are equally likely up/down and never accumulate. melodyreset clears the phrase."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "label-octave",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 500.0, 240.0, 20.0 ],
                                    "text": "Primary octave (bang only)"
                                }
                            },
                            {
                                "box": {
                                    "id": "ui-octave",
                                    "maxclass": "number",
                                    "maximum": 9,
                                    "minimum": -5,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 500.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "note-octave",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 500.0, 530.0, 20.0 ],
                                    "text": "4 = C4 / MIDI 60 / 6000 cents. 3 = C3; 5 = C5."
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-octave",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 524.0, 150.0, 22.0 ],
                                    "text": "prepend octave"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-octave",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 524.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "label-octaveshift",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 550.0, 240.0, 20.0 ],
                                    "text": "Octave-shift weight"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "ui-octaveshift",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 550.0, 80.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "note-octaveshift",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 550.0, 530.0, 20.0 ],
                                    "text": "0 = stay; 1 = always +/-1 octave; 0.5 = shift on 50% of bangs."
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "pre-octaveshift",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 574.0, 150.0, 22.0 ],
                                    "text": "prepend octaveshift"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "set-octaveshift",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 574.0, 110.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "generate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "generate", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "one", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-leapavoid", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-maxrun", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-melodic", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-octave", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-octaveshift", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-recovery", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-recoverycents", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-repeats", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-stepchance", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pre-turnbias", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "pure", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "reset-history", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-leapavoid", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-leapavoid", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-maxrun", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-maxrun", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-melodic", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-melodic", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-octave", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-octave", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-octaveshift", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-octaveshift", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-recovery", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-recovery", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-recoverycents", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-recoverycents", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-repeats", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-repeats", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-stepchance", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-stepchance", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ui-turnbias", 0 ],
                                    "hidden": 1,
                                    "source": [ "set-turnbias", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-leapavoid", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-maxrun", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-melodic", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-octave", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-octaveshift", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-recovery", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-recoverycents", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-repeats", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-stepchance", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "set-turnbias", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings-route", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "settings-route", 0 ],
                                    "hidden": 1,
                                    "source": [ "status-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-leapavoid", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-leapavoid", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-maxrun", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-maxrun", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-melodic", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-melodic", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-octave", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-octave", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-octaveshift", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-octaveshift", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-recovery", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-recovery", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-recoverycents", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-recoverycents", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-repeats", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-repeats", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-stepchance", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-stepchance", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pre-turnbias", 0 ],
                                    "hidden": 1,
                                    "source": [ "ui-turnbias", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "command-out", 0 ],
                                    "hidden": 1,
                                    "source": [ "wide", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 700.0, 120.0, 190.0, 22.0 ],
                    "text": "p melodic_preferences"
                }
            },
            {
                "box": {
                    "id": "melodic-open",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 910.0, 120.0, 225.0, 20.0 ],
                    "text": "Double-click for controls"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "gen-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 160.0, 110.0, 20.0 ],
                    "text": "Primary octave"
                }
            },
            {
                "box": {
                    "id": "gen-octave",
                    "maxclass": "number",
                    "maximum": 9,
                    "minimum": -5,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 137.0, 160.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "gen-shift-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 220.0, 160.0, 155.0, 20.0 ],
                    "text": "Octave-shift weight"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "gen-shift",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 378.0, 160.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "gen-pre-oct",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 185.0, 120.0, 22.0 ],
                    "text": "prepend octave"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "gen-pre-shift",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 155.0, 185.0, 150.0, 22.0 ],
                    "text": "prepend octaveshift"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "gen-route",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 25.0, 210.0, 235.0, 22.0 ],
                    "text": "route octave octaveshift"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "gen-set-oct",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 235.0, 95.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "gen-set-shift",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 130.0, 235.0, 95.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "gen-explanation",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 470.0, 157.0, 543.0, 33.0 ],
                    "text": "For bang: 3 = C3 (4800), 4 = C4 (6000), 5 = C5 (7200).\nShift 0 = stay; 1 = always one octave up/down. Default tonic is C; MIDI input keeps its played octave."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "midi-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 1010.0, 620.0, 20.0 ],
                    "text": "MIDI CONTROLLER / CLICKABLE KEYBOARD"
                }
            },
            {
                "box": {
                    "id": "midi-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 25.0, 1042.0, 65.0, 22.0 ],
                    "text": "notein"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "midi-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 110.0, 1042.0, 535.0, 20.0 ],
                    "text": "Choose the controller by double-clicking notein. Play it, or click the keys."
                }
            },
            {
                "box": {
                    "id": "midi-keys",
                    "inputmode": 1,
                    "maxclass": "kslider",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 1095.0, 612.0, 72.0 ],
                    "range": 61
                }
            },
            {
                "box": {
                    "id": "midi-strip",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 25.0, 1192.0, 75.0, 22.0 ],
                    "text": "stripnote"
                }
            },
            {
                "box": {
                    "id": "midi-convert",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 25.0, 1230.0, 65.0, 22.0 ],
                    "text": "* 100"
                }
            },
            {
                "box": {
                    "id": "midi-cents",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 120.0, 1230.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "midi-caption",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 220.0, 1230.0, 425.0, 20.0 ],
                    "text": "MIDICENTS to JS: MIDI 60 = 6000. Note-offs are filtered."
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "midi-generation-note",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 700.0, 1042.0, 368.0, 47.0 ],
                    "text": "Keyboard input maps a played pitch into the current scale/morph.\nPrimary octave and octave-shift weight affect generated bangs only.\nFor full MIDI note-on/off pairing, open p MIDI_events."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "menu-select", 0 ],
                    "hidden": 1,
                    "source": [ "all-scale-menu", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gen-pre-oct", 0 ],
                    "hidden": 1,
                    "source": [ "gen-octave", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "gen-pre-oct", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "gen-pre-shift", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gen-set-oct", 0 ],
                    "hidden": 1,
                    "source": [ "gen-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gen-set-shift", 0 ],
                    "hidden": 1,
                    "source": [ "gen-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gen-octave", 0 ],
                    "hidden": 1,
                    "source": [ "gen-set-oct", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gen-shift", 0 ],
                    "hidden": 1,
                    "source": [ "gen-set-shift", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gen-pre-shift", 0 ],
                    "hidden": 1,
                    "source": [ "gen-shift", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "melodic-controls", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "melodic-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "melodic-toggle", 0 ],
                    "hidden": 1,
                    "source": [ "melodic-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "melodic-prepend", 0 ],
                    "hidden": 1,
                    "source": [ "melodic-toggle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "all-scale-menu", 0 ],
                    "hidden": 1,
                    "source": [ "menu-disable", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "menu-select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "all-scale-menu", 0 ],
                    "hidden": 1,
                    "source": [ "menu-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "melodic-set", 0 ],
                    "hidden": 1,
                    "source": [ "menu-status", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "menu-set", 0 ],
                    "hidden": 1,
                    "source": [ "menu-status", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-cents", 0 ],
                    "order": 1,
                    "source": [ "midi-convert", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "midi-convert", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-keys", 1 ],
                    "source": [ "midi-in", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-keys", 0 ],
                    "source": [ "midi-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-strip", 1 ],
                    "source": [ "midi-keys", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-strip", 0 ],
                    "source": [ "midi-keys", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-convert", 0 ],
                    "source": [ "midi-strip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "order": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "order": 0,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-36", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gen-route", 0 ],
                    "hidden": 1,
                    "order": 4,
                    "source": [ "obj-4", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "melodic-controls", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-4", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "menu-status", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-4", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "order": 2,
                    "source": [ "obj-4", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-4", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "order": 3,
                    "source": [ "obj-4", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "order": 0,
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 1 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 1 ],
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 1 ],
                    "source": [ "obj-40", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 1 ],
                    "source": [ "obj-40", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 1 ],
                    "source": [ "obj-40", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "order": 0,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "order": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}